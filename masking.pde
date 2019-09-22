import java.io.File;
PImage photo[], maskImage[],Avg[];
PImage masked[];
color c1,c2,c3;
//PGraphics Avg[];

//File dir = new File("folderName");
//File [] files = dir.listFiles();

void setup() {
  size(256, 256);
  background(256);
  
  photo = new PImage[9];
  maskImage = new PImage[9];
  masked = new PImage[9];

 
  
  for(int i=0;i<9;i++)
  {photo[i] = loadImage("lge_"+i+".png");
  maskImage[i] = loadImage("mask_lge_"+i+".png");
  photo[i].mask(maskImage[i]);
  }
 
 
}

void draw() {
  for(int i=0;i<9;i++)
  {image(photo[i], 0, 0);
    photo[i].save("Slice"+i+".png");
    
  }
  
  
  
  
  //image(photo, width/4, 0);
 // noLoop();
}
