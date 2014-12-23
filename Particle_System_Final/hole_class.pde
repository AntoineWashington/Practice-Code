class hole {
  PVector loc;    //declare position and
  float sz;       //size variables
//////////////////////////
  hole() {
    loc= new PVector(random(width), random(height));   //initialize position
    sz= 2.;                                            //size variables
    noStroke();
  }
  ////////////////////////
  void display() {
    //stroke(360-frameCount%360, 100, 100, 100);     //outline that changes color frame-by-frame
    fill(0);                                       //black fill
    ellipse(loc.x, loc.y, sz, sz);
    ////////////////////////
    //change the position of the blackhole to
    //the location of the mouse when the right mouse button is pressed 
    if (mousePressed && mouseButton==RIGHT) {
      loc= new PVector(mouseX, mouseY);
    }
  }
  ////////////////////////
  //if the ball is touching the blackhole this will have a value of true
  //if not it will have a value of false
  boolean eat(ball snack) {
    if (loc.dist(snack.loc) < sz/2 + snack.sz/2) {
      return true;
    } else {
      return false;
    }
  }
  ////////////////////////
  void grow() {
    sz++;          //increase size
  }
  ////////////////////////
  void reset() {
    //if the balckhole becomes more than 200 pixels in diameter
    //then reset it
    if (sz>200) {
      sz=2;
    }
  }
}

