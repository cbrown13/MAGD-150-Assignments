Furniture myFurniture;
Timer myTimer; 


PImage mychair;
PImage mycoffee;
int ranNumber;
PImage bgImage;

void setup(){
size(700,530);
bgImage = loadImage("https://cloud.githubusercontent.com/assets/15235895/11849020/4d1ae078-a3eb-11e5-977d-ec360560e391.jpg");
myFurniture = new Furniture();
mychair = myFurniture.chairs[0];
mycoffee = myFurniture.coffee[0];

myTimer = new Timer(30000); //30000 milliseconds or 30 seconds
}


void draw(){
  image(bgImage,0,0,700,550); //background image i.e. wall and floor
  textSize(10);
  text("Press 'G' and 'H' to toggle the color of the chair and table",10,10); //directions

 
  image(mychair,300,300,200,200); //chair
  image(mycoffee,200,360,200,200); //coffee table
 
if(myTimer.isFinished()){
  fill(255,0,0);
  textSize(50);
  text("It looks beautiful!", 100,300); //Comment
  }
}

void keyPressed(){
  ranNumber = round(random(0, 4)); //Number that chooses which color the chair or table is
  if (key == 'h' || key == 'H') {
    mychair = myFurniture.chairs[ranNumber];
  }
  
  if (key == 'g' || key == 'G'){
    mycoffee = myFurniture.coffee[ranNumber];
  }
}
class Furniture{
 
 //chairs 

 PImage redchairImage = loadImage("https://cloud.githubusercontent.com/assets/15235895/11849032/58317102-a3eb-11e5-9b70-a0f3d9268de3.png");
 PImage greenchairImage = loadImage("https://cloud.githubusercontent.com/assets/15235895/11849028/582c81c4-a3eb-11e5-8a27-cf1bc6365aa3.png");
 PImage magentachairImage = loadImage("https://cloud.githubusercontent.com/assets/15235895/11849030/582cba9a-a3eb-11e5-9745-ef2a3f874a55.png");
 PImage orangechairImage = loadImage("https://cloud.githubusercontent.com/assets/15235895/11849029/582cb1f8-a3eb-11e5-87ce-00506f384043.png");
 PImage pinkchairImage = loadImage("https://cloud.githubusercontent.com/assets/15235895/11849031/582fe0d0-a3eb-11e5-800f-bd394dcfe6a9.png");
 
 
 PImage [] chairs = new PImage [] {redchairImage, greenchairImage, magentachairImage, orangechairImage, pinkchairImage};
 
 //Coffee Tables
 PImage ctableyellowb = loadImage("https://cloud.githubusercontent.com/assets/15235895/11850205/7c68d820-a3f1-11e5-9771-44b471aa3bee.png");
 PImage ctableashbrown = loadImage("https://cloud.githubusercontent.com/assets/15235895/11850202/7c65fa60-a3f1-11e5-9f1d-a8ce5a979e86.png");
 PImage ctablebrown = loadImage("https://cloud.githubusercontent.com/assets/15235895/11850204/7c67c818-a3f1-11e5-86b0-25cc992a0018.png");
 PImage ctableorange = loadImage("https://cloud.githubusercontent.com/assets/15235895/11850203/7c66e146-a3f1-11e5-982b-dc23938acdb4.png");
 PImage ctablegrey = loadImage("Chttps://cloud.githubusercontent.com/assets/15235895/11850201/7c6489b4-a3f1-11e5-8316-76970a969344.png");

 
 PImage [] coffee = new PImage [] {ctableyellowb, ctableashbrown, ctablebrown, ctableorange, ctablegrey};
 
}
class Timer{
  int savedTime;  // When Timer started
  int totalTime;  // How long Timer should last
  
  // The constructor, set how long the Timer last with integer value
  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
  // Start the Timer
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
   // check how much time has passed
   int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
  }
}

