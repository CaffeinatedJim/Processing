void setup() {
    size(600, 600, P2D);
    smooth(8);
    rectMode(CENTER);
    strokeWeight(20);
    strokeJoin(MITER);
    strokeCap(SQUARE);
    frameRate(12);
    noFill();
}

int a = 0;
int b = 20;

void draw() {
    if (a < width) {
        stroke(#FFFFFF);     
        background(#000000);
        rect(width/2,height/2,a,a);
        rect(width/2,height/2,a-(b*4),a-(b*4));  
        rect(width/2,height/2,a-(b*8),a-(b*8));
        rect(width/2,height/2,a-(b*12),a-(b*12));   
        rect(width/2,height/2,a-(b*16),a-(b*16));
        rect(width/2,height/2,a-(b*20),a-(b*20));   
        rect(width/2,height/2,a-(b*24),a-(b*24));
        rect(width/2,height/2,a-(b*28),a-(b*28));   
        rect(width/2,height/2,a-(b*32),a-(b*32));
        rect(width/2,height/2,a-(b*36),a-(b*36));    
        rect(width/2,height/2,a-(b*40),a-(b*40));
        rect(width/2,height/2,a-(b*44),a-(b*44));   
        rect(width/2,height/2,a-(b*48),a-(b*48));
        rect(width/2,height/2,a-(b*52),a-(b*52));    
        rect(width/2,height/2,a-(b*56),a-(b*56));
        rect(width/2,height/2,a-(b*60),a-(b*60));
        a = a + b;
    }
    else {
        a = 0;
    }
    //saveFrame("render/white-0002-####.gif");
}