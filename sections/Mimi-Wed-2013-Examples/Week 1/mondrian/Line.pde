class Line {
  float x1, x2, y1, y2, xSpeed, ySpeed;
  color col;
  float weight;

  Line(float _x1, float _y1, float _x2, float _y2, float _xSpeed, float _ySpeed) {
    x1 = _x1;
    x2 = _x2;
    y1 = _y1;
    y2 = _y2;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;

    randomize();
  }

  void run() {
    update();
    display();
  }


  void update() {
    x1 += xSpeed;
    x2 += xSpeed;
    y1 += ySpeed;
    y2 += ySpeed;

    if (x1 > (width + random(width)) || x1 < (0 - random(width))) {
      randomize();
      xSpeed *= -1;
    }
    if (y1 > (height + random(height/2)) || y1 < (0 - random(height/2))) {
      randomize();
      ySpeed *= -1;
    }
  }

  void display() {
    stroke(col);
    strokeWeight(weight);
    line(x1, y1, x2, y2);
  }

  void randomize() {
    weight = random(10, 40);
    col = color(random(255), random(255), random(255));
  }
}

