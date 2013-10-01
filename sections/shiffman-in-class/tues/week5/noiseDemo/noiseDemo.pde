float t = 0;

void setup() {
  size(600,400); 
  //frameRate(10);
  
}

void draw() {
  background(0);
  
  fill(255);
  
  //float x = random(0,width);
  float x = map(noise(t),0,1,0,width);
  
  ellipse(x,200,24,24);
  
  
  t = t + 0.01;
  
}
