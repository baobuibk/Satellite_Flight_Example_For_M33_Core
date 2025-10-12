################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port.c \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.c \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.c \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c 

S_UPPER_SRCS += \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S \
../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S 

OBJS += \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.o \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.o 

S_UPPER_DEPS += \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.d 

C_DEPS += \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.d \
./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/%.o Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/%.su Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/%.cyclo: ../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/%.c Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/igrf/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/%.o: ../Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/%.S Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/sgp4/src/c" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/igrf/include" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32

clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32:
	-$(RM) ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.cyclo ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.su ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port.cyclo ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port.su ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.cyclo ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.su ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.cyclo ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.su ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.cyclo ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.su ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.cyclo ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.su ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.o ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.d ./Src/MiddleWare/FreeRTOS/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.o

.PHONY: clean-Src-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32

