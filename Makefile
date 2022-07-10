BASENAME  = mischiefmakers

ASM_DIR   = asm
BIN_DIR	  = assets
BUILD_DIR = build
SRC_DIR   = src
TOOLS_DIR = tools

ASM_DIRS  = $(ASM_DIR) $(ASM_DIR)/os $(ASM_DIR)/io $(ASM_DIR)/audio $(ASM_DIR)/rmon $(ASM_DIR)/libc $(ASM_DIR)/host $(ASM_DIR)/logger $(ASM_DIR)/gu $(ASM_DIR)/sp $(ASM_DIR)/eeprom $(ASM_DIR)/pi $(ASM_DIR)/ai $(ASM_DIR)/error $(ASM_DIR)/si $(ASM_DIR)/rsp \
			$(ASM_DIR)/data $(ASM_DIR)/data/os $(ASM_DIR)/data/io $(ASM_DIR)/data/audio $(ASM_DIR)/data/rmon $(ASM_DIR)/data/libc $(ASM_DIR)/data/host $(ASM_DIR)/data/logger $(ASM_DIR)/data/gu $(ASM_DIR)/data/sp \
			$(ASM_DIR) $(ASM_DIR)/ActorFuncs1 $(ASM_DIR)/ActorFuncs2 $(ASM_DIR)/ActorFuncs3 $(ASM_DIR)/ActorFuncs4 $(ASM_DIR)/ActorFuncs5
BIN_DIRS  = $(BIN_DIR) $(BIN_DIR)/ActorFuncs1 $(BIN_DIR)/ActorFuncs2 $(BIN_DIR)/ActorFuncs3 $(BIN_DIR)/ActorFuncs4 $(BIN_DIR)/ActorFuncs5
SRC_DIRS  = $(SRC_DIR) $(SRC_DIR)/ActorFuncs1 $(SRC_DIR)/ActorFuncs2 $(SRC_DIR)/ActorFuncs3 $(SRC_DIR)/ActorFuncs4 $(SRC_DIR)/ActorFuncs5
SRC_DIRS_ULTRA = $(SRC_DIR)/os $(SRC_DIR)/io $(SRC_DIR)/audio $(SRC_DIR)/rmon $(SRC_DIR)/libc $(SRC_DIR)/host $(SRC_DIR)/logger $(SRC_DIR)/gu $(SRC_DIR)/sp $(SRC_DIR)/eeprom $(SRC_DIR)/pi $(SRC_DIR)/ai $(SRC_DIR)/error $(SRC_DIR)/si $(SRC_DIR)/rsp \
			$(SRC_DIR)/data $(SRC_DIR)/data/os $(SRC_DIR)/data/io $(SRC_DIR)/data/audio $(SRC_DIR)/data/rmon $(SRC_DIR)/data/libc $(SRC_DIR)/data/host $(SRC_DIR)/data/logger $(SRC_DIR)/data/gu $(SRC_DIR)/data/sp

