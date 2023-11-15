void flower(float end_x, float end_y, float len){
 
  float num = 5;
  float z = TAU/num;

  push();
  translate(end_x,end_y);
  
  
   
  stroke(255);
  strokeWeight(0.5);

   
  for(int i=0; i<TAU; i += z){
    float theta = z * 0.5;
    float px1 = len * cos(theta);
    float py1 = len * sin(theta);
    float px2 = len * cos(-theta);
    float py2 = len * sin(-theta);
    
    float ex = 10;
    rotate(z);
    

    beginShape();
    vertex(0,0);
    vertex(px1, py1);
    bezierVertex(px1*ex, py1*ex, px2*ex, py2*ex, px2, py2);
    vertex(0,0);
    endShape();
  }
  pop();
}
