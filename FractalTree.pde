private float fractionLength = .8; 
private int smallestBranch = 10; 
private float branchAngle = .2; 
private float changeX;
private float changeY;
private float angle;
private float firstBranch;
public void setup() 
{   
	size(640,480);    
	background(0);
} 
public void draw() 
{      
	stroke(0,255,0);   
	line(320,480,320,380);
	angle = (float)(Math.random()*(PI/2) + PI/4);
	firstBranch = (float)(Math.random()*10 + 89);
	drawBranches(320,380,firstBranch,angle);
} 
public void drawBranches(float x,float y, float branchLength, float angle) 
{   
	if(branchLength<=2){
		//ellipse((float)x,(float)y,(float)5,(float)5);
		ellipse(0,0,1,1);
	} else {
		changeX = (float)(branchLength*Math.cos(angle));
		changeY = (float)(branchLength*Math.sin(angle));
		line(x,y,x+changeX,y-changeY);
		line(x,y,x-changeX,y-changeY);
		drawBranches(x+changeX,y-changeY,(float)(branchLength/(Math.random()*1.5+1)),angle+branchAngle);
		drawBranches(x-changeX,y-changeY,(float)(branchLength/(Math.random()*1.5+1)),angle-branchAngle);
	} 
} 