S_FILES = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
C_FILES = $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
C_FILES_ULTRA = $(foreach dir,$(SRC_DIRS_ULTRA),$(wildcard $(dir)/*.c))
BIN_FILES = $(foreach dir,$(BIN_DIRS),$(wildcard $(dir)/*.bin))
O_FILES = $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file).o) \
           $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file).o) \
		   $(foreach file,$(C_FILES_ULTRA),$(BUILD_DIR)/$(file).o) \
           $(foreach file,$(BIN_FILES),$(BUILD_DIR)/$(file).o)


TARGET = $(BUILD_DIR)/$(BASENAME)
LD_SCRIPT = $(BASENAME).ld


ifeq ($(OS),Windows_NT)
    DETECTED_OS=windows
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        DETECTED_OS=linux
    endif
    ifeq ($(UNAME_S),Darwin)
        DETECTED_OS=macos
        MAKE=gmake
        CPPFLAGS += -xc++
    endif
endif

CC = $(TOOLS_DIR)/ido_recomp/$(DETECTED_OS)/5.3/cc
ifeq ($(DETECTED_OS),windows)
CROSS 	= mips64-
AS 		= $(TOOLS_DIR)/$(DETECTED_OS)/mips-gcc/$(CROSS)as.exe
CC 		:= $(CC).exe
LD 		= $(TOOLS_DIR)/$(DETECTED_OS)/mips-gcc/$(CROSS)ld.exe
OBJDUMP = $(TOOLS_DIR)/$(DETECTED_OS)/mips-gcc/$(CROSS)objdump.exe
OBJCOPY = $(TOOLS_DIR)/$(DETECTED_OS)/mips-gcc/$(CROSS)objcopy.exe
CPP 	= $(TOOLS_DIR)/$(DETECTED_OS)/gcc/bin/cpp.exe
PYTHON 	= python
N64CRC 	= $(TOOLS_DIR)/n64crc.exe
else
CROSS 	= mips-linux-gnu-
AS 		= $(CROSS)as
LD 		= $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy
CPP 	= cpp
PYTHON 	= python3
N64CRC 	= $(TOOLS_DIR)/n64crc
endif

# Flags
OPT_FLAGS 				= -O2
OPT_FLAGS_ULTRA 		= -O2
MIPS_ARCH_FLAGS_ULTRA 	= -mips2 -g1 -o32
INCLUDE_CC_FLAGS 		= -I . -I include -I ultralib/include
INCLUDE_CC_FLAGS_ULTRA 	= -I ultralib/include
AS_FLAGS 				= -EB -mtune=vr4300 -march=vr4300 -mabi=32 -I include
D_FLAGS 				= -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -DWIN32
D_FLAGS_ULTRA 			= -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -D_MIPS_SZLONG=32 -D__USE_ISOC99 -DNDEBUG -D_FINALROM

CC_FLAGS		= -G0 -Xfullwarn -Xcpluscomm -signed -nostdinc -non_shared $(OPT_FLAGS) $(MIPS_ARCH_FLAGS) $(INCLUDE_CC_FLAGS) $(D_FLAGS) -Wab,-r4300_mul -woff 649,838 # ignore compiler warnings about anonymous structs
CC_FLAGS_ULTRA	= -G0 -Xfullwarn -Xcpluscomm -signed -nostdinc -non_shared $(OPT_FLAGS_ULTRA) $(MIPS_ARCH_FLAGS_ULTRA) $(INCLUDE_CC_FLAGS_ULTRA) $(D_FLAGS_ULTRA)
LD_FLAGS 		= -T $(LD_SCRIPT) -Map $(TARGET).map -T undefined_syms_auto.txt -T undefined_funcs_auto.txt -T undefined_funcs.txt -T undefined_syms.txt --no-check-sections
OBJCOPY_FLAGS 	= -O binary
CC_CHECK 		= gcc -fsyntax-only -fsigned-char -m32 -std=gnu90 -Wall -Wextra -Wno-format-security -Wno-unknown-pragmas -Wno-main -DAVOID_UB -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -DWIN32 $(INCLUDE_CC_FLAGS)

# Files requiring pre/post-processing
GREP = grep -rl
GLOBAL_ASM_C_FILES = $(shell $(GREP) GLOBAL_ASM $(SRC_DIR) </dev/null 2>/dev/null)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file).o)

ASM_PROCESSOR_DIR := $(TOOLS_DIR)/asm-processor

### Optimisation Overrides

### Targets

default: all

all: dirs $(TARGET).z64 check

check: $(TARGET).z64 $(N64CRC)
	$(N64CRC) $<
	@sha1sum $<
	@sha1sum -c checksum.sha1

dirs:
	$(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(BIN_DIRS),$(shell mkdir -p $(BUILD_DIR)/$(dir)))

nuke:
	rm -rf $(ASM_DIR)
	rm -rf $(BIN_DIR)
	rm -rf $(BUILD_DIR)
	rm -f *auto.txt

clean:
	rm -rf $(BUILD_DIR)

setup:
	$(PYTHON) $(TOOLS_DIR)/splat/split.py $(BASENAME).yaml

lineendings:
	find ultralib -type f -exec dos2unix {} \;

context:
	rm -f ctx.c ctx_includes.c
	find include/ $(SRC_DIR)/ -type f -name "*.h" | sed -e 's/.*/#include "\0"/' > ctx_includes.c
	$(PYTHON) $(TOOLS_DIR)/m2ctx.py ctx_includes.c

compare:
	$(PYTHON) first_diff.py

### Recipes

$(TARGET).z64: $(O_FILES)
	$(LD) $(LD_FLAGS) -o $@

ifndef PERMUTER
$(GLOBAL_ASM_O_FILES): $(BUILD_DIR)/%.c.o: %.c
	$(PYTHON) $(ASM_PROCESSOR_DIR)/asm_processor.py $(OPT_FLAGS) $< > $(BUILD_DIR)/$<
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c -32 $(CC_FLAGS) $(MIPS_ARCH_FLAGS) -o $@ $(BUILD_DIR)/$<
	$(PYTHON) $(ASM_PROCESSOR_DIR)/asm_processor.py $(OPT_FLAGS) $< --post-process $@ --assembler "$(AS) $(AS_FLAGS)" --asm-prelude $(ASM_PROCESSOR_DIR)/prelude.inc
endif

# non asm-processor recipe
$(BUILD_DIR)/%.c.o: %.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CC_FLAGS) $(MIPS_ARCH_FLAGS) -o $@ $<

$(BUILD_DIR)/%.s.o: %.s
	$(AS) $(AS_FLAGS) -o $@ $<

$(BUILD_DIR)/%.bin.o: %.bin
	$(LD) -r -b binary -o $@ $<

$(TARGET).bin: $(TARGET).elf
	$(OBJCOPY) $(OBJCOPY_FLAGS) $< $@

$(N64CRC): $(TOOLS_DIR)/n64crc.c
	make -C $(TOOLS_DIR)

### Settings
.SECONDARY:
.PHONY: all clean default
SHELL = /bin/bash -e -o pipefail
