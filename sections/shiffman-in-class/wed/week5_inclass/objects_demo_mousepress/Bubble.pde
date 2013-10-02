class Bubble {
  float x;
  float y;

  color bcolor = color(255, 255, 0);

  // Constructor
  // The object's "setup"
  Bubble() {
    x = random(width);
    y = 360;
  }

  void display() {
    fill(bcolor);    
    stroke(0);
    ellipse(x, y, 100, 100);
  }

  void move() {
    y = y - 1;
  }
  
  void changeColor() {
    bcolor = color(0,0,255); 
  }
}

