import processing.sound.*;

SoundFile Break, complete; 

float [] xps = new float[8];
float [] yps = new float[8];
float [] shapes = new float[8];
float [] diameters = new float[8];

int seconds;


void setup(){
  size(800,800);
  for (int i=0; i<xps.length; i++){
    xps[i] = random(width);
  }
  for (int i=0; i<yps.length; i++){
    yps[i] = random(height);
  }
  for (int i=0; i<diameters.length; i++){
    diameters[i] = 100;
  }
   frameRate(100);
   
   Break = new SoundFile(this, "Break.mp3");
   complete =new SoundFile(this, "complete.mp3");

}

void draw(){
  background(200,230,255);
  
  for (int i=0; i<shapes.length; i++){
    fill(255,70,70);
    ellipse(xps[i], yps[i], diameters[i],diameters[i]);
    fill(255);
    ellipse(xps[i], yps[i], diameters[i]*3/4,diameters[i]*3/4);
    fill(255,70,70);
    ellipse(xps[i], yps[i], diameters[i]/2,diameters[i]/2);
    fill(255);
    ellipse(xps[i], yps[i], diameters[i]/4,diameters[i]/4);
    
    
    if (diameters[0] == 0 
    && diameters[1] == 0 
    && diameters[2] == 0 
    && diameters[3] == 0 
    && diameters[4] == 0 
    && diameters[5] == 0 
    && diameters[6] == 0 
    && diameters[7] == 0)
        {
         
         frameRate(0);
         textSize(100);
         fill(0,0,0,200);
         text("COMPLETE!",width/2 - 280 +5,(height/2)+5);
         fill(0,255,0);
         text("COMPLETE!",width/2 - 280,height/2);
         complete.play(1,0.05);
         
        }
    
  }
  timer();
}

void mouseClicked(){
  for (int i=0; i<xps.length; i++){
    for (int j=0; j<yps.length; j++){
       if ((dist(mouseX, mouseY, xps[i], yps[i]))<diameters[i]/2){
         diameters[i] = 0;
         Break.play(1,0.2);
        }
    }
        
    }
  }
  
void timer() {
  int milliseconds = (frameCount);
    textSize(32);
    fill(0,0,0);
    text(nf(seconds,2)+"."+nf(milliseconds,2),60,60);
    
    if (milliseconds == 99)
    {
     seconds += 1;
     milliseconds = 0;
     frameCount = 0;
    }
}
