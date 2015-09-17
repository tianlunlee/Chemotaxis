
Bacteria [] colony = new Bacteria[25];





 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(400, 400);
 	
 	
 }
 void draw()   
 {    
 	background(101);
 	//move and show the bacteria 
 	for(int i = 0; i < colony.length; i++){

  		colony[i] = new Bacteria(i+150,i+150,50);
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
 		bactX += (int)(Math.random()*3) -1;
 		bactY += (int)(Math.random()*3) -1;
 	}
 }    