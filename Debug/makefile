################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Src/MiddleWare/printf/subdir.mk
-include Src/MiddleWare/container/subdir.mk
-include Src/MiddleWare/STDIO/subdir.mk
-include Src/MiddleWare/FreeRTOS/portable/MemMang/subdir.mk
-include Src/MiddleWare/FreeRTOS/portable/GCC/ARM_CM7/r0p1/subdir.mk
-include Src/MiddleWare/FreeRTOS/subdir.mk
-include Src/MiddleWare/FlightSystem/system/subdir.mk
-include Src/MiddleWare/FlightSystem/os/freertos/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/utils/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/storage/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/libcsp/src/transport/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/libcsp/src/rtable/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/libcsp/src/interfaces/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/libcsp/src/drivers/usart/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/libcsp/src/crypto/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/freertos/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/libcsp/src/arch/subdir.mk
-include Src/MiddleWare/FlightSystem/lib/libcsp/src/subdir.mk
-include Src/MiddleWare/FlightSystem/drivers/stm32/subdir.mk
-include Src/Drivers/Devices/tca6416/subdir.mk
-include Src/Drivers/Devices/pca9685/subdir.mk
-include Src/Drivers/Devices/RV3129/subdir.mk
-include Src/Drivers/Devices/MCP4902/subdir.mk
-include Src/Drivers/Devices/LT8722/subdir.mk
-include Src/Drivers/Devices/AS3004204/subdir.mk
-include Src/Drivers/Devices/ADG1414BR/subdir.mk
-include Src/Drivers/Devices/AD4114/subdir.mk
-include Src/Drivers/Components/uart/stm32/subdir.mk
-include Src/Drivers/Components/spi/stm32/subdir.mk
-include Src/Drivers/Components/spi/subdir.mk
-include Src/Drivers/Components/ntc/subdir.mk
-include Src/Drivers/Components/i2c/stm32/subdir.mk
-include Src/Drivers/Components/dio/stm32/subdir.mk
-include Src/BSP/subdir.mk
-include Src/App/src/system/subdir.mk
-include Src/App/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Flight_STM32
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Flight_STM32.elf \

MAP_FILES += \
Flight_STM32.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Flight_STM32.list \


# All Target
all: main-build

# Main-build Target
main-build: Flight_STM32.elf secondary-outputs

# Tool invocations
Flight_STM32.elf Flight_STM32.map: $(OBJS) $(USER_OBJS) D:\PROJECT\LIINSPACE\NANORACK\SPACELIIN_EXP\Projects\Flight_STM32\STM32F746NGHX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Flight_STM32.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"D:\PROJECT\LIINSPACE\NANORACK\SPACELIIN_EXP\Projects\Flight_STM32\STM32F746NGHX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Flight_STM32.map" -Wl,--gc-sections -nodefaultlibs -static  -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Flight_STM32.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Flight_STM32.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Flight_STM32.elf Flight_STM32.list Flight_STM32.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
