float x = 100.9;
color c;
void setup() {
  size(640,360);  
  c = color(255,0,0);
}

void draw() {
  float back = x*100;
  
  background(0);
  fill(c);
  ellipse(x,height/2,100,100);
}
