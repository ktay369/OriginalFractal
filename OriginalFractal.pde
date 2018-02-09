PImage img;
int d;
public void setup()
{
  size(500, 500);
  d = 50;
}
public void draw()
{
  background(0);
  sierpinski(250,250, d);
  //sierpinski2(250,250,500-mouseX);
  //img = loadImage("car.png");
  //int x = 0;
  //int y = 500;
  //int len = 500;
  //triangle(x,y,x+len,y,len/2,y-len);
  //imageMode(CENTER);
  //image(img, 250, 250, img.width/(mouseX+.01), img.height/(mouseX+0.01));
}

public void keyPressed(){
  if(key=='o')
  d+=30;
  if(key=='p'&&d>5)
  d-=30;
}
