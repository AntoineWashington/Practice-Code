

void setup(){
 size(800,600); 
}

void draw(){
  formulasOFQuadratics(1,4,1);
}

void formulasOFQuadratics (float a, float b, float c){
  float result1 = (-b + sqrt(b*b - 4*a*c))/(2*a);
  float result2 = (-b - sqrt(b*b - 4*a*c))/(2*a);
  println(result1 + " and " + result2 + " :)");
}
