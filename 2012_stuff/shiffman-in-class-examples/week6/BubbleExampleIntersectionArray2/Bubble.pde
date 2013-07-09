class Bubble {
  float x;
  float y;
  float yspeed;
  float diameter;
  float r; 
  boolean stealColor;

  // The Constructor!
  // The Bubble's "setup"
  Bubble(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    yspeed = random(0.5, 1.5);
    diameter = tempDiam;
  }

  void ascend() {
    x = x + random(-1, 1);
    y = y - yspeed; 

    if (y < 0) {
      y = height;
    }
  }

  void display(int tempR) {

    r = tempR; 

    fill(r, 0, 0, 50);
    stroke(255);
    ellipse(x, y, diameter, diameter);
    if (stealColor) {
      r=255;
    }
  }


  boolean intersects(Bubble other) {
    float d = dist(x, y, other.x, other.y);
    if (d < diameter/2 + other.diameter/2) {
      return true;
    } 
    else {
      return false;
    }
  }

  void stealColor() {

    for (int i=1; i< bubbles.length;i++) {
      if (intersects(bubbles[i])) {
        stealColor = true;
      }
    }
  }
}

