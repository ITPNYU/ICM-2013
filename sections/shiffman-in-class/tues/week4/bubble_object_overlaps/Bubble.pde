class Bubble {
  float x, y;
  float r;
  color c;

  Bubble(float x_, float y_) {
    x = x_;
    y = y_;
    
    r = random(50,100);
    c = color(0,50);
  }

  void ascend() {
    x = x + random(-4,4);
    y = y - 1;
    
    if (y < -100) {
      y = height + 100; 
    }
  }
  
  void changeColor(float r, float g, float b) {
    c = color(r,g,b,50); 
  }
    
  boolean overlaps(Bubble other) {
    float d = dist(x,y,other.x,other.y);
    if (d < r + other.r) {
      return true; 
    } else {
      return false;
    }
  }

  void display() {
    stroke(0);
    fill(c);
    ellipse(x, y, r*2, r*2);
  }
}

