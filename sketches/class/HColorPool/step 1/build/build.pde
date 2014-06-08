HRect d;
HColorPool colors;

void setup(){
	size(500,500);
	H.init(this).background(#FFFFFF);
	smooth();
	frameRate(8);
}



void draw() {
	
	colors = new HColorPool(#002061,#000153,#0C387F,#00457D,#025686,#19659D,#155883,#0C4987,#014666,#306B8D,#016A81,#024A56,#025769,#0B5B57,#2D6568,#9FC2B1,#B0D5BF,#01929F,#036368,#1E7CAC,#19657F,#145864,#156465,#26596B,#4B8EBF,#42729D,#5881A6,#7399C4,#91BBF1,#A2C6FF,#A2CEFC,#ADCEF5,#B6CEFD,#B8CBED,#C8D5F3);

	for (int i = 0; i<20; i++){
		background(#FFFFFF);
		d = new HRect();
		d
			.strokeWeight(2)
			.stroke(#FFFFFF)
			.fill( colors.getColor(), 200 )
			//.size( (int)random(50,50) )
			.size(i*8)
			//.rotate( (int)random(90) )
			.loc( (int)random(width), (int)random(height) )
			.anchorAt(H.CENTER)
		;
		H.add(d);
	}

	H.drawStage();
		saveFrame("image-####.gif");
}