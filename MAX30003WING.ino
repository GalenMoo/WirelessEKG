#include <SPI.h>
#include <stdint.h>
#define BIT12 0x00000800
#define BIT13 0x00001000

#define FIRSTBYTE_MASK 0x00FF0000
#define MIDBYTE_MASK   0x0000FF00
#define LASTBYTE_MASK  0x000000FF


#define LED_PIN 13
const uint32_t READ = 0xFFFFFFFE;     // SCP1000's read command
const uint32_t WRITE = 0x00000001;   // SCP1000's write command
const int chipSelectPin = 9;

//Read from or write to register from the SCP1000:
unsigned int readRegister(byte thisRegister, int bytesToRead ) {
  byte inByte = 0;           // incoming byte from the SPI
  unsigned int result = 0;   // result to return
//  Serial.print(thisRegister, BIN);
//  Serial.print("\t");
  
  // SCP1000 expects the register name in the upper 6 bits
  // of the byte. So shift the bits left by two bits:
  thisRegister = thisRegister << 1;
  
  // now combine the address and the command into one byte
  byte dataToSend = thisRegister & READ;
  
//  Serial.println(thisRegister, BIN);
  
  // take the chip select low to select the device:
  digitalWrite(chipSelectPin, LOW);
  
  // send the device the register you want to read:
  SPI.transfer(dataToSend);
  SPI.transfer(0xFF);
  SPI.transfer(0xFF);
  SPI.transfer(0xFF);
//  
//  // send a value of 0 to read the first byte returned:
//  result = SPI.transfer(0x00);
//  
//  // decrement the number of bytes left to read:
//  bytesToRead--;
//  
//  // if you still have another byte to read:
//  if (bytesToRead > 0) {
//    // shift the first byte left, then get the second byte:
//    result = result << 8;
//    inByte = SPI.transfer(0x00);
//    
//    // combine the byte you just got with the previous one:
//    result = result | inByte;
//    
//    // decrement the number of bytes left to read:
//    bytesToRead--;
//  }
//  // take the chip select high to de-select:
  digitalWrite(chipSelectPin, HIGH);
  
  // return the result:
  return(result);
}


//Sends a write command to SCP1000

void writeRegister(byte thisRegister, uint32_t thisValue) {

  // SCP1000 expects the register address in the upper 6 bits
  // of the byte. So shift the bits left by two bits:


  uint8_t byte1 = (thisValue & FIRSTBYTE_MASK) >> 16;
  uint8_t byte2 = (thisValue & MIDBYTE_MASK) >> 8;
  uint8_t byte3 = (thisValue & LASTBYTE_MASK);
  
  // now combine the register address and the command into one byte:
  thisRegister = thisRegister << 1;
  byte dataToSend = thisRegister | WRITE;

  // take the chip select low to select the device:
  digitalWrite(chipSelectPin, LOW);

  SPI.transfer(dataToSend); //Send register location
  SPI.transfer(byte1);  //Send value to record into register
  SPI.transfer(byte2);
  SPI.transfer(byte3);
  
  // take the chip select high to de-select:
  digitalWrite(chipSelectPin, HIGH);
}
unsigned int res = 0;

void setup() {
  // initialize digital pin 13 as an output.
  pinMode(LED_PIN, OUTPUT);

  Serial.begin(115200);
  SPI.begin();
  
  pinMode(chipSelectPin, OUTPUT);
  digitalWrite(HIGH, chipSelectPin);
}
 
// the loop function runs over and over again forever
void loop() {
//  writeRegister(0x1E, BIT12 | BIT13);
//  delay(250);
  res = readRegister(0x04, 4);
//  Serial.print("Set: ");
  Serial.println(res, HEX);
//  Serial.println("---------");
//  writeRegister(0x1E, 0);
//  res = readRegister(0x1E, 3);
//  Serial.print("Clear: "); 
//  Serial.println(res, HEX);
//  Serial.println("---------");
}
