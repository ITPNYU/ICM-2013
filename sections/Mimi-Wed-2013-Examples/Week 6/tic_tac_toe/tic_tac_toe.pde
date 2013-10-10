float cellWidth = 100;
float cellHeight = 100;
float dingDongSize = 50;
float margin = dingDongSize/2;

void setup() {
  size(300, 300);
  ellipseMode(CORNER);
}

void draw() {
  background(255);
  for (int col = 0; col < 3; col++) {
    for (int row = 0; row < 3; row++) {
      // Calculate the actual x and y locations of the ding-dong
      // that's going to be draw in this cell
      float thisCellX = col*cellWidth + margin;
      float thisCellY = row*cellHeight + margin;
  
      if (col == row) {
        ellipse(thisCellX, thisCellY, dingDongSize, dingDongSize);
      }
      else {
        rect(thisCellX, thisCellY, dingDongSize, dingDongSize);
      }
    }
  }
}

