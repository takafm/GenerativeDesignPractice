/// Simultaneous Contrast
/// 2017.12.10.
/// Takafumi Oyama

import processing.pdf.*;
import java.util.Calendar;

void setup() {
  size(720, 720);
  noCursor();
} 

void draw() {
  colorMode(HSB, 360, 100, 100);
  rectMode(CORNER);
  noStroke();
  background(360, 100, 100);
  
  int rectCount = 5;
  int colorCount = 0;
  int rectWidth = width/rectCount;
  int rectHeight = height/rectCount;
  
  for (int i = 0; i < rectCount; i++) {
    for (int j = 0; j < rectCount; j++) {
      rectMode(CORNER);
      fill(mouseY-360/(rectCount*rectCount)*colorCount, mouseY-100/(rectCount*rectCount)*colorCount, mouseX-100/(rectCount*rectCount)*colorCount);
      rect(rectWidth*i, rectHeight*j, rectWidth, rectHeight);
      
      rectMode(CENTER);
      fill(360-(mouseY-360/(rectCount*rectCount)*colorCount), mouseY-100/(rectCount*rectCount)*colorCount, mouseX-100/(rectCount*rectCount)*colorCount);
      rect(rectWidth*i+rectWidth/2, rectHeight*j+rectHeight/2, mouseX/rectCount, mouseX/rectCount);
      
      //fill(mouseY-360/(rectCount*rectCount)*colorCount, mouseY-100/(rectCount*rectCount)*colorCount, mouseX-100/(rectCount*rectCount)*colorCount);
      //rect(rectWidth*i+rectWidth/2, rectHeight*j+rectHeight/2, mouseX/rectCount/2, mouseX/rectCount/2);
      colorCount++;
    }
  }
  
}