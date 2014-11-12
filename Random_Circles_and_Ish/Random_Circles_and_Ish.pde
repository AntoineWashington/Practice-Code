void setup() {
  size(255,255);
}

void draw() {
  background(0);
  fill(mouseX,mouseY,255);
  stroke(0);
  ellipse(mouseX,mouseY,75,75);
}
