int count = 25;
int speed_ = 5;
ball[] ball = new ball[count];

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  //  hue=0;
  for (int i=0; i<ball.length; i++) {
    ball[i] = new ball(random(10, 50), speed_);
  }
}

void draw() {
  background(255);
  for (int i=0; i<ball.length; i++) {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();

    for (int k=0; k<ball.length; k++) {
      if (i!=k) {
        ball[i].bounceballs(ball[k]);
      }
    }
  }
}


class ball {
  PVector loc, vel, acc;
  float sz;

  ball() {
    sz = random(100);
    loc = new PVector(random(sz/2, width-sz/2), random(sz/2, height-sz/2));
    vel = PVector.random2D();
    acc = new PVector(0, 0);
  }
  ball(float sz_, float speed_) {

    sz = sz_;
    loc = new PVector(random(sz/2, width-sz/2), random(sz/2, height-sz/2));
    vel = PVector.random2D();
    vel.mult(speed_);
    acc = new PVector(0, 0);
  }
  void display() {
    fill(frameCount%360, 100, 100, mouseY*.1667);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    if (loc.y+sz/2>height) {
      vel.y=-abs(vel.y);
    }
    if (loc.y-sz/2<0) {
      vel.y=abs(vel.y);
    }
    if (loc.x+sz/2>width) {
      vel.x=-abs(vel.x);
    }
    if (loc.x-sz/2<0) {
      vel.x=abs(vel.x);
    }
  }
  void bounceballs(ball others) {
    if (loc.dist(others.loc) < sz/2 + others.sz/2) {
      vel = PVector.sub(loc, others.loc);
      vel.normalize();
      vel.setMag(speed_);
    }
  }
}

