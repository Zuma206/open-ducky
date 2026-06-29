#include "utils.h"
#include <stdio.h>

int main(int argc, char *argv[]) {
  if (argc > 2)
    panic("too many arguments");
  else if (argc < 2)
    panic("too few arguments");
  char *filename = argv[1];
  FILE *program = fopen(filename, "r");
  if (program == nullptr)
    panic("failed to open file: %s", filename);
  return 0;
}
