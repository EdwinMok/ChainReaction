class Ball {
  
  float x;
  float y;
  float dx;
  float dy;
  color c;
  float rad;
  int state;
  
  Ball(){
      c = color(random(256),random(256),random(256));
      rad = 10;
      x = random((width-rad) + rad/2);
      y = random((height-rad) + rad/2);
      dx = random(10) - 5;
      dy = random(10) - 5;
  }
  
  void bounce() {
    if (x + dx > width){ dx = -dx;}
    if (y + dy > height){ dy = -dy;}
    if (x + dx < 0){dx = -dx;}
    if (y + dy < 0){dy = -dy;}
  }  
  
  void move() {
     x = x + dx;
     y = y + dy;
     bounce();
  }
  
  
}