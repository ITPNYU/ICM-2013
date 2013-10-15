

class Body {

  PVector position;
  PVector velocity;
  PVector acceleration;

  Body() {
    position = new PVector(width/2, 20);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void update() {
    // Physic "integration"
    velocity.add(acceleration);
    position.add(velocity);

    // Clear acceleration
    acceleration.mult(0);
  }

  void edges() {
    if (position.y > height) {
      velocity.y = velocity.y * -0.95;
    }

    if (position.x > width) {
      velocity.x = velocity.x * -0.95;
    }
  }

  void display() {
    fill(100);
    stroke(0);
    ellipse(position.x, position.y, 24, 24);
  }
}

