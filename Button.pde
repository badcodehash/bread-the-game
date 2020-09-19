//currently not in use. Will use for title screen later.


class Button{
  float x;
  float y;
  float widt;
  float heigh;
  boolean tap;
  color filler;
  
  Button(float x, float y, float widt, float heigh, color filler, boolean tap){
    this.x=x;
    this.y=y;
    this.widt=widt;
    this.heigh=heigh;
    this.tap=tap;
    this.filler=filler;
  }
  
  //Please show me the magik o:
  void display(){
    fill(filler);
    rectMode(CENTER);
    ellipse(x,y,widt,heigh);
    stroke(2);
  }
  
  //Checks if the mouse is on the thing
  void check(){
    if(mouseX >= x-widt/2 && mouseX <= x+widt/2 && mouseY >= y-heigh/2 && mouseY <= y+heigh/2 && mousePressed){
      tap=true;
    }
    else{
      tap=false;
    }
  }
  
  //those two have no real use apart from self amusement.
  void walking(){
    x=x += random(-5,5);
    y=y += random(-5,5);
    
    if(x >= 400){
      x=0;
    }
    else if(x <= 0){
      x=400;
    }
    else if(y >= 400){
      y = 0;
    }
    else if(y <= 0){
      y = 400;
    }
  }
  
  void epilleptia(){
    filler = color(random(0,255),random(0,255),random(0,255));
  }
}
