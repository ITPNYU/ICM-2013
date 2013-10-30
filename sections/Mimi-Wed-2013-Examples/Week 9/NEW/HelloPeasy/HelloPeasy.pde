import peasy.*;
PShader nebula;
PeasyCam cam;

void setup() {
  size(200, 200, P3D);
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);
  nebula = loadShader("nebula.glsl");
  nebula.set("resolution", float(width), float(height));
}
void draw() {
  nebula.set("time", millis() / 500.0);  

  rotateX(-.5);
  rotateY(-.5);
  background(0);
  fill(255, 0, 0);
  box(30);
  pushMatrix();
  translate(0, 0, 20);
  fill(0, 0, 255);
  shader(nebula); 

  box(5);
  popMatrix();
}

