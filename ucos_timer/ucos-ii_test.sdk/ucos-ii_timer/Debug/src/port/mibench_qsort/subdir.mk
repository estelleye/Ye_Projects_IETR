################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/port/mibench_qsort/qsort_large.c \
../src/port/mibench_qsort/qsort_small.c 

OBJS += \
./src/port/mibench_qsort/qsort_large.o \
./src/port/mibench_qsort/qsort_small.o 

C_DEPS += \
./src/port/mibench_qsort/qsort_large.d \
./src/port/mibench_qsort/qsort_small.d 


# Each subdirectory must supply rules for building sources it contributes
src/port/mibench_qsort/%.o: ../src/port/mibench_qsort/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../ucos-ii_timer_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


