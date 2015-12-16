void setup(){
size(500,500);
background(107,226,229);

fill(224,162,111);
rect(150,37,200,50,20);

fill(191,115,67);
rect(150,195,200,50,20);

rect(150,246,200,50,20);

fill(120,50,0);
rect(150,250,200,400,10); //Body



fill(120,50,0);
rect(150,40,200,200,10); //Face

fill(191,115,67);
rect(175,65,150,150,10); //Background Clock

rectMode(CENTER);
rect(160,375,4,240);
rect(170,375,4,240);
rect(180,375,4,240);
rect(190,375,4,240);
rect(200,375,4,240);
rect(210,375,4,240);
rect(220,375,4,240);
rect(230,375,4,240);
rect(240,375,4,240);
rect(250,375,4,240);
rect(260,375,4,240);
rect(270,375,4,240);
rect(280,375,4,240);
rect(290,375,4,240);
rect(300,375,4,240);
rect(310,375,4,240);
rect(320,375,4,240);
rect(330,375,4,240);
rect(340,375,4,240);





fill(255,229,191);
ellipse(250,140,150,150); //Big Clock

ellipseMode(CENTER);
fill(224,162,111);
ellipse(250,140,70,70); //Donut Hole


line(250,140,200,150); //Minute Hand
line(250,140,300,160); //Hour Hand

point(250,80); //12
point(250,200); //6
point(315,140); //3
point(185,140); //9
}
void loop(){
} 
