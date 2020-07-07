################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/port/guest_os_fctns.c \
../src/port/performance.c \
../src/port/syscall_list.c 

S_UPPER_SRCS += \
../src/port/guest_os_start.S \
../src/port/guest_os_start_pre.S \
../src/port/syscall.S 

OBJS += \
./src/port/guest_os_fctns.o \
./src/port/guest_os_start.o \
./src/port/guest_os_start_pre.o \
./src/port/performance.o \
./src/port/syscall.o \
./src/port/syscall_list.o 

S_UPPER_DEPS += \
./src/port/guest_os_start.d \
./src/port/guest_os_start_pre.d \
./src/port/syscall.d 

C_DEPS += \
./src/port/guest_os_fctns.d \
./src/port/performance.d \
./src/port/syscall_list.d 


# Each subdirectory must supply rules for building sources it contributes
src/port/%.o: ../src/port/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../ucos_dma_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/port/%.o: ../src/port/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../ucos_dma_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


