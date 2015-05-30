void setup() {
    size(1280, 720, P3D);
    smooth(8);
    ellipseMode(CENTER);
    strokeWeight(20);
    noFill();
    frameRate(30);
}

int a = 0;

void draw() {
    background(#000000);
    for(int a = 0; a < width; a++){
        float b = (frameCount*2+(a*100))/1000.0 % 10.0;
        stroke(200, 0, 0, 10);
        line(width/2, 0, width/2, height);
        stroke(155, 0, 0, 5);
        line(0, height/2, width, height/2);
        stroke(155, 0, 0, 40);
        ellipse(width/2,height/2,width*1.5,b*1000);
        stroke(200, 0, 0, 60);
        ellipse(width/2,height/2,b*1000,height*1.5);
    }
    saveFrame("render/the-globe-red-####.gif");
}