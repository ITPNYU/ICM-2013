class Fish {
  color c;
  float x;
  float y;
  float bodyLength;
  float eye;
  float fishSpeedx;

  //Fish constructor
  Fish(color tempC, float tempX, float tempY, float tempBodyLength, float tempEye, float tempFishSpeedx) {
    //the fish
    c=tempC;
    x=tempX;
    y=tempY;
    bodyLength=tempBodyLength;
    eye=tempEye;
    fishSpeedx=tempFishSpeedx;
  }

  void display() {
    fill(c) ;
    arc(x, y, bodyLength, bodyLength/4, 0, PI);
    arc(x, y, bodyLength, bodyLength/4, 0, PI+PI);
    line(x+bodyLength/2, y, x+bodyLength-bodyLength/3, y-bodyLength/4);
    line(x+bodyLength/2, y, x+bodyLength-bodyLength/3, y+bodyLength/4);
    line(x+bodyLength-bodyLength/3, y-bodyLength/4, x+bodyLength-bodyLength/3, y+bodyLength/4);
    fill(0);
    ellipse(x-bodyLength/4, y-bodyLength/25, eye, eye);
    fill(255);
    ellipse(x-bodyLength/4, y-bodyLength/25, eye/1.75, eye/1.75);
  }

  // Move the fish!
  void moveFish() {
    x+=fishSpeedx;
    if (x<-200) {
      x=width+100;
    }
  }
  
  // Check to see if this fish is near some other fish
  boolean isNear(Fish otherFish) {
    float distance = dist(x, y, otherFish.x, otherFish.y);
    if (distance < 50) {
      return true;
    }
    else {
      return false;
    }
  }
}

