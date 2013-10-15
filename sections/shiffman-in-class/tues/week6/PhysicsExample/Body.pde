

class Body {

  float x; 
  float y; 
  float yspeed = 0;   // speed of square

  Body() {
    x = width/2;
    y = 20;
  }
  

  void update() {
    y = y + yspeed;
    yspeed = yspeed + gravity;
  }

  void edges() {
    if (y > height) {
      yspeed = yspeed * -0.95;
    }
  }

  void display() {
    fill(100);
    stroke(0);
    ellipse(x, y, 24, 24);
  }
}

