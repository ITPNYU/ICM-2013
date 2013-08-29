
float r, g, b, rSpeed, gSpeed, bSpeed;
float fR, fG, fB, fRSpeed, fGSpeed, fBSpeed;
float mult;
float centerX, centerY;

void setup() {
  size(400, 400);
  centerX = width/2;
  centerY = height/2;
  rectMode(CENTER);
  noStroke();
  
  r = random(255);
  g = random(255);
  b = random(255);
  rSpeed = .1;
  gSpeed = rSpeed;
  bSpeed = rSpeed;

  fR = random(255);
  fG = random(255);
  fB = random(255);
  fRSpeed = rSpeed;
  fGSpeed = rSpeed;
  fBSpeed = rSpeed;
  
  background(0);
  fill(0);
}


void draw() {
  mult = sin(frameCount*.001) + 2;

  r+=rSpeed*mult;
  g+=gSpeed*mult;
  b+=bSpeed*mult;


  if (r > 255 || r < 0) {
    rSpeed *= -1;
  }

  if (g > 255 || g < 0) {
    gSpeed *= -1;
  }

  if (b > 255 || b < 0) {
    bSpeed *= -1;
  } 

  background(r, g, b);
  mult*= .5;

  fR+=fRSpeed*mult;
  fG+=fGSpeed*mult;
  fB+=fBSpeed*mult;


  if (fR > 255 || fR < 0) {
    fRSpeed *= -1;
  }

  if (fG > 255 || fG < 0) {
    fGSpeed *= -1;
  }

  if (fB > 255 || fB < 0) {
    fBSpeed *= -1;
  } 
  fill(fR, fG, fB);
  rect (centerX, centerY, centerX, centerY);
}

