import processing.video.*;

Movie myMovie;
int currentTime;
float currentLoc ;
boolean playing = true;
PImage play, pause;
ArrayList<Comment> comments = new ArrayList<Comment>();
String commentSoFar = "";
PFont myFont ;

void setup(){
  size(640,510);
  myMovie = new Movie (this, "1.2_pvector_class_(the_nature_of_code)_640x360.mp4");
  myMovie.play();
  play = loadImage("play.png");
  pause = loadImage("pause.png");
  myFont = myFont = createFont("FFScala", 32);
  
}

void draw(){
  background(255);
  image(myMovie,0,0);
  //beneath playback head
  fill(127);
  rect(0,myMovie.height,width,30);
  //playbackhead
  currentLoc = width*myMovie.time()/myMovie.duration();
  fill(0,0,255);
  rect(currentLoc,myMovie.height,3,30);
  //draw start pause button
  if (mouseY > myMovie.height - play.height){
    if(playing){
      image(pause,constrain(currentLoc-play.height/2,0,width-pause.width), myMovie.height-play.height);
    }else{
      image(play,constrain(currentLoc-play.height/2,0,width-play.width), myMovie.height-play.height);
    }
  }
  textFont(myFont,12);
  float w = textWidth(commentSoFar);
  text (commentSoFar, width/2-w/2, myMovie.height+42);
  //draw Comments
  for(int i = 0; i < comments.size(); i++){
    Comment thisComment = comments.get(i);
    float diffPos = abs(currentLoc - thisComment.loc);
     int fontSize = int(map(diffPos, width/2.0, 0.0, 2.0,24.0));
    textFont(myFont, fontSize);
    w = textWidth(thisComment.comment);
    text(thisComment.comment, thisComment.loc-w/2, myMovie.height + 40);
  }
}

void movieEvent(Movie _m){
  _m.read();
}

void mousePressed(){
  //if they click above the time line
  if(mouseY < myMovie.height){
    if (playing){
      myMovie.pause();
      playing = false;
    }else{
      myMovie.play();
      playing = true;
    }
  }else{
    //if they click in the timeline
    myMovie.jump(myMovie.duration()*float(mouseX)/width);
    if (playing == false){
      //if you are pause you have to jiggle to get a new frame
      myMovie.play();
      myMovie.pause();
    }
  }
}

void keyPressed(){
  if(keyCode == BACKSPACE){
    commentSoFar = commentSoFar.substring(0,max(0,commentSoFar.length()-1));
  }else if(keyCode == RETURN || keyCode == ENTER){
    Comment thisComment = new Comment(commentSoFar,currentLoc);
    comments.add(thisComment);
   commentSoFar = "";
   println("added it  naw" + commentSoFar );
  }else if(key != CODED){
    commentSoFar =commentSoFar+ key;
    
  }
  
  
}

class Comment{
  String comment;
  float loc;
  Comment(String _comment, float _loc){
    comment = _comment;
    loc = _loc;
  }
  
}



