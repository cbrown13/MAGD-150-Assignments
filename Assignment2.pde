void setup(){
  size(1280,800);
  background(0);
}
void draw(){
background(0);


beginShape(QUADS); //Hair Left
  fill(0,0,255);
vertex(500,600);
vertex(450,250);
vertex(400,80);
vertex(400,300);

endShape(CLOSE);

beginShape(); //Hair Middle

vertex(700,550);
vertex(500,300);
vertex(478,10);
vertex(800,100);

endShape(CLOSE);

beginShape(); //Hair Right
vertex(900,300);
vertex(940,300);
vertex(860,200);
vertex(900,100);

endShape(CLOSE);

stroke(255,0,0);
strokeWeight(5);
fill(255);
ellipse(665,400,560,560); //Face Base

stroke(255,0,0);
strokeWeight(10);
fill(255,0,0);
triangle(665,130,415,500,915,500); //Nose

strokeWeight(2);
fill(0);
line(700,500,900,500);

stroke(255,0,0);
strokeWeight(12);
line(215,570,1125,570); //Mouth

stroke(255,0,0);
strokeWeight(5);
fill(255);
arc(270,570,120,120,0,PI); //teeth1
arc(470,570,120,120,0,PI); //teeth2
arc(670,570,120,120,0,PI); //teeth3
arc(870,570,120,120,0,PI); //teeth4
arc(1070,570,120,120,0,PI); //teeth5


stroke(0,255,0);
strokeWeight(5);
triangle(150,500,270,560,380,500); //underEyeLeft
triangle(950,500,1070,560,1175,500); //underEyeRight


rectMode(CORNERS);
rect(150,300,375,475); //leftEye
rect(955,300,1175,475); //rightEye


rectMode(CENTER);


fill(255,0,0);
rect(mouseX,mouseY,100,100); //eyesLeft

fill(255,0,0);
rect((mouseX+800),mouseY,100,100); //eyesRight

fill(0);
rect(mouseX,mouseY,50,50); //pupilLeft

fill(0);
rect((mouseX+800),mouseY,50,50);


point(550,500); //nostrils
point(770,500); //nostrilsRight
}
void loop(){
}
