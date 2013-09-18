void setup() {
  size(400,400);
  
}

void draw() {
  background(255);
  
  if (mousePressed) {
    background(0,255,0); 
  }
  
}

void mousePressed() {
  background(255,0,0); 
}

void mouseReleased() {
  background(0,0,255); 
 
}

