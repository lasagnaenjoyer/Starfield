Particle[] yoonoh = new Particle[300];
void setup()
{
  size(500,500);
   yoonoh = new Particle[300];
  for (int i = 0; i < yoonoh.length; i++) 
  {
    yoonoh[i] = new Particle();
    yoonoh[0] = new OddballParticle();
   
  }
}
void draw()

{
  background(0);
  
  for (int i = 0; i < yoonoh.length; i++)
  {
    yoonoh[i].show();
    yoonoh[i].move();
    yoonoh[i].reset();
  }
  

}
class Particle
{
  double myAngle,mySpeed;
  int myColor;
   double gibbonStorage = 300;
   double gibbon = gibbonStorage;
   double monkeyStorage = 200;
   double monkey = monkeyStorage;
  Particle()
  {
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*3)+1;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void show()
  {
    fill(myColor);
    noStroke();
    ellipse((float)gibbon,(float)monkey, 5, 5);
  }
  void move()
  {
    gibbon += (Math.cos(myAngle) * mySpeed);
    monkey += (Math.sin(myAngle) * mySpeed);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void reset()
  {
    if (gibbon > 600 || gibbon < -100)
    {
      gibbon = (Math.random()*250)+150;
    }
    if (monkey > 600 || monkey < -100)
    {
      monkey = (Math.random()*250)+150;
    }
  }
}

class OddballParticle extends Particle 
{
  void show()
  {
    fill (198, 199, 189);
    noStroke();
    square((float)gibbon, (float)monkey, 20);
  }
  void move()
  {
    gibbon += (Math.random()*(Math.cos(myAngle) * mySpeed));
    monkey += (Math.random()*(Math.sin(myAngle) * mySpeed));
  }
}


