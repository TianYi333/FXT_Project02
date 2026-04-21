#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include <sleep.h>
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "xgpiops.h"
#include "lwip/dhcp.h"
#include "xtime_l.h"
#include "xuartps.h"        // Xilinx UART驱动库
#include "xil_printf.h"     // 调试输出库
#include "xparameters.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "ssd1309_spi.h"
#include "font_8x8.h"
#include "Angle_Sensor.h"
#include "Lwip_Receive.h"
#include "TTC_timer_intr.h"
#include "Pro_FPGA_ctrl.h"


#define SysTick_Frequency   222222222  //SysTick时钟频率222MHz
extern void Lwip_Receive_thread(void *p);/* 以太网数据接收处理任务 */
extern QueueHandle_t Lwip_Receive_Queue;/* 以太网数据接收队列 */
extern QueueHandle_t Lwip_Send_Queue;/* 以太网数据接收队列 */
extern QueueHandle_t Angle_processing_Queue;/* 角度传感器数据队列 */

#define GPIOPS_ID 			XPAR_XGPIOPS_0_DEVICE_ID//PS 端 GPIO 器件 ID
#define INTC_DEVICE_ID 		XPAR_SCUGIC_SINGLE_DEVICE_ID //中断 ID


#define K14 54 //连接到 EMIO0
#define J14 55 //连接到 EMIO1
#define L16 56 //连接到 EMIO2
#define L17 57 //连接到 EMIO3
#define P19 58 //连接到 EMIO4
#define N18 59 //连接到 EMIO5
#define V8  60 //连接到 EMIO6
#define V7  61 //连接到 EMIO7
#define U7  62 //连接到 EMIO8
#define U5  63 //连接到 EMIO9
#define T5  64 //连接到 EMIO10
#define N20 65 //连接到 EMIO11
#define P20 66 //连接到 EMIO12
#define L20 67 //连接到 EMIO13
#define A20 68 //连接到 EMIO14
#define F16 69 //连接到 EMIO15
#define N15 70 //连接到 EMIO16
#define L14 71 //连接到 EMIO17
#define L15 72 //连接到 EMIO18
#define N17 73 //连接到 EMIO19
#define P18 74 //连接到 EMIO20
#define R19 75 //连接到 EMIO21
#define R17 76 //连接到 EMIO22
#define R16 77 //连接到 EMIO23
#define P16 78 //连接到 EMIO24
#define U20 79 //连接到 EMIO25
#define K19 80 //连接到 EMIO26
#define J19 81 //连接到 EMIO27
#define G19 82 //连接到 EMIO28
#define G20 83 //连接到 EMIO29
#define J20 84 //连接到 EMIO30
#define H20 85 //连接到 EMIO31


#define J_IN3 		   K14 //连接到 EMIO0
#define J_IN2 		   J14 //连接到 EMIO1
#define J_IN1 		   L16 //连接到 EMIO2
#define J_IN4 		   L17 //连接到 EMIO3
#define EM_P19 		   P19 //连接到 EMIO4
#define EM_N18 		   N18 //连接到 EMIO5
#define X_CS 		   V8 //连接到 EMIO6
#define X_DC 		   V7 //连接到 EMIO7
#define X_RES 		   U7 //连接到 EMIO8
#define X_SDA 		   U5 //连接到 EMIO9
#define X_SCL 		   T5 //连接到 EMIO10
#define R_SIGNAL 	   N20 //连接到 EMIO11
#define DIR_R_SIGNAL   P20 //连接到 EMIO12
#define EM_L20 		   L20 //连接到 EMIO13
#define EM_A20 		   A20 //连接到 EMIO14
#define MA_RX		   F16 //连接到 EMIO15
#define MA_TX		   N15 //连接到 EMIO16
#define SLO_RX		   L14 //连接到 EMIO17
#define SLO_TX		   L15 //连接到 EMIO18
#define AM2302_1_SDA   N17 //连接到 EMIO19
#define AM2302_2_SDA   P18 //连接到 EMIO20
#define AM2302_3_SDA   R19 //连接到 EMIO21
#define DIR_AM2302_1   R17 //连接到 EMIO22
#define DIR_AM2302_2   R16 //连接到 EMIO23
#define DIR_AM2302_3   P16 //连接到 EMIO24
#define TRIGER_OUT_3V3 U20 //连接到 EMIO25
#define T1			   K19 //连接到 EMIO26
#define T2 			   J19 //连接到 EMIO27
#define R1 			   G19 //连接到 EMIO28
#define R2 			   G20 //连接到 EMIO29
#define DIR_T 		   J20 //连接到 EMIO30
#define DIR_R 		   H20 //连接到 EMIO31
#define GY_25_TX 	   86 //连接到 EMIO32
#define GY_25_RX 	   87 //连接到 EMIO33

extern XGpioPs gpiops_inst; //PS 端 GPIO 驱动实例
extern XGpioPs_Config *gpiops_cfg_ptr; //PS 端 GPIO 配置信息

extern XScuGic xInterruptController;// 引用FreeRTOS已初始化的中断控制器

#endif /* SRC_MAIN_H_ */
