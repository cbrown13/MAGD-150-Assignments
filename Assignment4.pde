
int pressed = 0;
int pressedState = 0;



void setup(){
  size(1280,800);
  background(208,255,175);
  
  rectMode(CENTER);
  strokeWeight(4);
  rect(630,250,1000,400);//baseOfGraph
  rect(1130,630,200,200);//keyBox
 
  
  textSize(30);
  fill(0);
  text("Key", 1100,560);
  fill(255,0,0);
  text("Divorce Rate in Maine", 145, 40);
  fill(0);
  text("V.S.", 490, 40);
  fill(0,0,255);
  text("Per Capita Consumption of Margarine", 575, 40);
  fill(0);
  text("False Cause:", 135, 530);
  textSize(20);
  text("The Divorce Rate seems to correlate with the Consumption of Margarine.", 320, 530); 
  text("Therefore; Butter must be the cause of all divorces in Maine.", 135, 560);
  
  text("Source: http://www.tylervigen.com/spurious-correlations", 135,700);
  
 strokeWeight(3);
 stroke(0);
  line(130,90,1130,90);
  line(130,180,1130,180);
  line(130,270,1130,270);
  line(130,360,1130,360);
  
    strokeWeight(10);
    stroke(255,0,0);
  point(250,90);
    stroke(0,0,255);
  point(250,130);
  point(360,200);
    stroke(255,0,0);
  point(363,200);
  point(476,250);
    stroke(0,0,255);
  point(476,240);
  point(540,300);
    stroke(255,0,0);
  point(540,320);
  point(660,350);
    stroke(0,0,255);
  point(660,310);
  point(780,360);
    stroke(255,0,0);
  point(780,420);
  point(880,390);
    stroke(0,0,255);
  point(880,370);
  
    stroke(255,0,0);
    strokeWeight(4);
  line(363,200,476,250);  
  line(250,90,363,200);
  line(476,250,540,320);
  line(540,320,660,350);
  line(660,350,780,420);
  line(780,420,880,390);
  
    stroke(0,0,255);
  line(250,130,360,200);
  line(360,200,476,240);
  line(476,240,540,300);
  line(540,300,660,310);
  line(660,310,780,360);
  line(780,360,880,370);

textSize(10);
text("4.95 per 1,000",30,90);
text("4.62 per 1,000",30,180);
text("4.29 per 1,000",30,270);
text("3.96 per 1,000",30,360);
textSize(10);
text("Divorce Rate in Maine", 10, 400);

text("2000",100,480); 
text("2001",200,480);
text("2002",300,480);
text("2002",400,480);
text("2003",500,480);
text("2004",600,480);
text("2005",700,480);
text("2006",800,480);
text("2007",900,480);
text("2008",1000,480);
text("2009",1100,480);

text("8lbs",1140,90);
text("6lbs",1140,180);
text("4lbs",1140,270);
text("2lbs",1140,360);

text("Margarine Consumed", 1150,400);

strokeWeight(10);
point(1070,600);
stroke(255,0,0);
point(1070,670);

strokeWeight(3);
stroke(0,0,255);
line(1060,600,1080,600);
stroke(255,0,0);
line(1060,670,1080,670);

text("Margarine Consumed", 1100,600);
text("Divorce Rate", 1100,670);
text("*Click mouse for an example", 600,600);
}




void draw(){
  if (pressedState == 1){
    size(1280,800);
  background(188,255,196);
  
  strokeWeight(3);
  ellipseMode(CENTER);
  fill(255);
 ellipse(350,300,200,200);//wifesFace
  
  
  rectMode(CENTER);
 
 fill(255);
 rect(350,525,100,250);//computer
 rect(100,350,100,250);//haroldsBody
  
  
   ellipseMode(CENTER);
   fill(255);
  ellipse(100,150,200,200);//haroldsFace
  ellipse(50,150,20,20);//lefEye
  ellipse(150,150,20,20);//rightEye
  fill(255,0,0);
  ellipse(340,340,10,20);//wifesMouth
  
  line(280,300,320,300);//wifesLeftEye
  line(360,300,410,300);
  
  strokeWeight(5);
  line(150,280,250,210);//rightArm
  line(50,280,0,210);//leftArm
  
  fill(255,0,0);
arc(100,230,120,120,3,TWO_PI);



  strokeWeight(3);
  line(640,0,640,800);//divider
  
  textSize(40);
  fill(0,0,255);
  text("*Meanwhile in Maine*",150,50);
  text("1",10,40);
  text("2",650,40);

  textSize(20);
  fill(0);
  text("I want a divorce!", 240,150);
  
  text("Harold, did you put butter",450,350);
  text("on your popcorn again?", 460,380);
  
  //Next Panel//
  
  strokeWeight(3);
  ellipseMode(CENTER);
  fill(255);
 ellipse(1100,300,200,200);//wifesFace
  
  
  rectMode(CENTER);
 
 fill(255);
 rect(1100,525,100,250);//wifesBody
 rect(800,350,100,250);//haroldsBody
  
  
   ellipseMode(CENTER);
   fill(255);
  ellipse(800,150,200,200);//haroldsFace
  ellipse(850,150,20,20);//lefEye
  ellipse(900,150,20,20);//rightEye
  fill(255,0,0);
  ellipse(1050,300,10,20);//wifesMouth
  ellipse(1100,300,10,20);
  line(280,300,320,300);//wifesLeftEye
  line(360,300,410,300);
  line(1110,340,1150,340);
  strokeWeight(5);
  line(150,280,250,210);//rightArm
  line(50,280,0,210);//leftArm
  
  fill(255,0,0);
line(800,230,850,230);
  
  fill(0);
text("...Maybe...",900,210);
textSize(19);
text("That's what I thought.",830, 380);


  }
}

void mousePressed(){
  pressed = pressed + 1;
  pressedState = (pressed % 2);
  
 
 
}
