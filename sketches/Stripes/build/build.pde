void setup() {
	size(600, 600);
	frameRate(30);
	noStroke();
	background(#000000);
	smooth(8);
	}

color[] palette = {
  #1C0021,
  #240047,#240047,#240047,
  #1C3166,#1C3166,#1C3166,
  #00A9D4,
  #40FFDC
};

int a = 4;
int q = 20;

int x0 = 0;
int y0 = 0;
int x1 = 0;
int y1 = 100;
int x2 = 0;
int y2 = 100;
int x3 = 0;
int y3 = 200;
int x4 = 0;
int y4 = 200;
int x5 = 0;
int y5 = 300;
int x6 = 0;
int y6 = 300;
int x7 = 0;
int y7 = 400;
int x8 = 0;
int y8 = 400;
int x9 = 0;
int y9 = 500;
int x10 = 0;
int y10 = 500;
int x11 = 0;
int y11 = 600;

void draw() {

	fill(#ff00ff,200);
	ellipse(x0,y0,q,q);
	fill(#ff0000,200);
	ellipse(x1,y1,q,q);
	fill(#ff007f,200);
	ellipse(x2,y2,q,q);
	fill(#ff7f00,200);
	ellipse(x3,y3,q,q);
	fill(#ffff00,200);
	ellipse(x4,y4,q,q);
	fill(#7fff00,200);
	ellipse(x5,y5,q,q);
	fill(#00ff00,200);
	ellipse(x6,y6,q,q);
	fill(#00ff7f,200);
	ellipse(x7,y7,q,q);
	fill(#00ffff,200);
	ellipse(x8,y8,q,q);
	fill(#007fff,200);
	ellipse(x9,y9,q,q);
	fill(#0000ff,200);
	ellipse(x10,y10,q,q);
	fill(#7f00ff,200);
	ellipse(x11,y11,q,q);

	x0 = x0 + a;
	y0 = y0 + a;
	x1 = x1 + a;
	y1 = y1 - a;
	x2 = x2 + a;
	y2 = y2 + a;
	x3 = x3 + a;
	y3 = y3 - a;
	x4 = x4 + a;
	y4 = y4 + a;
	x5 = x5 + a;
	y5 = y5 - a;
	x6 = x6 + a;
	y6 = y6 + a;
	x7 = x7 + a;
	y7 = y7 - a;
	x8 = x8 + a;
	y8 = y8 + a;
	x9 = x9 + a;
	y9 = y9 - a;
	x10 = x10 + a;
	y10 = y10 + a;
	x11 = x11 + a;
	y11 = y11 - a;

	if (y0 > 100) {
		y0 = 0;
	}

	if (y1 < 0) {
		y1 = 100;
	}

	if (y2 > 200) {
		y2 = 100;
	}

	if (y3 < 100) {
		y3 = 200;
	}

	if (y4 > 300) {
		y4 = 200;
	}

	if (y5 < 200) {
		y5 = 300;
	}

	if (y6 > 400) {
		y6 = 300;
	}

	if (y7 < 300) {
		y7 = 400;
	}

	if (y8 > 500) {
		y8 = 400;
	}

	if (y9 < 400) {
		y9 = 500;
	}

	if (y10 > 600) {
		y10 = 500;
	}

	if (y11 < 500) {
		y11 = 600;
	}

	if (x0 > width) {
		x0 = 0;
		y0 = 0;
		x1 = 0;
		y1 = 100;
		x2 = 0;
		y2 = 100;
		x3 = 0;
		y3 = 200;
		x4 = 0;
		y4 = 200;
		x5 = 0;
		y5 = 300;
		x6 = 0;
		y6 = 300;
		x7 = 0;
		y7 = 400;
		x8 = 0;
		y8 = 400;
		x9 = 0;
		y9 = 500;
		x10 = 0;
		y10 = 500;
		x11 = 0;
		y11 = 600;
		background(#000000);
	}

	saveFrame("render/stripes-####.gif");
}