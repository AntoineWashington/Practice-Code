int count = 25;
int speed_ = 5;
ball[] ball = new ball[count];
hole blackhole;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  //  hue=0;
  for (int i=0; i<ball.length; i++) {
    ball[i] = new ball(random(10, 50), speed_);
  }
  blackhole = new hole();
}

void draw() {
  background(255);
  blackhole.display();
  for (int i=0; i<ball.length; i++) {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();


    for (int k=0; k<ball.length; k++) {
      if (i!=k) {
        ball[i].bounceballs(ball[k]);
      }
    }
  }
  
}

