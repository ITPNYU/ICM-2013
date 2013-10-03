
void setup() {
  size(300,300);  
  background(0);
  for (int col = 0; col < 10; col++) {
    // For this column, go down each row and do something
    doSomethingInEveryRowOfThisColumn(col);
  }
}

void doSomethingInEveryRowOfThisColumn(int thisCol) {
  for (int row=0; row < 10; row++) {
    fill(255);
    ellipse(thisCol*30, row*30, 10, 10);
    if (thisCol == 0) {
      fill(255, 0, 0);
      rect(thisCol*30, row*30, 10, 10);
    }
  }
}

