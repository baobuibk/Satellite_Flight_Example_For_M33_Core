################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/port.c 

OBJS += \
./Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/port.o 

C_DEPS += \
./Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/port.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/%.o Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/%.su Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/%.cyclo: ../Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/%.c Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/igrf/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-Paradigm-2f-Tern_EE-2f-large_untested

clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-Paradigm-2f-Tern_EE-2f-large_untested:
	-$(RM) ./Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/port.cyclo ./Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/port.d ./Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/port.o ./Src/MiddleWare/FreeRTOS/portable/Paradigm/Tern_EE/large_untested/port.su

.PHONY: clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-Paradigm-2f-Tern_EE-2f-large_untested

