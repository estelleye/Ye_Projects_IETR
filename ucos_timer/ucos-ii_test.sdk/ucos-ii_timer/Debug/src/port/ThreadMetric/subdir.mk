################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/port/ThreadMetric/tm_basic_processing_test.c \
../src/port/ThreadMetric/tm_interrupt_preemption_processing_test.c \
../src/port/ThreadMetric/tm_interrupt_processing_test.c \
../src/port/ThreadMetric/tm_memory_allocation_test.c \
../src/port/ThreadMetric/tm_message_processing_test.c \
../src/port/ThreadMetric/tm_porting_layer.c \
../src/port/ThreadMetric/tm_preemptive_scheduling_test.c \
../src/port/ThreadMetric/tm_synchronization_processing_test.c 

OBJS += \
./src/port/ThreadMetric/tm_basic_processing_test.o \
./src/port/ThreadMetric/tm_interrupt_preemption_processing_test.o \
./src/port/ThreadMetric/tm_interrupt_processing_test.o \
./src/port/ThreadMetric/tm_memory_allocation_test.o \
./src/port/ThreadMetric/tm_message_processing_test.o \
./src/port/ThreadMetric/tm_porting_layer.o \
./src/port/ThreadMetric/tm_preemptive_scheduling_test.o \
./src/port/ThreadMetric/tm_synchronization_processing_test.o 

C_DEPS += \
./src/port/ThreadMetric/tm_basic_processing_test.d \
./src/port/ThreadMetric/tm_interrupt_preemption_processing_test.d \
./src/port/ThreadMetric/tm_interrupt_processing_test.d \
./src/port/ThreadMetric/tm_memory_allocation_test.d \
./src/port/ThreadMetric/tm_message_processing_test.d \
./src/port/ThreadMetric/tm_porting_layer.d \
./src/port/ThreadMetric/tm_preemptive_scheduling_test.d \
./src/port/ThreadMetric/tm_synchronization_processing_test.d 


# Each subdirectory must supply rules for building sources it contributes
src/port/ThreadMetric/%.o: ../src/port/ThreadMetric/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../ucos-ii_timer_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


