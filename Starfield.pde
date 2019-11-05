Particle [] bob = new Particle [900];


void setup()
{
  size(500,500);
  frameRate(60);
  for (int i = 0; i<bob.length;i++)
  {
	bob[i] = new Particle();
	bob[0] = new OddballParticle();
  }
}

/*------------------------------------------------------*/

void draw()
{
  background(0);
  for(int i =0;i<bob.length;i++)
  {
	bob[i].show();
	bob[i].move();
	bob[0].show();
	bob[0].move();
  }
}
/*------------------------------------------------------*/

void mousePressed()
{
  redraw();
}

/*------------------------------------------------------*/

class Particle
{
  int thisColor;
  double myX,myY,myAngle,mySpeed;
 
void show()
{
  fill(thisColor);
  ellipse((float)myX,(float)myY,5,5);
}

void move()
  {
   myX += (Math.cos(myAngle)*mySpeed);
   myY += (Math.sin(myAngle)*mySpeed);
  }

  Particle()
  {
	myX = 250;
	myY = 250;
	thisColor =  color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	myAngle = Math.random()*2*Math.PI;
	mySpeed = Math.random()*10;
  }
}

/*------------------------------------------------------*/

class OddballParticle extends Particle
{

  OddballParticle()
  {
	myAngle = Math.random()*2*Math.PI;
	mySpeed = (double)Math.random()*.07;
	myX = 250;
	myY = 250;
}
void show()
	{
	fill(thisColor);
	ellipse((float)myX,(float)myY,50,50);
  }
}

