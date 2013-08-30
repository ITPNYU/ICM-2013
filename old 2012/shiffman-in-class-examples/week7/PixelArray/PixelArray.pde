
void setup() {
  size(800, 600);
}

void draw() {
  background(0);

  loadPixels();
  for (int i = 0; i < pixels.length; i++) {
    pixels[i] = color(random(255));
  }
  updatePixels();

  /*for (int x = 0; x < width; x++) {
   for (int y = 0; y < height; y++) {
   set(x,y,color(random(255)));
   }
   }*/
  println(frameRate);
}

