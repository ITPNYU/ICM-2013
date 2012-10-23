PImage img;

void setup() {
  size(460, 276);
  img = loadImage("loris.jpg");
}

void draw() {
  background(0);

  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int i = x + y * width;
      color c = img.pixels[i];
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);

      // ALL YOUR IMAGE PROCESSING GOES HERE!!!
      
      // Can you incorporate mouseX and mouseY into an image processing filter?
      r = r*2;
      g = g/2;
      b = b+20;
      
      // Can you move the pixels around?
      
      pixels[i] = color(r,g,b);
    }
  }
  updatePixels();
}

