void setup()
{
	size(1280,720);
	noStroke();
	smooth();
	background(0);
}

void draw()
{
	for (int y = 0; y <= height; y += 40) {
		for (int x = 0; x <= width; x += 40) {
			fill(255, 0, 0, 1);
			ellipse(x, y, 40, 40);
		}
	}
}