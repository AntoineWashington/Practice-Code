int hour = 0;
int minute1 = 0;
int minute2 = 0;
int second1 = 0;
int second2 = 0;

void setup() {
  size(800, 600);
  textSize(100);
  frameRate(60);
}

void draw() {
  background(0);
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
  if (minute2>9){
    
  }
  if (minute1>5){
    
  }
}

