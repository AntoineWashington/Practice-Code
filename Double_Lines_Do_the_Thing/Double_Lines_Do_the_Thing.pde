

void setup () {
  size(500,500);
}

void draw () {
  background(0);
  fill(mouseX*.51,mouseY*.51,(mouseX*.51 + mouseY*.51)/2);
 for(int x=5;x<width;x+=10) {
  ellipse(x,mouseY,10,10);
 }
 for(int y=5;y<height;y+=10) {
  ellipse(mouseX,y,10,10); 
 }
}
