void setup () {
  size(500,500);
  background(0); 
  noStroke();
}
void draw () {
  fill(random(0,85),random(86,170),random(171,255));
  ellipse(random(50,(width/2)-50),random(50,(height/2)-50),100,100);
  
  fill(random(170,255),random(85,171),random(0,85));
  rect(random(width/2,width-100),random((height/2)-100),100,100);
  
  fill(random(0,85),random(171,255),random(86,170));
  ellipse(random((width/2)+50,width-50),random((height/2)+50,height-50),100,100);
  
  fill(random(85,170),random(176,255),random(0,85));
  rect(random((width/2)-100),random((height/2),height-100),100,100);
}
