################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/port/mibench_adpcm/adpcm.c \
../src/port/mibench_adpcm/rawcaudio.c \
../src/port/mibench_adpcm/rawdaudio.c \
../src/port/mibench_adpcm/timing.c 

OBJS += \
./src/port/mibench_adpcm/adpcm.o \
./src/port/mibench_adpcm/rawcaudio.o \
./src/port/mibench_adpcm/rawdaudio.o \
./src/port/mibench_adpcm/timing.o 

C_DEPS += \
./src/port/mibench_adpcm/adpcm.d \
./src/port/mibench_adpcm/rawcaudio.d \
./src/port/mibench_adpcm/rawdaudio.d \
./src/port/mibench_adpcm/timing.d 


# Each subdirectory must supply rules for building sources it contributes
src/port/mibench_adpcm/%.o: ../src/port/mibench_adpcm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../ucos-ii_timer_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


