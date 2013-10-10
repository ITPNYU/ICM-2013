Fish myFish1;
Fish myFish2;

Fish [] myFish = new Fish[10];


void setup() {
  size(600, 600);
  // Filled up our array with Fish objects
  for (int f = 0; f<myFish.length; f++) {
    myFish[f] = new Fish(color(random(255), random(255), random(255)), random(width), random(height), random(100), random(50), random(-5, -1));
  }
}

void draw() {
  background (100, 200, 255);
  // Go through each fish
  for (int f = 0; f< myFish.length; f++) {
    // For this fish, compare me to all the other fish
    for (int g = 0; g < myFish.length; g++) {
      // If the fish I'm comparing dist for does not equal the fish, I'm comparing dist to
      if (f!=g) {
        if (myFish[f].isNear(myFish[g])) {
          myFish[f].c = myFish[g].c;
        }
      }
    }
    
    // Display this fish
    myFish[f].display();

    // Move this fish
    myFish[f].moveFish();
  }
}

