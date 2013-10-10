class Record {

  float x; // X-coordinate
  float y; // Y-coordinate
  int diam = 86; // record diam
  float noteY = random (y -80, y-40); //x and y are = 0, so random doesnt work here
  boolean recordState = false;
  AudioPlayer player;

  // The contructor creates a new record object
  // At a particular x-pos
  // At a particular y-pos
  // With a particular AudioPlayer pointing at a particular audio file
  Record (int tempRecordX, float tempRecordY, AudioPlayer tempPlayer) {
    x = tempRecordX;
    y = tempRecordY;
    player = tempPlayer;
  }

  // Deciding whether to play or pause music for this record
  void music() {
    // Is the mouse is over me
    if (mouseX > x && mouseX < x + diam && mouseY > y && mouseY < y + diam) {
      // Play my sound file
      player.play();
    } 
    else {
      // Otherwise, stop my sound file
      player.stop();
    }

    textSize(15);
    text("♪", random (x-10, x +80), random (y -40, y-50));
    text("♫", random (x-10, x+80), random (y -60, y-50));    //noteX,Y are in Record..so don'n know how to put it in button class?
  }



  void display() {

    noStroke();

    fill(#36322E);
    
    // Outer boundar of the record
    ellipse(x, y, diam, diam);

    //white lines
    stroke(255);              
    strokeWeight(1);
    fill(#36322E);
    ellipse(x+9, y+9, diam-18, diam-18); 
    ellipse(x+12, y+12, diam-24, diam-24);

    // "Hole" in the record
    noStroke();
    fill(255);
    ellipse(x+40, y+40, 8, 8); //inside
  }
}

