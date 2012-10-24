// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

XML headlines;

boolean loading = false;

float angle = 0;

void setup() {
  size(640, 360);
  thread("loadData");
}

void draw() {
  //println(headlines);
  background(0);

  if (headlines != null) {
    XML[] children = headlines.getChild("channel").getChildren("item");
    for (int i = 0; i < children.length; i++) {
      String headline = children[i].getChild("title").getContent();

      fill(255);
      text(headline, 10, 16+i*16);
    }
  }

  if (loading) {
    translate(540, 40);
    pushMatrix();
    rotate(angle);
    stroke(255);
    strokeWeight(4);
    line(-10, 0, 10, 0);
    line(0, -10, 0, 10);
    popMatrix();
    text("loading",-15,25);
    angle += 0.2;
  }


  if (frameCount % 180 == 0) {
    thread("loadData");
  }
}

void loadData() {
  loading = true;
  delay(1000); // Faking make it take longer!!
  headlines = loadXML("http://rss.news.yahoo.com/rss/topstories" );
  
  loading = false;
}

