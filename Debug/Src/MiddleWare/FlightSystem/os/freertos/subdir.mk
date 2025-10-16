################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/FlightSystem/os/freertos/osDelay.c \
../Src/MiddleWare/FlightSystem/os/freertos/osMalloc.c \
../Src/MiddleWare/FlightSystem/os/freertos/osQueue.c \
../Src/MiddleWare/FlightSystem/os/freertos/osScheduler.c \
../Src/MiddleWare/FlightSystem/os/freertos/osSemphr.c \
../Src/MiddleWare/FlightSystem/os/freertos/osThread.c 

OBJS += \
./Src/MiddleWare/FlightSystem/os/freertos/osDelay.o \
./Src/MiddleWare/FlightSystem/os/freertos/osMalloc.o \
./Src/MiddleWare/FlightSystem/os/freertos/osQueue.o \
./Src/MiddleWare/FlightSystem/os/freertos/osScheduler.o \
./Src/MiddleWare/FlightSystem/os/freertos/osSemphr.o \
./Src/MiddleWare/FlightSystem/os/freertos/osThread.o 

C_DEPS += \
./Src/MiddleWare/FlightSystem/os/freertos/osDelay.d \
./Src/MiddleWare/FlightSystem/os/freertos/osMalloc.d \
./Src/MiddleWare/FlightSystem/os/freertos/osQueue.d \
./Src/MiddleWare/FlightSystem/os/freertos/osScheduler.d \
./Src/MiddleWare/FlightSystem/os/freertos/osSemphr.d \
./Src/MiddleWare/FlightSystem/os/freertos/osThread.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/FlightSystem/os/freertos/%.o Src/MiddleWare/FlightSystem/os/freertos/%.su Src/MiddleWare/FlightSystem/os/freertos/%.cyclo: ../Src/MiddleWare/FlightSystem/os/freertos/%.c Src/MiddleWare/FlightSystem/os/freertos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/wrapper" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include/app/system" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/flight" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/dio/stm32" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/dio" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/spi" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/i2c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/libcsp/src" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Devices/tca6416" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Devices/pca9685" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Devices/AD4114" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/ntc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-FlightSystem-2f-os-2f-freertos

clean-Src-2f-MiddleWare-2f-FlightSystem-2f-os-2f-freertos:
	-$(RM) ./Src/MiddleWare/FlightSystem/os/freertos/osDelay.cyclo ./Src/MiddleWare/FlightSystem/os/freertos/osDelay.d ./Src/MiddleWare/FlightSystem/os/freertos/osDelay.o ./Src/MiddleWare/FlightSystem/os/freertos/osDelay.su ./Src/MiddleWare/FlightSystem/os/freertos/osMalloc.cyclo ./Src/MiddleWare/FlightSystem/os/freertos/osMalloc.d ./Src/MiddleWare/FlightSystem/os/freertos/osMalloc.o ./Src/MiddleWare/FlightSystem/os/freertos/osMalloc.su ./Src/MiddleWare/FlightSystem/os/freertos/osQueue.cyclo ./Src/MiddleWare/FlightSystem/os/freertos/osQueue.d ./Src/MiddleWare/FlightSystem/os/freertos/osQueue.o ./Src/MiddleWare/FlightSystem/os/freertos/osQueue.su ./Src/MiddleWare/FlightSystem/os/freertos/osScheduler.cyclo ./Src/MiddleWare/FlightSystem/os/freertos/osScheduler.d ./Src/MiddleWare/FlightSystem/os/freertos/osScheduler.o ./Src/MiddleWare/FlightSystem/os/freertos/osScheduler.su ./Src/MiddleWare/FlightSystem/os/freertos/osSemphr.cyclo ./Src/MiddleWare/FlightSystem/os/freertos/osSemphr.d ./Src/MiddleWare/FlightSystem/os/freertos/osSemphr.o ./Src/MiddleWare/FlightSystem/os/freertos/osSemphr.su ./Src/MiddleWare/FlightSystem/os/freertos/osThread.cyclo ./Src/MiddleWare/FlightSystem/os/freertos/osThread.d ./Src/MiddleWare/FlightSystem/os/freertos/osThread.o ./Src/MiddleWare/FlightSystem/os/freertos/osThread.su

.PHONY: clean-Src-2f-MiddleWare-2f-FlightSystem-2f-os-2f-freertos

