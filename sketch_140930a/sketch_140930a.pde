void setup () {
  size(500,500);
  background(0); 
  noStroke();
}
void draw () {
  fill(random(0,100),random(100,175),random(175,255));
  ellipse(random((width/2)-50),random((height/2)-50),100,100);
  
  fill(random(175,255),random(100,175),random(0,100));
  rect(random(width/2,width),random((height/2)-100),100,100);
  
  fill(random(0,100),random(175,255),random(100,175));
  ellipse(random((width/2)+50,width-50),random((height/2)+50,height-50),100,100);
  
  fill(random(100,175),random(175,255),random(0,100));
  rect(random((width/2)-100),random((height/2),height-100),100,100);
}
