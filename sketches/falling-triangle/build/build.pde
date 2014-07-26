float n = 0;
float speed = 30;
float rand = 0;

void setup() {
	size(600, 600);
	ellipseMode(CENTER);
	noStroke();
	smooth(8);
}

void draw() {
	background(#000000);
	fill(#FFFFFF);
	//ellipse(rand, n, 5, 5);
	triangle(rand-5, n, rand+5, n, rand, n+10);

	n = n + speed;

	if (n > width) {
		n = 0;
		rand = random(n/2, width);
	}

	if (frameCount % 4 == 0 && frameCount < 201) saveFrame("render/tuesday-####.gif");

}