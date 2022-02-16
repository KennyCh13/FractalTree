private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  //drawBranches(??,??,??,??);  //will add later 
  drawBranches(100, 200, 300, 400);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  //your code here    
  if(x < 500)
  drawBranches(x + 1, y + smallestBranch, branchLength + fractionLength, angle + branchAngle);
} 
