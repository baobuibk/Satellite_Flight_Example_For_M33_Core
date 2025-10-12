################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/FlightSystem/drivers/rpi/cpu.c \
../Src/MiddleWare/FlightSystem/drivers/rpi/i2c.c \
../Src/MiddleWare/FlightSystem/drivers/rpi/init.c \
../Src/MiddleWare/FlightSystem/drivers/rpi/mem.c 

OBJS += \
./Src/MiddleWare/FlightSystem/drivers/rpi/cpu.o \
./Src/MiddleWare/FlightSystem/drivers/rpi/i2c.o \
./Src/MiddleWare/FlightSystem/drivers/rpi/init.o \
./Src/MiddleWare/FlightSystem/drivers/rpi/mem.o 

C_DEPS += \
./Src/MiddleWare/FlightSystem/drivers/rpi/cpu.d \
./Src/MiddleWare/FlightSystem/drivers/rpi/i2c.d \
./Src/MiddleWare/FlightSystem/drivers/rpi/init.d \
./Src/MiddleWare/FlightSystem/drivers/rpi/mem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/FlightSystem/drivers/rpi/%.o Src/MiddleWare/FlightSystem/drivers/rpi/%.su Src/MiddleWare/FlightSystem/drivers/rpi/%.cyclo: ../Src/MiddleWare/FlightSystem/drivers/rpi/%.c Src/MiddleWare/FlightSystem/drivers/rpi/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DHSE_VALUE=25000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DEXTERNAL_CLOCK_VALUE=12288000 -DHSI_VALUE=16000000 -DLSI_VALUE=32000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=0 -DART_ACCELERATOR_ENABLE=0 -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/wrapper" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include/app/system" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/stm32/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-FlightSystem-2f-drivers-2f-rpi

clean-Src-2f-MiddleWare-2f-FlightSystem-2f-drivers-2f-rpi:
	-$(RM) ./Src/MiddleWare/FlightSystem/drivers/rpi/cpu.cyclo ./Src/MiddleWare/FlightSystem/drivers/rpi/cpu.d ./Src/MiddleWare/FlightSystem/drivers/rpi/cpu.o ./Src/MiddleWare/FlightSystem/drivers/rpi/cpu.su ./Src/MiddleWare/FlightSystem/drivers/rpi/i2c.cyclo ./Src/MiddleWare/FlightSystem/drivers/rpi/i2c.d ./Src/MiddleWare/FlightSystem/drivers/rpi/i2c.o ./Src/MiddleWare/FlightSystem/drivers/rpi/i2c.su ./Src/MiddleWare/FlightSystem/drivers/rpi/init.cyclo ./Src/MiddleWare/FlightSystem/drivers/rpi/init.d ./Src/MiddleWare/FlightSystem/drivers/rpi/init.o ./Src/MiddleWare/FlightSystem/drivers/rpi/init.su ./Src/MiddleWare/FlightSystem/drivers/rpi/mem.cyclo ./Src/MiddleWare/FlightSystem/drivers/rpi/mem.d ./Src/MiddleWare/FlightSystem/drivers/rpi/mem.o ./Src/MiddleWare/FlightSystem/drivers/rpi/mem.su

.PHONY: clean-Src-2f-MiddleWare-2f-FlightSystem-2f-drivers-2f-rpi

