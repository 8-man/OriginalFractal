public void setup()
{
   size(500, 500);
   //rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(250, 450, 500);
}
public void myFractal(int x, int y, int size)
{
  triangle(x + (size/2), y + size, x, y, x + size, y + (size/2));
  
  if(size > 2)
  {
    myFractal(x - size/2, y, size/2);
    myFractal(x + size/2, y, size/2);
    myFractal(x - size, y - size, size/2);
    myFractal(x + size, y - size, size/2);
    myFractal(x, y - size/2, size/2);
    myFractal(x, y + size/2, size/2);
  }
}