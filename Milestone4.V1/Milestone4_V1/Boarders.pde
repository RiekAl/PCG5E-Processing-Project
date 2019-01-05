
void drawSpacestream() { 
  //drawing the boarders and filling them with global colour variable
  stroke(paintA, paintB, paintC);

  //upper boarder
  line(width*0.01, height/8, width*0.95, height/8); 

  //lower boarder
  line(width*0.01, height*0.95, width*0.95, height*0.95);

  //right boarder
  line(width*0.95, height/8, width*0.95, height*0.95);

  // left border
  line(width*0.01, height/8, width*0.01, height*0.95);
}

void hitBoarder() {

  // when the robot hits the right boarder it bounces in reverse direction and makes a sound
  if (x+width*0.02 >= width*0.95) { 
    score -= 10;
    x -= 0.95;
    z = radians(180)+(z-(2*z));
    player[1].play();
    player[1].rewind();
    // prints log
    showLog = "hitBoarder";
    xPrint = x;
    yPrint = y;
  }

  // when the robot hits the left boarder it bounces in reverse direction and makes a sound
  if (x-width*0.02 <= width*0.01) { 
    score -= 10;
    x += 0.95;
    z = radians(180)+(z-(2*z));
    player[1].play();
    player[1].rewind();
    // prints log
    showLog = "hitBoarder";
    xPrint = x;
    yPrint = y;
  } 

  // when the robot hits the upper boarder it bounces in reverse direction and makes a sound
  if (y-height*0.04<= height/8) { 
    score -= 10;
    y += 0.95;
    z = radians(180)+(z+(2*z));
    player[1].play();
    player[1].rewind();
    // prints log
    showLog = "hitBoarder";
    xPrint = x;
    yPrint = y;
  } 

  // when the robot hits the lower boarder it bounces in reverse direction and makes a sound
  if (y+height*0.04>= height*0.95) { 
    score -= 10;
    y -= 0.95;
    z = radians(180)+(z+(2*z));
    player[1].play();
    player[1].rewind();
    // prints log
    showLog = "hitBoarder";
    xPrint = x;
    yPrint = y;
  }
}
