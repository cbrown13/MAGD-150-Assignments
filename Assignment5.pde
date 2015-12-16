float ranX = random(1,800);
float ranY = random(1,800);
boolean button = false;
int pressed = 0;
int pressedState = 0;

void setup(){
  size(800,800);
  frameRate(2);
}

void draw(){
  background(134,201,255);
  strokeWeight(10);
  
  fill(255,0,0);
  textSize(60);
  text("~Try and catch the snitch~", 10,60);
  
  line(400,300,400,800);//middlePole
  line(150,400,150,800);//leftPole
  line(650,550,650,800);//rightPole
 
 fill(134,201,255);
  ellipse(400,225,200,200);//middleHole
  ellipse(660,470,200,200);//rightHole
  ellipse(150,350,200,200);//leftHole
  
  //snitch
  ranX = random(1,800);
  ranY = random(1,800);
  strokeWeight(2);
  fill(255,224,111);
  ellipse(ranX, ranY, 30, 30);
  
  if (pressedState == 1){
    background(255,118,13);
    fill(255);
    textSize(67);
    text("5,000 Points", 200,150);
    text("to Gryffindor!!!",170,230);
fill(255,224,157);
ellipse(400,550,200,200);

fill(5,5,5);
ellipse(450,500,20,20);
ellipse(370,500,20,20);

fill(105,11,124);
triangle(400,300,330,475,470,475);//hat

strokeWeight(5);
line(360,515,460,515);//glasses

fill(255);
strokeWeight(3);
arc(380,515,40,40,0,PI,CHORD);//glasses
arc(440,515,40,40,0,PI,CHORD);//glasses


arc(360,590,70,70,PI,TWO_PI,CHORD);
arc(435,590,70,70,PI,TWO_PI,CHORD);
line(340,590,470,590);//mouth


fill(255);
triangle(400,700,330,600,470,600);//beard
} else {
  background(134,201,255);
  fill(255,0,0);
  textSize(60);
  text("~Try and catch the snitch~", 10,60);
 
  strokeWeight(10);
  line(400,300,400,800);//middlePole
  line(150,400,150,800);//leftPole
  line(650,550,650,800);//rightPole
 
 fill(134,201,255);
  ellipse(400,225,200,200);//middleHole
  ellipse(660,470,200,200);//rightHole
  ellipse(150,350,200,200);//leftHole
  
  //snitch
  ranX = random(1,800);
  ranY = random(1,800);
  strokeWeight(2);
  fill(255,224,111);
  ellipse(ranX, ranY, 30, 30);
  }
}
 
 void mousePressed(){
   pressed = pressed + 1;
   pressedState = (pressed % 2);
 }
