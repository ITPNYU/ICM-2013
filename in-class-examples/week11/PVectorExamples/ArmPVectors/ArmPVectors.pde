
PVector shoulder = new PVector(100, 100);
PVector elbow = new PVector(150, 100);
PVector hand = new PVector(225, 300);

void setup() {
  size(400, 400);
}
void draw() {
  background(0);
  fill(255);
  
  hand.x += random(-2,2);
  hand.y += random(-2,2);

  ellipse(shoulder.x, shoulder.y, 10, 10); 
  ellipse(elbow.x, elbow.y, 10, 10); 
  ellipse(hand.x, hand.y, 10, 10);
  stroke(255);
  line(elbow.x,elbow.y,hand.x,hand.y);
  
  PVector arm = PVector.sub(hand,elbow);
  
  translate(elbow.x,elbow.y);
  fill(255,0,0);
  
  float m = map(mouseX,0,width,0,1);
  arm.mult(m);
  ellipse(arm.x,arm.y,16,16);
  
  
  
  
  
  
  
  
}

