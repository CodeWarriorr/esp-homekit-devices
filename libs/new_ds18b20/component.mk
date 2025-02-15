# Component makefile for new_ds18b20

# expected anyone using bmp driver includes it as 'ds18b20/ds18b20.h'
INC_DIRS += $(new_ds18b20_ROOT)..

# args for passing into compile rule generation
new_ds18b20_SRC_DIR =  $(new_ds18b20_ROOT)

# users can override this setting and get console debug output
DS18B20_DEBUG ?= 0
ifeq ($(DS18B20_DEBUG),1)
	ds18b20_CFLAGS = $(CFLAGS) -DDS18B20_DEBUG
endif

$(eval $(call component_compile_rules,new_ds18b20))
