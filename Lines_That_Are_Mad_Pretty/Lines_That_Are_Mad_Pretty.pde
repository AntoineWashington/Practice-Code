int x;
int step;

void setup () {
 size(500,500);
x = 0;
step=1;
background(0);

}
void draw () {
  while (x<500) {
    stroke(random(0,100),random(100,175),random(175,255));
    line(x,0,x,height);
    x+=step;
    step+=5;
  }
}

