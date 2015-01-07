ArrayList<ball> balls = new ArrayList<ball>();
int maxBalls=250;
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 25, 100);
}
void draw() {
  background(0, 0, 25, 100);
//  line(0, height/2, width/2, height/2);
//  line(width/2, height/2, width/2, 3*height/4);
//  line(width/2, 3*height/4, width, 3*height/4);
  fill(225,100,30,100);
  noStroke();
  rect(0,height/2,width/2,height);
  rect(width/2,3*height/4,width,height);
  if (mousePressed) {
    if (balls.size () <= maxBalls) {
      balls.add(new ball());
    } else {
      balls.remove(0);
    }
  }
  for (int i=0; i < balls.size (); i++) {
    ball thisone = balls.get(i);
    thisone.display();
    thisone.move();
    thisone.bounce();
    thisone.flee();
    //    for (int j=0; j < balls.size (); j++) {
    //      if (i!=j) {
    //        thisone.bounceballs(balls.get(j));
    //      }
    //    }
  }
}

