class Circle
{
  int len;
  int posX;
  int posY;
public Circle(){
  len = mouseX*8+700;
  posX = 250;
  posY = 250;
}

public void sierpinski2(int x, int y, int len) 
{
  
  ellipse(x, y, len, len);
  if (len>20){
    //sierpinski(x-len/2, y, len/2);
    //sierpinski(x+len/2, y, len/2);
    
    sierpinski2(x, y-len/2, len/2);
    sierpinski2(x, y+len/2, len/2);
    if(len>500){
      fill(242, 183, 236);
    }
    else if(len>400){
      fill(185, 183, 242);
    }
  }
}
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
