PVector loc, loc2; //locations
PVector vel, vel2; //velocities
PVector acc, acc2; //accelerations
PVector mouse;
int hue;
int sz;
int sz2;
void setup() {
  size(800, 600);
  loc = new PVector(width/3, height/3);
  vel = new PVector(2, 2);
  acc = new PVector(random(-2, 2), random(-2, 2));

  loc2 = new PVector(2*width/3, 2*height/3);
  vel2 = new PVector(-2, -2);
  acc2 = new PVector(random(-2, 2), random(-2, 2));

  mouse = new PVector();
  sz=20;
  sz2=50;
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(100);
  mouse.set(mouseX, mouseY);


  if ((loc.dist(loc2)) < sz/2+sz2/2) {
    vel.mult(-1);
    vel2.mult(-1);
  }
  acc.set(0, 0);
  vel.add(acc);
  loc.add(vel);
  
  acc2.set(0,0);
  vel2.add(acc2);
  loc2.add(vel2);

  circle(loc.x, loc.y, sz);
  circle(loc2.x, loc2.y, sz2);

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

