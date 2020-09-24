Ball ball = new Ball(width,height,50,60);    //ball
Paddle paddle2 = new Paddle(670,height,30,200);  ///paddle right
Paddle paddle1 = new Paddle(0,height,30,200);   /// paddle left
void setup(){
  size(700,700);
  
}
void draw(){
  background(0);
  ball.display();
  paddle1.display();
  paddle2.display();
}

class Ball{
  int x; 
  int y;  
  int diameter;
  int speedX;
  int speedY;
  color c;
  int diameter1;
  //constructor method
  Ball(int pos_x,int pos_y, int temp_diameter ,int temp_diameter1){
    x = pos_x;
    y = pos_y;
    diameter = temp_diameter;
    diameter = temp_diameter1;
    speedX = 0;
    speedY = 0;
    c = (255);
  }
    
  
  
  void display(){
    fill(c);   //set drawing color
    ellipse(x,y,diameter,diameter);  //draw ball
  } 
  
  void move(){  
  }
  
}
class Score{
  
  void on_touch_move(){  
  
  }

}

class Paddle{
  int px;        
  int py;
  int w;
  int h;
  int speedX;
  int speedY;
  color c;
  //constructor method 
  Paddle(int pos_x,int pos_y,int tempW,int tempH ){
    px = pos_x;
    py = pos_y;
    w = tempW;
    h = tempH;
    speedX = 0;
    speedY = 0;
    c = (255);
  }
 
  
  void move(){ 
  }
  
  void display(){
    fill(c);   //set drawing color paddle
    rect(px,py,w,h);  //draw paddle
  }
  
  
  
}
