
void setup() {
  size(400,400);
}

void draw() {
  background(0);
  
  float d = distance(mouseX,mouseY,width/2,height/2);
  float diam = map(d,0,400,200,0);
  
  fill(255);
  ellipse(width/2,height/2,diam,diam);
  
}


float distance(float x1, float y1, float x2, float y2) {
  float dx = x1-x2;
  float dy = y1-y2;
  return sqrt(dx*dx+dy*dy);
}

