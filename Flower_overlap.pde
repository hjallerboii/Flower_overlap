Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;  // the second instance of the Flower class

Sun mySun1;

void setup() {
  size(1600, 1200);

  int _r1= 160;
  int _r2 = 100;
  int _r3 = 120;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  int offset = 350;


  myFlower2 = new Flower(_r2, _petals, _x+random(-500, 500), _y+offset, _pc, 5, 5);
  mySun1 = new Sun(_r2, _petals, _x+random(-500, 500), _y+offset, _pc, 7);

}

void draw() {
    background(#43AF76);
  if (mySun1.overlaps(myFlower2)){
    background(0,0,255);
  }

  mySun1.display(80, 100, 40); 
  mySun1.move();
  mySun1.bouncex();
  mySun1.bouncey();
  myFlower2.display();
  myFlower2.move();
  myFlower2.bouncex();
  myFlower2.bouncey();
  myFlower2.mouse();
  myFlower2.key();
  

  
}
