class Crab extends Animal{
  
  Crab(int X,int Y,int Xfast,int Yfast,int size){
  super(X,Y,Xfast,Yfast,size);
  speedY=0;
  y=tankY+tankH-floorH-(size/2);
  }//constructor
  
  void display(){
    rectMode(CENTER);
   fill(200,0,0);
   image(c1,x,y,2*s,s);
    
    
  }//display
  void move(){
   if (x<=s+tankX||x>=tankX+tankW-s){
    speedX*=-1; 
   }
   if(y<=tankY+(s/2)||y>=tankY+tankH-(s/2)){
    speedY*=-1; 
   }
   x+=speedX;
   y+=speedY;
  }//move
  
  
  
  
  
}//Crab
