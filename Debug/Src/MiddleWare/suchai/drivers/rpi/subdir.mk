################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/drivers/rpi/cpu.c \
../Src/MiddleWare/suchai/drivers/rpi/i2c.c \
../Src/MiddleWare/suchai/drivers/rpi/init.c \
../Src/MiddleWare/suchai/drivers/rpi/mem.c 

OBJS += \
./Src/MiddleWare/suchai/drivers/rpi/cpu.o \
./Src/MiddleWare/suchai/drivers/rpi/i2c.o \
./Src/MiddleWare/suchai/drivers/rpi/init.o \
./Src/MiddleWare/suchai/drivers/rpi/mem.o 

C_DEPS += \
./Src/MiddleWare/suchai/drivers/rpi/cpu.d \
./Src/MiddleWare/suchai/drivers/rpi/i2c.d \
./Src/MiddleWare/suchai/drivers/rpi/init.d \
./Src/MiddleWare/suchai/drivers/rpi/mem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/drivers/rpi/%.o Src/MiddleWare/suchai/drivers/rpi/%.su Src/MiddleWare/suchai/drivers/rpi/%.cyclo: ../Src/MiddleWare/suchai/drivers/rpi/%.c Src/MiddleWare/suchai/drivers/rpi/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-drivers-2f-rpi

clean-Src-2f-MiddleWare-2f-suchai-2f-drivers-2f-rpi:
	-$(RM) ./Src/MiddleWare/suchai/drivers/rpi/cpu.cyclo ./Src/MiddleWare/suchai/drivers/rpi/cpu.d ./Src/MiddleWare/suchai/drivers/rpi/cpu.o ./Src/MiddleWare/suchai/drivers/rpi/cpu.su ./Src/MiddleWare/suchai/drivers/rpi/i2c.cyclo ./Src/MiddleWare/suchai/drivers/rpi/i2c.d ./Src/MiddleWare/suchai/drivers/rpi/i2c.o ./Src/MiddleWare/suchai/drivers/rpi/i2c.su ./Src/MiddleWare/suchai/drivers/rpi/init.cyclo ./Src/MiddleWare/suchai/drivers/rpi/init.d ./Src/MiddleWare/suchai/drivers/rpi/init.o ./Src/MiddleWare/suchai/drivers/rpi/init.su ./Src/MiddleWare/suchai/drivers/rpi/mem.cyclo ./Src/MiddleWare/suchai/drivers/rpi/mem.d ./Src/MiddleWare/suchai/drivers/rpi/mem.o ./Src/MiddleWare/suchai/drivers/rpi/mem.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-drivers-2f-rpi

