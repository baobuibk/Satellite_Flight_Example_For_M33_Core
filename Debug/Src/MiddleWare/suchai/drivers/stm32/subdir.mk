################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/drivers/stm32/cpu.c \
../Src/MiddleWare/suchai/drivers/stm32/i2c.c \
../Src/MiddleWare/suchai/drivers/stm32/init.c \
../Src/MiddleWare/suchai/drivers/stm32/mem.c 

OBJS += \
./Src/MiddleWare/suchai/drivers/stm32/cpu.o \
./Src/MiddleWare/suchai/drivers/stm32/i2c.o \
./Src/MiddleWare/suchai/drivers/stm32/init.o \
./Src/MiddleWare/suchai/drivers/stm32/mem.o 

C_DEPS += \
./Src/MiddleWare/suchai/drivers/stm32/cpu.d \
./Src/MiddleWare/suchai/drivers/stm32/i2c.d \
./Src/MiddleWare/suchai/drivers/stm32/init.d \
./Src/MiddleWare/suchai/drivers/stm32/mem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/drivers/stm32/%.o Src/MiddleWare/suchai/drivers/stm32/%.su Src/MiddleWare/suchai/drivers/stm32/%.cyclo: ../Src/MiddleWare/suchai/drivers/stm32/%.c Src/MiddleWare/suchai/drivers/stm32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DHSE_VALUE=25000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DEXTERNAL_CLOCK_VALUE=12288000 -DHSI_VALUE=16000000 -DLSI_VALUE=32000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=0 -DART_ACCELERATOR_ENABLE=0 -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include/app/system" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-drivers-2f-stm32

clean-Src-2f-MiddleWare-2f-suchai-2f-drivers-2f-stm32:
	-$(RM) ./Src/MiddleWare/suchai/drivers/stm32/cpu.cyclo ./Src/MiddleWare/suchai/drivers/stm32/cpu.d ./Src/MiddleWare/suchai/drivers/stm32/cpu.o ./Src/MiddleWare/suchai/drivers/stm32/cpu.su ./Src/MiddleWare/suchai/drivers/stm32/i2c.cyclo ./Src/MiddleWare/suchai/drivers/stm32/i2c.d ./Src/MiddleWare/suchai/drivers/stm32/i2c.o ./Src/MiddleWare/suchai/drivers/stm32/i2c.su ./Src/MiddleWare/suchai/drivers/stm32/init.cyclo ./Src/MiddleWare/suchai/drivers/stm32/init.d ./Src/MiddleWare/suchai/drivers/stm32/init.o ./Src/MiddleWare/suchai/drivers/stm32/init.su ./Src/MiddleWare/suchai/drivers/stm32/mem.cyclo ./Src/MiddleWare/suchai/drivers/stm32/mem.d ./Src/MiddleWare/suchai/drivers/stm32/mem.o ./Src/MiddleWare/suchai/drivers/stm32/mem.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-drivers-2f-stm32

