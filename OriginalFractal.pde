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

public void sierpinski(int x, int y, int len) 
{
  ellipse(x, y, len, len);
  if (len>10){
    fill(216, 61, 61);
    sierpinski(x, y, len/2);
    fill(133, 61, 216);
    sierpinski(x+len/2, y+len/3, len/2);
    fill(237, 131, 50);
     sierpinski(x-len/2, y+len/3, len/2);
    }
    //if(len>450)
    //fill(135, 84, 203);
    //else if(len>200)
    //fill(97, 241, 247);
    //sierpinski(x, y-len/2, len/2);
    //sierpinski(x, y+len/2, len/2);
  }

public int rCol(int x){
  return (int)(Math.random()*255);
}

public void keyPressed(){
  if(key=='o')
  d+=30;
  if(key=='p'&&d>5)
  d-=30;
}
