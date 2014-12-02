gravball ball;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
//  hue=0;
  ball = new gravball();
}

void draw() {
  background(255);
  ball.display();
  ball.move();
  ball.bounce();
}

class gravball {
  PVector loc, vel, acc;
  float sz;

  gravball() {
    loc = new PVector(width/2, height/3);
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    sz = 100;
  }
  void display() {
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

