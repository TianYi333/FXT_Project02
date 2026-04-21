#include "am2302.h"

//XGpioPs_Config *gpiops_cfg_ptr;
//XGpioPs gpiops_inst;

static void Bus_DelayUs(uint32_t us)
{
    volatile uint32_t count = us * (XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ / 3000000);
    while(count--);
}

// 初始化EMIO GPIO
int am2302_Gpio_Init() {
	//gpiops_cfg_ptr = XGpioPs_LookupConfig(GPIOPS_ID);//main函数中已执行
    //int Status = XGpioPs_CfgInitialize(&gpiops_inst, gpiops_cfg_ptr, gpiops_cfg_ptr->BaseAddr);//main函数中已执行

    // 初始化为输出模式，总线空闲高电平
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO1_PIN_DIR, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO2_PIN, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO2_PIN_DIR, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO3_PIN, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO2_PIN_DIR, 1);

    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO1_PIN_DIR, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO2_PIN, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO2_PIN_DIR, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO3_PIN, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO2_PIN_DIR, 1);
    XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN, 1);
    return XST_SUCCESS;
}

// 读取40位数据包
int ReadData(uint8_t *data)
{
	TickType_t tStart;
	uint8_t raw[5] = {0};
	XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN_DIR, 1);//DIR低电平，B->A;DIR高电平，A->B
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN, 0);
    Bus_DelayUs(1000); // 拉低总线1ms

    // 释放总线，切换为输入模式
    XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN_DIR, 0);//DIR低电平，B->A;DIR高电平，A->B
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO1_PIN, 0);

    // 检测DHT响应信号
    tStart = xTaskGetTickCount();
    while (XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN)==0) {
        if (xTaskGetTickCount() - tStart > 1)
        	return DHT_TIMEOUT_ERROR;
    }

    tStart = xTaskGetTickCount();
    while (XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN)==1) {
    	if (xTaskGetTickCount() - tStart > 1)
    		return DHT_TIMEOUT_ERROR;
    }

    // 读取40位数据
    for (int i = 0; i < 40; i++) {
    	// 等待起始低电平结束
    	tStart = xTaskGetTickCount();
    	while (XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN) == 0) {
    		if (xTaskGetTickCount() - tStart > pdMS_TO_TICKS(1))
    			return DHT_TIMEOUT_ERROR;
    	}
    	// 精确采样点延迟
    	Bus_DelayUs(40);
        // 存储数据位（高位在前）
        raw[i/8] = (raw[i/8] << 1) | (XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN) > 0 ? 1 : 0);
    }
//    xil_printf("Raw Data: %02X %02X %02X %02X %02X\n",
//    		raw[0], raw[1], raw[2], raw[3], raw[4]);
    //校验和验证
	uint8_t checksum = (raw[0] + raw[1] + raw[2] + raw[3]) & 0xFF;
	if (checksum != raw[4]) return DHT_CHECKSUM_ERROR;

	memcpy(data, raw, 5);
	return 0;
}

