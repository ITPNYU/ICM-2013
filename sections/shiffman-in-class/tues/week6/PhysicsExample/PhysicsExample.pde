Body b;

float gravity = 0.1;  

void setup() {
  size(320,240);
  b = new Body();
}

void draw() {
  background(255);
  b.update();
  b.display();
  b.edges();
}








