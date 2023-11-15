float ch0 = 20;
int time, growTime, flowerNum, k;
boolean judge = false;
boolean subJudge = false;
float particlex, particley, subJointx, angle, suby, thrdJointx, thrdy;
int particleNum = 100;
float[] particlexList = new float[particleNum];
float[] particleyList = new float[particleNum];
float[][] flowerList = new float[1000][4];
color []colorpattern = {#ef562f, #f9d531, #a7cc51, #4bafdd, #bd4ee5};
int width = 800;
int height = 800;
int startx = width/2 - 50;
int starty = height;
float jointx = startx;

void setup(){
  size(800, 800);
  colorMode(RGB, 255);
  background(20, 21, 38);
  frameRate(40);
  particle();
  moon();
  //showerFlower();
  //lvy();
  
  
}

void draw(){
  time++;
  growTime++;
  
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
  //lvy
    
  if(starty - growTime + 1  > 50){      
    noFill();
    stroke(255);
    strokeWeight(2);
    angle += 0.024;
    line(jointx, starty - growTime + 1, jointx + 1.8 * sin(angle), starty - growTime);
    jointx = jointx +   1.8 * sin(angle);
    

  }
  
  
  if(int(starty - growTime) % 50 == 0){
    judge = true;
    k=0;
    
    subJointx = jointx;
    suby = starty;
    int colornum = int(random(0, 4));
    
    flowerList[flowerNum][0] = subJointx;
    flowerList[flowerNum][1] = suby - growTime + 1;
    flowerList[flowerNum][2] = 6;
    flowerList[flowerNum][3] =colornum;
    flowerNum += 1;
    

  }
  if(judge == true){
    line(subJointx, suby - growTime + 1, subJointx +(1.8 * sin(angle)) * 2.3, suby - growTime);
    subJointx =  subJointx + (1.8 * sin(angle)) * 2.3;
    
    k += 1;
    
    if(int(subJointx) % 40 == 0){
      subJudge = true;
      thrdJointx = subJointx;
      thrdy = suby;
      
      int colornum = int(random(0, 4));
      flowerList[flowerNum][0] = subJointx + 20;
      flowerList[flowerNum][1] = suby - growTime + 1 + 20;
      flowerList[flowerNum][2] = 3;
      flowerList[flowerNum][3] =colornum;
      flowerNum += 1;
     

    }
    if(int(suby - growTime + 1) % 40 == 0){
      subJudge = false;
      
        int colornum = int(random(0, 4));
        flowerList[flowerNum][0] = subJointx;
        flowerList[flowerNum][1] = suby - growTime + 1;
        flowerList[flowerNum][2] = 3;
        flowerList[flowerNum][3] =colornum;
        flowerNum += 1;
     
    
  } 
  if(subJudge == true){
    angle += 0.025;
    line(thrdJointx, thrdy - growTime + 1, thrdJointx + 2 * sin(angle), thrdy - growTime);
    thrdJointx = thrdJointx + 2 * sin(angle);  
            
  }
  }
  if(k == 50){
    judge = false;
     
      int colornum = int(random(0, 4));
      flowerList[flowerNum][0] = subJointx;
      flowerList[flowerNum][1] = suby - growTime + 1 ;
      flowerList[flowerNum][2] = 5;
      flowerList[flowerNum][3] =colornum;
      flowerNum += 1;    
  }
 
  for(int k=0; k<flowerNum; k++){
    fill(colorpattern[int(flowerList[k][3])]);
    flower2(flowerList[k][0], flowerList[k][1], flowerList[k][2]);
    
  }
  
}
  

void particle(){
  fill(20, 21, 38);
  noStroke();
  
  
  for(int i=0; i<particleNum; i++){
    particlex = 400;
    particley = 400;
    while(210 > dist(width/2, height/2, particlex, particley)){;
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
