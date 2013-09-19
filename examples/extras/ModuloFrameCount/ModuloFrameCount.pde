void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  
  // Modulo ("%") is the remainder of division
  // See: http://processing.org/reference/modulo.html
  
  // This is the equivalent of saying
  // "Every 30 frames"
  // This allows you to slow down just one part of your sketch
  if (frameCount % 30 == 0) {
     background(random(255)); 
  }
  

}

