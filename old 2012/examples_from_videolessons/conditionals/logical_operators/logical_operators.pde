void setup() {
  size(640, 360);
}

void draw() {
  background(0);

  if ((mouseX > 200) || (mouseX < 100)) {
    background(255,0,0);
  }
  
  stroke(255);
  line(100,0,100,height);
  line(200,0,200,height);
 
  
}

