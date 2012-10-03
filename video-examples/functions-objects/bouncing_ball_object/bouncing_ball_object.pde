
Ball b;

void setup() {
  size(320, 240);
  b = new Ball();
}

void draw() {
  background(255);
  b.update();
  b.checkEdges();
  b.display();
} 



