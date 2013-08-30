
void setup() {
  size(640,480);
}

void draw() {
  background(0);
  
  // Setting one pixel at 10,10 to red
  
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      set(x,y,random(255));
    }
  }
  println(frameRate);
     
}
