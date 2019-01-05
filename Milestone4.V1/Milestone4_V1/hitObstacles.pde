
void hitObstacle() {

  //measuring the distance between the robot and the obstacle
  float dist1X = dist(x, y, obstacle1x, obstacle1y);
  float dist2X = dist(x, y, obstacle2x, obstacle2y);
  float dist3X = dist(x, y, obstacle3x, obstacle3y);

  // hit obstacle1, change score/direction
  if (dist1X <= width*0.03) {
    score -= 10;
    x -= 0.95;
    z = radians(180)+(z-(2*z));
    player[0].play();
    player[0].rewind();
  }
  // hit obstacle2, change score/direction
  if (dist2X <= width*0.039) {
    score -= 10;
    x -= 0.95;
    z = radians(180)+(z-(2*z));
    player[0].play();
    player[0].rewind();
  }
  // hit obstacle3, change score/direction
  if (dist3X <= width*0.046) {
    score -= 10;
    x -= 0.95;
    z = radians(180)+(z-(2*z));
    player[0].play();
    player[0].rewind();
  }
}
