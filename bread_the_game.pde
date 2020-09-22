ArrayList<MonchBullet> bullets;
boolean gameRun=false;
boolean[] keys;
PImage breadright = new PImage();
PImage breadleft = new PImage();
Monch monch = new Monch(200,300,64,40,breadleft,1,20,5,0.3);

void setup(){
  size(400,400);
  bullets = new ArrayList<MonchBullet>();
  
  bullets.add(new MonchBullet(32767,32767,20,20,20,1,255));
  
  breadleft = loadImage("monchleft.png");
  breadright = loadImage("monchright.png");
  keys = new boolean [3];
  keys[0]=false;
  keys[1]=false;
}

void draw(){
  background(#938585);
  monch.display();
  monch.boundaries();
  monch.displayAim();
  monch.move();
  monch.jump();
  
  
  //moves bread and changes the orientation variable
  if ( keys[0]){  
    monch.orientation=1;
    monch.velX=-monch.speedyness;
  }
  else if ( keys[1]){
    monch.orientation=0;
    monch.velX=monch.speedyness;
  }
  else{
    monch.velX=0;
  }
  
  if(keys[0] && keys[1]){
    monch.velX=0;
  }
  
  if(keys[2]){
    monch.velY=-5;
  }
  
  //establishes which side bred is facing by using the orientation variable and shows
  //bread picture!!!
  
  imageMode(CENTER);
  if(monch.orientation == 0){
    image(breadright,monch.x,monch.y,64,40);
  }
  else if(monch.orientation == 1){
    image(breadleft,monch.x,monch.y,64,40);
  }
  
  //shooting mechanic, arraylist part.
  for(int i = bullets.size()-1; i>=0; i--){
    MonchBullet monchbullet = bullets.get(i);
    monchbullet.display();
    if (monchbullet.finished()){
      bullets.remove(i);
    }
  }
}



//non-void-setup monch movement part :3
void keyPressed(){
  if (key=='a')
     keys[0]=true;
  if (key=='d')
     keys[1]=true;
  if (key=='w')
     keys[2]=true;
 }
void keyReleased(){
  if (key=='a')
     keys[0]=false;
  if (key=='d')
     keys[1]=false;
  if (key=='w')
     keys[2]=false;
}

//current shooting input (bullets dont do anything atm)
void mouseClicked(){
    bullets.add(new MonchBullet(mouseX,mouseY,15,20,20,1,255));
}
