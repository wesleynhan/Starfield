Particle[] turtle;
void setup()
{
	size(500,500);
	turtle = new Particle[100];
	for(int i=2; i<turtle.length; i++)
	{
		turtle[i] = new NormalParticle();
	}
	turtle[0] = new OddballParticle();
	turtle[1] = new JumboParticle();
}

void mousePressed()
{	
	background(204);
	setup();
}

void draw()
{
	for(int i=0; i<turtle.length; i++)
	{
		turtle[i].show();
		turtle[i].move();
	}
}
class NormalParticle implements Particle
{
	double myX;
	double myY;
	double speed;
	double angle;
	color pColor;

	NormalParticle()
	{
		myX = 250;
		myY = 250;
		speed = (int)(Math.random()*5+1);
		angle = (Math.random()*2*Math.PI);
		pColor = color(66,(int)(Math.random()*179+66),(int)(Math.random()*179+66),1);
	}
		void move()
			{
				myX = Math.cos(angle)*speed + myX;
				myY = Math.sin(angle)*speed + myY;
			}
		void show()
			{
				fill(pColor);
				noStroke();
				ellipse((float)myX,(float)myY,25,25);
			}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double myX;
	double myY;
	double speed;
	double angle;
	color pColor;

	OddballParticle()
	{
	myX = 250;
	myY = 250;
	speed = (int)(Math.random()*5+4);
	angle = (int)(Math.random()*2*Math.PI);
	pColor = color(255,153,102,100);
	}
	void move()
	{
		myX = Math.cos(angle)*speed + myX;
		myY = Math.sin(angle)*speed + myY;
	}
	void show()
	{
		fill(pColor);
		noStroke();
		ellipse((float)myX,(float)myY,25,25);

	}
}
class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		speed = (int)(Math.random()*5+1);
		pColor = color(66,(int)(Math.random()*179+66),(int)(Math.random()*179+66),100);
	}

	void move()
	{
		myX = Math.cos(angle)*speed + myX;
		myY = Math.sin(angle)*speed + myY;
	}
	void show()
	{
		fill(pColor);
		noStroke();
		ellipse((float)myX,(float)myY,50,50);
	}
}

