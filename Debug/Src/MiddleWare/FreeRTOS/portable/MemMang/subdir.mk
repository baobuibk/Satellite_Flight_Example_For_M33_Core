################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/FreeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./Src/MiddleWare/FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./Src/MiddleWare/FreeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/FreeRTOS/portable/MemMang/%.o Src/MiddleWare/FreeRTOS/portable/MemMang/%.su Src/MiddleWare/FreeRTOS/portable/MemMang/%.cyclo: ../Src/MiddleWare/FreeRTOS/portable/MemMang/%.c Src/MiddleWare/FreeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/wrapper" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/include/app/system" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/os/include/os" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/flight" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/dio/stm32" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/dio" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/spi" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Components/i2c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FlightSystem/lib/libcsp/src" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/Devices/tca6416" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-MemMang

clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./Src/MiddleWare/FreeRTOS/portable/MemMang/heap_4.cyclo ./Src/MiddleWare/FreeRTOS/portable/MemMang/heap_4.d ./Src/MiddleWare/FreeRTOS/portable/MemMang/heap_4.o ./Src/MiddleWare/FreeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-MemMang

