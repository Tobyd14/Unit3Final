class Minigame

{
  PImage Plane;
  PImage Bomb;
  float  jetX;
  float  jetY;
  float  bombX;
  float  bombY;
  float x=400;
  float y=400;
  float Xs [] = new float [5];
  float Ys [] = new float [5];
 
  Minigame()
  {
  
    Plane=loadImage("plane.png");
    Plane.resize(100, 100);
    Bomb=loadImage("bomb.png");
    Bomb.resize(100, 100);
    jetX=500;
    jetY=100;
    if (jetX > width) {
      jetX=0;
    }
    if (jetY > height) {
      jetY=0;
    }
    if (jetX < 1000)
    {
      //scene=3;
    }
    x=400;
    y=400;
    
    background(255, 0, 0);
    image(Plane, jetX, jetY);

    //collisions between plane & bomb
    for (int i=0; i<5; i++) {
      image ( Bomb, Xs[i], Ys[i]);
      Xs[i] = Xs[i] +- 3;
      if (Xs[i] < 0) {
        Xs[i] = width;
      }
    }
    //determines when player completes level as well as losing level
    for (int i=0; i<5; i++)
    {
      if (x < Xs[i] + Bomb.width &&
        x + Bomb.width-85 > Xs[i] &&
        y < Ys[i] + Bomb.height && 
        y + Bomb.height-10 > Ys[i])
      {
        scene=99;
      }
    }

    if (jetX > 1000)
    {
      
      scene=4;
    }
    if (jetY > 1000)
    {
      jetX=400;
      jetY=400;
    }
  }
   void keyPressed()
    {
      if(scene ==3)
      {
      if (key == 'a')
      {
        jetX-=20;
      }
      if (key== 'd')
      {
        jetX+=20;
      }
      if (key == 's')
      {
        jetY-=20;
      }
      if (key == 'w')
      {
        jetY+=20;
      }
    }
  }
        
}
