void setup() {
  size(400, 400);
}

void draw() {
  for (int x = 0; x < width; x+=50) {
    for (int y = 0; y < height; y +=50) {
      if (x == y) 
        rect(x, y, 10, 10);
    }
  }
}

