int startX = 150;
int startY = 0;
int endX = 150;
int endY = 300;

void setup()
{
  frameRate(20);
  size(300, 300);
  strokeWeight(5);
  background (177, 191, 214);
  frameRate(5);
}
void draw()
{
  
  //raindrops
  
  noStroke();
  fill (177, 191, 214); // color of background
  rect (0, 0, 500, 500);
  fill(8, 159, 250); //color of raindrop
  for (int a = 0; a <=300; a += 10)
    ellipse(a, (int)(Math.random() * 300)+70, 5, 5);
    
    
  fill (177, 191, 214, 35);
  noStroke();
  rect (0, 0, 300, 300);
  stroke (255, (int)(Math.random() * 200), (int)(Math.random() * 200) + 20);
  while (endX <= 300) {
    endY = startY + (int)(Math.random() * 10);
    endX = startX + (int)(Math.random() * 19)-9;
    line (startX, startY, endX, endY);  
    startX=endX;
    startY=endY;
   
  }
 
  //clouds
  //make so every click=clouds move
  
  fill (148, 156, 170);
  noStroke();
  ellipse(150, 10, 500, 40); // big top cloud
  for (int i = (int)(Math.random()*25); i <= 500; i += 40)
    ellipse(i, 35, 70, 50);
}


void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 300;
  redraw();
}
