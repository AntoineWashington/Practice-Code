ArrayList<ball> esplosions = new ArrayList<ball>();
int maxBalls=250;
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 25, 100);
}
void draw() {
 background(0, 0, 25, 100);

  if (mousePressed) {
    if (esplosions.size () <= maxBalls) {
      esplosions.add(new  ball());
    }
  }
  
  for(int i=0; i<esplosions.size(); i++){
    ball thisone = esplosions.get(i);
    thisone.display();
    thisone.move();
    thisone.age();
    if(thisone.dead()){
      esplosions.remove(i);
    }
  }
}

