int x;
int step;
int y;

void setup () {
 size(500,500);
x = width-10;
y = height-10;
background(0);

}
void draw () {
  while (x > 0) {
    fill(random(0,100),random(100,175),random(175,255));
    stroke(random(0,100),random(100,175),random(175,255));
    ellipse(width/2,height/2,x,y);
    x-=20;
    y-=20;
  }
}

