int led_pins[] = {2,3,4,5,6,7,8,9};
int maximum    = 255;

void setup() {
  for(int i = 0; i < 8; i++) {
    pinMode(led_pins[i], OUTPUT);
  }
}

void display_number(int n) {
  int i = 0;
  int d = 15;
  
  if(n == 0) {
    for(int j = 0; j < 8; j++) {
      digitalWrite(led_pins[j], LOW);
    }
  }
  
  while(n > 0) {
    digitalWrite(led_pins[i], (n & 1) ? HIGH : LOW);
    i++;
    n /= 2;
  }
}

void loop() {
  for(int i = 0; i < 256; i++) {
    display_number(i);
    delay(75);
  }
}


