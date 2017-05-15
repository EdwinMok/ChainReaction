    Ball[] balls;
    //global boolean to tell whether reaction has been triggered
    boolean reactionStarted;
    
    //task to perform once, upon launch
    void setup(){
       size(600,600);
       reactionStarted = false;
       balls = new Ball[25];
       for (int x = 0; x < balls.length; x++){
          balls[x] = new Ball(); 
       }
    }
    
    void draw(){
        background(0);
        for (int x = 0; x < balls.length; x++){
          fill(balls[x].red,balls[x].green,balls[x].blue);
          ellipse(balls[x].x,balls[x].y,(balls[x].rad)*2,(balls[x].rad)*2);
          if (reactionStarted) {
          if (balls[x].state == 1 && balls[x].rad <= 70) {
             balls[x].getBig();
          } else if (balls[x].rad >= 0 && balls[x].state > 0) {
             balls[x].state = 2;
             balls[x].getSmall();
      }
    }
          balls[x].move();
  }
    }

    void mouseClicked(){
       if ( !reactionStarted ){
          balls[0].x = mouseX;
          balls[0].y = mouseY;
          balls[0].dx = 0;
          balls[0].dy = 0;
          balls[0].state = 1;
          reactionStarted = true;
       }
    }
