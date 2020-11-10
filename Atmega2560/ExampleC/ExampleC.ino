#include <../include/avr/io.h>
#include <../include/avr/iomxx0_1.h>
#include <../include/avr/pgmspace.h>
#include <../include/util/delay_basic.h>
#include <stdio.h>
#include <stdlib.h>

void ioinit(void) /* Note [6] */
{
  DDRB = (1 << DDB7);
  OCR0A = 30;
  
}
static inline void initTimer0(void)
{
  
}

int main(void)
{
  ioinit();
  initTimer0();
  // ------ Event loop ------ //
  while (1)
  {
    
  }         /* End event loop */
  return 0; /* This line is never reached */
}