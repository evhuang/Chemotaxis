 Bacteria [] colony;
 //declare bacteria variables here   
 void setup()   
 {     
 	size(800,800);
 	colony = new Bacteria[15];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 	//move and show the bacteria 
 }  
 class Bacteria    
 {     
 	int bactX, bactY;
 	Bacteria()
	{	
 	bactX = (int)(Math.random() * 601);
 	bactY = (int)(Math.random() * 601);
 	}
   	void move()
    {
 	bactX = bactX + (int)(Math.random() * 10 - 5);
 	bactY = bactY + (int)(Math.random() * 10 - 5);
    }
	void show()
    {
    	fill(179,70,70,(int)(Math.random()*255));
    	ellipse(bactX,bactY,25,25);
    }
}
//fireflies
