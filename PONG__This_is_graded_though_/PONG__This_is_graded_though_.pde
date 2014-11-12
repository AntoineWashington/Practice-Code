
/*PONG*/
/*Player 1 should use the mouse to control their paddle and
 Player 2 should use the w and s keys for up and down respectively
 Game is essentially endless, set a score as a goal
 First to reach score is winner*/
int x, y, sz;
int xc, yc;
int rect1x, rect1y, rect1w, rect1h;
int rect2x, rect2y, rect2w, rect2h, rect2yc;
int score1, score2;
int hb, sb, bb;
int hs1, hs2;
int fr, f;
int stage;

void setup () {
  size(800, 600);
  stage = 0;
  //ball things
  x=width/2;
  y=height/2;
  sz=50;
  xc=-1;
  yc=1;

  //colorellipse
  hb = 0;
  sb = 100;
  bb = 100;

  //paddle left things
  rectMode(CENTER);
  rect1x=50;
  rect1w=20;
  rect1h=200;

  //paddle right things
  rect2x=750;
  rect2y=height/2;
  rect2w=20;
  rect2h=200;

  //scores
  score1=0;
  score2=0;
  hs1=0;
  hs2=0;

  //gamespeed
  fr=240;
  f=0;

  noStroke();
  noCursor();
  textSize(50);
  colorMode(HSB, 360, 100, 100, 100);
}


void draw () {
  background(100);
 if(stage==1 || stage == 3){
  //gamespeed
  if (f>=2400 && f<4800) {
    fr++;
  }
  if (f>=4800 && f<7200) {
    fr+=2;
  }
  if (f>=7200) {
    fr+=4;
  }
  frameRate(fr);
  //score
  fill(hs1, 100, 100, 100);
  text(score1, 300, 50);
  fill(hs2, 100, 100, 100);
  text(score2, 450, 50);

  //ball
  float hb = map(x, 0, width, 0, 360);
  fill(hb, 100, 100, 100);
  ellipse(x, y, sz, sz);
  x+=xc;
  y+=yc;
  //bounce
  //bonce left paddle
  if (x-sz/2 == rect1x+rect1w/2 && y>rect1y-rect1h/2 && y<rect1y+rect1h/2) {
    xc = abs(xc);
  }
  //bounce right paddle
  if (x+sz/2 == rect2x-rect2w/2 && y>rect2y-rect2h/2 && y<rect2y+rect2h/2) {
    xc = -abs(xc);
  }
  if (y-sz/2 == 0 || y+sz/2 == height) {
    yc*=-1;
  }

  //paddle left move
  float hr1=map(rect1y, 0, height, 0, 360);
  fill(hr1, 100, 100, 100);
  rect1y=mouseY;
  rect(rect1x, rect1y, rect1w, rect1h);
  //paddle right move
  float hr2=map(rect2y, 0, height, 0, 360);
  fill(hr2, 100, 100, 100);
  rect(rect2x, rect2y, rect2w, rect2h);
  if (keyPressed) {

    if (key=='w') {
      rect2y--;
    }
    if (key=='s') {
      rect2y++;
    }
  } else {
    rect2y=rect2y;
  }

  //scoring
  //rightwall
  if (x-sz/2==width) {
    score1+=1;
    x=width/2;
    y=height/2;
    xc=-abs(xc);
    hs1+=30;
  }
  //leftwall
  if (x+sz/2 == 0) {
    score2+=1;
    x=width/2;
    y=height/2;
    xc=abs(xc);
    hs2+=30;
  }
  if (hs1>=360) {
    hs1=0;
  }
  if (hs2>=360) {
    hs2=0;
  }
  f+=1;
 }
 if(stage==2){
  background(#C014DB);
  text("PAUSE",width/2,height/2);
 }
 if(stage>4){
  stage=0; 
 }
}

void mousePressed(){
  stage+=1;
}
