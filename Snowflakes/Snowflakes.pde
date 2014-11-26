int count = 500;
PVector[] x= new PVector[count];
PVector[] v= new PVector[count];
PVector[] a= new PVector[count];
float[] sz= new float[count];
float[] hue= new float[count];
float[]trans= new float[count];

void setup() {
  size(800, 600);
  for (int i=0; i<count; i++) {
    sz[i] = random(1, 3);
    x[i] = new PVector(random(width), random(-height, -sz[i]/2));
    v[i] = new PVector(random(-.01, .01), random(1, 2));
    a[i] = new PVector(0, 0);
  }
  noStroke();
}

void draw() {
  background(0);
  for (int i=0; i<count; i++) {
    a[i].set(random(-.01,.01),0);
    v[i].add(a[i]);
    x[i].add(v[i]);

    ellipse(x[i].x, x[i].y, sz[i], sz[i]);

    if (x[i].y-sz[i]/2>height) {
      x[i].y=-sz[i]/2;
      v[i].set(random(-.01, .01), random(1, 2));
    }
  }
}

