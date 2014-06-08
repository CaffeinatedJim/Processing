void setup()
{
	size(1280,720);
	background(0);
	frameRate(12);
}
  
float strobeSpeed = 2;

void draw()
{
	background(0);
	if(frameCount%strobeSpeed==0)background(255);
}