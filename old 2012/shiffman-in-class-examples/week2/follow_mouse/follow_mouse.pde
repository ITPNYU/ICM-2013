
float x;

void setup() {
  size(320, 240);
  x = 0;
}

void draw() {
  background(255);
  fill(127);
  stroke(0);
  ellipse(x,height/2, 16, 16);
  
  x = x*0.5 + mouseX*0.5;
}

