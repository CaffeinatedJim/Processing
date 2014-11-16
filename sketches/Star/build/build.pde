void setup() {
    size(600, 600, P2D);
    background(#000000);
    smooth(8);
}

int a = 0;

void draw() {

    for (int a = 0; a < width; ++a) {

        pushMatrix();
            translate(width/2,height/2);
            rotate(a);

            stroke(#FFFFFF);
            line(0, height/2, width, height/2);
        popMatrix();
        
    }

    if (a > width) {
        a = 0;
    }

}