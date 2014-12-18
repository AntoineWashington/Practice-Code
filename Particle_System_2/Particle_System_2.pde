ArrayList<ball> balls = new ArrayList<ball>();
int maxBalls=250;
hole blackhole;
float b, bc;
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  blackhole = new hole();
  b=0;
  bc=.25;
}

void draw() {
  background(0, 0, b, 100);
  // line(0, height/2, width/2, height/2);          //floor left
  // line(width/2, height/2, width/2, 3*height/4);  //wall mid
  // line(width/2, 3*height/4, width, 3*height/4);  //floor right 

  blackhole.display();
  //add balls when the mouse is pressed and
  //the number of balls is under the max
  //remove oldest ball to make room for newest ball  
  if (mousePressed && mouseButton == LEFT) {
    if (balls.size () <= maxBalls) {
      balls.add(new ball());
    } else {
      balls.remove(0);
    }
  }
  for (int i=0; i < balls.size (); i++) {
    ball thisone = balls.get(i);
    thisone.display();             //display each ball
    thisone.move();                //have them move
    thisone.bounce();              //have them bounce off of the walls ceilings and floor
    thisone.flee();                //run from the mouse
    thisone.sucked(blackhole);     //go toward the blackhole

      //if a ball is touching the blackhole, the ball will be removed and
    //the blackhole will grow
    if (blackhole.eat(thisone)) {
      balls.remove(i);
      blackhole.grow();
    }
    //    for (int j=0; j < balls.size (); j++) {
    //      if (i!=j) {
    //        thisone.bounceballs(balls.get(j));
    //      }
    //    }
  }
  b+=bc;
  if (b>100 || b<0) {
    bc*=-1;
  }
}

