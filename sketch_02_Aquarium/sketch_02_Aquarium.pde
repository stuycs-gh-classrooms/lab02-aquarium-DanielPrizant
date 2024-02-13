Tank t;
//Penguinz pOne;
//Animal aOne;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
PImage p1;
PImage p2;
PImage c1;

//devlog: why img no appear questionmark
//wokr on craby


void setup() {
  size(600, 600);
  p1 = loadImage("Penguino1.png");
  p2 = loadImage("Penguino2.png");
  c1 = loadImage("mrCrab.png");
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  //aOne = new Tank(tankX, tankY, tankW, tankH, floorH);
  //pOne = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY);
}
