#include <stdio.h>
#include <io.h>
#include "system.h"
#include <unistd.h>

int main() {
  int read_value;

  ///////////////////////////////
  // Read and write 32-bit RAM //
  ///////////////////////////////
  // Write to the first location in the 32-bit RAM
  IOWR_32DIRECT(RAM_32BIT_BASE, 0, 0x01234567);
  // Write to the second location in the 32-bit RAM
  IOWR_32DIRECT(RAM_32BIT_BASE, 4, 0x89ABCDEF);
  // Read the first location in the 32-bit RAM
  read_value = IORD_32DIRECT(RAM_32BIT_BASE,0);
  printf("Read 0x%08X at address 0x%08X\n", read_value, RAM_32BIT_BASE);
  // Read the second location in the 32-bit RAM
  read_value = IORD_32DIRECT(RAM_32BIT_BASE,4);
  printf("Read 0x%08X at address 0x%08X\n", read_value, RAM_32BIT_BASE+4);

  printf("\nPress Ctrl-C to exit now!.\n");

  ///////////////////
  // Blink the LED //
  ///////////////////
  while (1) {
    IOWR_8DIRECT(PIO_8BIT_BASE, 0, 0x01);
    usleep(1000000);
    IOWR_8DIRECT(PIO_8BIT_BASE, 0, 0x00);
    usleep(1000000);
  }

  return 0;
}
