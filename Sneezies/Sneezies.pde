int sneezieCount=50;
ball[] sneezies = new ball[sneezieCount];
PVector mouse;
void setup(){
 size(800,600);
 for(int i=0; i < sneezies.length; i++){
  sneezies[i] = new ball();
 }
}
void draw(){
  mouse = new PVector(mouseX, mouseY);
  println(mouse);
 for(int i=0; i < sneezies.length; i++){
  sneezies[i].display();
  sneezies[i].age();
 }
}
