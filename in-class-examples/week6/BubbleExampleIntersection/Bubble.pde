class Bubble {
  float x;
  float y;
  float diameter;

  // The Constructor!
  // The Bubble's "setup"
  Bubble(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    diameter = tempDiam;
  }

  void ascend() {
    x = x + random(-1, 1);
    y = y - 1; 

    if (y < 0) {
      y = height;
    }
  }

  void display() {
    fill(255, 100);
    stroke(255);
    ellipse(x, y, diameter, diameter);
  }


  boolean intersects(Bubble other) {
    float d = dist(x, y, other.x, other.y);
    if (d < diameter/2 + other.diameter/2) {
      return true;
    } else {
      return false;
    }
  }
}

