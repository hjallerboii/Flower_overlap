class Sun {

  // Variables
  float speed; //Der blev lavet en speed variable så man kunne flytte på blomsten og sætte den til forskellig hastighed
  float ballX;
  float ballY;
  float speedx =5, speedy = 7;
  float sy,sx;
  int collide;


  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals

  Sun(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_speed) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    speed = temp_speed;
  }

 /* void display () {


    
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      ballX=x-10 + r*cos(i);
      ballY=y+-50 + r*sin(i);
      rect(ballX, ballY, 5, r);
    }
    */
    
  void display(float radius1, float radius2, int npoints) {
  fill(#FEFF03);
  
  
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2*2*collide;
    float sy = y + sin(a) * radius2*2*collide;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1*2;
    sy = y + sin(a+halfAngle) * radius1*2;
    vertex(sx, sy);
  }

  endShape(CLOSE);

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
  
  void move() {

    x = x + speedx;
    y = y + speedy;
  }
  
    boolean overlaps(Flower someOtherCrazyFlower){
   boolean positive = false;
   if(dist (x,y,someOtherCrazyFlower.x, someOtherCrazyFlower.y+1.2*r)<(1.5*(r+someOtherCrazyFlower.r))){
     collide++;
     positive = true;
   }
   else{
     collide=1;
     positive = false;
     return positive;
   }
   return positive;
    
  }
  
}
