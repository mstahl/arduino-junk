
#define RED    13
#define YELLOW 12

int val = 0;

void setup() {
  pinMode(RED, OUTPUT);
  pinMode(YELLOW, OUTPUT);
  
  Serial.begin(9600);
  Serial.println("Connection opened.");
}

void loop() {
  val = 10 * sqrt(analogRead(5));
  Serial.println(val);
  
  digitalWrite(RED, HIGH);
  digitalWrite(YELLOW, LOW);
  delay(val);
  
  digitalWrite(RED, LOW);
  digitalWrite(YELLOW, HIGH);
  delay(val);
}
