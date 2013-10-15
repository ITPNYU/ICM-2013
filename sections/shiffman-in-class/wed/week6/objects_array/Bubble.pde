class Bubble {
  float x;
  float y;
  
  float speed;
  
  float diameter;
  
  // Constructor
  // The object's "setup"
  Bubble() {
    x = random(width);
    y = 360;
    speed = random(0.1,1);
    diameter = random(20,80);
  }

  void display() {
    noFill();
    stroke(0);
    ellipse(x, y, diameter, diameter);
  }

  void move() {
    y = y - speed;
  }
}
