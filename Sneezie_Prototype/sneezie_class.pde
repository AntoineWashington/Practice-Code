class sneezie {
 //float
 //exist
 //leave when they peace
 //loc import 4 debris
 //ge tremoved when hit by debri or mouseclick
 float r;
 PVector loc;
 PVector vel;
 PVector acc;
 PVector mouse;
 
 void sneezie(){
   r = 20.;
   loc = new PVector(random(width),random(height));
   vel = new PVector(random(-.4,.4),random(-.4,.4));
   acc = new PVector(0,0);
 }
 ////////////////////
 void display(){
   ellipse(loc.x, loc.y, 2*r, 2*r);
 }
 ////////////////////
 void move(){
   
//   vel.add(acc);
//   loc.add(vel);
 }
 ////////////////////
 
}
