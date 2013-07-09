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

