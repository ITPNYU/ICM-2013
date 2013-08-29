
size (400, 400);
background(0);
fill(255);
noStroke();
String text = "";
int tSize = 20;
textSize(tSize);
for (int x = -tSize; x < width+tSize; x+=tSize/2) {
  for (int y = -tSize; y < height+tSize; y +=tSize/2) {
    
    int w = (int) x / tSize;
    int h = (int) y / tSize;
    
    if (w%42 == 0)
      text = "=";
    else if(h%18 == 0)
      text = "^";
    else if(w%37 == 0)
      text = ")";
    else if(h%6 == 0)
      text = "(";

    text(text, x, y);
    
  }
}

