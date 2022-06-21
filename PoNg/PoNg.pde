

Ball Ball;

Paddle left;
Paddle right;

int leftscore =0;
int rightscore =0;


void setup(){
  
size(600,400);
Ball =  new Ball();
left=new Paddle(true);
right=new Paddle(false);

}

void draw(){
  background(#371B58);
  
  
  Ball.update();
  Ball.edges();
  Ball.show();
  
  left.show();
  right.show();
  left.update();
  right.update();
  
  Ball.checkPaddleLeft(left);
  Ball.checkPaddleRight(right);
  

  
  fill(#ECB365);
  textSize(32);
  text(leftscore,10,40);
  text(rightscore,width-40,40);
  
  // to check if left side wins condition
 if(leftscore==10)
 {
   fill(#ECB365);

   textSize(28);
   text("Player left wins press r to reset",58,height/2+40);
   //textAlign(CENTER);
   Ball.xspeed=0;
   Ball.yspeed=0;

 }// to check if right side wins
 else if(rightscore==10)
 {
   fill(#ECB365);

 
  // textAlign(CENTER);
   textSize(28);
   text("Player Right wins press r to reset",68,height/2+40);
   Ball.xspeed=0;
   Ball.yspeed=0;
   
 }
   

  
  
}
void reset()
  {
    leftscore=0;
    rightscore=0;
    Ball.reset();
    //this is the same reset function called from puck
  }

void keyReleased(){
  left.move(0);
  right.move(0);
}

void keyPressed(){
//every time a key is pressed this code is executed like event listners
    if(key == 'a'){
       left.move(-10);
    }
    else if(key == 'z'){
        left.move(10);
    }
    if(key == 'k'){
       right.move(-10);
    }
    else if(key == 'm'){
        right.move(10);
        
    }
    if (key=='r')
    {
     reset(); 
    }
}
