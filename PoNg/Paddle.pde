class Paddle{
   float x;
   float y=height/2;
   float w=20;
   float h=100;
   float ychange=0;
   Paddle(boolean left){
     //this will make the paddle x and y to their values;
     if(left){
     x=w;
     }
     else{
     x=width-w;
     }
 }
 void update(){
    y+=ychange;
   y= constrain(y,h/2,height-h/2);//this will constrain the edges movement and to remeber the rectagular boxes x and y is based on its center posidtion
 }
 
 void move(float steps){
   ychange=steps;
  
 }
void show(){
  fill(#ECB365);
  rectMode(CENTER);
  rect(x,y,w,h);
}
}
