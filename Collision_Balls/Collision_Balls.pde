int count = 500;
PVector[] x= new PVector[count];
PVector[] v= new PVector[count];
PVector[] a= new PVector[count];
float[] sz= new float[count];
float[] hue= new float[count];
float[] trans= new float[count];

void setup() {
  size(800, 600);
  for (int i=0; i<count; i++) {
    sz[i] = random(10, 30);
    x[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    v[i] = PVector.random2D();
    a[i] = new PVector(0, 0);
  }
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
}

void draw() {
  background(100);
  for (int i=0; i<count; i++) {

    hue[i] = x[i].x/2.22;
//    trans[i] = x[i].y/6;
    fill(hue[i], 100, 100, 100);

    v[i].add(a[i]);
    x[i].add(v[i]);

    ellipse(x[i].x, x[i].y, sz[i], sz[i]);

    for (int k=0; k < count; k++) {
      if (i!=k) {
        if (x[i].dist(x[k]) < sz[i]/2 + sz[k]/2) {
          v[i] = PVector.sub(x[i], x[k]);
          v[i].normalize();
        }
      }
    }

    if (x[i].x + sz[i]/2 >= width || x[i].x - sz[i]/2 <= 0) {
      v[i].x*=-1;
    }
    if (x[i].y + sz[i]/2 >= height || x[i].y - sz[i]/2 <= 0) {
      v[i].y*=-1;
    }
  }
}
void mousePressed() {
  x[0].set(mouseX, mouseY);
}

