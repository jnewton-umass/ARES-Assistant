#include <Arduino.h>
#define LIGHT 0
#define PWMIN 1
#define PWMOUT 3
void setup() {
    pinMode(LIGHT, INPUT);    
    pinMode(PWMIN, INPUT);
    pinMode(PWMOUT, OUTPUT);
    Serial.begin(9600);
}
int logLimit = 1000;
void loop() {
    while (logLimit > 0){
        int readPWM = analogRead(PWMIN);
        float voltagePWM= readPWM * (5.0 / 1023.0) - 0.04;
        int readLight = analogRead(LIGHT);
        float voltageLight= readLight * (5.0 / 1023.0) - 0.04;
        Serial.print(voltageLight);
        Serial.print(",");
        Serial.print(voltagePWM);
        Serial.print(",\n");
        logLimit--;
        delay(10);
    }
    delay(10000);
}