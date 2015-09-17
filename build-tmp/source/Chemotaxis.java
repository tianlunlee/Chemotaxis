import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {


Bacteria [] colony = new Bacteria[100];

int initX;
int initY;
int i =0;


 //declare bacteria variables here   
 public void setup()   
 {     
 	//initialize bacteria variables here  
 	size(400, 400);
 	initX = (int)(Math.random()*400);
 	initY = (int)(Math.random()*400);
 		for ( int i = 0; i < colony.length; i ++) {

  		colony[i] = new Bacteria(initX ,initY,50);
  		
  		

  		}


 }
 public void draw()   
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

 	public void show() {
 		fill(bactCol, bactX, bactY);
 		ellipse(bactX,bactY,5,5);

 	}

 	public void move(){
 		// x component
 		if (mouseX < bactX) 
 		{
 			bactX += (int)(Math.random()*3) -1.5f;
 		} 	

 		else if (mouseX > bactX) {
 			bactX += (int)(Math.random()*3) +1.5f;
 		} 	

 		else if (mouseX == bactX)
		{
 			bactX += (int)(Math.random()*3) -1;
 		}

 		//y component

 		if ( mouseY < bactY) 
 		{
 			bactY += (int)(Math.random()*3) - 1.5f;
 		}

 		else if (mouseY > bactY) {
 			bactY += (int)(Math.random()*3) +1.5f;
 		}

 		else if (mouseY == bactY)
 		{
 			bactY += (int)(Math.random()*3) -1;
 		}


 	}
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
