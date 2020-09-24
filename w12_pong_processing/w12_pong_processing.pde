Ball ball = new Ball(350,350,60);    //ball
Paddle paddleRight = new Paddle(670,height,30,200);  ///paddle right
Paddle paddleLeft = new Paddle(0,height,30,200);   /// paddle left


void setup(){
  size(700,700);
  
}
void draw(){
  background(0);
  ball.display();
  ball.move();
  paddleLeft.display();
  paddleRight.display();
  rect(width/2-5,0,10,height);   /// Demarcation line
  
  if(mouseX > width/2){         ///condition
    paddleRight.Paddlemove();
  }else{
    paddleLeft.Paddlemove();
  }
  
  
  
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
  Ball(int pos_x,int pos_y, int temp_diameter ){
    x = pos_x;
    y = pos_y;
    diameter = temp_diameter;
    speedX = 5;   ///speed ball
    speedY = 5;   
    c = (255);
  }
    
  void move(){ 
    /// Add speed to location
    y = y + speedY;
    x = x + speedX;
  }
  
  
  void display(){
    fill(c);   //set drawing color
    ellipse(x,y,diameter,diameter);  //draw ball
  } 
  
  

  
  
}
class PongGame{
  
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
 
  
  void Paddlemove(){         ///Paddlemove with mouse
    if(dist(px,0,mouseX,0) < width/2){
      if(mousePressed){
        py = mouseY;
      }
    }
    if(dist(px,0,mouseX,0) > width - width/2){
      if(mousePressed){
        py = mouseY;
      }
    }
  }
  
  void display(){
    fill(c);   //set drawing color paddle
    rect(px,py,w,h);  //draw paddle
  }
  
  
}
