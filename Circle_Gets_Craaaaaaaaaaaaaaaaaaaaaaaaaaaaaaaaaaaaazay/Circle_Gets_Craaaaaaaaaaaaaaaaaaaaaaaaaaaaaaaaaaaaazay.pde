int x;
int y;
int xchange;
int ychange;
void setup () {
  size(500,500);
  x = 0;
  y = height;
  xchange = 1;
  ychange = -1;
  textSize(50);
  frameRate(500);
}

void draw () {
 fill(0);
 background(x,y,x/(y+2));
 fill(y,x,y/(x+2));
 ellipse(width/2, height/2, x, y);
 fill(0);
 text(x, width/10, 3*height/25);
 text(y, width-200, 3*height/25);
 x = x + xchange;
 y = y + ychange;
 
 if(x > width) {
   xchange = -1;
 }
 if(y < 0) {
   ychange = 1;
 }
 if (x < 0) {
   xchange = 1;
 }
 if (y > height) {
   ychange = -1;
 }
}
