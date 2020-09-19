
class Monch{
  float x;
  float y;
  int widt;
  int heigh;
  int orientation; //0 = right, 1 = left.
  int bulletAmmount;
  PImage img;
  
  Monch(float x, float y, int widt, int heigh, PImage img, int orientation, int bulletAmmount){
    this.x=x;
    this.y=y;
    this.widt=widt;
    this.heigh=heigh;
    this.orientation=orientation;
    this.img=img;
    this.bulletAmmount=bulletAmmount;
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
  
  void moveLeft(){
    x-=5;
  }
  void moveRight(){
    x+=5;
  }
  
  //shows circle on the screen (aim)
  void displayAim(){
    noFill();
    strokeWeight(2);
    ellipse(mouseX,mouseY,15,15);    
  }
}
