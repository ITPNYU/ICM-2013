class Pipe {

  int x, y, w, h;
  int angle;
  int i = 0;

  Circ c1;


  Pipe (int tx, int ty, int tw, int th, int tAngle) {
    x = tx;
    y= ty;
    w = tw;
    h = th;
    angle = tAngle;
  }

  void display() {
    rectMode(CENTER);
    fill(42, 175, 50);
    pushMatrix();
    translate(x, y);
    rotate(radians(angle));
    rect(0, 0, w, h);
    popMatrix();
  }

  void up() {
    angle = angle - 5;
    angle = constrain(angle, -65, 65);
  }
  void down() {
    angle = angle + 5;
    angle = constrain(angle, -65, 65);
  }


  void shoot() {
    // Create the Rect the moment you "shoot"
    c1 = new Circ(x, y, 50, 50, angle);
    
  }

  void go() {
    if (c1 != null) {
      c1.update();
      c1.display();
      c1.bounceCheck();
    }
  }
}

