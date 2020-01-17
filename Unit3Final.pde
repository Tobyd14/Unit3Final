int scene = 0;
Scene s;
Minigame m;
PFont f;
PImage Logo;


void setup()
{
 Logo= loadImage("GameLogo.png");
 size(1000,1000);
  f = createFont("Arial", 30, true);  
}
void draw()
{
  if(scene==0)
  {
    background(0);
    image(Logo,50,200);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Begin Game", 400, 600);
       if (mousePressed) {
      if (dist(mouseX, mouseY, 400, 600)<100)
      {
        scene= 1;
      }
  }
  }
  if(scene==1)
  {
    new Scene();
    
  }
  if(scene==2)
  {
      new Scene();
    
    
  }
  if(scene==3)
  {
    new Minigame();
    
  }
  if(scene==4)
  {
      new Scene();
    
  }
  if(scene==5)
  {
    
      new Scene();
    
  }
  if(scene ==6)
  {
      new Scene();
    
    
  }
  if(scene == 7)
  {
      new Scene();
    
  }
  if(scene==8)
  {
      new Scene();
    
  }
  if(scene==99)
  {
    
    
  }
}
void keyPressed()
{
  
  
  
  
  
}
