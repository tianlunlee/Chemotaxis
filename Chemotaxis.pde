
Bacteria [] colony = new Bacteria[100];

int initX;
int initY;
int i =0;


 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(400, 400);
 	initX = (int)(Math.random()*400);
 	initY = (int)(Math.random()*400);
 		for ( int i = 0; i < colony.length; i ++) {

  		colony[i] = new Bacteria(initX ,initY,50);
  		
  		

  		}


 }
 void draw()   
 {    
 	background(101);
 	//move and show the bacteria 

 	for ( int i = 0; i < colony.length; i ++) {
 		colony[i].move();
		colony[i].show();	
 		

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