void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
    delay(500);
    digitalWrite(LED_BUILTIN, LOW)
    delay(1000);
    digitalWrite(LED_BUILTIN, HIGH);
}