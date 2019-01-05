
// minim mute variable
boolean listening = true;

// random colour variables
float paintA = random(0, 255), paintB = random(0, 255), paintC = random(0, 255);

void keyPressed() { 
  setKeys(keyCode, true);

  // places the obstacles on screen
  if (key == ENTER) {
    createExtraObstacle();
  }

  // resets robot position and score
  if (key == 'r') {
    z =0;
    x = gw*0.06;
    y = gw*0.89;
    score =0;
    player[7].play();
    player[7].rewind();
  }

  // mutes and unmutes sounds using the minim library
  if (key == 'm' || key == 'M') {
    if (!listening) {
      player[2].unmute();
      listening = true;
    } else {
      player[2].mute();
      listening = false;
    }
  }

  // declaring maximum speed when v is pressed
  if (key == 'v' && finSpeed == 0.1) {
    finSpeed = 0.01;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.01) {
    finSpeed = 0.02;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.02) {
    finSpeed = 0.03;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.03) {
    finSpeed = 0.04;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.04) {
    finSpeed = 0.05;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.05) {
    finSpeed = 0.06;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.06) {
    finSpeed = 0.07;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.07) {
    finSpeed = 0.08;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.08) {
    finSpeed = 0.09;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  } else if (key == 'v' && finSpeed == 0.09) {
    finSpeed = 0.1;
    player[6].play();
    player[6].rewind();
    println("changed maxSpeed to: "+finSpeed*1000);
  }
  // changing acceleration value
  if (key == 'b' && finAccel == 0.99) {
    finAccel = 0.95;
  } else if (key == 'b' && finAccel == 0.95) {
    finAccel = 0.99;
  }
} 


void keyReleased() { 
  // setting key for moving engine
  setKeys(keyCode, false);
}

void setKeys(int k, boolean decision) {
  if (k == UP) {
    north = decision;
  } else if (k == DOWN) {
    south = decision;
  } else if (k == LEFT) { 
    west  = decision;
  } else if (k == RIGHT) {  
    east  = decision;
  }
}

void mousePressed() { 
  // randomly generates colours when the mouse is pressed 
  if (paintA <= 255) {
    paintA = random(0, 255); 
    paintB = random(0, 255);
    paintC = random(0, 255);
    println("changed colour to: "+paintA+" / "+paintB+" / "+paintC);

    // show or hide the billboard
    if (width*0.93 < mouseX && mouseX < width*0.95 && height*0.01 < mouseY && mouseY < height/9) {
      showHide = !showHide;
    }
  }
}
