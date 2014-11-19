PVector loc; //locations
PVector vel; //velocities
PVector acc; //accelerations
int hue;
int sz;
void setup() {
  size(800, 600);
  loc = new PVector(width/2, height/2);
  vel =  PVector.random2D();
  acc = new PVector(random(-2, 2), random(-2, 2));
  sz=100;
  sz=50;
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(100);
  acc.set(random(-2, 2), random(-2, 2));
  vel.add(acc);
  loc.add(vel);
  if (dist(mouseX, mouseY, loc.x, loc.y) > sz) {
    vel.set(0,0);
  } else {
    fill(255);
  }
  circle(loc.x, loc.y, sz);

  if (loc.x + sz > width || loc.x - sz < 0) {
    vel.x*=-1;
  }
  if (loc.y + sz > height || loc.y - sz < 0) {
    vel.y*=-1;
  }
  hue+=1;
  if (hue>360) {
    hue=1;
  }
}

void circle(float x, float y, float r) {
  ellipse(x, y, 2*r, 2*r);
}

