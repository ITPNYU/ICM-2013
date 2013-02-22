import processing.video.*;

Movie myMovie;
int currentTime;
int[] mousDownLocs;
int[] mouseUpLocs;
float currentLoc ;
boolean playing = true;
PImage play, pause;

void setup(){
  size(640,510);
  myMovie = new Movie (this, "1.2_pvector_class_(the_nature_of_code)_640x360.mp4");
  myMovie.play();
  play = loadImage("play.png");
  pause = loadImage("pause.png");
  //rectMode(CENTER);
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



