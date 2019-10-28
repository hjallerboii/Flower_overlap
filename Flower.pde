class Flower {

  // Variables
  float speedx;
  float speedy; //Der blev lavet en speed variable så man kunne flytte på blomsten og sætte den til forskellig hastighed
  float ballX;
  float ballY;


  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_speedx,float temp_speedy) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    speedx = temp_speedx;
    speedy = temp_speedy;
  }

  void display () {


    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      //  ballX=width/2 + r*cos(i);
      //  ballY=height/2 + r*sin(i);
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }
    float bouncex() {
    if (x > width-r || x < r) {
      speedx = speedx * (-1);
    }
    return speedx;
    }
    
    float bouncey() {
      if(y > height-r || y < r) {
      speedy = speedy * (-1);  
    }
    return speedy;
    }
    
    float mouse(){
     if(mousePressed && mouseX-x < r && mouseY-y < r && mouseX-x>-r && mouseY-y > -r){
       r--;
       return r;
     }
     else{
      return r;
     }
    }
    float key(){
     if(keyPressed){
      r++;
      return r;
     }
     else{
     return r;
     }
     
    }
  
  void move() {

    x = x + speedx;
    y = y + speedy;
  }

  
}
