int startX = 0+(int)(Math.random()*15);
int startY = 150;
int endX = 0;
int endY = 150;
double i = 0;
int c = 100;
void setup()
{

  strokeWeight(5);
  background(10,10,60);
  size(300,300);

    
}
float x = 0.0;
int y1 = 270;
int y2 = 100;
int y3 = 0;
void draw()
{

  noStroke();
  fill(10,10,60);
  rect(0,0,300,300);


// want to make gradient  -  need help


  for(int j=0; j<100; j++)
  {
    stroke(255,255,255,c);
    line(0,j,300,j);
    c-=1;
  }
  
  

  
  //fish
  
  //yellow
  pushMatrix();
  fill(y1,y2,y3);
    
  //shape
  translate(x,0);
  x= x+.1;
  if(x>300)
  x=0;
  ellipse(70, 150, 100, 55);
  x = x + 1;
  if(x>300)
  x = 0;
  
  //tail
  if(i%60>30)
    triangle(0, 125, 0, 175, 75, 150);
  else
    triangle(10, 125, 10, 175, 75, 150);
 
 
  //skeleton white body
  if(mousePressed==true)
    fill(255);
  else 
    fill(y1,y2,y3);
  ellipse(70,150,90,45);
  
  //yellow rectangle covers
  fill(y1,y2,y3); 
  rect(50,127, 45,46);
  rect(40,130, 20, 40);
  
  //ribs
  if(mousePressed==true)
    fill(255);
  else 
    fill(y1,y2,y3);
  rect(30, 147, 70, 5);
  rect(45, 130, 3, 40); 
  rect(52, 127, 3, 45);
  rect(59, 126, 3, 47);
  rect(66, 125, 3, 48);
  rect(73, 125.3, 3, 47.5);
  rect(80, 126, 3, 46);
  rect(87, 128, 3, 43);
  
  //skeleton tail
  if(i%60>30)
  triangle(5, 130, 5, 170, 35, 150);
  else
  triangle(15, 135, 15, 165, 45, 150);
  
  //cover for yellow cover
  noStroke();
   if(!(i%60>30))
  {

    fill(10,10,60);
    rect(0,125, 10,100);
  }
  i=i+3;
 
  //dead eyes
  strokeWeight(1);
  if(mousePressed==false)
  noStroke();
  else
  stroke(0);
  line(100,145,110,150);
  line(100, 150, 110, 145);
  
  //live eyes
  noStroke();
  if(mousePressed==false)
    fill(255);
  else
    fill(255,255,255,0);
  ellipse(102,147,10,10);
  if(mousePressed==false)
    fill(0);
  else
   fill(0,0,0,0);
  ellipse(104, 149, 3, 3);
 
  popMatrix();
  
  //lightning
  strokeWeight(2+(int)(Math.random()*5));
  stroke(200 + (int)(Math.random()*55),200 + (int)(Math.random()*55), 100+(int)(Math.random()*10));
  while(endX<300)
  {
    line(startX, startY, endX, endY);
    startX = endX;
    endX = endX + (int)(Math.random()*30);
    startY = endY;
    endY = endY + ((int)(Math.random()*30)-15);
  }
  
}
void mousePressed()
{

  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
