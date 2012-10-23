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

      // Calculate an amount to change brightness
      // based on proximity to the mouse
      float distance = dist(x,y,mouseX,mouseY);
      
      // The closer the pixel is to the mouse, the lower the value of "distance" 
      // We want closer pixels to be brighter, however, so we invert the value with the formula: adjustBrightness = (50-distance)/50 
      // Pixels with a distance of 100 (or greater) have a brightness of 0.0 (or negative which is equivalent to 0 here)
      // Pixels with a distance of 0 have a brightness of 2.0.
      float adjustBrightness = map(distance,0,100,2,0);
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;
      
      // Constrain RGB to between 0-255
      r = constrain(r,0,255);
      g = constrain(g,0,255);
      b = constrain(b,0,255);
            
      pixels[i] = color(r,g,b);
    }
  }
  updatePixels();
}


