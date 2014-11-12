int x;
void setup () {
 size(500,500);
 noStroke();
 colorMode(HSB,360,100,100,100);
 x=0;
 frameRate(30);
}

void draw () {
  
 fill(x,100,100);
 ellipse(width/2,height/2,400,400);
 x+=5;
 if (x>=360) {
  x=0; 
 }
}
