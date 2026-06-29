.PHONY: all

all: odc odvm

CFLAGS = -std=c23 -Wall -Wextra -Werror
CC = cc $(CFLAGS)

odc: src/odc.c
	$(CC) -o $@ src/odc.c

odvm: src/odvm.c
	$(CC) -o $@ src/odvm.c
