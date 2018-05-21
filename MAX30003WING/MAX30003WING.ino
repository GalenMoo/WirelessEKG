/*
* @Author: Galen Wu and Ryan Blaalid
* @Date:   2018-04-27 21:49:09
* @Last Modified time: 2018-04-27 21:56:39
*
* Description:
* Setup and main loop for the M0 Feather board
* and MAX30003 IC used in our EKG Senior Project
*/

#include <Arduino.h>
#include <SPI.h>

#include "Adafruit_BLE.h"
#include "Adafruit_BluefruitLE_SPI.h"
#include "Adafruit_BluefruitLE_UART.h"
#include "BluefruitConfig.h"

#include "MAX30003.h"

#if SOFTWARE_SERIAL_AVAILABLE
    #include <SoftwareSerial.h>
#endif

bool getUserInput(char buffer[], uint8_t maxSize);

/* global objects */
int eint_flag = 0;
Adafruit_BluefruitLE_SPI ble(BLUEFRUIT_SPI_CS, BLUEFRUIT_SPI_IRQ, BLUEFRUIT_SPI_RST);

void error(const __FlashStringHelper*err) {
    Serial.println(err);
    while (1);
}

void EINT_ISR(){
    eint_flag = 1;
}

void setup(){
    /* init Serial and Bluetooth */
    Serial.begin(SERIAL_BAUD_RATE);     

    Serial.println(F("Adafruit Bluefruit Command Mode Example"));
    Serial.println(F("---------------------------------------"));

    /* Initialise the module */
    Serial.print(F("Initialising the Bluefruit LE module: "));

    if (!ble.begin(VERBOSE_MODE)){
        error(F("Couldn't find Bluefruit, make sure it's in CoMmanD mode & check wiring?"));
    }
    Serial.println( F("OK!") );

    if (FACTORYRESET_ENABLE){
        /* Perform a factory reset to make sure everything is in a known state */
        Serial.println(F("Performing a factory reset: "));
    
        if (!ble.factoryReset()){
          error(F("Couldn't factory reset"));
        }
    }
    /* Disable command echo from Bluefruit */
    ble.echo(false);

    Serial.println("Requesting Bluefruit info:");
    /* Print Bluefruit information */

    ble.info();
    Serial.println(F("Please use Adafruit Bluefruit LE app to connect in UART mode"));
    Serial.println(F("Then Enter characters to send to Bluefruit"));
    Serial.println();

    ble.verbose(false);  // debug info is a little annoying after this point!

    /* Wait for connection */
    while (!ble.isConnected()){
        delay(500);
    }

    if (ble.isVersionAtLeast(MINIMUM_FIRMWARE_VERSION)){
        // Change Mode LED Activity
        Serial.println(F("******************************"));
        Serial.println(F("Change LED activity to " MODE_LED_BEHAVIOUR));
        ble.sendCommandCheckOK("AT+HWModeLED=" MODE_LED_BEHAVIOUR);
        Serial.println(F("******************************"));
    }
    ble.setMode(BLUEFRUIT_MODE_DATA);
    
    Serial.println("Setting up MAX30003");
    pinMode(MAX30003_CS_PIN, OUTPUT);
    digitalWrite(MAX30003_CS_PIN, HIGH); //disable device

    SPI.begin();
    SPI.setBitOrder(MSBFIRST); 
    SPI.setDataMode(SPI_MODE0);
    SPI.setClockDivider(SPI_CLOCK_DIV4);
    
    MAX30003_begin();                    // initialize MAX30003

    pinMode(EINT_PIN, INPUT_PULLUP);
    attachInterrupt(digitalPinToInterrupt(EINT_PIN), EINT_ISR, FALLING);
}

void loop(){
    uint32_t ecgFIFO = 0, readECGSamples = 0, idx = 0, ETAG[32], status = 0;
    int16_t ecgSample[32];

    while (true){
        eint_flag = 0;
        status = MAX30003_Reg_Read(STATUS);      // Read the STATUS register

        // Check if EINT interrupt asserted
        if ((status & EINT_STATUS_MASK ) == EINT_STATUS_MASK){     
            readECGSamples = 0;                        // Reset sample counter

            do {
                ecgFIFO = MAX30003_Reg_Read(ECG_FIFO);                     // Read FIFO
                ecgSample[readECGSamples] = ecgFIFO >> 8;                  // Isolate voltage data
                ETAG[readECGSamples] = (ecgFIFO >> 3) & ETAG_BITS_MASK;    // Isolate ETAG
                ++readECGSamples;                                          // Increment sample counter

            // Check that sample is not last sample in FIFO                                              
            } while (ETAG[readECGSamples - 1] == FIFO_VALID_SAMPLE_MASK || 
                     ETAG[readECGSamples - 1] == FIFO_FAST_SAMPLE_MASK); 
            
            // Check if FIFO has overflowed
            if (ETAG[readECGSamples - 1] == FIFO_OVF_MASK){                  
                MAX30003_Reg_Write(FIFO_RST, 0); // Reset FIFO
            }

            // Print results 
            for(idx = 0; idx < readECGSamples; ++idx){
                Serial.print("sample: ");
                Serial.println(ecgSample[idx]);

                ble.println(ecgSample[idx]);

                // check response stastus
                // if (!ble.waitForOK()){
                //   Serial.println(F("Failed to send?"));
                // }
            } 
        }  
    }
}

bool getUserInput(char buffer[], uint8_t maxSize){
  // timeout in 100 milliseconds
  TimeoutTimer timeout(100);

  memset(buffer, 0, maxSize);
  while( (!Serial.available()) && !timeout.expired() ) { delay(1); }

  if ( timeout.expired() ) return false;

  delay(2);
  uint8_t count=0;
  do
  {
    count += Serial.readBytes(buffer+count, maxSize);
    delay(2);
  } while( (count < maxSize) && (Serial.available()) );

  return true;
}