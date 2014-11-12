int stage;
int hue;

void setup() {
  size(800, 600);
  stage=1;
  colorMode(HSB, 360, 100, 100, 100);
  hue=0;
  textSize(20);
  noStroke();
}

void draw() {
//    background(100);
//    ellipse(width/2, height/2, 100, 100);
//    text("", width/2, 200);
  fill(hue, 100, 100, 100);
  textAlign(CENTER);
  if (stage==1) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("Hey! How's it goin'? Could you not press that button, though? Thanks!", width/2, 200);
  }
  if (stage==2) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("Wow. That was kind of rude.", width/2, 200);
  }
  if (stage==3) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("Look bub, I don't know what you have against me...", width/2, 200);
  }
  if (stage==4) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("But I haven't done anything to you.", width/2, 200);
  }
  if (stage==5) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("Like, forreal. I don't even know you.", width/2, 200);
  }
  if (stage==6) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("And to be honest, I don't really like you.", width/2, 200);
  }
  if (stage==7) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("Or your clothes", width/2, 200);
  }
  if (stage==8) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("Your clothes are crap.", width/2, 200);
  }
  if (stage==9) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("No, seriously. What the h*ck are you wearing", width/2, 200);
  }
  if (stage==10) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("Do you have a button obsession or something?", width/2, 200);
  }
  if (stage==11) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("Because this is getting weird", width/2, 200);
  }
  if (stage==12) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("I mean it's cool if you do, like I have friends with button obsessions", width/2, 200);
  }
  if (stage==13) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("But like, if you could stop pressing that button, I'd appreciate it", width/2, 200);
  }
  if (stage==14) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("", width/2, 200);
  }
  if (stage==15) {
    background(100);
    ellipse(width/2, height/2, 100, 100);
    text("", width/2, 200);
  }
}

void mousePressed() {
  if (mouseX>width/2-50 && mouseX<width/2+50 && mouseY >height/2-50 && mouseY <height/2+50) {
    hue+=15;
    stage+=1;
  }
}

