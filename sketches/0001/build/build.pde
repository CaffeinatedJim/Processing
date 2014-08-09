void setup() {
    size(1280, 720, P3D);
    background(#000000);
    smooth(8);
    ellipseMode(CENTER);
    strokeWeight(2);
    noFill();
    frameRate(30);
}

color[] palette = {#ff00ff,#ff0000,#ff007f,#ff7f00,#ffff00,#7fff00,#00ff00,#00ff7f,#00ffff,#007fff,#0000ff,#7f00ff};

int a = 0;
int c = 0;

void draw() {
    background(#000000);
    for(int a = 0; a < width; a = a + 1){
        if (c < palette.length) {stroke(palette[c]);}
        else {c = 0;}
        float b = (frameCount*2+(a*100))/1000.0 % 10.0;
        ellipse(width/2,height/2,b*100,height-50);
        c++;
    }
    // saveFrame("render/0001-####.gif");
}