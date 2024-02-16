class Goldfish extends Animal {

  Goldfish(int x, int y, int Xfast, int Yfast, int size) {
      super(x, y, Xfast, Yfast,size);
  }
  void move(){
    if (x<=s+tankX||x>=tankX+tankW-s){
      speedX*=-1;
    }

    if(y <= tankY+(s/2) || y >= tankY+tankH-(s/2)){
      speedY*=-1; 
    }
    x += speedX;
    y += speedY;
  }
  
  void display() {
    rectMode(CENTER);
    if (isAlive) {
      fill(#EAEA5F);
      rect(x, y, 20, 20);
    }
    hunger++;
  }
}
