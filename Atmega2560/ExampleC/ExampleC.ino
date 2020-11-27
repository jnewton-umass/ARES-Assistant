#include <../include/avr/io.h>
#include <../include/avr/iomxx0_1.h>
#include <../include/avr/pgmspace.h>
#include <../include/avr/delay.h>
#include <../include/stdio.h>
#include <../include/stdlib.h>
#include <math.h>
#include <../include/USART.c>
#define LED_ON    PORTD |= (1<<7)
#define LED_OFF   PORTD &= ~(1<<7)
#define LED_TOGGLE    PIND |= (1<<PIND7)

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
  printString("Hello");
  LED_ON;
  float i = 0.0;
  while (1)
  {
    LED_TOGGLE;
    i = PINF0;
    printf("PIN0 = %f \n", i);
    i = PINF1;
    printf("PIN1 = %f \n", i);
    delay(500);
  }         /* End event loop */
  return 0; /* This line is never reached */
}