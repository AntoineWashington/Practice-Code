int hour;
int minute1 = 0;
int minute2 = 0;
int second1 = 0;
int second2 = 0;

void setup() {
  size(800, 600);
  textSize(100);
  frameRate(1);
}

void draw() {
  
  println(hour);
  hour=key-48;

  textAlign(CENTER);
  text(hour + ":" + minute1 + minute2 + ":" + second1 + second2, width/2, height/2);

  second2+=1;
  if (second2>9) { 
    second2=0;
    second1+=1;
  }
  if (second1>5) {
    second1=0;
    minute2+=1;
  }
  if (minute2>9) {
    minute2=0;
    minute1+=1;
  }
  if (minute1>5) {
    minute1=0;
    hour+=1;
  }
  if (hour>12) {
    hour=1;
  }

  rect(100, 450, 600, 100);
  for (int i = 100; i<=700; i+=60){
   
   line(i , 450, i, 550);
   text(i, i*30+30, 500); 
  }
}

