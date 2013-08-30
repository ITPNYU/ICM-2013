

void setup() {
 size(400,300); 
}

void draw() {
  background(0);
  
  fill(255);
  ellipse(width/2,height/2,100,100);
  
  filter(BLUR);
  
  textSize(42);
  text(int(frameRate),10,70);
  
}
