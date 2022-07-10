# Tools
CC := gcc
CFLAGS := -I. -Wall -Wextra -Wno-unused-parameter -pedantic -Ofast -s

# Not sure if n64crc has a repo somewhere that I should pull as a submodule
ifeq ($(OS),Windows_NT)
PROGRAMS := n64crc.exe
else
PROGRAMS := n64crc
endif

default: all

all: $(PROGRAMS)

n64crc:
	$(CC) $(CFLAGS) -o $@ $@.c
