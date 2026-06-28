.PHONY: all

all: odc odvm

odc: src/odc.c
	cc -o $@ src/odc.c

odvm: src/odvm.c
	cc -o $@ src/odvm.c
