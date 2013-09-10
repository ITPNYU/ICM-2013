float x = 0;
float y = 0;

void setup() {
  size(640, 360);
}

void draw() {
  background(255);

  fill(255);
  ellipse(mouseX,mouseY, 16, 16);

  x = lerp(x, mouseX, 0.1);
  y = lerp(y, mouseY, 0.1);
  

  fill(255,0,0);
  ellipse(x,y, 16, 16);
}

