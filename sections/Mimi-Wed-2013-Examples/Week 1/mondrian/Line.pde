class Line {
  float x1, x2, y1, y2, xSpeed, ySpeed; // Position and speed of the line
  color col; // Color of the line
  float weight; // Thickness of the line

  Line(float _x1, float _y1, float _x2, float _y2, float _xSpeed, float _ySpeed) {
    x1 = _x1;
    x2 = _x2;
    y1 = _y1;
    y2 = _y2;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;

    randomize();
  }

  // Run function in turn calls all the line functions
  // that are needed to move and draw line
  void run() {
    update();
    display();
  }

  // Move the line
  void update() {
    x1 += xSpeed;
    x2 += xSpeed;
    y1 += ySpeed;
    y2 += ySpeed;

    // If line is horizontal 
    // Randomize how far the line needs to go
    // off-screen horizontally before turning around
    if (ySpeed == 0) {
      if (x1 > (width + random(width/2)) || x1 < (0 - random(width/2))) {
        // Change the color and weight of the line
        randomize();
        // Turn around!
        xSpeed *= -1;
      }
    }
    // Otherwise 
    // Randomize how far the line needs to go
    // off-screen vertically before turning around
    else {
      if (y1 > (height + random(height/2)) || y1 < (0 - random(height/2))) {
        // Change the color and weight of the line
        randomize();
        // Turn around!
        ySpeed *= -1;
      }
    }
  }

  // Draw the line with the specified color and stroke-weight
  void display() {
    stroke(col);
    strokeWeight(weight);
    line(x1, y1, x2, y2);
  }

  // Change up weight and color, randomly
  void randomize() {
    weight = random(10, 40);
    col = color(random(255), random(255), random(255));
  }
}

