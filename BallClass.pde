
size(800,800);
  x = (int)(Math.random()*width);
  y = (int)(Math.random()*height);
  x2 = (int)(Math.random()*width);
  y2 = (int)(Math.random()*height);  
  ellipse(x,y,diameter,diameter);
  ellipse(x2,y2,diameter,diameter);
  
}

public void draw(){
  background(200);
  ellipse(x,y,diameter,diameter);
  ellipse(x2,y2,diameter,diameter);  
  x += xd;
  y += yd;
  x2 += xd2;
  y2 += yd2;
  if(x>(800-diameter/2)){
    xd *= -1;
  }
   if(y>(800-diameter/2)){
    yd *= -1;
  }
  if(x<(0+diameter/2)){
    xd *= -1;
  }
   if(y<(0+diameter/2)){
    yd *= -1;
  }
  if(x2>(800-diameter/2)){
    xd2 *= -1;
  }
   if(y2>(800-diameter/2)){
    yd2 *= -1;
  }
  if(x2<(0+diameter/2)){
    xd2 *= -1;
  }
   if(y2<(0+diameter/2)){
    yd2 *= -1;
  }
  if(collision(x,y,x2,y2)<diameter){
    x *=-1;
    y *=-1;
    x2 *=-1;
    y2 *=-1;
  }
}
public int collision(int xa,int ya, int xb, int yb){
  int dist = (int)Math.sqrt((xb-xa)*(xb-xa)+(yb-ya)*(yb-ya));
  return dist;
}
