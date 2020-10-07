float scale;

void setup(){
  size(800,800);
  
  scale=100;
  
  for (float i=0; i<10; i++)
  {
  targets(random(10,750)+i,random(10,750)+i);
  
  /*if (i>=700){
    
  i=500;
  }*/
  
  
  }
}

void draw(){
  /*background (255,255,200);*/
 /* for (float i=0; i<3; i++)
  {
  targets(200+random(100)*i,200+random(100)*i);
  }
  */
  
}



void targets(float targetX,float targetY) 
{
  fill (255,70,50);
  ellipse(targetX,targetY,scale,scale);
  fill (255,255,255);
  ellipse(targetX,targetY,scale*3/4,scale*3/4);
  fill (255,70,50);
  ellipse(targetX,targetY,scale/2,scale/2);
  fill (255,255,255);
  ellipse(targetX,targetY,scale/4,scale/4);
}

/*void mouseClicked() {
    if (dist(targetX,targetY,mouseX,mouseY) <= scale/2) 
    {
       scale = random(0);
    }
    
    
  */
