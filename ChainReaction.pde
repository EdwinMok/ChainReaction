    Ball[] balls;
    //global boolean to tell whether reaction has been triggered
    boolean reactionStarted;
    Ball bigBOI;
    
    //task to perform once, upon launch
    void setup(){
       size(600,600);
       reactionStarted = false;
       balls = new Ball[25];
       for (int x = 0; x < balls.length; x++){
          balls[x] = new Ball(); 
       }
       bigBOI = new Ball();
    }
    
    void draw(){
        background(0);
        for (int x = 0; x < balls.length; x++){
          fill(balls[x].red,balls[x].green,balls[x].blue);
          ellipse(balls[x].x,balls[x].y,(balls[x].rad)*2,(balls[x].rad)*2);
          balls[x].move();
        }
        if (reactionStarted) {
            fill(bigBOI.red, bigBOI.green, bigBOI.blue);
            ellipse(bigBOI.x, bigBOI.y, (bigBOI.rad)*2, (bigBOI.rad)*2);
            if (bigBOI.rad <= 70  && bigBOI.state == 1) {
                bigBOI.getBig();
            } else if (bigBOI.rad >= 0) {
                bigBOI.state = 2;
                bigBOI.getSmall();
    }
  }
    }

    void mouseClicked(){
       if ( !reactionStarted ){
          bigBOI.x = mouseX;
          bigBOI.y = mouseY;
          bigBOI.dx = 0;
          bigBOI.dy = 0;
          bigBOI.state = 1;
          bigBOI.red = (int)random(256);
          bigBOI.blue = (int)random(256);
          bigBOI.green = (int)random(256);
          reactionStarted = true;
       }
    }
