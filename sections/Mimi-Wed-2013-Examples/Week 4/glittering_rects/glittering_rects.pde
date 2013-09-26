void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  for (int x = 0; x < width; x+=50) {
    for (int y = 0; y < height; y+=50) {
      float xPosRect = x*random(2);
      float yPosRect =y*random(2);
      float widthRect = x/20;
      float heightRect = y/20;
      rect(xPosRect, yPosRect, widthRect, heightRect);
    }
    
  }
}

