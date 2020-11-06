#include <inttypes.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <stdio.h>
#include <stdlib.h>

#define uint_8 PORTA 0x22
#define uint_8 DDRA 0x21
#define uint_8 PINA 0x20

int main(void) {
    PORTA = 0b11111111
}