void growFlower(){
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
 
  
}
