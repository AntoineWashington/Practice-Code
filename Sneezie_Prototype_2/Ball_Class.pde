class ball {
  PVector loc, vel, acc;
  float sz, life;

  ball() {
    sz = random(2, 3);
    loc = new PVector(mouseX, mouseY);
    vel = PVector.random2D();
    vel.mult(2);
    acc = new PVector(0, .1);
    life = 100.;
  }
  
  void display() {
    noStroke();
    fill(frameCount%360, 100, 100, life);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    //bouce off of floor
    if (loc.y+sz/2>height) {
      loc.y = height-sz/2;
      vel.y=-abs(vel.y);
    }
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
    if (loc.dist(mouse) < 50) {
      vel = PVector.sub(loc, mouse);
      vel.normalize();
      vel.setMag(5);
      print(mouse.x, mouse.y);
    }
    println(mouse.x, mouse.y);
  }
    void age(){
    life-=1.666;
  }
  boolean dead(){
    if(life<=0){
      return true;
    }
    else{
      return false;
    }
  }
}

