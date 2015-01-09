ArrayList<esplosion> esplosions = new ArrayList<esplosion>();
int maxBalls=250;
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 25, 100);
}
void draw() {
 background(0, 0, 25, 100);

  if (mousePressed) {
    if (balls.size () <= maxBalls) {
      balls.add(new ball());
    } else {
      balls.remove(0);
    }
  }
}

