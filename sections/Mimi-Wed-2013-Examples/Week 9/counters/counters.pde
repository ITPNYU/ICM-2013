int counter = 0;

void setup() {
  size(400, 400); 
  textSize(64);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);
  
  text(counter, width/2, height/2); 
  
  // Only count up once every 10 frames
  // Only doing this so the counter is slow enough for you to see
  if(frameCount % 10 == 0) {
    counter++;
  }
  
  // Reset counter
  if (counter > 10) {
    counter = 0;
  }
}

