BASENAME  = mischiefmakers

BUILD_DIR = build
ASM_DIR   = asm
ASM_DIRS  = $(ASM_DIR) $(ASM_DIR)/os $(ASM_DIR)/io $(ASM_DIR)/audio $(ASM_DIR)/rmon $(ASM_DIR)/libc $(ASM_DIR)/host $(ASM_DIR)/logger $(ASM_DIR)/gu $(ASM_DIR)/sp $(ASM_DIR)/eeprom $(ASM_DIR)/pi $(ASM_DIR)/ai $(ASM_DIR)/error $(ASM_DIR)/si $(ASM_DIR)/rsp\
			$(ASM_DIR)/data $(ASM_DIR)/data/os $(ASM_DIR)/data/io $(ASM_DIR)/data/audio $(ASM_DIR)/data/rmon $(ASM_DIR)/data/libc $(ASM_DIR)/data/host $(ASM_DIR)/data/logger $(ASM_DIR)/data/gu $(ASM_DIR)/data/sp\
			$(ASM_DIR) $(ASM_DIR)/ActorFuncs1 $(ASM_DIR)/ActorFuncs2 $(ASM_DIR)/ActorFuncs3 $(ASM_DIR)/ActorFuncs4 $(ASM_DIR)/ActorFuncs5
BIN_DIR	  = assets
BIN_DIRS  = $(BIN_DIR) $(BIN_DIR)/ActorFuncs1 $(BIN_DIR)/ActorFuncs2 $(BIN_DIR)/ActorFuncs3 $(BIN_DIR)/ActorFuncs4 $(BIN_DIR)/ActorFuncs5
SRC_DIR   = src
SRC_DIRS  = $(SRC_DIR) $(SRC_DIR)/ActorFuncs1 $(SRC_DIR)/ActorFuncs2 $(SRC_DIR)/ActorFuncs3 $(SRC_DIR)/ActorFuncs4 $(SRC_DIR)/ActorFuncs5
SRC_DIRS_ULTRA =$(SRC_DIR)/os $(SRC_DIR)/io $(SRC_DIR)/audio $(SRC_DIR)/rmon $(SRC_DIR)/libc $(SRC_DIR)/host $(SRC_DIR)/logger $(SRC_DIR)/gu $(SRC_DIR)/sp $(SRC_DIR)/eeprom $(SRC_DIR)/pi $(SRC_DIR)/ai $(SRC_DIR)/error $(SRC_DIR)/si $(SRC_DIR)/rsp\
			$(SRC_DIR)/data $(SRC_DIR)/data/os $(SRC_DIR)/data/io $(SRC_DIR)/data/audio $(SRC_DIR)/data/rmon $(SRC_DIR)/data/libc $(SRC_DIR)/data/host $(SRC_DIR)/data/logger $(SRC_DIR)/data/gu $(SRC_DIR)/data/sp
TOOLS_DIR := tools

