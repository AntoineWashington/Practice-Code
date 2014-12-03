int count = 100;
gravball[] ball = new gravball[count];

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  //  hue=0;
  for (int i=0; i<ball.length; i++) {
    ball[i] = new gravball(50);
  }
}

void draw() {
  background(255);
  for (int i=0; i<ball.length; i++) {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();
  }
}

class gravball {
  PVector loc, vel, acc;
  float sz;

  gravball() {
    sz = random(100);
    loc = new PVector(random(sz/2, width-sz/2), sz/2);
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
  }
  gravball(float sz_) {

    sz = sz_;
    loc = new PVector(random(sz/2, width-sz/2), sz/2);
    vel = new PVector(0, 0);
    acc = new PVector(0, random(1, 1.5));
  }
  void display() {
    fill(mouseX*.45, 100, 100, mouseY*.1667);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {

    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {

    if (loc.y+sz/2>height) {
      loc.y=height-sz/2;
      vel.y*=-1;
    }
  }
}

