boolean clickety;
int ballCount=250;
int szc;
float[] x= new float [ballCount];
float[] y= new float [ballCount];
float[] xc= new float [ballCount];
float[] yc= new float [ballCount];
float[] sz= new float [ballCount];
float[] clr= new float [ballCount];
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
  }
  szc=1;
  noStroke();
  clickety=true;
}

void draw() {

  if (clickety) {
    background(100);
    for (int i=0; i<x.length; i++) {
      clr[i]++;
      if (clr[i]>360) {
        clr[i]=0;
      }
      fill(clr[i], 100, 100, 50);
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
    noStroke();
    fill(random(0, 85), random(86, 170), random(171, 255));
    ellipse(random(50, (width/2)-50), random(50, (height/2)-50), 100, 100);

    fill(random(170, 255), random(85, 171), random(0, 85));
    rect(random(width/2, width-100), random((height/2)-100), 100, 100);

    fill(random(0, 85), random(171, 255), random(86, 170));
    ellipse(random((width/2)+50, width-50), random((height/2)+50, height-50), 100, 100);

    fill(random(85, 170), random(176, 255), random(0, 85));
    rect(random((width/2)-100), random((height/2), height-100), 100, 100);
  }
}

void mousePressed() {
  clickety=!clickety;
}

