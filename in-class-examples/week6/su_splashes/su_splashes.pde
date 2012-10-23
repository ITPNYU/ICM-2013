InkSplash [] splashes = new InkSplash [120];

void setup () {
  size (500, 500);
  
  for (int i = 0; i < splashes.length; i++) {
    splashes[i] = new InkSplash (int(random(width)), int(random(height)));
  }
}

void draw () {
  background (255);
  
  for (int i = 0; i < splashes.length; i++){
    splashes[i].drawSplash();
    if (splashes[i].isMouseOver()) {
      splashes[i].setColor(255,0,0);
    } else {
      splashes[i].setColor(0,0,0);
    }
  }
  splashes [int(random(splashes.length))].splashSize = int (random (0, 80));
}



class InkSplash {
  int splashX, splashY, splashSize;
  
  color c;
  
  InkSplash (int tempSplashX, int tempSplashY) {
    splashX = tempSplashX;
    splashY = tempSplashY;
    splashSize = 20;
    c = color(0);
  }
  
  void setColor(float r, float g, float b) {
     c = color(r,g,b);
  } 
  
  void drawSplash () {
    fill (c);
    ellipse (splashX, splashY, splashSize, splashSize);
  }
  
  void setSize (int tempSize){
    splashSize = tempSize;
  }

  boolean isMouseOver () {
    noStroke();
    if (mouseX > splashX && mouseX < splashX + splashSize && mouseY> splashY && mouseY < splashY + splashSize ) {
      return true;
    } else {
      return false;
    }
  }
  
}


