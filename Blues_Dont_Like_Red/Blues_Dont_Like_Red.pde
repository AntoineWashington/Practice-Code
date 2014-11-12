int r;
void setup () {
 size(500,500);
 r=25;
 noStroke();
}

void draw () {
  background(0);
  for(int x=r;x<width;x+=2*r) {
   for(int y=r;y<height;y+= 2*r) {
    if(mouseX>x-r && mouseX<x+r && mouseY>y-r && mouseY<y+r) {
     fill(255,0,0);
    }
    else {
     fill(random(0,85),random(86,170),random(171,255));
    }
     ellipse(x,y,r*2,r*2);
   }
  }
}
