void setup () {
  size(500,500);
  
  noStroke();
}

void draw () {
  background(0);
  fill(255);
  rect(mouseX,mouseY,100,100);
  fill(#0000ff);
  rect(mouseX+110,mouseY,100,100);
  fill(125);
  rect(mouseX+220,mouseY,100,100);
  fill(255);
  ellipse(mouseX,mouseY+175,125,125);
  fill(0,0,255);
  ellipse(mouseX+135,mouseY+300,(125),(125));
  fill(125);
  ellipse(mouseX+135,mouseY+400,(125),(125));
}
