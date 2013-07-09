void setup() {
  size(400,300);
}

void draw() {
  if (mouseX > 100) {
    background(255,0,0); 
  } else {
    background(0,255,0); 
  }
  
  fill(255);
  textSize(36);
  text(mouseX,50,50);
  
  
}
