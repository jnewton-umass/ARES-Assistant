/*
  Quick and dirty functions that make serial communications work.
*/

#include "avr/io.h"
#define F_CPU 16000000UL
#define UBRR_VALUE (((F_CPU / (BAUD * 16UL))) - 1)
#include "USART.c"
