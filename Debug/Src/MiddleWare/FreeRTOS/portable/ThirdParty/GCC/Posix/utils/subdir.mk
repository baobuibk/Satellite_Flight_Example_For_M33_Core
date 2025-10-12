################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/wait_for_event.c 

OBJS += \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/wait_for_event.o 

C_DEPS += \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/wait_for_event.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/%.o Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/%.su Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/%.cyclo: ../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/%.c Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/igrf/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-ThirdParty-2f-GCC-2f-Posix-2f-utils

clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-ThirdParty-2f-GCC-2f-Posix-2f-utils:
	-$(RM) ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/wait_for_event.cyclo ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/wait_for_event.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/wait_for_event.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Posix/utils/wait_for_event.su

.PHONY: clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-ThirdParty-2f-GCC-2f-Posix-2f-utils

