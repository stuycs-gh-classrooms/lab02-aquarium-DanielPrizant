class Fish extends Animal{
  
  Fish(int X,int Y,int Xfast,int Yfast,int size){
  super(X,Y,Xfast,Yfast,size);
  xSpeed=ySpeed*2;
  }//constructor
  
  void display(){
    rectMode(CENTER);
   fill(200,200,0);
   rect(x,y,2*s,s);
    
    
  }//display
  void move(){
   if (x<=s+tankX||x>=tankX+tankW-s){
    xSpeed*=-1; 
   }
   if(y<=tankY+(s/2)||y>=tankY+tankH-(s/2)){
    ySpeed*=-1; 
   }
   x+=xSpeed;
   y+=ySpeed;
  }//move
  
  
  
  
  
}//Fish
