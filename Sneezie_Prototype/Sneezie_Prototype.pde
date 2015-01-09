ArrayList<sneezie> sneezos = new ArrayList<sneezie>();
int sneezieMax=20;

void setup() {
  size(800, 600);
  colorMode(HSB,360,100,100,100);
}

void draw() {
  for(int i=0; i<=sneezieMax; i++){
    sneezos.add(new sneezie());
  }
  for (int i=0; i < sneezos.size (); i++) {
    sneezie current = sneezos.get(i);
    current.display();
    current.move();
  }
}

