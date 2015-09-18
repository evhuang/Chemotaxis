 Firefly [] colony;
 //declare bacteria variables here   
 void setup()   
 {     
 	size(900,900);

 	colony = new Firefly[75];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Firefly();
 	}
 }   
 void draw()   
 {    
 	//night sky
 	background(23,16,68);
 	//moon 
 	fill(243,234,143);
 	ellipse(760,160,150,150); 
 	//ground
 	fill(0, 71, 0);
 	rect(0,750,900,150); 
 	//mountains
 	fill(77);
 	beginShape(); 
 	vertex(0,750);
 	vertex(300,500);
 	vertex(600,625);
 	vertex(760,600);
 	vertex(900,750);
 	endShape();
 	//Big Dipper
 	fill(255,255,255,(int)(Math.random() * 256));
 	ellipse(350,100,5,5);
 	ellipse(400,150,5,5);
 	ellipse(405,210,5,5);
 	ellipse(406,280,5,5);
 	ellipse(375,320,5,5);
 	ellipse(408,380,5,5);
 	ellipse(450,370,5,5);
 	stroke(255);
 	line(350,100,400,150);
 	line(400,150,405,210);
 	line(405,210,406,280);
 	line(406,280,375,320);
 	line(375,320,408,380);
 	line(408,380,450,370);
 	line(450,370,406,280);
 	frameRate(30);
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
