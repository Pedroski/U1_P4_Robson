int ViperX = 400;
int ViperY = 600;
int ViperWidth = 40;
int ViperHeight = 40;
int VipersWidth = 200;
int VipersHeight = 200;
int BallX = 400;
int BallY = 400;
int BallWidth = 100;
int BallHeight = 100;
int Spec1X = 400;
int Spec1Y = 300;
int Spec2X = 500;
int Spec2Y = 400;
int Spec3X = 400;
int Spec3Y = 500;
int Spec4X = 300;
int Spec4Y = 400;
int SpecWidth = 2;
int SpecHeight = 2;
int speedX = 0;
int speedY = 0;
int BallColor1 = 255;
int BallColor2 = 255; 
int BallColor3 = 255;
PImage Viper;

void setup()
{
  size(800, 800, P2D);
  Viper = loadImage("Viper.png");
}

void draw()
{
  background(60, 134, 46);
  drawViper();
  drawBall();
  drawBallCollisionsWithViper();
  drawBallCollisionWithWalls();
}

void drawViper()
{
  fill(84, 216, 59);
  ellipse(mouseX, mouseY, ViperWidth, ViperHeight);
  image(Viper, mouseX - 100, mouseY - 100, VipersWidth, VipersHeight);
}

void drawBall()
{
  fill(BallColor1, BallColor2, BallColor3);
  ellipse(BallX, BallY, BallWidth, BallHeight);
  BallX = BallX + speedX;
  BallY = BallY + speedY;
  ellipse(Spec1X, Spec1Y, SpecWidth, SpecHeight);
  Spec1X = Spec1X + speedX;
  Spec1Y = Spec1Y + speedY;
  ellipse(Spec2X, Spec2Y, SpecWidth, SpecHeight);
  Spec2X = Spec2X + speedX;
  Spec2Y = Spec2Y + speedY;
  ellipse(Spec3X, Spec3Y, SpecWidth, SpecHeight);
  Spec3X = Spec3X + speedX;
  Spec3Y = Spec3Y + speedY;
  ellipse(Spec4X, Spec4Y, SpecWidth, SpecHeight);
  Spec4X = Spec4X + speedX;
  Spec4Y = Spec4Y + speedY;
}

void drawBallCollisionsWithViper()
{
  if ( dist(mouseX, mouseY, Spec1X, Spec1Y) < 40+2 )
  {
    speedY = speedY + 2;
    BallColor1 = (int) random(0, 255);
    BallColor2 = (int) random(0, 255);
    BallColor3 = (int) random(0, 255);
  }
  if ( dist(mouseX, mouseY, Spec2X, Spec2Y) < 40+2 )
  {
    speedX = speedX - 2;
    BallColor1 = (int) random(0, 255);
    BallColor2 = (int) random(0, 255);
    BallColor3 = (int) random(0, 255);
  }
  if ( dist(mouseX, mouseY, Spec3X, Spec3Y) < 40+2 )
  {
    speedY = speedY - 2;
    BallColor1 = (int) random(0, 255);
    BallColor2 = (int) random(0, 255);
    BallColor3 = (int) random(0, 255);
  }
  if ( dist(mouseX, mouseY, Spec4X, Spec4Y) < 40+2 )
  {
    speedX = speedX + 2;
    BallColor1 = (int) random(0, 255);
    BallColor2 = (int) random(0, 255);
    BallColor3 = (int) random(0, 255);
  }
}

void drawBallCollisionWithWalls()
{
  if ( BallY < 0 )
  {
    speedY = speedY * -1;
  }
  if ( BallY > 800 )
  {
    speedY = speedY * -1;
  }
  if ( BallX < 0 )
  {
    speedX = speedX * -1;
  }
  if ( BallX > 800 )
  {
    speedX = speedX * -1;
  }
}