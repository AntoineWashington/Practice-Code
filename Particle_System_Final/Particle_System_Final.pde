//Welcome to Antoine Washington's Particle System
//Left-Click to create balls (in the case that the number of balls exceeds 250 the oldest ball will be removed)
//Right-CLick to move blackhole to current mouse position
//Balls will bounce off of the walls
//be attracted toward the blackhole
//be repelled from the mouse and
//die off after some time
//growing more and more transparent as they do

ArrayList<ball> balls = new ArrayList<ball>();
int maxBalls=200;
hole blackhole;
float b, bc;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  ////////////////////////
  blackhole = new hole();         //initialize the blackhole
  ////////////////////////
  //starting value of the brightness of the background and
  //amount by which the background should change frame-by-frame
  b=25;
  bc=.25;
}

void draw() {
  background(0, 0, b, 100);
  ////////////////////////
  blackhole.display();            //display blackhole
  blackhole.reset();              //return blackhole to original size when it getss too big
  ////////////////////////
  //add balls when the left mouse button is pressed and
  //the number of balls is under the max
  //remove oldest ball to make room for newest ball  
  if (mousePressed && mouseButton == LEFT) {
    if (balls.size () <= maxBalls) {
      balls.add(new ball());
    } else {
      balls.remove(0);
    }
  }
  ////////////////////////
  for (int i=0; i < balls.size (); i++) {
    ball thisone = balls.get(i);
    thisone.age();
    thisone.display();             //display each ball
    thisone.move();                //have them move
    thisone.bounce();              //have them bounce off of the walls ceilings and floor
    thisone.flee();                //run from the mouse
    thisone.sucked(blackhole);     //go toward the blackhole
    ////////////////////////
    //remove ball if there is no life left 
    if(thisone.die()){
      balls.remove(i);
    }
    ////////////////////////
    //if a ball is touching the blackhole, the ball will be removed and
    //the blackhole will grow
    if (blackhole.eat(thisone)) {
      balls.remove(i);
      blackhole.grow();
    }
  }
  ////////////////////////
  //change the color of the background
  //from 25% bright up to 50% bright and back 
  b+=bc;
  if (b>50 || b<25) {
    bc*=-1;
  }
}

