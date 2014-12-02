PImage Octobiwan;

void setup() {
  Octobiwan = loadImage("octobiwan.jpg");
  size(Octobiwan.width, Octobiwan.height);
}

void draw() {
  image(Octobiwan, 0, 0);
}