S_FILES   = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
C_FILES   = $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
C_FILES_ULTRA   = $(foreach dir,$(SRC_DIRS_ULTRA),$(wildcard $(dir)/*.c))
BIN_FILES = $(foreach dir,$(BIN_DIRS),$(wildcard $(dir)/*.bin))
O_FILES := $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file).o) \
           $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file).o) \
		   $(foreach file,$(C_FILES_ULTRA),$(BUILD_DIR)/$(file).o) \
           $(foreach file,$(BIN_FILES),$(BUILD_DIR)/$(file).o)


TARGET = $(BUILD_DIR)/$(BASENAME)
LD_SCRIPT = $(BASENAME).ld

CROSS = mips-linux-gnu-
AS = $(CROSS)as
CPP = cpp
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy
PYTHON = python3
N64CRC = tools/n64crc

OBJCOPYFLAGS = -O binary

CC := $(TOOLS_DIR)/ido_recomp/linux/5.3/cc

OPT_FLAGS := -O2
MIPSISET := -mips1 -o32
MIPSISET_ULTRA := -mips2 -g1 -o32
INCLUDE_CFLAGS := -I . -I include -I libreultra/include/2.0I
ASFLAGS = -EB -mtune=vr4300 -march=vr4300 -mabi=32 -I include

# Files requiring pre/post-processing
GREP := grep -rl
GLOBAL_ASM_C_FILES := $(shell $(GREP) GLOBAL_ASM $(SRC_DIR) </dev/null 2>/dev/null)
GLOBAL_ASM_O_FILES := $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file).o)

CFLAGS := -G0 -Xfullwarn -Xcpluscomm -signed -nostdinc -non_shared -Wab,-r4300_mul
CFLAGS += -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -DWIN32
# ignore compiler warnings about anonymous structs
CFLAGS += -woff 649,838
CFLAGS += $(INCLUDE_CFLAGS)
CC_CHECK := gcc -fsyntax-only -fsigned-char -m32 -std=gnu90 -Wall -Wextra -Wno-format-security -Wno-unknown-pragmas -Wno-main -DAVOID_UB -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -DWIN32 $(INCLUDE_CFLAGS)

LDFLAGS = -T $(LD_SCRIPT) -Map $(TARGET).map -T undefined_syms_auto.txt -T undefined_funcs_auto.txt -T undefined_funcs.txt -T undefined_syms.txt --no-check-sections

ASM_PROCESSOR_DIR := $(TOOLS_DIR)/asm-processor

### Optimisation Overrides

### Targets

default: all

all: dirs $(TARGET).z64 check

check: $(TARGET).z64 $(N64CRC)
	$(N64CRC) $<
	@md5sum $<
	@md5sum -c checksum.md5

dirs:
	$(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(BIN_DIRS),$(shell mkdir -p $(BUILD_DIR)/$(dir)))

nuke:
	rm -rf asm
	rm -rf assets
	rm -rf build
	rm -f *auto.txt

clean:
	rm -rf build

setup:
	$(PYTHON) tools/splat/split.py $(BASENAME).yaml

context:
	rm -f ctx.c ctx_includes.c
	find include/ src/ -type f -name "*.h" | sed -e 's/.*/#include "\0"/' > ctx_includes.c
	$(PYTHON) tools/m2ctx.py ctx_includes.c

compare:
	$(PYTHON) first_diff.py

### Recipes

$(TARGET).elf: $(O_FILES)
	@$(LD) $(LDFLAGS) -o $@

ifndef PERMUTER
$(GLOBAL_ASM_O_FILES): $(BUILD_DIR)/%.c.o: %.c
	$(PYTHON) $(ASM_PROCESSOR_DIR)/asm_processor.py $(OPT_FLAGS) $< > $(BUILD_DIR)/$<
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c -32 $(CFLAGS) $(OPT_FLAGS) $(MIPSISET) -o $@ $(BUILD_DIR)/$<
	$(PYTHON) $(ASM_PROCESSOR_DIR)/asm_processor.py $(OPT_FLAGS) $< --post-process $@ --assembler "$(AS) $(ASFLAGS)" --asm-prelude $(ASM_PROCESSOR_DIR)/prelude.s
endif

# non asm-processor recipe
$(BUILD_DIR)/%.c.o: %.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) $(OPT_FLAGS) $(MIPSISET) -o $@ $<

$(BUILD_DIR)/%.s.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.bin.o: %.bin
	$(LD) -r -b binary -o $@ $<

$(TARGET).bin: $(TARGET).elf
	$(OBJCOPY) $(OBJCOPYFLAGS) $< $@

$(TARGET).z64: $(TARGET).bin
	@cp $< $@

$(N64CRC): tools/n64crc.c
	make -C tools

### Settings
.SECONDARY:
.PHONY: all clean default
SHELL = /bin/bash -e -o pipefail
