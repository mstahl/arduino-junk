int speaker = 9;
int led = 12;
int flex = 0;

void setup() {
  pinMode(speaker, OUTPUT);
  pinMode(led, OUTPUT);
  digitalWrite(led, HIGH);
  
  Serial.begin(9600);
}

/*
 * play_frequency((int) Frequency, (int) Duration)
 * 
 * Plays a note of a given frequency using pulse-
 * width modulation.
 * 
 * Units:
 *   f : Hertz (1/seconds)
 *   d : Milliseconds
 */
void play_frequency(float f, int d) {
  // Frequency is given in Hertz, so we'll need to
  // convert it to microseconds.
  float microseconds = 1000000/f;
  
  for(long i = 0; i < d * 1000L; i += (long)(microseconds * 2)) {
    digitalWrite(speaker, HIGH);
    delayMicroseconds(microseconds);
    digitalWrite(speaker, LOW);
    delayMicroseconds(microseconds);
  }
}

void loop() {
  float f = analogRead(5);
  Serial.println(f);
  f = map(f, 600, 900, 50, 10000);
  f = constrain(f, 0, 10000);
  
  play_frequency(f, 50);
  
  delay(f / 1000);
}
