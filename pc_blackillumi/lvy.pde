void lvy(){
 for(int m = 0; m<2; m++){ 

    int startx = width/2;
    int starty = height;
    float jointx = startx;
    float subJointx = 0;
    float angle = 0;
    float suby, thrdJointx, thrdy;
        
    noFill();
    stroke(255);
    strokeWeight(2);
    for(int i=0; i< height - 100; i++){
      angle += 0.024;
      line(jointx, starty - i + 1, jointx + 1.8 * sin(angle), starty - i);
      jointx = jointx + 1.8 * sin(angle); 
      
        if(int(starty - i) % 50 == 0){
        subJointx = jointx;
        suby = starty - i;
        int k = i;
        for(k=0; k< 50; k++){
          angle += 0.025;
 
          line(subJointx, suby - k + 1, subJointx + (1.8 * sin(angle)) * 2.3, suby - k);
          subJointx =  subJointx + (1.8 * sin(angle)) * 2.3; 
          
          if(int(subJointx) % 40 == 0){
     
            thrdJointx = subJointx;
            thrdy = suby - k;
            int l = k;
            for(l=0; l< 50; l++){
              if(l % 3 ==0){
                angle += 0.025;
                line(thrdJointx, thrdy - l + 1, thrdJointx + 2 * sin(angle), thrdy - l);
                thrdJointx = thrdJointx + 2 * sin(angle);  
            }else{
                angle += 0.025;
                line(thrdJointx, thrdy - l + 1, thrdJointx +  1.8 * sin(angle), thrdy - l);
                thrdJointx = thrdJointx + 1.8 * sin(angle);  
                
            }
                
          }
          int colornum = int(random(0, 4));
          fill(colorpattern[colornum], 170);
          flower2(thrdJointx, thrdy - k, 4);
         }
        
        }

        int colornum = int(random(0, 4));
        fill(colorpattern[colornum], 170);
        flower2(subJointx, suby - k, 6);
        }
       
      }

    }
   //for(int  j=0; j<20; j++){
   //  int addx = int(random(width/4, width * 2/3));
   //  int addy = int(random(50, height-50));
   //  int colornum = int(random(0, 4));
   //   fill(colorpattern[colornum], 170);
   //  flower(addx, addy, 7);
   //}
   
}
