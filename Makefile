.PHONY: all

all: odc odvm

cflags = -std=c23 -Wall -Wextra -Werror
cc = cc $(cflags)

odc_sources = src/odc.c

odc_headers =

odc: $(odc_sources) $(odc_headers)
	$(cc) -o $@ $(odc_sources)

odvm_sources = src/odvm.c \
							 src/utils.c

odvm_headers = src/utils.h

odvm: $(odvm_sources) $(odvm_headers)
	$(cc) -o $@ $(odvm_sources)
