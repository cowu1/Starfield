Star[] stars = new Star [1100];
void setup() {
  size (800, 800);
  for (int i = 0; i<1000; i++) {
    stars[i] = new Star();
  }
  for (int i = 1000; i< stars.length; i++)
  stars[i] = new ball();
}
void draw() {
  background (0);
  for (int i = 0; i< stars.length; i++) {
    stars [i].move();
    stars[i].show();
  }
  }
  class Star {
   double x;
   double y;
    float z;
    int Speed;
    double Angle;
    
  Star() {
   // x = (Math.random()*400);
   x = 400;
   y=400;
   // y = (Math.random()*400);
   Speed = (int)(Math.random()*20);
   Angle = (Math.random()*360);
  }
  void move() {
    x = x + Math.cos(Angle)*Speed;
    y= y + Math.sin(Angle)*Speed;
     if(x>800||x<0){
      x= (int)(Math.random()*800);//
      x=400+Math.cos(Angle)*0.5*Speed;
      y=400+Math.sin(Angle)*0.5*Speed;
      //y=(int)(Math.random()*800);
    }
  }
  void show() {
    fill(255);
    noStroke();
    ellipse((float)x, (float)y, 8, 8);
  }
  }
  class ball extends Star {
    ball(){
   x = 400;
   y=400;
   Speed = (int)(Math.random()*20);
   Angle = (Math.random()*360);
    }
    
 void move()
 {
    x = x + Math.cos(Angle)*Speed;
    y= y + Math.sin(Angle)*Speed;
   if(x>800||x<0){
      x= (int)(Math.random()*800);//
      x=400+Math.cos(Angle)*0.25*Speed;
      y=400+Math.sin(Angle)*0.25*Speed;
      //y=(int)(Math.random()*800);
    }
 }
 void show()
 {
   fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   ellipse((float)x, (float)y, 30,30);
  }
  }


