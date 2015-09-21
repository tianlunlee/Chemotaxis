
Bacteria [] colony = new Bacteria[100];

int initX;
int initY;
int i = 0;
int colorV;
Apple fruit;
int growth = 0;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here  

 	size(400, 400);
 	frameRate(20);
 	
 	
 		for ( int i = 0; i < colony.length; i ++) {
 			initX = (int)(Math.random()*400);
	 		initY = (int)(Math.random()*400);
			colorV = (int)(Math.random()*256);
	  		colony[i] = new Bacteria(initX ,initY, colorV);

  		}
	

 }
 void draw()   
 {    
 	background(101);
 	//move and show the bacteria 
	fruit = new Apple(mouseX, mouseY, 25);
	fruit.show();
	//find a way to make the ellipse grow
		if (get(mouseX, mouseY) != color(255, 0 ,0)) {

 			growth += 0.1;
 		}

 	for ( int i = 0; i < colony.length; i ++) {
 		colony[i].move();
		colony[i].show();	
 		
  	}
  	


 }   
 class Apple 
 {
 	int aX, aY, aR;
 	Apple(int x, int y, int r) {
 		aX = x;
 		aY = y;
 		aR = r ;
 	}
 	void show() {
 		if (mousePressed == true) {
 			growth = 0;
 		}
 		if (growth < 20) {
 		fill(255, 0, 0);
 		ellipse( aX, aY, aR + growth, aR + growth);
 	}
 	}

 }


  
 class Bacteria    
 {     
 	//lots of java!
 	int bactX, bactY, bactCol;
 	Bacteria(int x, int y, int col) {
 		bactX = x;
 		bactY = y;
 		bactCol = col;
 	}

 	void show() {
 		fill(bactCol, bactX, bactY);
 		ellipse(bactX,bactY,5,5);

 	}

 	void move(){
 		// x component
 		if (mouseX < bactX) 
 		{
 			bactX += (int)(Math.random()*3) -1.5;
 		} 	

 		else if (mouseX > bactX) {
 			bactX += (int)(Math.random()*3) +1.5;
 		} 	

 		else if (mouseX == bactX)
		{
 			bactX += (int)(Math.random()*3) -1;
 		}

 		//y component

 		if ( mouseY < bactY) 
 		{
 			bactY += (int)(Math.random()*3) - 1.5;
 		}

 		else if (mouseY > bactY) {
 			bactY += (int)(Math.random()*3) +1.5;
 		}

 		else if (mouseY == bactY)
 		{
 			bactY += (int)(Math.random()*3) -1;
 		}


 	}
 }    