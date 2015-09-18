 //declare bacteria variables here   
 Bacteria [] colony = new Bacteria [300];
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(600, 600);
 	background(0);
 	for(int i = 0; i< colony.length; i++)
 	{
 		colony[i]= new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria   \
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myX,myY,myColor,mySize;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*601);
 		myY = (int)(Math.random()*601);
 		myColor = (int)(Math.random()*256+1);
 		mySize = (int)(Math.random()*15+1);
 	}
 	void move()
 	{
 		if(myX < mouseX)
 		{
 			myX = myX + (int)(Math.random()*6) - 1;
 		}
 		else if(myX > mouseX)
 		{
 			myX = myX + (int)(Math.random()*2) - 2;
 		}
 		else 
 		{
 			myX = myX + (int)(Math.random()*6) - 2;	
 		}
 		if(myY < mouseY)
 		{
 			myY = myY + (int)(Math.random()*6) - 1;
 		}
 		else if(myY > mouseY)
 		{
 			myY = myY + (int)(Math.random()*2) - 2;
 		}
 		else 
 		{
 			myY = myY + (int)(Math.random()*7) - 2;	
 		}
		
 	}
 	void show()
 	{
 		noStroke();
 		fill(random(0, 255),myColor,myColor);
 		ellipse(myX, myY, mySize, mySize);
 	}
 }    
