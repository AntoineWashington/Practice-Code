void setup() {
  size(500,500);
  frameRate(200);
}

void draw() {
  background(0);
//BEHIND LEGS
stroke(255, 0, 0);
strokeWeight(15);
line(random(40,60), random(100,120), 65, 80);

stroke(0, 255, 0);
line(random(120,140), random(100,120), 140, 80);


//tail
stroke(237, 197, 117);
strokeWeight(17);
line(145, 60, random(175,185), random(0,60));


//body
stroke(0);
strokeWeight(1);
fill(137, 79, 22);
rect(50, 50, 100, 30, 200);


//FOREFACING LEGS
stroke(255, 255, 0);
strokeWeight(15);
line(75, 80, random(65,85), random(100,120));

stroke(0, 0, 255);
strokeWeight(15);
line(142, 80, random(145,165), random(100,120));

//head
//head
strokeWeight(1);
stroke(0);
fill(2, 82, 18);
ellipse(random(width), random(height), 40, 40); //ellipse(50, 40, 40, 40);
//eyes 
fill(255);
ellipse(random(width), random(height), 10, 10);
stroke(209, 201, 57);

stroke(0);
fill(0);
ellipse(38,35,5,5);


//bill
stroke(223,237,36);
strokeWeight(10);
line(20,52,35,50);

stroke(0);
strokeWeight(1);
line(16,52,40,50);
}
