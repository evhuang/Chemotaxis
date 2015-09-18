Firefly [] colony;
 //declare bacteria variables here   
 void setup()   
 {     
 	size(900,900);

 	colony = new Firefly[50];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Firefly();
 	}
 }   
 void draw()   
 {    
 	background(23,16,68); //night sky
 	fill(243,234,143);
 	ellipse(760,160,150,150); //moon
 	fill(0, 71, 0);
 	rect(0,750,900,150); //ground
 	fill(77);
 	beginShape(); //mountains
 	vertex(0,750);
 	vertex(300,500);
 	vertex(600,625);
 	vertex(760,600);
 	vertex(900,750);
 	endShape();
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 	//move and show the bacteria 
 }  
 class Firefly    
 {     
 	int flyX, flyY;
 	Firefly()
	{	
 	flyX = (int)(Math.random() * 901);
 	flyY = (int)(Math.random() * 901);
 	}
   	void move()
    {
 	flyX = flyX + (int)(Math.random() * 10 - 5);
 	flyY = flyY + (int)(Math.random() * 10 - 5);
    }
	void show()
    {
    	noStroke();
    	fill(255, 255, 102,(int)(Math.random()*255));
    	ellipse(flyX,flyY,10,10);
    }
}
