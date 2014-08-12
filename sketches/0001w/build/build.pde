void setup() {
    size(640, 360, P3D);
    background(#000000);
    smooth(8);
    rectMode(CENTER);
    ellipseMode(CENTER);
    strokeWeight(20);
    noFill();
    frameRate(30);
}

int a = 0;

void draw() {
    background(#000000);
    stroke(#EDEDED);
    rect(width/2,height/2, 1, height);
    for(int a = 0; a < width; a++){
        stroke(#FFFFFF);
        float b = (frameCount*2+(a*100))/1000.0 % 10.0;
        ellipse(width/2,height/2,b*1000,height*1.5);
    }
    //saveFrame("render/0001w-####.gif");
}