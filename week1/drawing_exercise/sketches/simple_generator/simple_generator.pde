
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

  for (int i = 0; i < 10; i++) {
    int rx = int(random(0, pw));
    int ry = int(random(0, ph));

    float px = rx*w+w/2;
    float py = ry*w+w/2;

    stroke(0);
    point(px, py);
  }
  saveFrame("simple-####.png");

  noLoop();

}

