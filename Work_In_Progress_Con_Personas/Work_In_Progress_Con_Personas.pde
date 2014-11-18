String name;
int stage;
int hue;
int w, h;
String[] names1= {
  "Antoine", "Adel", "Hannah", "Zahra"
};
String[] names2= {
  "Carolyn", "Pavan", "Josh", "Gabe"
};
void setup() {
  size(800, 600);
  stage=1;
  colorMode(HSB, 360, 100, 100, 100);
  hue=0;
  name="NoName";
  textSize(20);
  noStroke();
  textAlign(CENTER);
  rectMode(CENTER);
  w=width/2;
  h=height/2;
}

void draw() {
  //    background(100);
  //    ellipse(width/2, 2*height/3, 100, 100);
  //    text("", width/2, 200);



  background(100);
  //HOME BUTTON
  rect(50, 50, 100, 100);
  fill(0);
  text("HOME", 50, 50);
  fill(hue, 100, 100, 100);
  if (stage==1) {
    text("Hey Who R U?", width/2, 100);
    for (int i=0; i<names1.length; i++) {
      text(names1[i], i*150+175, 200);
    }
    for (int i=0; i<names2.length; i++) {
      text(names2[i], i*150+175, 250);
    }
  }
  if (name=="Antoine") {
    background(100);
    //HOME BUTTON
    rect(50, 50, 100, 100);
    fill(0);
    text("HOME", 50, 50);
    fill(hue, 100, 100, 100);
    ellipse(width/2, 2*height/3, 100, 100);
    if (stage==1) {
      text("Are you Me?", width/2, height/2);
      rect(width/2, 2*height/3, 300, 100);
      stroke(0);
      line(width/2, 350, width/2, 450);
      stroke(0);
      fill(0);
      text("Yah", 325, 400);
      text("Nah", 475, 400);
      fill(hue, 100, 100, 100);
    }
    if (stage==2) {
      text("So yeah this is the second page pretty exciting huh?", width/2, height/2);
    }
  }
  if (name=="Adel") {
    background(100);
    //HOME BUTTON
    rect(50, 50, 100, 100);
    fill(0);
    text("HOME", 50, 50);
    fill(hue, 100, 100, 100);
    if (stage==1) {
      text("Are you Adel?", width/2, height/2);
      rect(width/2, 2*height/3, 300, 100);
      stroke(0);
      line(width/2, 350, width/2, 450);
      stroke(0);
      fill(0);
      text("Yah", 325, 400);
      text("Nah", 475, 400);
      fill(hue, 100, 100, 100);
    }
    if (stage==2) {
    }
  }
  if (name=="Hannah") {
    background(100);
    //HOME BUTTON
    rect(50, 50, 100, 100);
    fill(0);
    text("HOME", 50, 50);
    fill(hue, 100, 100, 100);
    if (stage>1) {
      ellipse(width/2, 2*height/3, 100, 100);
    }
    if (stage==1) {
      text("Are you Hannah?", width/2, height/2);
      rect(width/2, 2*height/3, 300, 100);
      stroke(0);
      line(width/2, 350, width/2, 450);
      stroke(0);
      fill(0);
      text("Yah", 325, 400);
      text("Nah", 475, 400);
      fill(hue, 100, 100, 100);
    }
    if (stage==2) {
      text("Hiii Hannah!", w, h);
    }
    if (stage==3) {
     text("Hey. how's it goin'", w, h); 
    }
    if (stage==4){
     text("This took frustratingly long", w, h); 
    }
    if (stage==5){
     text("And this is like one of the first conversations that I programmed", w, h); 
    }
  }
  if (name=="Zahra") {
    background(100);
    //HOME BUTTON
    rect(50, 50, 100, 100);
    fill(0);
    text("HOME", 50, 50);
    fill(hue, 100, 100, 100);
    if (stage==1) {
      text("Are you Zahra?", width/2, height/2);
      rect(width/2, 2*height/3, 300, 100);
      stroke(0);
      line(width/2, 350, width/2, 450);
      stroke(0);
      fill(0);
      text("Yah", 325, 400);
      text("Nah", 475, 400);
      fill(hue, 100, 100, 100);
    }
    if (stage==2) {
    }
  }
  if (name=="Carolyn") {
    background(100);
    //HOME BUTTON
    rect(50, 50, 100, 100);
    fill(0);
    text("HOME", 50, 50);
    fill(hue, 100, 100, 100);
    if (stage==1) {
      text("Are you Carolyn?", width/2, height/2);
      rect(width/2, 2*height/3, 300, 100);
      stroke(0);
      line(width/2, 350, width/2, 450);
      stroke(0);
      fill(0);
      text("Yah", 325, 400);
      text("Nah", 475, 400);
      fill(hue, 100, 100, 100);
    }
    if (stage==2) {
    }
  }
  if (name=="Pavan") {
    background(100);
    //HOME BUTTON
    rect(50, 50, 100, 100);
    fill(0);
    text("HOME", 50, 50);
    fill(hue, 100, 100, 100);
    if (stage==1) {
      text("Are you Pavan?", width/2, height/2);
      rect(width/2, 2*height/3, 300, 100);
      stroke(0);
      line(width/2, 350, width/2, 450);
      stroke(0);
      fill(0);
      text("Yah", 325, 400);
      text("Nah", 475, 400);
      fill(hue, 100, 100, 100);
    }
    if (stage==2) {
    }
  }
  if (name=="Josh") {
    background(100);
    //HOME BUTTON
    rect(50, 50, 100, 100);
    fill(0);
    text("HOME", 50, 50);
    fill(hue, 100, 100, 100);
    if (stage==1) {
      text("Are you Josh?", width/2, height/2);
      rect(width/2, 2*height/3, 300, 100);
      stroke(0);
      line(width/2, 350, width/2, 450);
      stroke(0);
      fill(0);
      text("Yah", 325, 400);
      text("Nah", 475, 400);
      fill(hue, 100, 100, 100);
    }
    if (stage==2) {
    }
  }
  if (name=="Gabe") {
    background(100);
    //HOME BUTTON
    rect(50, 50, 100, 100);
    fill(0);
    text("HOME", 50, 50);
    fill(hue, 100, 100, 100);

    if (stage==1) {
      text("Are you Gabe?", width/2, height/2);
      rect(width/2, 2*height/3, 300, 100);
      stroke(0);
      line(width/2, 350, width/2, 450);
      stroke(0);
      fill(0);
      text("Yah", 325, 400);
      text("Nah", 475, 400);
      fill(hue, 100, 100, 100);
    }
    if (stage==2) {
    }
  }
}

