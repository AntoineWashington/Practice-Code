class ball {
  PVector loc, vel, acc;
  float sz;

  ball() {
    sz = random(10, 15);
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(-2, 2), random(1));
    acc = new PVector(0, .1);
  }
  ball(float sz_, float speed_) {

    sz = sz_;
    loc = new PVector(random(sz/2, width-sz/2), random(sz/2, height-sz/2));
    vel = PVector.random2D();
    vel.mult(speed_);
    acc = new PVector(0, 0);
  }
  void display() {
    stroke(0);
    fill(frameCount%360, 100, 100, mouseY*.1667);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc); //add acceleration to velocity and
    loc.add(vel); //velocity to location
  }

  void bounce() {
    //bouce off of floor
    if (loc.y+sz/2>height) {
      loc.y = height-sz/2;
      vel.y=-abs(vel.y);
    }
    //bounce left platform
    /*    if (loc.y+sz/2>height/2 && loc.x < width/2) {
     loc.y = height/2-sz/2;
     vel.y=-abs(vel.y);
     }
     //bounce right platform
     if (loc.y+sz/2>3*height/4 && loc.x > width/2) {
     loc.y = 3*height/4-sz/2;
     vel.y=-abs(vel.y);
     }*/
    //bounce ceiling
    if (loc.y-sz/2<0) {
      vel.y=abs(vel.y);
    }
    //bounce right wall
    if (loc.x+sz/2>width) {
      vel.x=-abs(vel.x);
    }
    //bounce left wall
    if (loc.x-sz/2<0) {
      vel.x=abs(vel.x);
    }
    //bounce middle wall
    /*    if (loc.x-sz/2<width/2 && loc.y > height/2 && loc.y < 3*height/4) {
     vel.x=abs(vel.x);
     }*/
  }
  void bounceballs(ball others) {
    if (loc.dist(others.loc) < sz/2 + others.sz/2) {
      vel = PVector.sub(loc, others.loc);
      vel.normalize();
      vel.setMag(1);
    }
  }
  void flee() {
    PVector mouse = new PVector(mouseX, mouseY);
    if (loc.dist(mouse) < 100) {
      vel = PVector.sub(loc, mouse);
      vel.normalize();
      vel.setMag(5);
      print(mouse.x, mouse.y);
    }
    println(mouse.x, mouse.y);
  }
  void sucked(hole eater) {
    acc = PVector.sub(eater.loc, loc);
    acc.setMag(.1);
  }
}

