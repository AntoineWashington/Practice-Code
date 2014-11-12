float x;
float y;

void setup () {
 size(500,500);
 frameRate(15);
 background(127);
}

void draw () {
  x = random(width);
  y = random(height);

//background



//BEHIND LEGS
stroke(255, 0, 0);
strokeWeight(15);
line(x, y + 70, x + 15, y + 40);

stroke(0, 255, 0);
line(x + 80, y + 70, x + 90, y + 40);


//tail
stroke(237, 197, 117);
strokeWeight(17);
line(x + 95, y + 20, x + 130, y - 10);


//body
stroke(0);
strokeWeight(1);
fill(137, 79, 22);
rect(x, y + 10, 100, 30, 200);


//FOREFACING LEGS
stroke(255, 255, 0);
strokeWeight(15);
line(x + 25, y + 40, x + 25, y + 70);

stroke(0, 0, 255);
strokeWeight(15);
line(x + 92, y + 40, x + 105, y + 70);

//head
strokeWeight(1);
stroke(0);
fill(2, 82, 18);
ellipse(x, y, 40, 40);
//eyes
fill(255);
ellipse(x - 10, y - 5, 10, 10);
stroke(209, 201, 57);

stroke(0);
fill(0);
ellipse(x - 12, y - 5, 5, 5);


//bill
stroke(223,237,36);
strokeWeight(10);
line(x - 30, y + 12, x - 15, y + 10);

stroke(0);
strokeWeight(1);
line(x - 34, y + 12, x - 10, y + 10);
}
