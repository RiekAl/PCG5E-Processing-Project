
// show or hide billboard
boolean showHide = true;

// show log events
String showLog;
float xPrint, yPrint, finSpeedZahl;

void showHideIcon() {
  // drawing the 'X' icon to show/hide the billdboard
  if (showHide) {
    allText();
  }
  if (showHide) {
    rectMode(CORNERS);
    rect(width*0.93, height*0.01, width*0.95, height/9);
    stroke(0);
    line(width*0.93+4, height*0.01+4, width*0.95-4, height/9-4);
    line(width*0.95-4, height*0.01+4, width*0.93+4, height/9-4);
  } else {
    rectMode(CORNERS);
    fill(paintA, paintB, paintC);
    rect(width*0.93, height*0.01, width*0.95, height/9);
    stroke(0);
  }
}
