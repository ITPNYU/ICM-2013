// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

XML headlines;

void setup() {
  size(640, 360);
  loadData();
}

void draw() {
  //println(headlines);
  background(0);

  XML[] children = headlines.getChild("channel").getChildren("item");
  for (int i = 0; i < children.length; i++) {
    String headline = children[i].getChild("title").getContent();

    fill(255);
    text(headline, 10, 16+i*16);
  }
}

void loadData() {
    headlines = loadXML("http://rss.news.yahoo.com/rss/topstories" );
}

void mousePressed() {
  loadData();
}

