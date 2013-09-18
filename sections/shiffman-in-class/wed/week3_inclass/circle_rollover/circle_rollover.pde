float x = 200;
float y = 200;
float r = 50;

void setup() {
  size(400,400); 
  
}

void draw() {
  background(0);
  
  float d = dist(mouseX,mouseY,x,y);
  
  if (d < r) {
    fill(255);
  } else {
    fill(127);
  }
    
  ellipse(x,y,r*2,r*2);
  
  
}
