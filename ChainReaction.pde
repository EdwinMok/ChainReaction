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
          
        }
    }

    void mouseClicked(){
       if ( !reactionStarted ){
          balls[0].x = mouseX;
          balls[0].y = mouseY;
       }
    }