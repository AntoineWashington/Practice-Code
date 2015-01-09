esplosionpiece test = new esplosionpiece();
ball test2 = new ball();
void setup() {
  size(800, 600);
  colorMode(HSB,360,100,100,100);
}

void draw() {
  if (mousePressed) {
    test2.display();
  }
  test2.move();
}

