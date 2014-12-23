class ball {
  PVector loc, vel, acc;             //declare movement variables
  float sz;                          //declare size
  int mouseEventHorizon;             //declare point from which the mouse can influence the balls
  float life;                        //declare life
//////////////////////////  
  ball() {
    //intialize movement and size variables
    sz = random(3, 5);                                 //gives ball a random size between 3 and 5 pixels
    loc = new PVector(mouseX, mouseY);                 //starts balls at current mouse position
    vel = new PVector(random(-2, 2), random(-2, 2));   //sets random velocity
    acc = new PVector(0, 0);                           //acceleration equals zero
    mouseEventHorizon=100;                             //mouse will influence the balls from a distance of 25 pixels
    life=100;
    noStroke();
  }
  ////////////////////////
  void display() {
   // stroke(frameCount%360, 100, 100, life);            //stroke and fill will change as frames go by and
    fill(frameCount%360, 100, 100, life);              //transparency will be dependent on the life variable 
    ellipse(loc.x, loc.y, sz, sz);
  }
  ////////////////////////
  void age() {
    life-=.16667;    //life will steadily decrease (appox. 10 s life if frameRate=60)
  }
  ////////////////////////
  //if life=0 this will have a value of true
  //if life!= this will have a value of false
  boolean die(){
   if(life<=0){
     return true;
   }
   else{
     return false;
   }
  }
  ////////////////////////
  void move() {
    vel.add(acc);     //add acceleration to velocity and
    loc.add(vel);     //velocity to location
  }
  ////////////////////////
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
  ////////////////////////
  void flee() {
    PVector mouse = new PVector(mouseX, mouseY);  //declare and initialize a variable with the values of the mouse's location
    //if the distance between a ball and the mouse is less than the mouseEventHorizon
    //then have the mouse move away from the mouse
    if (loc.dist(mouse) < mouseEventHorizon) {
      vel = PVector.sub(loc, mouse);
      vel.normalize();
      vel.setMag(2);
    }
  }
  ////////////////////////
  void sucked(hole eater) {
    acc = PVector.sub(eater.loc, loc);   //ball is attracted to a blackhole should one be present
    acc.setMag(.1);                      //with an acceleration of .1 pixels/second/second
  }
}

