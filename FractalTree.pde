private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .38;  
public void setup() 
{   
  size(640,600);    
  noLoop(); 
} 
public void draw() 
{   
  background(218,236,242);   
  stroke(255,72,179);   
  line(320,480,320,380);   
  drawBranches(320,380,100,3*Math.PI/2);  
  fill(149,227,149);
  rect(0,480,640,600);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
if(branchLength<smallestBranch){
return;
}

  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  fill(255,191,228);
  ellipse(endX1,endY1,5,5);
  ellipse(endX2,endY2,5,5);
  

drawBranches(endX1,endY1,branchLength, angle1);
drawBranches(endX2,endY2,branchLength,angle2);

   }

