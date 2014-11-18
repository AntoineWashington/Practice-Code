float locx, locy;
float velx, vely;
float accx, accy;

int hue;
int sz;
void setup() {
  size(800, 600);
  accx=1;
  accy=1;
  velx=0;
  vely=0;
  locx=width/2;
  locy=height/2;
  sz=50;
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  background(100);
}

void draw() {
  
  fill(hue, 100, 100, 75);
  hue+=1;
  if (hue>359) {
    hue=0;
  }
  accx=random(-.5, .5);
  accy=random(-.5, .5);

  velx+=accx;
  vely+=accy;

  locx+=velx;
  locy+=vely;

  ellipse(locx, locy, sz, sz);

  if (locx+sz/2 < 0) {
    locx=width+sz/2;
  }
  if (locy+sz/2 < 0) {
    locy=height+sz/2;
  }
  if (locx-sz/2 > width) {
    locx=-sz/2;
  }
  if (locy-sz/2 > height) {
    locy=-sz/2;
  }
}

