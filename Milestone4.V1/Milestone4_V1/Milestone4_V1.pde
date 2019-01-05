
// background variable
PImage bg;

void setup() {
  fullScreen();
  bg = loadImage("dysonsphere.png");
  bg.resize(width, height);

  // Draws all geometry with smooth (anti-aliased) edges. 
  smooth();

  // starting position of the robot
  gw = width;
  gh = height;
  x = gw*0.06;
  y = gw*0.89;

  // initializing Minim and function for loading the sounds
  minim = new Minim(this);
  loadMinim();
}

void draw() {
  background(bg);


  drive();
  drawSpacestream();
  drawRobot(x, y, z);
  drawExtraObstacles();
  hitBoarder();
  hitObstacle();
  showHideIcon();
  Bluetooth();
  
}
