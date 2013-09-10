float previousX;
float previousY;

float x;
float y;

void setup() {
  size(600, 360);
  x = width/2;
  y = height/2;
  background(255);
}

void draw() {
 
  previousX = x;
  previousY = y;
  
  x += random(-10,10);
  y += random(-10,10);
   
  stroke(0);
  strokeWeight(2);
  line(previousX,previousY,x,y);
  
  x = constrain(x,0,width);
  y = constrain(y,0,height);
}

