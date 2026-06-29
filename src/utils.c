#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

void panic(const char *fmt, ...) {
  va_list args;
  fprintf(stderr, "fatal error: ");
  va_start(args, fmt);
  fprintf(stderr, fmt, args);
  va_end(args);
  fputc('\n', stderr);
  exit(EXIT_FAILURE);
}
