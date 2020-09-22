
class Monch{
  float x;
  float y;
  
  float velX;
  float velY;
  
  float speedyness;
  float gravity;
  
  int widt;
  int heigh;
  
  int orientation; //0 = right, 1 = left.
  int bulletAmmount;
  
  PImage img;
  
  Monch(float x, float y, int widt, int heigh, PImage img, int orientation, int bulletAmmount, float speedyness, float gravity){
    this.x=x;
    this.y=y;
    this.widt=widt;
    this.heigh=heigh;
    this.orientation=orientation;
    this.img=img;
    this.bulletAmmount=bulletAmmount;
    this.speedyness=speedyness;
    this.gravity=gravity;
  }
  
  //shows monch :3
  void display(){
    rectMode(CENTER);
    image(img,x,y,widt,heigh);
  }
  
  //original movement void
  //void move(){
  //  if(x>=400){
  //    x=0;
  //  }
  //  else if(x<=0){
  //    x=400;
  //  }
  //  if(keyPressed){
  //    if(key == 'd'){
  //      orientation = 0;
  //      x+=5;
  //    }
  //    if(key == 'a'){
  //      orientation = 1;
  //      x-=5;
  //    }
  //  }
  //}
  
  //keeps monch inside of the screen
  void boundaries(){
    if(x==400){
      x=1;
    }
    else if(x==0){
      x=399;
    }
    else if(x>400){
      x=0;
    }
    else if(x<0){
      x=400;
    }
  }
  
  //changes orientation for the bread
  void orientation(){
    if(keyPressed){
      if(key == 'd'){
      orientation = 0;
      }
      if(key == 'a'){
        orientation = 1;
      }
    }
  }
  
  //guess the fuck those do, sherlock
  void move(){
    x += velX;
  }
  
  
  void jump(){
    // Add gravity to speed
    velY = velY + gravity;
    // Add speed to y location
    y = y + velY;
    // If monch reaches the bottom
    // Reverse speed
    if (y > 300) {
      // Dampening
      //velY = velY * -0.8;
      y = 300;
      velY=0;
    }
  }
  
  
  //shows circle on the screen (aim)
  void displayAim(){
    noFill();
    strokeWeight(2);
    ellipse(mouseX,mouseY,15,15);    
  }
  
  
}
