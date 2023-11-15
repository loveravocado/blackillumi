void tsl2572(){
i2c.beginTransmission(0x39);
  i2c.write(0x14);
  i2c.write(0x15);
  i2c.write(0x16);
  i2c.write(0x17);
  
  byte[] prech0 = i2c.read(4);
  ch1 = prech0[3] << 8 | prech0[2];
  

  ch1 = ch1 / 16/ 10.8;
    
  
  i2c.endTransmission();
}
