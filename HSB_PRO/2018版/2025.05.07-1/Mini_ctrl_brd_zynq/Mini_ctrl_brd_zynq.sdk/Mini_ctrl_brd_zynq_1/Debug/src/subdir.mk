################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/Angle_Sensor.c \
../src/am2302.c \
../src/bram.c \
../src/freertos_tcp_perf_server.c \
../src/iic_phyreset.c \
../src/main.c \
../src/oled.c \
../src/ssd1309_spi.c \
../src/timer_intr.c 

OBJS += \
./src/Angle_Sensor.o \
./src/am2302.o \
./src/bram.o \
./src/freertos_tcp_perf_server.o \
./src/iic_phyreset.o \
./src/main.o \
./src/oled.o \
./src/ssd1309_spi.o \
./src/timer_intr.o 

C_DEPS += \
./src/Angle_Sensor.d \
./src/am2302.d \
./src/bram.d \
./src/freertos_tcp_perf_server.d \
./src/iic_phyreset.d \
./src/main.d \
./src/oled.d \
./src/ssd1309_spi.d \
./src/timer_intr.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Mini_ctrl_brd_zynq_1_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


