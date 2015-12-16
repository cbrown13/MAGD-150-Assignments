boolean mState = false;
int a = 0;
int b = 0;
color c1 = color(0);

void setup(){
size(800, 800);
}

void draw(){
if (mState == false){
background(25);
drawSky();
drawUFO();
drawPlanet();

} else {
stars();
quote();
}
}

void mousePressed(){ //This allows me to change from UFO to starlight and quote
mState = !mState;
}

void drawUFO(){ //The Green Bean looking thing floating around
a = a + 1;
b = b + 1;
stroke(0);
fill(0,255,0);
ellipse(a,500,200,70);
line((-50 + a),590,(-40 + a),520);
line((40 + a),590,(30 + a), 520);
arc(a,470,70,70, PI, TWO_PI, CHORD);
if(a > width){
  a = 0;
  }
}

void keyPressed(){
  burnSlide();
}
void stars(){ //Random starlight
float a = random(0, width);
float b = random(0, height);
stroke(255);
point(a,b);
}

void quote(){
  String q = "I believe alien life is quite common in the ";
  String qq = "universe, although intelligent life is less so.";
  String qqq = "Some say it has yet to appear on planet Earth.";
  String t = "-Stephen Hawking";
  String u = "*Press Any Key";
  textSize(32);
  fill(255,0,0);
  text(q, 78,50,700,500);//Quote
  text(qq,70,95,700,500);//Qoute Part 2
  text(qqq,60,140,800,800);//Quote Part 3
  text(t, 430,210,300,300);//Author
  fill(0,0,255);
  text(u, 290,300,300,300);//Direction
}

void drawPlanet(){ //My moon planet thing
  fill(100);
arc(400,750,750,300, PI, TWO_PI); 
  fill(50);
arc(300,700,200,100, PI, TWO_PI, CHORD); //crater1
arc(500,640,70,50, PI, TWO_PI, CHORD); //crater2
arc(550,750,150,100,PI,TWO_PI, CHORD); //crater3
fill(247,225,25);
ellipse(100,300,100,100);
  
}

void drawSky(){
  int w = width; 
  int h = height;
  noStroke();
  fill(0);
  rect(0,0, w, h);
  fill(2,22,77);
  rect(0,130, w, h);
  fill(2,32,111);
  rect(0,260, w, h);
  fill(1,40,144);
  rect(0,390,w,h);
  fill(4,52,180);
  rect(0,520,w,h);
  fill(2,61,219);
  rect(0,660,w,h);
  
}

void burnSlide(){
  background(0);
  noStroke();
  ellipse(340,400,400,400);//Earth
  fill(26,201,33);
  ellipse(250,350,100,100);//landMass
  ellipse(270,300,50,50);//landMass
  ellipse(330,400,160,120);//landMass
  ellipse(350,500,100,20);
  ellipse(450,280,50,40);
  ellipse(430,290,30,30);
  fill(255);
   arc(340,230,200,150,PI,TWO_PI,CHORD);//iceCap
   ellipse(340,230,205,30);//iceCap
   ellipse(290,230,300,30);
  fill(0);
  ellipse(185,400,50,50);//leftEye
  ellipse(500,400,50,50);//rightEye
  fill(35,247,228);
  ellipse(185,420,40,20);//leftTear
  ellipse(500,420,40,20);//rightTear
  fill(255);
  ellipse(195,390,10,10);//leftSparkle
  ellipse(510,390,10,10);//rightSparkle
  fill(0);
  arc(360,520,200,200,PI,TWO_PI);//mouth
  fill(0,0,255);
  arc(360,530,200,200,PI,TWO_PI); //mouthCover
  fill(26,201,33);
  ellipse(350,500,100,90);//bottomLandMass
  ellipse(400,530,50,70);//bottomLandMass
  
  stroke(0);
  drawBurn();
}

void drawBurn(){
a = a + 1;
b = b +1;
drawUFO();
noStroke();
fill(255);
ellipse((a+195),615,400,80);
//fill(0);
triangle((a+80),570,(a+110),590,(a+90),590);
fill(255,2,0);
textSize(20);
text("Would you like some ice for that burn?", (a + 5),620);

}
