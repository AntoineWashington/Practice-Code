int sneezieCount=50;
ball[] sneezies = new ball[sneezieCount];

void setup(){
 size(800,600);
 for(int i=0; i < sneezies.length; i++){
  sneezies[i] = new ball();
 } 
}
void draw(){
 for(int i=0; i < sneezies.length; i++){
  sneezies[i].display();
 }
}
