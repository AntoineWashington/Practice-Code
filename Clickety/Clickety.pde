boolean clickety;

void setup() { 
  size(500, 500);
}

void draw() {
  if (clickety) {
    noStroke();
    fill(random(0, 85), random(86, 170), random(171, 255));
    ellipse(random(50, (width/2)-50), random(50, (height/2)-50), 100, 100);

    fill(random(170, 255), random(85, 171), random(0, 85));
    rect(random(width/2, width-100), random((height/2)-100), 100, 100);

    fill(random(0, 85), random(171, 255), random(86, 170));
    ellipse(random((width/2)+50, width-50), random((height/2)+50, height-50), 100, 100);

    fill(random(85, 170), random(176, 255), random(0, 85));
    rect(random((width/2)-100), random((height/2), height-100), 100, 100);
  } else {
    background(#54befa);
    //left wall
    for (int y=0; y<=height; y+=10) {
      stroke(255, 0, 0);
      line(0, y, mouseX, mouseY);
    }
    //right wall
    for (int y=0; y<=height; y+=20) {
      stroke(0, 0, 255);
      line(width, y, mouseX, mouseY);
    }
    //ceiling
    for (int x=0; x<=width; x+=20) {
      stroke(255, 255, 0);
      line(x, 0, mouseX, mouseY);
    }
    //floor
    for (int x=0; x<=width; x+=5) {
      stroke(0, 255, 0);
      line(x, height, mouseX, mouseY);
    }
  }
  //  f+=1;
}

void mousePressed() {
  if (clickety==true) {
    clickety=false;
  } else {
    clickety=true;
  }
}

