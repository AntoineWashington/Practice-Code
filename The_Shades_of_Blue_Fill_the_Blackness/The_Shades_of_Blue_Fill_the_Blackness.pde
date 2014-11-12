int pointX = 0;
int pointY = 0;
int pointXc = 1;
int pointYc = 3;


void setup () {
 size(500,500);
 background(0);
 frameRate(30);
}

void draw () {
  //left wall
  for(int y=0;y<=height;y+=100) {
   stroke(random(0,85),random(86,170),random(171,255));
   line(0,y,pointX,pointY);
   pointX+=pointXc;
   pointY+=pointYc;
   if(pointX>=width) {
     pointXc=-1;
   }
   if(pointX<0) {
     pointXc=1;
   }
   if(pointY>=height) {
     pointYc=-3;
   }
   if(pointY<0) {
     pointYc=3;
   }
   
  }
}
