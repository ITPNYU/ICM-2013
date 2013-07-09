
void setup() {
  size(500, 500);
  background(255);
}

int pw = 25;
int ph = 25;

void draw() {
  background(255);

  float w = width/pw;
  stroke(127);
  strokeWeight(1);
  fill(127);
  int counter = 0;
  for (int x = 0; x < width+w; x+= w) {
    line(x, 0, x, height);
    textAlign(CENTER);
    text(counter, x+w/2, 3*w/4);
    counter++;
  }
  counter = 0;
  for (int y = 0; y < height+w; y+= w) {
    line(0, y, width, y);
    if (y > 0) text(counter, w/2, y+3*w/4);
    counter++;
  }

  for (int i = 0; i < 5; i++) {
    int rx = int(random(5, pw-5));
    int ry = int(random(5, ph-5));

    float rw = int(random(2, 10))*w;
    float rh = int(random(2, 10))*w;


    float px = rx*w+w/2;
    float py = ry*w+w/2;

    float r = random(1);
    stroke(0);
    noFill();
    strokeWeight(4);
    if (r < 0.2) {

      point(px, py);
    } 
    else if (r < 0.4) {
      rect(px, py, rw, rh);
    } 
    else if (r < 0.6) {
      ellipse(px, py, rw, rh);
    } 
    else {
      int rx2 = int(random(0, pw));
      int ry2 = int(random(0, ph));
      float px2 = rx2*w+w/2;
      float py2 = ry2*w+w/2;
      line(px, py, px2, py2);
    }
  }
  
  if (frameCount > 50) {
   exit();
  }
  saveFrame("simple-####.png");

}

