// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// An Array of Bubble objects
Bubble[] bubbles;
// The new Processing Table class!
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
  text("Click to add circles.", 10, height-10);
}

void loadData() {
  // Load text file into a Table object
  table = loadTable("data.csv");

  // The size of the array of Bubble objects is determined by the total number of rows in the CSV
  bubbles = new Bubble[table.getRowCount()]; 

  for (int i = 0; i < table.getRowCount(); i++ ) {
    // You can access data in the table via its row/column indices
    float x = table.getFloat(i,0);
    float y = table.getFloat(i,1);
    float d = table.getFloat(i,2);
    String n = table.getString(i,3);
    // Make a Bubble object out of the data read
    bubbles[i] = new Bubble(x,y,d,n);
  }
}

void mousePressed() {
  // When the mouse is clicked we create a "row" as an array of Strings
  String[] data = new String[4];
  data[0] = "" + mouseX;  // Even though an integer is in the table, we have to make it a String to insert
  data[1] = "" + mouseY;
  data[2] = "" + random(40, 80); 
  data[3] = "Blah";
  // Adding the row
  table.addRow(data); 

  // Writing the CSV back to the same file
  File f = new File(sketchPath("data/data.txt"));
  table.writeCSV(f);
  // And reloading it
  loadData();
}

