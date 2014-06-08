
void setup() {
	size(1280,720);
	H.init(this).background(#FFFFFF);
	smooth();

	HColorPool colors = new HColorPool(#FFFFFF, #F7F7F7, #ECECEC, #333333, #0095a8, #00616f, #FF3300, #FF6600);

	HShape d = new HShape("flower_drawing_2.svg");
	H.add(d)
		.strokeWeight(1)
		.stroke(#111111)
		.noFill()
		.anchorAt(H.CENTER)
		.loc(width/2,height/2)
		.scale(1)
	;

	d.randomColors( colors.fillOnly() );

	H.drawStage();

}