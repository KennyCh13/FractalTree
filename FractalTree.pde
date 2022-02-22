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
  line(320,480,320,420);   
  //drawBranches(??,??,??,??);  //will add later 
  drawBranches(320, 420, 69, -PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  //your code here  
  double a1 = angle + branchAngle;
  double a2 = angle - branchAngle;
  int xE1 = (int)(x + branchLength * (Math.cos(a1)));
  int yE1 = (int)(y + branchLength * (Math.sin(a1)));
  int xE2 = (int)(x + branchLength * (Math.cos(a2)));
  int yE2 = (int)(y + branchLength * (Math.sin(a2)));
    line(x,y,xE1,yE1);
    line(x,y,xE2,yE2);
  if(branchLength > smallestBranch){
  drawBranches(xE1, yE1, branchLength * fractionLength, a1);
  drawBranches(xE2, yE2, branchLength * fractionLength, a2);
  }
} 
