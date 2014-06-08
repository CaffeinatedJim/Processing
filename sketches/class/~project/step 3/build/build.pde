HDrawablePool pool;
HColorPool colors;

void setup(){
	size(1280,720);
	H.init(this).background(#FFFFFF);
	smooth();

	colors = new HColorPool()
		.add(#002061)
		.add(#000153)
		.add(#0C387F)
		.add(#00457D)
		.add(#025686)
		.add(#19659D)
		.add(#155883)
		.add(#0C4987)
		.add(#014666)
		.add(#306B8D)
		.add(#016A81)
		.add(#024A56)
		.add(#025769)
		.add(#0B5B57)
		.add(#2D6568)
		.add(#9FC2B1)
		.add(#B0D5BF)
		.add(#01929F)
		.add(#036368)
		.add(#1E7CAC)
		.add(#19657F)
		.add(#145864)
		.add(#156465)
		.add(#26596B)
		.add(#4B8EBF)
		.add(#42729D)
		.add(#5881A6)
		.add(#7399C4)
		.add(#91BBF1)
		.add(#A2C6FF)
		.add(#A2CEFC)
		.add(#ADCEF5)
		.add(#B6CEFD)
		.add(#B8CBED)
		.add(#C8D5F3)
	;

	pool = new HDrawablePool(144);
	pool.autoAddToStage()
		.add(new HShape("up-triangle.svg"))
		.add(new HShape("down-triangle.svg"))
		.add(new HShape("right-triangle.svg"))
		.add(new HShape("left-triangle.svg"))

		.layout(
			new HGridLayout()
			.startX(0)
			.startY(0)
			.spacing(80,80)
			.cols(16)
		)

		.onCreate(
			new HCallback() {
				public void run(Object obj) {
					HShape d = (HShape) obj;
					d
						.enableStyle(false)
						.strokeWeight(5)
						.strokeCap(ROUND)
						.strokeJoin(ROUND)
						.stroke(#FFFFFF, 255)
						.fill(#FFFFFF, 150)
						//.anchorAt(H.CENTER)
						//.rotate( (int)random(4) * 90 )
						.size( 80 + ( (int)random(8) * 40 ) ) // 40, 80, 120, 160, 200, 240, 280, 320
					;
					d.randomColors(colors.fillAndStroke());
				}
			}
		)
		.requestAll()
	;

	H.drawStage();
}