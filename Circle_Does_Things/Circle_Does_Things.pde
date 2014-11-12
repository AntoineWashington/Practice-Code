int x;
int xchange;
int y;
int ychange;

void setup () {
 size(500,500); 
 x = 50;
 y = height/3;
 xchange = 1;
 
 ychange = 1;
 frameRate(120);
}

void draw () {
  background(mouseX*.51, 255-(mouseX*.51), mouseY*.51);
  fill(mouseY*.51, 255-(mouseY*.51), mouseX*.51);
  stroke(x,y,x);
  ellipse(x,y,100,100);
  x = x + xchange;
  y = y + ychange;
  
  if (x > width-50) {
    xchange = -1;
  }
  if (x <= 50) {
    xchange = 1;
  }
  if (y > height-50) {
    ychange = -1;
  }
  if (y <= 50) {
    ychange = 1;
  }
}
