################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_bridge.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_buffer.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_conn.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_crc32.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_debug.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_dedup.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_endian.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_hex_dump.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_iflist.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_init.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_io.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_port.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_promisc.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_qfifo.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_route.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_service_handler.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_services.c \
../Src/MiddleWare/suchai/lib/libcsp/src/csp_sfp.c 

OBJS += \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_bridge.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_buffer.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_conn.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_crc32.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_debug.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_dedup.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_endian.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_hex_dump.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_iflist.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_init.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_io.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_port.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_promisc.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_qfifo.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_route.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_service_handler.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_services.o \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_sfp.o 

C_DEPS += \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_bridge.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_buffer.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_conn.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_crc32.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_debug.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_dedup.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_endian.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_hex_dump.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_iflist.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_init.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_io.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_port.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_promisc.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_qfifo.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_route.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_service_handler.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_services.d \
./Src/MiddleWare/suchai/lib/libcsp/src/csp_sfp.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MiddleWare/suchai/lib/libcsp/src/%.o Src/MiddleWare/suchai/lib/libcsp/src/%.su Src/MiddleWare/suchai/lib/libcsp/src/%.cyclo: ../Src/MiddleWare/suchai/lib/libcsp/src/%.c Src/MiddleWare/suchai/lib/libcsp/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F746xx -DUSE_FULL_LL_DRIVER -DHSE_VALUE=25000000 -DHSE_STARTUP_TIMEOUT=100 -DLSE_STARTUP_TIMEOUT=5000 -DLSE_VALUE=32768 -DEXTERNAL_CLOCK_VALUE=12288000 -DHSI_VALUE=16000000 -DLSI_VALUE=32000 -DVDD_VALUE=3300 -DPREFETCH_ENABLE=0 -DART_ACCELERATOR_ENABLE=0 -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/drivers/stm32/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/system/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/utils/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/os/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/libcsp/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Configs/csp" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/suchai/lib/storage/include" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/printf" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/Utils" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/container" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/Drivers/uart" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/MiddleWare/STDIO" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/BSP" -I"D:/PROJECT/LIINSPACE/NANORACK/SPACELIIN_EXP/Projects/Flight_STM32/Src/App/simple/include/app/system" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src

clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src:
	-$(RM) ./Src/MiddleWare/suchai/lib/libcsp/src/csp_bridge.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_bridge.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_bridge.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_bridge.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_buffer.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_buffer.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_buffer.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_buffer.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_conn.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_conn.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_conn.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_conn.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_crc32.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_crc32.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_crc32.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_crc32.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_debug.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_debug.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_debug.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_debug.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_dedup.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_dedup.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_dedup.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_dedup.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_endian.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_endian.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_endian.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_endian.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_hex_dump.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_hex_dump.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_hex_dump.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_hex_dump.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_iflist.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_iflist.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_iflist.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_iflist.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_init.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_init.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_init.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_init.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_io.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_io.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_io.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_io.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_port.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_port.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_port.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_port.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_promisc.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_promisc.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_promisc.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_promisc.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_qfifo.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_qfifo.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_qfifo.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_qfifo.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_route.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_route.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_route.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_route.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_service_handler.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_service_handler.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_service_handler.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_service_handler.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_services.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_services.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_services.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_services.su ./Src/MiddleWare/suchai/lib/libcsp/src/csp_sfp.cyclo ./Src/MiddleWare/suchai/lib/libcsp/src/csp_sfp.d ./Src/MiddleWare/suchai/lib/libcsp/src/csp_sfp.o ./Src/MiddleWare/suchai/lib/libcsp/src/csp_sfp.su

.PHONY: clean-Src-2f-MiddleWare-2f-suchai-2f-lib-2f-libcsp-2f-src

