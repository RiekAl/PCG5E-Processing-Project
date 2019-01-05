
// creating font 
PFont f;

int score =0;

void allText() { 
  // font parameter for title and random colour fill
  f = createFont ("Arial Black", 100, true);
  fill (paintA, paintB, paintC);

  // displaying project title
  textFont (f, width/40);
  text ("Milestone 3", width*0.01, height*0.1); //displays text 

  // displaying the score
  textFont(f, width/80);
  text("Score: "+score, width*0.2, height*0.06);

  // font parameter and colour for the rest
  fill(paintA, paintB, paintC);

  // coordinates of robot
  int roundX = round(x);
  int roundY = round(y);
  text ("robotX: "+roundX+" robotY: "+roundY, width*0.01, height*0.03);

  // speed of the robot
  int speedRound = round(v);
  text("Speed: "+speedRound*10+" p/f", width*0.2, height*0.03);

  // displaying date & time
  String stunde = nf(hour(), 2);
  String minu = nf(minute(), 2);
  String seku = nf(second(), 2);
  text(day()+"/"+month()+"/"+year(), width*0.73, height*0.03);
  text(stunde+":"+minu+":"+seku, width*0.85, height*0.03);

  // maximal speed and acceleration of the robot
  text ("maxSpeed: "+finSpeed*1000, width*0.3, height*0.03);
  text("maxAccel: "+finAccel, width*0.3, height*0.06);

  // credit text
  text("Credits", width/2, height*0.03);
  if (mouseX >= width*0.50 && mouseX <= width*0.55 && mouseY >= height*0.01 && mouseY <= height*0.05) { 
    text("Code & Sound by 'PCG5E', M.Ing WS/2018", width/2, height*0.08);
    text("University Of Applied Sciences, Kiel", width/2, height*0.11);
  } 

  // manual text
  text("Manual", width*0.6, height*0.03);
  if (mouseX >= width*0.6 && mouseX <= width*0.65 && mouseY >= height*0.01 && mouseY <= height*0.05) {
    textFont(f, width*0.009);
    text("Press 'v' to change speed", width*0.5, height*0.06);
    text("Press 'ENTER' to place an object", width*0.5, height*0.08);
    text("Use arrow keys to control the robot", width*0.5, height*0.1);
    text("Press 'm' to mute/unmute sounds ", width*0.73, height*0.06);
    text("Press 'b' to change acceleration", width*0.73, height*0.08);
    text("Click the 'X' to hide the board", width*0.73, height*0.1);
  }
  // Log text
  if (showLog == "obstaclePlaced1") {
    text("obstacle no1 placed! coordinates: "+obstacle1x+" / "+obstacle1y, width*0.01, height*0.98);
  }
  if (showLog == "obstaclePlaced2") {
    text("obstacle no2 placed! coordinates: "+obstacle2x+" / "+obstacle2y, width*0.01, height*0.98);
  }
  if (showLog == "obstaclePlaced3") {
    text("obstacle no3 placed! coordinates: "+obstacle3x+" / "+obstacle3y, width*0.01, height*0.98);
  }
  if (showLog == "hitBoarder") {
    text("collision detect! coordinates: "+xPrint+" / "+yPrint, width*0.01, height*0.98);
  }
  if (showLog == "maxSpeedChanged") {
    text("changed maxSpeed to: "+finSpeed*1000, width*0.01, height*0.98);
  }
  if (showLog == "colorChanged") {
    text("changed colour to: "+paintA+" / "+paintB+" / "+paintC, width*0.01, height*0.98);
  }
}
