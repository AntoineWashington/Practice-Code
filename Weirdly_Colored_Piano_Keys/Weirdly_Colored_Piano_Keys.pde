int  barWidth = 50;
void setup () {
 size(500,500);
 frameRate(60);
}

void draw () {
  for(int x=0;x<=width-barWidth;x+=50) {
    if (mouseX>x && mouseX<x+barWidth) {
     fill(mouseX*.51,random(255),random(255)); 
    }
    else {
    fill(random(0,85),random(86,170),random(171,255));
    }
    rect(x,0,barWidth,height);
    
  }
}
