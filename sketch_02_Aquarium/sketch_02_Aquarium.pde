Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
PImage p1;
PImage p2;
PImage c1;
PImage f1;
int numFoods;
ArrayList<Food> foods = new ArrayList<Food>();
ArrayList <Animal>mobs = new ArrayList<Animal>();

void setup() {
  size(600, 600);
  p1 = loadImage("Penguino1.png");
  p2 = loadImage("Penguino2.png");
  c1 = loadImage("crab1.png");
  f1 = loadImage("fish1.jpg");
  noStroke();
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void mouseClicked() {
    t.addFood(mouseX, mouseY);
}
void keyPressed(){
  if(key=='1'){
    t.addFish(mouseX,mouseY); 
  }
  if (key=='2'){
   t.addCrab(mouseX); 
  }
  if (key=='3'){
   t.addGoldFish(mouseX,mouseY); 
  }
    if (key=='4'){
   t.addTurtle(mouseX,mouseY); 
  }
  if (key=='5'){
   t.addAnimal(mouseX,mouseY); 
  }
}
