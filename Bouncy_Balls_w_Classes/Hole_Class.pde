class hole {
  PVector loc;
  float sz;
  hole() {
    loc= new PVector(random(sz/2, width-sz/2), random(sz/2, height-sz/2));
    sz= 10.;
  }
  void display() {
    fill(0);
    ellipse(loc.x, loc.y, sz, sz);
  }
  boolean eat(ball snack) {
    if (loc.dist(snack.loc) < sz/2 + snack.sz/2) {
      return true;
    } else {
      return false;
    }
  }
}

