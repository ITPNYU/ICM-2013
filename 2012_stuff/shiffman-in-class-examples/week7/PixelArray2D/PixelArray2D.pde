
void setup() {
  size(300, 300);
}

void draw() {
  background(0);

  loadPixels();

  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int i = x + y * width;
      
      float d = dist(x,y,mouseX,mouseY);
      float c = map(d,0,300,255,0);
      pixels[i] = color(c);
    }
  }
  updatePixels();
  println(frameRate);
}