/*if (stage==2) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("Wow. That was kind of rude.", width/2, 200);
 }
 if (stage==3) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("Look bub, I don't know what you have against me...", width/2, 200);
 }
 if (stage==4) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("But I haven't done anything to you.", width/2, 200);
 }
 if (stage==5) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("Like, forreal. I don't even know you.", width/2, 200);
 }
 if (stage==6) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("And to be honest, I don't really like you.", width/2, 200);
 }
 if (stage==7) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("Or your clothes", width/2, 200);
 }
 if (stage==8) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("Your clothes are crap.", width/2, 200);
 }
 if (stage==9) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("No, seriously. What the h*ck are you wearing", width/2, 200);
 }
 if (stage==10) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("Do you have a button obsession or something?", width/2, 200);
 }
 if (stage==11) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("Because this is getting weird", width/2, 200);
 }
 if (stage==12) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("I mean it's cool if you do, like I have friends with button obsessions", width/2, 200);
 }
 if (stage==13) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("But like, if you could stop pressing that button, I'd appreciate it", width/2, 200);
 }
 if (stage==14) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("", width/2, 200);
 }
 if (stage==15) {
 background(100);
 ellipse(width/2, 2*height/3, 100, 100);
 text("", width/2, 200);
 }*/


void mousePressed() {
  //button clickeys
  if (name!="NoName" && stage!=1) {
    if (mouseX>width/2-50 && mouseX<width/2+50 && mouseY>2*height/3-50 && mouseY<2*height/3+50) {
      stage+=1;
      hue+=15;
    }
  }
  //color loop
  if (hue>=360) {
    hue=15;
  }
  //home button clickey
  if (mouseX<100 && mouseY<100) {
    stage=1;
    name="NoName";
  }
  //names screen clickeys
  if (name=="NoName") {
    //Antoine
    if (mouseX > 65 && mouseX < 238 && mouseY > 175 && mouseY < 225) {
      name="Antoine";
      hue+=15;
    }
    //Adel
    if (mouseX > 238 && mouseX < 413 && mouseY > 175 && mouseY < 225) {
      name="Adel";
      hue+=15;
    }
    //Hannah
    if (mouseX > 413 && mouseX < 588 && mouseY > 175 && mouseY < 225) {
      name="Hannah";
      hue+=15;
    }
    //Zahra
    if (mouseX > 588 && mouseX < 763 && mouseY > 175 && mouseY < 225) {
      name="Zahra";
      hue+=15;
    }
    //Carolyn
    if (mouseX > 65 && mouseX < 238 && mouseY > 225 && mouseY < 275) {
      name="Carolyn";
      hue+=15;
    }
    //Pavan
    if (mouseX > 238 && mouseX < 413 && mouseY > 225 && mouseY < 275) {
      name="Pavan";
      hue+=15;
    }
    //Josh
    if (mouseX > 413 && mouseX < 588 && mouseY > 225 && mouseY < 275) {
      name="Josh";
      hue+=15;
    }
    //Gabe
    if (mouseX > 588 && mouseX < 763 && mouseY > 225 && mouseY < 275) {
      name="Gabe";
      hue+=15;
    }
  }
  //Name Confirmation
  if (name!="NoName" && stage==1) {
    if (mouseX > 250 && mouseX < 400 && mouseY > 350 && mouseY < 450) {
      stage=2;
      hue+=15;
    }
    if (mouseX > 400 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
      name="NoName";
    }
  }
}

