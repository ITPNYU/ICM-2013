

void setup() {
  size(600, 360);
  background(255);
}

void draw() {

  float r = random(255);
  float g = random(255);
  float b = random(255);
  
  float x = random(width);
  float y = random(height);
  
  float d = random(2,20);
  
  noStroke();
  fill(r,g,b,100);
  ellipse(x,y,d,d);
}

