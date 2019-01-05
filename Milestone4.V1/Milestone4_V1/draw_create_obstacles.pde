
// variables for the obstacles being placed
boolean obstacle1 = false, obstacle2 = false, obstacle3 = false;
float obstacle1x, obstacle1y, midObstacle1, obstacle2x, obstacle2y, midObstacle2, obstacle3x, obstacle3y, midObstacle3;

void createExtraObstacle() {

  // placing obstacles on screen using ENTER on mouseX, mouseY position
  if (!obstacle1) {
    obstacle1 = true;
    obstacle1x = mouseX;
    obstacle1y = mouseY;
    midObstacle1 = mouseY + width*0.010;
    player[3].play();
    println("obstacle no1 placed! coordinates: "+obstacle1x+" / "+obstacle1y);
    showLog = "obstaclePlaced1";
  } else if (!obstacle2) {
    obstacle2 = true;
    obstacle2x = mouseX;
    obstacle2y = mouseY;
    midObstacle2 = mouseY + width*0.02;
    player[4].play();
    println("obstacle no2 placed! coordinates: "+obstacle2x+" / "+obstacle2y);
    showLog = "obstaclePlaced2";
  } else if (!obstacle3) {
    obstacle3 = true;
    obstacle3x = mouseX;
    obstacle3y = mouseY;
    midObstacle3 = mouseY + width*0.3;
    player[5].play();
    println("obstacle no3 placed! coordinates: "+obstacle3x+" / "+obstacle3y);
    showLog = "obstaclePlaced3";
  }
}

void drawExtraObstacles() {
  rectMode(CENTER);
  fill(paintA, paintB, paintC);

  //obstacles being drawn
  if (obstacle1) {
    ellipse(obstacle1x, obstacle1y, width*0.02, width*0.02);
  }
  if (obstacle2) {
    ellipse(obstacle2x, obstacle2y, width*0.04, width*0.04);
  }
  if (obstacle3) {
    ellipse(obstacle3x, obstacle3y, width*0.06, width*0.06);
  }
}
