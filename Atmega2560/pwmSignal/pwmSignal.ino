#include <avr/Arduino.h>
#include <avr/SPI.h>
int pwd = 20;
void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
    pinMode(3, OUTPUT);
    SPI.begin();
    

}

void loop() {
    digitalWrite(LED_BUILTIN, LOW);
    delay(2000);
    analogWrite(3, pwd);
    ++pwd;
    if (pwd <= 20 || pwd >= 40) {
        pwd = 20;
    }
    digitalWrite(LED_BUILTIN, HIGH);
    delay(1000);
}