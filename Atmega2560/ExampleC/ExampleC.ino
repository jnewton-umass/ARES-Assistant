#include "./include/avr/io.h"
#include "./include/avr/iomxx0_1.h"
#include "./include/avr/pgmspace.h"
#include "./include/avr/delay.h"
#include "./include/stdio.h"
#include "./include/stdlib.h"
#include <math.h>
#define BAUD 9600
#include "./include/USART.h"
#define __AVR_ATmega2560__
#define LED_ON    PORTD |= (1<<7)
#define LED_OFF   PORTD &= ~(1<<7)
#define LED_TOGGLE    PIND &= (1<<PIND7)

void ioinit(void) /* Note [6] */
{ 
  DDRF |= (0 << DDF0)|(0 << DDF1);
  DDRD |= (1 << DDD7);
}
int main(void)
{
  //Initialize USART0
  ioinit();
  initUSART();
  LED_ON;
  while (1)
  {
    delay(500);
    LED_OFF;
    transmitByte('N');
    delay(500);
    LED_ON;
  }         /* End event loop */
  return 0; /* This line is never reached */
}