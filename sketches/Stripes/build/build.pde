void setup() {
	size(600, 600);
	frameRate(30);
	noStroke();
	background(#000000);
	smooth(8);
}

color[] palette = {#ff00ff,#ff0000,#ff007f,#ff7f00,#ffff00,#7fff00,#00ff00,#00ff7f,#00ffff,#007fff,#0000ff,#7f00ff};

int a = 1;
int b = 5;
int x = 0;

int[] y = { 0, 100, 100, 200, 200, 300, 300, 400, 400, 500, 500, 600 };

void draw() {

	fill(palette[0],200);
	rect(x,y[0],b,b);
	fill(palette[1],200);
	rect(x,y[1],b,b);
	fill(palette[2],200);
	rect(x,y[2],b,b);
	fill(palette[3],200);
	rect(x,y[3],b,b);
	fill(palette[4],200);
	rect(x,y[4],b,b);
	fill(palette[5],200);
	rect(x,y[5],b,b);
	fill(palette[6],200);
	rect(x,y[6],b,b);
	fill(palette[7],200);
	rect(x,y[7],b,b);
	fill(palette[8],200);
	rect(x,y[8],b,b);
	fill(palette[9],200);
	rect(x,y[9],b,b);
	fill(palette[10],200);
	rect(x,y[10],b,b);
	fill(palette[11],200);
	rect(x,y[11],b,b);

	x = x + a;
	y[0] = y[0] + a;
	y[1] = y[1] - a;
	y[2] = y[2] + a;
	y[3] = y[3] - a;
	y[4] = y[4] + a;
	y[5] = y[5] - a;
	y[6] = y[6] + a;
	y[7] = y[7] - a;
	y[8] = y[8] + a;
	y[9] = y[9] - a;
	y[10] = y[10] + a;
	y[11] = y[11] - a;

	if (y[0] > 100) {y[0] = 0;}
	if (y[1] < 0) {y[1] = 100;}
	if (y[2] > 200) {y[2] = 100;}
	if (y[3] < 100) {y[3] = 200;}
	if (y[4] > 300) {y[4] = 200;}
	if (y[5] < 200) {y[5] = 300;}
	if (y[6] > 400) {y[6] = 300;}
	if (y[7] < 300) {y[7] = 400;}
	if (y[8] > 500) {y[8] = 400;}
	if (y[9] < 400) {y[9] = 500;}
	if (y[10] > 600) {y[10] = 500;}
	if (y[11] < 500) {y[11] = 600;}

	if (x > width) {
		x = 0;
		y[0] = 0;
		y[1] = 100;
		y[2] = 100;
		y[3] = 200;
		y[4] = 200;
		y[5] = 300;
		y[6] = 300;
		y[7] = 400;
		y[8] = 400;
		y[9] = 500;
		y[10] = 500;
		y[11] = 600;
		background(#000000);
	}

	//if (frameCount % 12 == 0 && frameCount < 600) saveFrame("render/image-####.gif");
}