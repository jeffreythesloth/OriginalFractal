public void setup()
{
   size(500, 500);
   rectMode(CENTER);
}
public void draw()
{
  background(115,115,160);
  myFractal(20, 20, 500);
}
public void myFractal(int x, int y, int siz)
{
 if(siz <= 50)
   {
     rect(x, y, siz, siz);
   }
  else
   {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myFractal(x+(siz/4), y, siz/2); //top
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myFractal(x+(siz/4), y+(siz/2), siz/2); //bottom
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myFractal(x, y+(siz/4), siz/2);//left
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myFractal(x+siz/2, y+(siz/4), siz/2);//right
   }
}