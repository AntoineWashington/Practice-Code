boolean clickety;
int ballCount=250;
int szc;
int trsc;
float[] x= new float [ballCount];
float[] y= new float [ballCount];
float[] xc= new float [ballCount];
float[] yc= new float [ballCount];
float[] sz= new float [ballCount];
float[] clr= new float [ballCount];
float[] trs= new float [ballCount];
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<ballCount; i++) {
    x[i]=random(30, width-30);
    y[i]=random(30, height-30);
    xc[i]=random(-5, 5);
    yc[i]=random(-5, 5);
    sz[i]=random(30, 60);
    clr[i]=random(360);
    //    trs[i]=random(10, 90);
  }
  szc=1;
  noStroke();
  clickety=true;
  textSize(35);
  //  trsc=1;
}

void draw() {

  if (clickety) {
    background(0);
    for (int i=0; i<x.length; i++) {
      clr[i]++;
      if (clr[i]>360) {
        clr[i]=0;
      }
      fill(clr[i], 100, 100, 30);
      ellipse(x[i], y[i], sz[i], sz[i]);
      x[i]+=xc[i];
      y[i]+=yc[i];
      //    sz[i]+=szc;
      //    if (sz[i]>150||sz[i]<10) {
      //      szc*=-1;
      //    }
      if (x[i]+sz[i]/2>width || x[i]-sz[i]/2 < 0) {
        xc[i]*=-1;
      }
      if (y[i]+sz[i]/2>height || y[i]-sz[i]/2 < 0) {
        yc[i]*=-1;
      }
    }
  } else {
    background(0);
    text("You Like Deleted My Program How Rude", 40, height/2);
  }
}

void mousePressed() {
  clickety=!clickety;
}

