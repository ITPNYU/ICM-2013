float x = 0;
float speed = 2;

void setup() {
  size(400,400); 
}

void draw() {
  background(0);
  ellipse(x,200,16,16);
  
  x = x + speed;
  
  if (x > width || x < 0) {
    speed = speed * -1;
  }
  
}
