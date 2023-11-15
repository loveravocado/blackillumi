float ch1;
int time, growTime, flowerNum, k;
boolean judge = false;
boolean subJudge = false;
float particlex, particley, subJointx, angle, suby, thrdJointx, thrdy;
int particleNum = 300;
float[] particlexList = new float[particleNum];
float[] particleyList = new float[particleNum];
float[][] flowerList = new float[1000][4];
color []colorpattern = {#ef562f, #f9d531, #a7cc51, #4bafdd, #bd4ee5};
int width = 1200;
int height = 1200;
int startx = width/2 - 50;
int starty = height;
float jointx = startx;

import processing.io.*;
I2C i2c;

void setup(){
  i2c = new I2C(I2C.list()[0]);
  size(1200, 1200);
  colorMode(RGB, 255);
  background(20, 21, 38);
  frameRate(40);
  particle();
  moon();

  
  
}

void draw(){
  time++;
  tsl2572();
  println(ch1);
  if(ch1 > 30){

    growFlower();
    growTime+=2;
  }
  
  
  if(time % 84 >= 48){
    for(int j=0; j<particleNum; j++){
      fill(20, 21, 38);
      noStroke();
      circle(particlexList[j], particleyList[j], 5);
    }
  }else{
    for(int j=0; j<particleNum; j++){
      fill(255);
      noStroke();
      circle(particlexList[j], particleyList[j], 3);
    }
  }

    
  for(int k=0; k<flowerNum; k++){
    fill(colorpattern[int(flowerList[k][3])]);
    flower(flowerList[k][0], flowerList[k][1], flowerList[k][2]);
    
  }
  
}
  

void particle(){
  fill(20, 21, 38);
  noStroke();
  
  
  for(int i=0; i<particleNum; i++){
    particlex = 600;
    particley = 600;
    while(300 > dist(width/2, height/2, particlex, particley)){;
      particlex = random(0, width);
      particley = random(0, height);
    }
    
    particlexList[i] = particlex;
    particleyList[i] = particley;
    circle(particlex, particley, 3);
  }
}

void moon(){
  fill(250, 248, 130);
  circle(width/2, height/2, 400);

}
