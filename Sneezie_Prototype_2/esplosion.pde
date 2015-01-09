class esplosion {
  int count = 10;
  ball[] debris = new ball[count];
  esplosion() {
    for (int i=0; i<debris.length; i++) {
      ball[i]= new ball();
    }
  }

  void appear() {
    for (int i=0; i<debris.length; i++) {
      ball[i].display;
      ball[i].move;
      ball[i].age
        if (thisone.dead()) {
        balls.remove(i);
      }
    }
  }
}

