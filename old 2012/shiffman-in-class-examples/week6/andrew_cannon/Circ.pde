class Circ {

  float x, y, w, h;
  int angle;
  float vx, vy;
  float radius;
  int c1 = int(random(255));
  int c2 = int(random(255));
  int c3 = int(random(255));

  Circ (int tx, int ty, int tw, int th, int tAngle) {
    x = tx;
    y= ty;
    w = tw;
    h = th;
    radius = w*.5;
    angle = tAngle;

    if (x < width) {
      vx = 10*cos(radians(angle));
      vy = 10*sin(radians(angle));
     
    }
    else {
      vx = -10*cos(radians(angle));
      vy = -10*sin(radians(angle));
    }
  }

  void update() {
    x = x + vx;
    y = y + vy;
  }

  void display() {
    fill(c1,c2,c3);
    ellipse(x, y, w, h);
  }

  void bounceCheck() {
    if (x >= width || x<=0) {
      vx = -vx;
    }
    if (y <= 0) {
      vy = -vy;
    }
    if (y >= height - radius) {
      vx = 0;
      vy = 0;
    }
  }
}
