
class MonchBullet{
  float x;
  float y;
  float x_new;
  float y_new;
  float size;
  float velocity;
  int damage;
  int orientation;
  int lifespan;
  int time;
  
  //time, orientation, damage and velocity dont do anything atm, just as x_new and y_new.
  
  MonchBullet(float x, float y, float size, int damage, float velocity, int orientation, int lifespan){
    this.x=x;
    this.y=y;
    this.size=size;
    this.damage=damage;
    this.velocity=velocity;
    this.orientation=orientation;
    this.lifespan=lifespan;
  }
  
  void display() {
    ellipseMode(CENTER);
    fill(lifespan);
    ellipse(x,y,size,size);
  }
  
  //boolean that makes bullets go poof
  //(they disappear after some time)
  boolean finished() {
    lifespan--;
  r eturn (lifespan < 0) ? true: false
  }
  
}
