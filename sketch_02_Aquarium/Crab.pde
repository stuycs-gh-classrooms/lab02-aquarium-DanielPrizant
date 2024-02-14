class Crab extends Animal{
  
  Crab(int X,int Y,int Xfast,int Yfast,int sizeW, int sizeH){
  super(X,Y,Xfast,Yfast,sizeW,sizeH);
  speedY=0;
  y=tankY+tankH-floorH-(sh/2);
  }//constructor
  
  void display(){
    rectMode(CENTER);
   fill(200,0,0);
   rect(x,y,2*sw,sh);
    
    
  }//display
  void move(){
   if (x<=sw+tankX||x>=tankX+tankW-sw){
    speedX*=-1; 
   }
   if(y<=tankY+(sh/2)||y>=tankY+tankH-(sh/2)){
    speedY*=-1; 
   }
   x+=speedX;
   y+=speedY;
  }//move
  
  
  
  
  
}//Crab
