
void setup () {
 size(500,500); 
}

void draw () {
  background(#54befa);
  //left wall
  for(int y=0;y<=height;y+=10) {
   stroke(255,0,0);
   line(0,y,mouseX,mouseY);
  }
  //right wall
   for(int y=0;y<=height;y+=20) {
   stroke(0,0,255);
   line(width,y,mouseX,mouseY);
  }
  //ceiling
  for(int x=0;x<=width;x+=20) {
  stroke(255,255,0);
  line(x,0,mouseX,mouseY);
  }
  //floor
  for(int x=0;x<=width;x+=5) {
  stroke(0,255,0);
  line(x,height,mouseX,mouseY);
  }
}
