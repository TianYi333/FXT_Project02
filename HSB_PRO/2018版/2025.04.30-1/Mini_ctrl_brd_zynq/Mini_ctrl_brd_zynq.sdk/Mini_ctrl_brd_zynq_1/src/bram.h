/*
 * bram.h
 *
 *  Created on: 2025年4月30日
 *      Author: ASUS-PC
 */

#ifndef SRC_BRAM_H_
#define SRC_BRAM_H_

#include "main.h"
#include "pl_bram_rd.h"
#include "xbram.h"

#define PL_BRAM_BASE 		XPAR_PL_BRAM_RD_0_S00_AXI_BASEADDR //PL_RAM_RD 基地址
#define PL_BRAM_START 		PL_BRAM_RD_S00_AXI_SLV_REG0_OFFSET //RAM 读开始寄存器地址
#define PL_BRAM_START_ADDR 	PL_BRAM_RD_S00_AXI_SLV_REG1_OFFSET //RAM 起始寄存器地址
#define PL_BRAM_LEN 		PL_BRAM_RD_S00_AXI_SLV_REG2_OFFSET //PL 读 RAM 的深度

#define START_ADDR 		0 //RAM 起始地址 范围:0~1023
#define BRAM_DATA_BYTE 	4 //BRAM 数据字节个数

void str_wr_bram();
void str_rd_bram();

extern char ch_data[1024]; //写入 BRAM 的字符数组
extern int ch_data_len; //写入 BRAM 的字符个数


#endif /* SRC_BRAM_H_ */
