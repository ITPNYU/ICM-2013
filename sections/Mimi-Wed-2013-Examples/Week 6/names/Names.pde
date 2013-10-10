String [] names = {
  "Zoe", "Jake", "Rena", "Sisa", "Neva", "Allison", "Hellyn", "Devin", "Jerllin", "Zander", "Joelle", "Aankit"
};
int endingPoint = 0;

void setup() {
  size(400, 300);
}

void draw() {
  background(0);
  // Every couple of seconds...increase the number of names we draw
  if (frameCount%120==0) {
    endingPoint += 1;
    if (endingPoint > names.length) {
      endingPoint = 0;
    }
  }

  // Display the names from the names array...up to the endingPoint, whatever it happens to be in this frame
  for (int i = 0; i < endingPoint; i++) {
    text(names[i], random(width), random(height));
  }

}

