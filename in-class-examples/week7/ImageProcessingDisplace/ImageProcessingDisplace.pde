PImage img;

void setup() {
  size(460, 276);
  img = loadImage("loris.jpg");
}

void draw() {
  background(0);

  loadPixels();
  
  float offset = map(mouseX,0,width,0,50);
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      
      int px = x + int(random(-offset,offset));
      int py = y + int(random(-offset,offset));
      
      px = constrain(px,0,width-1);
      py = constrain(py,0,height-1);
      
      int before = px + py * width;
      int after  =  x +  y * width;
      color c = img.pixels[before];
      
      pixels[after] = c;
    }
  }
  updatePixels();
}

