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
int[] jim = y;

void draw() {
	x = x + a;
	for (int i = 0; i < y.length; ++i) {
		fill(palette[i],200);
		rect(x,y[i],b,b);

		if (boolean(i % 2)) {
			y[i] = y[i] - a;
			if(y[i] < y[i-1]){
				
				y[i] = (i == y.length-1) ? jim[i] : jim[i+1];
			}
			
		}
		else {
			y[i] = y[i] + a;
			if(y[i] > y[i+1]){
				println(i);
				y[i] = (i == 0) ? jim[i] : jim[i-1];
			}
		}

}
/*
	if (y[0] > 100) {
		y[0] = 0;
	}
	if (y[1] < 0) {
		y[1] = 100;
	}
	if (y[2] > 200) {
		y[2] = 100;
	}
	if (y[3] < 100) {
		y[3] = 200;
	}
	if (y[4] > 300) {
		y[4] = 200;
	}
	if (y[5] < 200) {
		y[5] = 300;
	}
	if (y[6] > 400) {
		y[6] = 300;
	}
	if (y[7] < 300) {
		y[7] = 400;
	}
	if (y[8] > 500) {
		y[8] = 400;
	}
	if (y[9] < 400) {
		y[9] = 500;
	}
	if (y[10] > 600) {
		y[10] = 500;
	}
	if (y[11] < 500) {
		y[11] = 600;
	}*/
 
    //this works to reset the program
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

	//if (frameCount % 12 == 0 && frameCount < 600) saveFrame("render/image-reverse-####.gif");
}