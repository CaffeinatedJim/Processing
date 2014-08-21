void setup() {
    size(1280, 720);
    smooth(8);
    rectMode(CENTER);
    strokeWeight(20);
    strokeCap(SQUARE);
    frameRate(30);
    noFill();
    stroke(#000000);
}

float a = 0;
float b = 50;

void draw() {
    translate(440,-360);
    rotate(QUARTER_PI);
    float x = width/2;
    float y = height/2;

    if (a < 50) {
        background(#FF0000);
        rect(x,y,a,a);
        rect(x,y,a+b,a+b);
        rect(x,y,a+b*2,a+b*2);
        rect(x,y,a+b*3,a+b*3);
        rect(x,y,a+b*4,a+b*4);
        rect(x,y,a+b*5,a+b*5);
        rect(x,y,a+b*6,a+b*6);
        rect(x,y,a+b*7,a+b*7);
        rect(x,y,a+b*8,a+b*8);
        rect(x,y,a+b*9,a+b*9);
        rect(x,y,a+b*10,a+b*10);
        rect(x,y,a+b*11,a+b*11);
        rect(x,y,a+b*12,a+b*12);
        rect(x,y,a+b*13,a+b*13);
        rect(x,y,a+b*14,a+b*14);
        rect(x,y,a+b*15,a+b*15);
        rect(x,y,a+b*16,a+b*16);
        rect(x,y,a+b*17,a+b*17);
        rect(x,y,a+b*18,a+b*18);
        rect(x,y,a+b*19,a+b*19);
        rect(x,y,a+b*20,a+b*20);
        rect(x,y,a+b*21,a+b*21);
        rect(x,y,a+b*22,a+b*22);
        rect(x,y,a+b*23,a+b*23);
        rect(x,y,a+b*24,a+b*24);
        rect(x,y,a+b*25,a+b*25);
        rect(x,y,a+b*26,a+b*26);
        rect(x,y,a+b*27,a+b*27);
        rect(x,y,a+b*28,a+b*28);
        a++;
    }

    else {
        a = 0;
    }
    
    saveFrame("render/0002-####.gif");
}