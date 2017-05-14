class Ball {
  
  float x;
  float y;
  float dx;
  float dy;
  int red;
  int green;
  int blue;
  float rad;
  int state;
  
  Ball(){
      red = (int) (random(256));
      green = (int) (random(256));
      blue = (int) (random(256));
      rad = 10;
      x = random((width-rad) + rad/2);
      y = random((height-rad) + rad/2);
      dx = random(10) - 5;
      dy = random(10) - 5;
      setColor();
  }
  
  void bounce() {
    if (x + dx > width){ dx = -dx;}
    if (y + dy > height){ dy = -dy;}
    if (x + dx < 0){dx = -dx;}
    if (y + dy < 0){dy = -dy;}
  }  
  
  void setColor(){
     fill(red,green,blue); 
  }
  
  void move() {
     x = x + dx;
     y = y + dy;
     bounce();
  }
  
  
}