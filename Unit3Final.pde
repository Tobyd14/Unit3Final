import ddf.minim.*;
Minim minim;
AudioPlayer music;
AudioPlayer deathmusic;
AudioPlayer minigamemusic;
//the scene variable is the basis for the game (game holds multiple scenes)
int scene = 0;
//this boolean determines which character the player has chosen
boolean SelectedPlayer1=false;
boolean SelectedPlayer2=false;
// Scene and Minigame are the two classes on the program
Scene s;
Minigame m;
boolean death;
PFont f;
PImage Logo;
PImage GameIntro;
PImage Scene2Option1;
PImage Scene2Option2;
PImage Scene4Option1;
PImage Scene4Option2;
PImage Scene5Option1;
PImage Scene5Option2;
PImage Scene6;
PImage Scene7;
PImage Scene2Prompt;
PImage Scene4Prompt;
PImage Scene5Prompt;
PImage DeathMessage;
PImage OkBoomer;
PImage RetryButton;
PImage Player1;
PImage Player2;


void setup()
{
  //  if (music.isPlaying()) {
  //  deathmusic.pause();
  // minigamemusic.pause();
  //   }
  //   if (deathmusic.isPlaying()) {
  // music.pause();
  //   minigamemusic.pause();
  //   }
  //   if (minigamemusic.isPlaying()) {
  // deathmusic.pause();
  //   music.pause();
  //        
  minim = new Minim(this);
  music = minim.loadFile("music.mp3");
  deathmusic = minim.loadFile("okboomer.mp3");
  minigamemusic=minim.loadFile("bomb.mp3");  
  if (scene== 0||scene == 1||scene == 2||scene == 4||scene == 5||scene == 6)
  {
    music.play();
  }
  if (scene == 99)  
  {
    deathmusic.play();
  }
  if (scene == 3)
  {
    minigamemusic.play();
  }
  Logo= loadImage("GameLogo.png");
  size(1200, 1000);
  f = createFont("Arial", 30, true);  
  GameIntro=loadImage("GameIntro.png");
  Scene2Prompt=loadImage("PromptIntro.png");
  Scene2Option1=loadImage("Scene2Option1.png");
  Scene2Option2=loadImage("Scene2Option2.png");
  Scene4Prompt=loadImage("Scene3Prompt.png");
  Scene4Option1=loadImage("Scene3Option1.png");
  Scene4Option2=loadImage("Scene3Option2.png");
  Scene5Prompt=loadImage("Scene5Prompt.png");
  Scene5Option1=loadImage("Scene5Option1.png");
  Scene5Option2=loadImage("Scene5Option2.png");
  Scene6=loadImage("Scene10.png");
  Scene7=loadImage("Scene11.png");
  DeathMessage=loadImage("DeathMessage.png");
  RetryButton=loadImage("RetryButton.png");
  OkBoomer=loadImage("okboomer.jpg");
  OkBoomer.resize(600, 400);
  Player1=loadImage("Player1.png");
  Player2=loadImage("Player2.png");
  Player1.resize(800, 600);
  Player2.resize(800, 600);
}
void draw()
{
  //this code here determines which character the player has chosen, and displays a picture of that character on the screen
  if (SelectedPlayer1==true)
  {
    if (scene==2||scene==4||scene==5||scene==6||scene==7)
    {
      image(Player1, 600, 100);
    }
  }
  if (SelectedPlayer2==true)
  {
    if (scene==2||scene==4||scene==5||scene==6||scene==7)
    {
      image(Player2,600,100);
    }
    
    
  }
  if (scene==98)
  // this scene allows the player to select their character
  {
    background(0);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Select Your Character", 400, 600);
    image(Player1, 100, 100);
    image(Player2, 300, 100);
    if (mousePressed)
    {
      if (dist(mouseX, mouseY, 100, 100)<500)
      {
        SelectedPlayer1=true;
        scene=1;
      }
      if (dist(mouseX, mouseY, 300, 100)<500)
      {
        SelectedPlayer2=true;
        scene=1;
      }
    }
  }

  if (scene==0)
  {
    background(0);
    image(Logo, 50, 200);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Begin Game", 400, 600);
    if (mousePressed) {
      if (dist(mouseX, mouseY, 400, 600)<100)
      {
        scene= 98;
      }
    }
  }
  if (scene==1)
  {
    background(0);
    image(GameIntro, 50, 200);
    textFont(f, 30);
    fill(255, 0, 0);
    text("Press To Continue", 200, 200);
    if (mousePressed) {
      if (dist(mouseX, mouseY, 200, 200)<100)
      {
        scene= 2;
      }
    }
  }
  if (scene==2)
  {
    new Scene();
    text("Option 1", 200, 400);
    text("Option 2", 600, 400);
    image(Scene2Prompt, 0, 0);
    image(Scene2Option1, 0, 400);
    image(Scene2Option2, 400, 400);
    if (mousePressed) {
      if (dist(mouseX, mouseY, 200, 400)<200)
      {
        scene=4;
      }
      if (dist(mouseX, mouseY, 600, 400)<200)
      {
        scene=99;
      }
    }
  }

  if (scene==3)
  {
    new Minigame();
  }
  if (scene==4)
  {
    new Scene();
    image(Scene4Prompt, 0, 0);
    image(Scene4Option1, 0, 400);
    image(Scene4Option2, 400, 400);
    text("Option 1", 100, 675);
    text("Option 2", 500, 800);
    if (mousePressed) {
      if (dist(mouseX, mouseY, 100, 675)<200)
      {
        scene=99;
      }
      if (dist(mouseX, mouseY, 500, 800)<200)
      {
        scene=5;
      }
    }
  }
  if (scene==5)
  {

    new Scene();
    image(Scene5Prompt, 0, 0);
    image(Scene5Option1, 0, 400);
    image(Scene5Option2, 400, 400);
    text("Option 1", 200, 500);
    text("Option 2", 600, 500);

    if (mousePressed) {
      if (dist(mouseX, mouseY, 200, 550)<200)
      {
        scene=6;
      }
      if (dist(mouseX, mouseY, 600, 550)<200)
      {
        scene=99;
      }
    }
  }
  if (scene ==6)
  {
    background(0);
    image(Scene6, 0, 0);
  }
  if (scene == 7)
  {
    background(0);
    image(Scene7, 0, 0);
  }
  if (scene==8)
  {
    new Scene();
  }
  if (scene==99)
  {
    background(0);
    image(DeathMessage, 50, 50);
    image(OkBoomer, 200, 500);
    image(RetryButton, 350, 300);
    if (mousePressed)
    {
      if (dist(mouseX, mouseY, 350, 300)<200)
      {
        scene=2;
      }
    }
  }
}
