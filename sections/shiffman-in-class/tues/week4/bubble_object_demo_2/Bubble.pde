class Bubble {
  float x, y;
  float r;

  Bubble(float x_, float y_) {
    x = x_;
    y = y_;
    
    r = random(50,100);
  }

  void ascend() {
    x = x + random(-4,4);
    y = y - 1;
    
    if (y < -100) {
      y = height + 100; 
    }
  }

  void display() {
    stroke(0);
    fill(0,50);
    ellipse(x, y, r*2, r*2);
  }
}

