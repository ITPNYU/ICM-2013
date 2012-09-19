
void setup() {
  size(640, 360);
  smooth();
}

void draw() {
  background(255); 
  stroke(0);
  fill(100);
  // Instead of 
  // rect(200,300,100,50);
  // we translate to 200,300 and draw at 0,0
  translate(200, 300);
  rect(0, 0, 100, 50);

}

