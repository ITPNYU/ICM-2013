int savedTime = 0;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  
  // How much time has passed since we last saved the time
  int passed = millis() - savedTime;
  
  // If 5 seconds has passed do something
  if (passed > 5000) {
     background(random(255)); 
     // Save the time to check for next 5 seconds
     savedTime = millis();
  }
  
}

