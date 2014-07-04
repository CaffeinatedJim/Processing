int a = 1;

void setup() {
	size(1280, 720);
	frameRate(30);
	smooth();
	background(#000000);
	stroke(#FF0000, 100);
	strokeJoin(ROUND);
	strokeCap(ROUND);
	strokeWeight(1);
	noFill();
	noLoop();
	rectMode(CENTER);
}

void draw() {
	for (int x = 0; x <= width; x += a) {
		a++;
		for (int y = 0; y <= height; y += a) {			
			// rect(x, y, a, a);
			ellipse(x, y, a, a);
		}
	}
	loop();
}