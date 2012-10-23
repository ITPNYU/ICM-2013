Pipe p1;
Pipe p2;

void setup() {
  size (800, 800);
  smooth();
  p1 = new Pipe(0, 300, 300, 100, -45); 
  p2 = new Pipe(width, 300, 300, 100, 45); 
  //  r1 = new Rect(
  //  r2 = new Rect(
}

void draw () {
  background(100);
  displaytext();
  p1.display();
  p2.display();

  p1.go();
  p2.go();
}

void keyTyped() {
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
    p1.shoot();
    p2.shoot();
    p1.display();
    p2.display();
  }
}

void displaytext() {
  fill(255);
  textSize(14);
  textAlign(LEFT);
  text("Q and A move left pipe up and down. P and L move right pipe. Space to shoot.", 0, 20);
}


