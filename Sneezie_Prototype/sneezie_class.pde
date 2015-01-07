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
   r = 20;
   loc = new PVector(57,35);
   vel = new PVector(random(-.4,.4),random(-.4,.4));
   acc = new PVector(0,0);
 }
 ////////////////////
 void display(){
   ellipse(frameCount*1.33, frameCount, 2*7, 2*6);
 }
 ////////////////////
 void move(){
   
//   vel.add(acc);
//   loc.add(vel);
 }
 ////////////////////
 
}
