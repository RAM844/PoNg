class Ball{
  //setting the ball in the middle so w/2 and h/2
  float x = width/2;
  float y = height/2;
  float xspeed ;
  float yspeed ;
  float r = 12;
  int count=0;
  
  Ball(){
   reset();
  }
  
  
  void checkPaddleLeft(Paddle p){
    if(y<p.y+p.h/2 && y>p.y-p.h/2 && x-r<p.x+p.w/2){
      if(x>p.x){
      xspeed*=-1;
      count=0;
      //float diff = y - (p.y-p.h/2);
      //float rad = radians(45);
      //float angle= map(diff,0,p.h,-rad,rad);
      //xspeed = 5 * cos(angle);
      //yspeed = 5 * sin(angle);
      //x= p.x + p.w/2 + r; 
     }
    }
  } 
  
  
  void checkPaddleRight (Paddle p){
    if(y < p.y+p.h/2 && y>p.y-p.h/2 && x+r>p.x-p.w/2){
      if(x<p.x){
      xspeed*=-1;
      count=0;
      //float diff = y - (p.y - p.h/2);
      //float rad = radians(135);
      //float angle= map(diff, 0, p.h, -rad, rad);
      //xspeed = -5 * cos(angle);
      //yspeed = -5 * sin(angle);
      //x= p.x - p.w/2 -  r;
    }
    }
  } 
  
  
  
  void update(){
    
       x=x+xspeed;
       y=y+yspeed;
       
      
  }
  
  
  void reset(){
  x = width/2;
  y = height/2;
  float angle = random(-PI/4,PI/4);//this will send the ball in only one direction for the other direction here is the code down
  //angle=radians(180);//for debugging
  if(random(1)<0.5){
  xspeed*=-1;
  }
   xspeed = 5*cos(angle);
   yspeed = 5*sin(angle);
  }
  
  
  void edges(){
    //this fuction will be used to turn the ball around when it hits the upper and lower surface
    if(y<0||y>height){
    yspeed *= -1;
    count++;
    //to avoid the infinite hitting of the top and botton
    if(count>5){
    reset();
    count=0;
    }
    
    }
    if(x+r<0){
      rightscore++;
    reset();
    }
    if(x-r>width){
      leftscore++; 
    reset();
    }
  }
  void show(){
  fill(#ECB365);
  ellipse(x,y,r*2,r*2);
  }
}
