int x;
int y;

void setup () {
  size(500,500);
  x = 0;
  y = height;
  textSize(50);
  frameRate(60);
}

void draw () {
 fill(0);
 background(mouseY,mouseX,random(255));
 fill(mouseX,mouseY,random(255));
 ellipse(x, y, 40, 40);
 fill(0);
 text(x, width/10, 3*height/25);
 text(y, width-200, 3*height/25);
 x = x + 1;
 y = y - 1;
 
 if(x > width) {
   x = 0;
 }
 if(y < height - height) {
   y = height;
 }
}
