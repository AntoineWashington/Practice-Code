class esplosionpiece{
  //have loc
  //move
  //accelerate downward a lil
  PVector loc, vel, acc;
  float r;
  PVector mouse;
  float life;
  
  esplosionpiece(){
    r = 5.;
    loc =  new PVector(mouseX,mouseY);
    vel = PVector.random2D();
    vel.mult(2);
    acc = new PVector(0, .01);
    life = 100;
    
  }
  
  void originate(){
    
    ellipse(loc.x, loc.y, 2*r, 2*r);
  }
  
  void move(){
    vel.add(acc);
    loc.add(vel);
  }
  

}
