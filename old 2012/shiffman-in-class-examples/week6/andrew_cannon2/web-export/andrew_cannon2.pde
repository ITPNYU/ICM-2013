Pipe p1;
Pipe p2;

Circ c1;
Circ c2;

void setup() {
  size (800, 800);
  smooth();
  p1 = new Pipe(0, 300, 300, 100, -45); 
  p2 = new Pipe(width, 300, 300, 100, 45);
}

void draw () {
  background(100);
  displaytext();
  p1.display();
  p2.display();

  if (c1 != null) {
    c1.update();
    c1.display();
    c1.bounceCheck();
  }
  if (c2 != null) {
    c2.update();
    c2.display();
    c2.bounceCheck();
  }
}

void keyPressed() {
  if (key == 'q' || key == 'Q') {
    p1.up();
  }
  if (key == 'a' || key == 'A') {
    p1.down();
  }
  if (key == 'p' || key == 'P') {
    p2.down();
  }
  if (key == 'l' || key == 'L') {
    p2.up();
  }
  
  if (key == ' ') {
    c1 = p1.shoot();
    c2 = p2.shoot();
  }
}

void displaytext() {
  fill(255);
  textSize(14);
  textAlign(LEFT);
  text("Q and A move left pipe up and down. P and L move right pipe. Space to shoot.", 0, 20);
}

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
class Pipe {

  int x, y, w, h;
  int angle;
  int i = 0;

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

  Circ shoot() {
    return new Circ(x, y, 50, 50, angle);
  }
}


