import java.awt.Robot;

Robot r;

int x = 0;
int y = 384;

void setup() {
  size(400, 400); 
  try {
    r = new Robot();
  } catch (Exception e) {
    println("An error happened.");
    exit();
  }
}

void draw() {
  r.mouseMove(x,y);
  
  x++;
  
}

