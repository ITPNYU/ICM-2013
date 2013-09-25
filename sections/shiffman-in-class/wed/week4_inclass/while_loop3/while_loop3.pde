
float start = 100;
float end = 300;
void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  float x = start;
  while (x < end) {
    stroke(0);
    line(x, 0, x, height);
    x = x + 10;
  }
  
  //start = start + random(-10,10);
  end = end + 0.2;
}

