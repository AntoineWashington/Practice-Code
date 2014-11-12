int x;
int boop;

void setup () {
 size(500,500);
 x=10;
}

void draw () {
  background(random(85),random(86,170),random(171,255));
  x=0;
 while (x<width) {
   ellipse(x,mouseY,10,10);
   x+=15;
 }
}
