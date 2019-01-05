
//importing and making use of the minim library
import ddf.minim.*;
Minim minim;
AudioPlayer[] player = new AudioPlayer[8]; //utilizes an array to play sound files

void loadMinim() {
  // loads different audio samples into processing
  player[0] = minim.loadFile("collisionObject.mp3");
  player[1] = minim.loadFile("collisionBoarder.mp3");
  player[2] = minim.loadFile("backingTrack01.mp3");
  player[3] = minim.loadFile("placingObject1.mp3");
  player[4] = minim.loadFile("placingObject2.mp3");
  player[5] = minim.loadFile("placingObject3.mp3");
  player[6] = minim.loadFile("changingSpeed.mp3");
  player[7] = minim.loadFile("resetGame.mp3");

  player[2].loop();
}
