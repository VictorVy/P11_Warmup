void setup()
{
  size(1000, 600, P2D);
  background(#50cfff);
  
  noStroke();

  beginShape(); //background gradient
  
  fill(#34B9E8);
  vertex(0, 0);
  vertex(width, 0);
  fill(#50cfff);
  vertex(width, 100);
  vertex(0, 100);
  
  endShape();
  
  fill(#eeff05);
  ellipse(800, 150, 125, 125); //sun
  
  drawMountain(250, 100, 0, 400, 550, 400); //mountains
  drawMountain(800, 150, 450, 400, 1000, 400);
  
  fill(#17b700);
  rect(0, 400, 1000, 600); //ground
  
  beginShape(); //ground gradient
  
  fill(#17b700);
  vertex(0, 550);
  vertex(width, 550);
  fill(#3B952D);
  vertex(width, height);
  vertex(0, height);
  
  endShape();
  
  drawGrassRow(44, 455, 4, 300); //grass
  drawGrassRow(121, 510, 3, 396);
  drawGrassRow(225, 570, 2, 525);

  noStroke();
  
  fill(#e0e0e0);
  arc(250, 300, 100, 100, PI, PI * 2); //head
  
  fill(#fefefe);
  rect(200, 300, 100, 125, 0, 0, 2, 2); //body
  
  fill(#e0e0e0);
  rect (190, 305, 15, 25); //shoulder joints
  rect (295, 305, 15, 25);
  
  fill(#4066C1);
  rect(167.5, 320, 10, 15);
  
  fill(#fefefe);
  rect(172.5, 295, 22.5, 50, 4, 2, 0, 4); //shoulders
  rect(305, 295, 22.5, 50, 2, 4, 4, 0);
  
  fill(#d4d2d3);
  rect(178, 345, 17, 75); //arms
  rect(305, 345, 17, 75);
  
  fill(#e6e1e2);
  quad(290, 425, 210, 425, 220, 440, 280, 440); //bottom
  
  fill(#fefefe);
  rect(172.5, 415, 22.5, 30, 4, 0, 0, 0); //ankles
  rect(305, 415, 22.5, 30, 0, 4, 0, 0);
  
  fill(#e6e1e2);
  quad(172.5, 445, 195, 445, 202, 475, 165, 475); //feet
  quad(305, 445, 327.5, 445, 335, 475, 298, 475);
  
  //details
  stroke(#333333); //gap
  strokeWeight(2.4);
  line(200, 300, 300, 300);
  
  noStroke(); //head
  fill(#4066C1);
  ellipse(250, 275, 35, 35);
  fill(#333333);
  ellipse(250, 275, 20, 20);
  fill(#fefefe);
  ellipse(254, 272, 5, 5);
  
  stroke(#4066C1); //body
  strokeWeight(8);
  line(230, 313, 270, 313);
  strokeWeight(6);
  line(230, 322, 240, 322);
  line(250, 322, 270, 322);
  line(230, 331, 250, 331);
  line(260, 331, 270, 331);
  fill(#4066C1);
  rect(227.5, 340, 20, 30, 4);
  stroke(#d4d2d3);
  strokeWeight(2);
  noFill();
  rect(210, 382.5, 80, 30, 2);
  
  noStroke(); //ankles
  fill(#4066C1);
  rect(187.5, 430, 7.5, 15);
  rect(305, 430, 7.5, 15);
  
  noLoop();
}

void drawMountain(int x1, int y1, int x2, int y2, int x3, int y3) //Draws a triangle with a gradient fill.
{
  beginShape();
  
  fill(#6F39BC);
  vertex(x1, y1);
  fill(#4600a5);
  vertex(x2, y2);
  vertex(x3, y3);
  
  endShape();
}

void drawGrassRow(int x, int y, int count, float spacing) //Draws a row of grass.
{
  for(int n = 0; n < count; n++)
  {
    float xPos = x + spacing * n;
    
    drawGrass((xPos == 0) ? x : xPos, y);
  }
}

void drawGrass(float x, int y) //Draws a patch of grass.
{
  beginShape(LINES);
  
  stroke(#5ED34D);
  strokeWeight(6);
  
  vertex(x, y);
  vertex(x - 1, y - 15);
  vertex(x - 1, y - 15);
  vertex(x - 6, y - 32);
  
  vertex(x - 8, y);
  vertex(x - 14, y - 16);
  
  vertex(x + 8, y);
  vertex(x + 10, y - 14);
  vertex(x + 10, y - 14);
  vertex(x + 16, y - 16);
  
  endShape();
}
