/*
* @Author: Galen Wu and Ryan Blaalid
* @Date:   2018-04-27 21:49:09
* @Last Modified time: 2018-04-27 21:56:39
*
* Description:
* Setup and main loop for the M0 Feather board
* and MAX30003 IC used in our EKG Senior Project
*/

#include <arduino.h>
#include <SPI.h>
#include "MAX30003.h"

void setup(){
    Serial.begin(SERIAL_BAUD_RATE);      //Serial begin
    
    pinMode(MAX30003_CS_PIN, OUTPUT);
    digitalWrite(MAX30003_CS_PIN, HIGH); //disable device

    SPI.begin();
    SPI.setBitOrder(MSBFIRST); 
    SPI.setDataMode(SPI_MODE0);
    SPI.setClockDivider(SPI_CLOCK_DIV4);
    
    MAX30003_begin();                    // initialize MAX30003
}

void loop(){

    uint32_t ecgFIFO = 0, readECGSamples = 0, idx = 0, ETAG[32], status = 0;
    int16_t ecgSample[32];

    while (true){
        status = MAX30003_Reg_Read(STATUS);      // Read the STATUS register

        // Check if EINT interrupt asserted
        if ((status & EINT_STATUS_MASK ) == EINT_STATUS_MASK){     
            readECGSamples = 0;                        // Reset sample counter

            do {
                ecgFIFO = MAX30003_Reg_Read(ECG_FIFO);                     // Read FIFO
                ecgSample[readECGSamples] = ecgFIFO >> 8;                  // Isolate voltage data
                ETAG[readECGSamples] = (ecgFIFO >> 3) & ETAG_BITS_MASK;    // Isolate ETAG
                readECGSamples++;                                          // Increment sample counter
            
            // Check that sample is not last sample in FIFO                                              
            } while (ETAG[readECGSamples - 1] == FIFO_VALID_SAMPLE_MASK || 
                     ETAG[readECGSamples - 1] == FIFO_FAST_SAMPLE_MASK); 
            
            // Check if FIFO has overflowed
            if(ETAG[readECGSamples - 1] == FIFO_OVF_MASK){                  
                MAX30003_Reg_Write(FIFO_RST, 0); // Reset FIFO
            }

            // Print results 
            for(idx = 0; idx < readECGSamples; ++idx){
                Serial.print("sample: ");
                Serial.println(ecgSample[idx]);
            } 
        }  
    }
}