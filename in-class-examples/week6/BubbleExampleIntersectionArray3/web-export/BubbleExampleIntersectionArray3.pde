Bubble[] bubbles = new Bubble[3];
int currentTotal = 0;
void setup() {
  size(900, 450);
    s = loadShape("isf_satellite.svg");
  
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(width), height, random(20,36));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < currentTotal; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
  }
  
  if (random(1) < 0.01) {
    currentTotal++; 
  }
}

void mousePressed() {
}


class Bubble {
  float x;
  float y;
  float yspeed;
  float diameter;

  // The Constructor!
  // The Bubble's "setup"
  Bubble(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    yspeed = random(0.5,1.5);
    diameter = tempDiam;
  }

  void ascend() {
    x = x + random(-1, 1);
    y = y - yspeed; 

    if (y < 0) {
      y = height;
    }
  }

  void display() {
    fill(255, 50);
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


