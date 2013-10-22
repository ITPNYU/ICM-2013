JSONArray jsonArray;

void setup() {
  size(500, 500);
  loadData();
}

void loadData() {
  JSONObject jsonObj = loadJSONObject("http://walking-productions.com/datasaver/datastorage.php");
  jsonArray = jsonObj.getJSONArray("thedata");
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  beginShape();
  
  float w = float(width)/jsonArray.size();
  for (int i = 0; i < jsonArray.size(); i++) {
    float yval = jsonArray.getJSONObject(i).getInt("data");
    vertex(i*w, yval);
  }
  endShape();
}

void mousePressed() {
  String[] blah = loadStrings("http://walking-productions.com/datasaver/datastorage.php?data="+mouseY);
}

void mouseReleased() {
  loadData();
}

