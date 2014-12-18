class hole {
  PVector loc;
  float sz;
  hole() {
    loc= new PVector(width/2, height/3);
    sz= 10.;
  }
  void display() {
    stroke(frameCount%360, 100, 100, 100);
    fill(0);
    ellipse(loc.x, loc.y, sz, sz);
    if (mousePressed && mouseButton==RIGHT) {
      loc= new PVector(mouseX, mouseY);
    }
  }
  void mousePressed() {
    loc= new PVector(mouseX, mouseY);
  }
  boolean eat(ball snack) {
    if (loc.dist(snack.loc) < sz/2 + snack.sz/2) {
      return true;
    } else {
      return false;
    }
  }
  void grow() {
    sz+=1;
  }
}

