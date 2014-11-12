void setup () {
  size(500,500);
  background(0);
  noStroke();
}

void draw () {
  fill(255);
  rect(random(width),random(height),random(250),random(250));
  fill(#0000ff);
  rect(random(width),random(height),random(250),random(250));
  fill(125);
  rect(random(width),random(height),random(250),random(250));
  fill(255);
  ellipse(random(width),random(height),random(125),random(125));
  fill(0,0,255);
  ellipse(random(width),random(height),random(125),random(125));
  fill(125);
  ellipse(random(width),random(height),random(125),random(125));
}
