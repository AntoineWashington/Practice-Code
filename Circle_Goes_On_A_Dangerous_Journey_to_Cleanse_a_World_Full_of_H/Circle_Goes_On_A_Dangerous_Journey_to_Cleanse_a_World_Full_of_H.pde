int x;
int y;
int xchange;
int ychange;
int pxchange;
int nxchange;
int pychange;
int nychange;

void setup () {
  size(500,500);
  background(0);
  x = 0;
  y = 0;
  xchange = pxchange;
  ychange = pychange;
  pxchange = 4;
  nxchange = -2;
  pychange = 2;
  nychange = -5;
}

void draw () {
  noStroke();
  fill(x*.51,y*.51,255);
  ellipse(x,y,50,50);
  x = x + xchange;
  y = y + ychange;
  
  if (x > width-25) {
    xchange = nxchange;
  }
  if (x <= 25) {
    xchange = pxchange;
  }
  if (y > height-25) {
    ychange = nychange;
  }
  if (y <= 25) {
    ychange = pychange;
  } 
  
}

