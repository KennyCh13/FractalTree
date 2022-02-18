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
  drawBranches(320, 540, 300, -PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  //your code here  
  double a1 = angle + branchAngle;
  double a2 = angle - branchAngle;
  int xE1 = (x + (int)branchLength * (int)(Math.cos(a1)));
  int yE1 = (y + (int)branchLength * (int)(Math.sin(a1)));
  int xE2 = (x + (int)branchLength * (int)(Math.cos(a2)));
  int yE2 = (y + (int)branchLength * (int)(Math.sin(a2)));
    line(x,y,xE2,yE2);
    line(x,y,xE1,yE1);
  if(branchLength > smallestBranch){
  drawBranches(xE1, yE1, branchLength * fractionLength, a1);
  drawBranches(xE2, yE2, branchLength * fractionLength, a2);
  }
} 
