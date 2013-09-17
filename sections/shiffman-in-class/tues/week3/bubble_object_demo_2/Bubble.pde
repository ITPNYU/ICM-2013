class Bubble {
  float x, y;

  Bubble(float x_, float y_) {
    x = x_;
    y = y_;
  }

  void ascend() {
    x = x + random(-2,2);
    y = y - 1;
  }

  void display() {
    ellipse(x, y, 100, 100);
  }
}

