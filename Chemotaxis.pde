 Bacteria Coccus;
 Bacteria Bacillus;
 //declare bacteria variables here   
 void setup()   
 {     
 	size(800,800);
 	Coccus = new Bacteria();
 	Bacillus = new Bacteria();
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	Coccus.move();
 	Coccus.show();
 	Bacillus.move();
 	Bacillus.show();
 }  
 class Bacteria    
 {     
 	int bactX, bactY;
 	Bacteria()
	{	
 	bactX = 400;
 	bactY = 400;
 	}
   	void move()
    {
 	bactX = bactX + (int)(Math.random() * 20 - 10);
 	bactY = bactY + (int)(Math.random() * 20 - 10);
    }
	void show()
    {
    	fill(255,255,0);
    	ellipse(bactX,bactY,50,50);
    }
}
