################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/port/sd/ff.c \
../src/port/sd/mmc.c \
../src/port/sd/sd.c 

OBJS += \
./src/port/sd/ff.o \
./src/port/sd/mmc.o \
./src/port/sd/sd.o 

C_DEPS += \
./src/port/sd/ff.d \
./src/port/sd/mmc.d \
./src/port/sd/sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/port/sd/%.o: ../src/port/sd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../ucos-ii_timer_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


