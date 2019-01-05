
// variables for moving the robot
int gw, gh;
float x, y, z, v;
boolean north, south, west, east;
float speed = 0.01, finSpeed = 0.05, finRotation = 0.1, finAccel = 0.99;

// arctangent
float xTan, yTan, angle = 0.0;
int size;

void drawRobot(float x, float y, float z) {
  // initializing new layer 
  pushMatrix();
  // scaling and rotating the robot
  translate(x, y);
  rotate(z);
  scale(0.6);
  stroke(0);
  strokeWeight(2);
  fill(paintA, paintB, paintC);

  // drawing the robot
  rectMode(CENTER);
  // mid rect
  rect(0, 0, width*0.06, height*0.08);

  // small side rect
  rect(width*0.00, -(height*0.05), width*0.04, height*0.02);
  rect(width*0.00, height*0.05, width*0.04, height*0.02);

  // robot eyes
  fill(255);
  stroke(2);
  ellipseMode(CENTER);
  ellipse(width*0.02, width*0.01, width*0.015, width*0.015);
  ellipse(width*0.02, -width*0.01, width*0.015, width*0.015);

  // pupils following the mouse
  angle = atan2(mouseY-y, mouseX-x);
  fill(0);

  // pupil1
  pushMatrix();
  translate(width*0.019, height*0.013);
  rotate (angle+z);
  ellipse(2, 2, width*0.007, width*0.007);
  popMatrix();

  // pupil2
  pushMatrix();
  translate(width*0.019, height*-0.014);
  rotate (angle+z);
  ellipse(2, 2, width*0.007, width*0.007);
  popMatrix();

  // closing new layer
  popMatrix();
}

void drive() {
  // asking for movement direction
  v += (north? finSpeed : 0) - (south? finSpeed : 0);
  z += (east?  finRotation : 0) - (west?  finRotation : 0);

  // driving the robot
  x = (x  + cos(z)*v) % gw;
  y = (y  + sin(z)*v) % gh;

  // determining the speed of the robot
  v *= finAccel;
  resetWinkel();
}

void resetWinkel() {
  if (z >= 10000) {
    z -= z;
  }
}
