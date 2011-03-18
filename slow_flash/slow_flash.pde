int led_pins[] = {2,3,4,5,6,7,8,9};

void setup() {
  for(int i = 0; i < 8; i++) {
    pinMode(led_pins[i], OUTPUT);
  }
}

void loop() {
  for(int i = 0; i < 256; ++i) {
    analogWrite(led_pins[3], i);
    delay(15);
  }
  for(int i = 255; i >= 0; --i) {
    analogWrite(led_pins[3], i);
    delay(15);
  }
}
