Body b;

//float gravity = 0.1;  
void setup() {
  size(320, 240);
  b = new Body();
}

void draw() {
  background(255);

  PVector gravity = new PVector(0, 0.1);
  b.applyForce(gravity);

  if (mousePressed) {
    PVector wind = new PVector(0.05, 0);
    b.applyForce(wind);
  }

  b.update();
  b.display();
  b.edges();
}



