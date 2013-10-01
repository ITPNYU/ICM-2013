float t2 = 0;

void setup() {
  size(600, 400); 
  //frameRate(10);
}

void draw() {
  background(0);
  randomSeed(5);

  fill(255);

  //float x = random(0,width);
  //float x = map(noise(t), 0, 1, 0, width);

  //ellipse(x,200,24,24);

  stroke(255);
  noFill();
  beginShape();
  float t1 = 0;
  for (float i = 0; i < width; i+=4) {
    // float offset = random(-100,100);
    float offset = map(noise(t1,t2), 0, 1, -100, 100);
    vertex(i, 200+offset);
    t1 = t1 + 0.01;
  }
  endShape();
  
  t2 = t2 + 0.01;
}

