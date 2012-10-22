// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

Bubble[] bubbles;
Table table;

void setup() {
  size(640, 360);
  loadData();
}

void draw() {
  background(255);
  // Display and move all bubbles
  for (int i = 0; i < bubbles.length; i ++ ) {
    bubbles[i].display();
    bubbles[i].rollover(mouseX, mouseY);
  }
  
  textAlign(LEFT);
  fill(0);
  text("Click to add circles.",10,height-10);
}

void mousePressed() {
  String[] data = new String[4];
  data[0] = "" + mouseX;
  data[1] = "" + mouseY;
  data[2] = "" + random(40,80);
  data[3] = "Blah";
  table.addRow(data);
  
  File f = new File(sketchPath("data/data.txt"));
  table.writeCSV(f);
  loadData();
}

void loadData() {
  // Load text file as an array of Strings
  table = loadTable("data.txt");

  // The size of the array of Bubble objects is determined by the total number of lines in the text file.
  bubbles = new Bubble[table.getRowCount()]; 

  for (int i = 0; i < table.getRowCount(); i++ ) {
    // The values in the array are passed into the Bubble class constructor.
    bubbles[i] = new Bubble(table.getFloat(i, 0), table.getFloat(i, 1), table.getFloat(i, 2), table.getString(i, 3));
  }
}

