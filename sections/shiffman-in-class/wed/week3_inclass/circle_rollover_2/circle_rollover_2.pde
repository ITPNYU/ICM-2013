float x = 200;
float y = 200;
float r = 50;

void setup() {
  size(400,400); 
  
}

void draw() {
  background(0);
  
  float d = dist(mouseX,mouseY,x,y);
  
  if (d < r/2) {
    fill(0,200,0);
  } else if (d < r) {
    fill(200); 
  } else {
    fill(127);
  }
   
    
  ellipse(x,y,r*2,r*2);
  noFill();
  stroke(255);
  ellipse(x,y,r,r);
  
}
