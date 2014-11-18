PVector loc; //locations
PVector vel; //velocities
PVector acc; //accelerations
int hue;
int sz;
void setup() {
  size(800, 600);
  loc = new PVector(width/2, height/2);
  vel =  PVector.random2D();
  acc = new PVector(-.1,.1);
  sz=100;
  sz=50;
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  background(100);
}

void draw() {

  fill(hue, 100, 100, 75);
  hue+=1;
  if (hue>359) {
    hue=0;
  }
  acc.set(random(-.1,.1), random(-.1,.1));
  vel.limit(5);
  vel.add(acc);
  loc.add(vel);

  ellipse(loc.x, loc.y, sz, sz);

  if (loc.x+sz/2 < 0) {
    loc.x=width+sz/2;
  }
  if (loc.y+sz/2 < 0) {
    loc.y=height+sz/2;
  }
  if (loc.x-sz/2 > width) {
    loc.x=-sz/2;
  }
  if (loc.y-sz/2 > height) {
    loc.y=-sz/2;
  }
}

