int circleCount = 220;
int i;
float[] x = new float [circleCount];
float[] y = new float [circleCount];

void setup() {
  size(800, 600);
  i=0;
  //  for (int i=0; i<x.length; i++) {
  //    x[i]=random(width);
  //    y[i]=random(height);
  //  }
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0);
  for (int i = 0; i<circleCount-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];
  } 

  

  x[circleCount-1]=mouseX;
  y[circleCount-1]=mouseY;

  for (int i=4; i>=0; i--) {
    ellipse(x[i], y[i], i*40+40, i*40+40);
    fill(72*i, 100, 100, 100);
  }
}

