################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/include/devcfg.c \
../src/include/ff.c \
../src/include/fsbl_hooks.c \
../src/include/mmc.c \
../src/include/nand.c \
../src/include/pcap.c \
../src/include/ps7_init.c \
../src/include/sd.c \
../src/include/xtime_l.c 

S_UPPER_SRCS += \
../src/include/fsbl_handoff.S 

OBJS += \
./src/include/devcfg.o \
./src/include/ff.o \
./src/include/fsbl_handoff.o \
./src/include/fsbl_hooks.o \
./src/include/mmc.o \
./src/include/nand.o \
./src/include/pcap.o \
./src/include/ps7_init.o \
./src/include/sd.o \
./src/include/xtime_l.o 

S_UPPER_DEPS += \
./src/include/fsbl_handoff.d 

C_DEPS += \
./src/include/devcfg.d \
./src/include/ff.d \
./src/include/fsbl_hooks.d \
./src/include/mmc.d \
./src/include/nand.d \
./src/include/pcap.d \
./src/include/ps7_init.d \
./src/include/sd.d \
./src/include/xtime_l.d 


# Each subdirectory must supply rules for building sources it contributes
src/include/%.o: ../src/include/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../VHA_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/include/%.o: ../src/include/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../VHA_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


