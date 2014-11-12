void setup () {
  size (500,500);
  noCursor();
}

void draw () {
  background(0);
  if (mouseX>width/5 && mouseX<4*width/5 && mouseY>height/4 && mouseY<3*height/4) {
   noStroke();
   fill(mouseX,0,mouseY);
  ellipse(mouseX,mouseY,50,50);
  }
}
