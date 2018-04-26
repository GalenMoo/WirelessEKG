#include "MAX30003.h"
#include <SPI.h>

SPIClass mySPI (&PERIPH_SPI,  PIN_SPI_MISO,  PIN_SPI_SCK,  PIN_SPI_MOSI,  PAD_SPI_TX,  PAD_SPI_RX);

#define BIT12 0x800
#define BIT13 0x1000
#define LED_PIN 13
const byte READ = 0b11111110;     // SCP1000's read command
const byte WRITE = 0b00000001;   // SCP1000's write command
const int chipSelectPin = 9;

//Read from or write to register from the SCP1000:
unsigned int readRegister(byte thisRegister, int bytesToRead ) {
  byte inByte = 0;           // incoming byte from the SPI
  unsigned int result = 0;   // result to return
  Serial.print(thisRegister, BIN);
  Serial.print("\t");
  
  // SCP1000 expects the register name in the upper 6 bits
  // of the byte. So shift the bits left by two bits:
  thisRegister = thisRegister << 1;
  
  // now combine the address and the command into one byte
  byte dataToSend = thisRegister & READ;
  
  Serial.println(thisRegister, BIN);
  
  // take the chip select low to select the device:
  digitalWrite(chipSelectPin, LOW);
  
  // send the device the register you want to read:
  SPI.transfer(dataToSend);
  
  // send a value of 0 to read the first byte returned:
  result = SPI.transfer(0x00);
  
  // decrement the number of bytes left to read:
  bytesToRead--;
  
  // if you still have another byte to read:
  if (bytesToRead > 0) {
    // shift the first byte left, then get the second byte:
    result = result << 8;
    inByte = SPI.transfer(0x00);
    
    // combine the byte you just got with the previous one:
    result = result | inByte;
    
    // decrement the number of bytes left to read:
    bytesToRead--;
  }
  // take the chip select high to de-select:
  digitalWrite(chipSelectPin, HIGH);
  
  // return the result:
  return(result);
}


//Sends a write command to SCP1000

void writeRegister(byte thisRegister, byte thisValue) {

  // SCP1000 expects the register address in the upper 6 bits
  // of the byte. So shift the bits left by two bits:
  thisRegister = thisRegister << 1;
  
  // now combine the register address and the command into one byte:
  byte dataToSend = thisRegister | WRITE;

  // take the chip select low to select the device:
  digitalWrite(chipSelectPin, LOW);

  SPI.transfer(dataToSend); //Send register location
  SPI.transfer(thisValue);  //Send value to record into register

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
  Serial.println("init new lines");
  writeRegister(0x1E, BIT12 | BIT13);
  res = readRegister(0x1E, 3);
  Serial.println(res);
}
 
// the loop function runs over and over again forever
void loop() {
  if (res == (BIT12 | BIT13)){
    digitalWrite(LED_PIN, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(1000);              // wait for a second
    digitalWrite(LED_PIN, LOW);    // turn the LED off by making the voltage LOW
    delay(1000);              // wait for a second    
  }
}