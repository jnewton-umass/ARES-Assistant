int brightness = 0;
void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
    pinMode(3, OUTPUT);
}

void loop() {
    digitalWrite(LED_BUILTIN, LOW)
    analogWrite(3, brightness);
    ++brightness;
    if (brightness <= 0 || brightness >= 255) {
        brightness = 0;
    }
    delay(1000);
    digitalWrite(LED_BUILTIN, HIGH);
}