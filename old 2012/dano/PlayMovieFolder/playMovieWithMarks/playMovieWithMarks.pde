import processing.video.*;

Movie myMovie;
int currentTime;
float currentLoc ;
boolean playing = true;
PImage play, pause;
ArrayList<Mark> marks = new ArrayList<Mark>();
PGraphics timeLine;

Mark currentMark;

void setup() {
  size(640, 510);
  myMovie = new Movie (this, "1.2_pvector_class_(the_nature_of_code)_640x360.mp4");
  myMovie.play();
  play = loadImage("play.png");
  pause = loadImage("pause.png");

  timeLine = createGraphics(width, 30);
  makeAMark();
}

void draw() {
  background(255);
  image(myMovie, 0, 0);
  //time line PGraphicsbeneath playback head
  image(timeLine, 0, myMovie.height);
  //playbackhead
  currentLoc = width*myMovie.time()/myMovie.duration();
  fill(0, 0, 255);
  rect(currentLoc, myMovie.height, 3, 30);
  //draw start pause button
  if (mouseY > myMovie.height - play.height) {
    if (playing) {
      image(pause, constrain(currentLoc-play.height/2, 0, width-pause.width), myMovie.height-play.height);
    }
    else {
      image(play, constrain(currentLoc-play.height/2, 0, width-play.width), myMovie.height-play.height);
    }
  }
}
void makeAMark() {
  currentMark = new Mark(currentLoc);
  marks.add(currentMark);
  redrawTimeLine();
}
void redrawTimeLine() {
  //draw the marks on a PGraphics so you don't have to do it over and over in draw
  timeLine.beginDraw();
  timeLine.fill(127);
  timeLine.rect(0, 0, width, 30);
  timeLine.fill(60, 60, 60, 10);
  for (int i = 0; i< marks.size(); i++) {
    Mark thisMark = marks.get(i);
    timeLine.line(thisMark.startTime, 0, thisMark.startTime, 30);
    timeLine.endDraw();
  }
}
void movieEvent(Movie _m) {
  _m.read();
}

void mousePressed() {
  //if they click above the time line

  if (mouseY < myMovie.height) {
    if (playing) {
      myMovie.pause();
      playing = false;
    }
    else {
      myMovie.play();
      playing = true;
    }
    makeAMark();
  }
  else {
    //if they click in the timeline
    myMovie.jump(myMovie.duration()*float(mouseX)/width);
    if (playing == false) {
      //if you are pause you have to jiggle to get a new frame
      myMovie.play();
      myMovie.pause();
    }
    else {
      makeAMark();
    }
  }
}

class Mark {
  int startTime;
  int endTime;

  Mark(float _startTime) {
    startTime = int(_startTime);
  }
}

