float locx, locy; //locations
float velx, vely; //velocities
float accx, accy; //accelerations
int sz; //ball diameter
int hue;

void setup() {
  size(800, 600);
  locx=width/2;
  locy=250;
  velx=0;
  vely=1;
  accx=0;
  accy=.5;
  sz=100;
  colorMode(HSB, 360, 100, 100, 100);
  hue=0;
}

void draw() {
  background(255);
  if (vely < 5 && vely > -5 || locy+sz/2 == height) {
    fill(0,0,100,100);
  } else {
    fill(hue, 100, 100, 75);
  }
  ellipse(locx, locy, sz, sz);

  velx+=accx;
  vely+=accy;

  locx+=velx;
  locy+=vely;

  hue++;
  if (hue>360) {
    hue=0;
  }

  if (locy+sz/2>height) {
    locy=height-sz/2;
    vely*=-1;
  }
}

