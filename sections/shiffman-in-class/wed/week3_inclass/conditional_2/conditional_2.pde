float x = 0;

void setup() {
  size(400,400); 
  
}

void draw() {
  background(0);
  
  if (x > 150) {
     background(255,0,0); 
  }
  
  ellipse(x,200,16,16);
  x++;
  
}
