int h = 0;

void setup() {
	size(1280, 720);
	frameRate(60);
	smooth();
	background(#000000);
	noLoop();
}

void draw() {
	translate(width/2, height/2);
	rotate(radians(h*10));
	float r = random(100,255);
	fill(r, 0, 0);
	ellipse(h, h, h, h);
	h = h + 1;
	loop();
}
