int x;
int step;
int y;

void setup () {
 size(500,500);
x = width;
y = height;
background(0);

}
void draw () {
  while (x > 0) {
    fill(255-x*.51);
    noStroke();
    ellipse(width/2,height/2,x,y);
    x-=1;
    y-=1;
  }
}

