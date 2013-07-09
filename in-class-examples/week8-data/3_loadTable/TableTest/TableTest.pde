Table table;

void setup() {
  size(640, 360);
  table = loadTable("data.csv","header");
  //table.removeTitleRow();
  TableRow row = table.addRow();
  row.setFloat("x", 50);
  row.setFloat("y", 50);
  
  int i = 0;
  for (TableRow r : table.rows()) {
    // You can access the fields via their column index
    float x = r.getFloat("x");
    float y = r.getFloat("y");
    println(i + ": " + x + " " + y);
    i++;
  }
  
  //saveTable(table,"data/data.csv");
}

