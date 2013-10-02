class Bubble {
  float x;
  float y;
  
  // Constructor
  // The object's "setup"
  Bubble() {
    x = random(width);
    y = 360;
  }

  void display() {
    noFill();
    stroke(0);
    ellipse(x, y, 100, 100);
  }

  void move() {
    y = y - 1;
  }
}
