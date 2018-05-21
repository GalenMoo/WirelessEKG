/*
* @Author: Galen Wu and Ryan Blaalid
* @Date:   2018-04-27 21:49:09
* @Last Modified time: 2018-05-20 16:04:28
*
* Description:
* Helper functions to init, read, and write
* to the MAX30003
*/

#include <Arduino.h>
#include <SPI.h>
#include "MAX30003.h"

void MAX30003_begin(void){
    max30003_sw_reset();

    MAX30003_Reg_Write(CNFG_GEN, 0x081217);//0x081007);
    delay(100);
    MAX30003_Reg_Write(CNFG_ECG, 0x835000);// d23 - d22 : 10 for 250sps , 00:500 sps
    delay(100);

    MAX30003_Reg_Write(CNFG_RTOR1, 0x3FC600);
    delay(100);

    MAX30003_Reg_Write(MNGR_INT, 0x180014);
    delay(100);

    MAX30003_Reg_Write(CNFG_CAL, 0x720000); 
    delay(100);

    MAX30003_Reg_Write(EN_INT, 0x800003); 
    delay(100);

    MAX30003_Reg_Write(MNGR_DYN, 0x3F0000); 
    delay(100);

    MAX30003_Reg_Write(CNFG_EMUX, 0x000000);
    delay(100);
    
    max30003_synch();
}

void max30003_synch(void){
    MAX30003_Reg_Write(SYNCH, 0x000000);
    delay(100);
}

void max30003_sw_reset(void){
    MAX30003_Reg_Write(SW_RST, 0x000000);     
    delay(100);
}

uint32_t MAX30003_Reg_Read(uint8_t regAddr){
    uint32_t data;
    uint8_t addr = (regAddr << 1) | RREG;
    
    digitalWrite(MAX30003_CS_PIN, LOW);
    
    SPI.transfer(addr); //Send register location
    
    for (int shift = 16; shift >= 0; shift -= 8){
        data |= (SPI.transfer(0xFF) << shift);
    }
    
    digitalWrite(MAX30003_CS_PIN, HIGH);
    return data;
}

void MAX30003_Reg_Write(uint8_t writeAddr, uint32_t data){
    // now combine the register address and the command into one byte:
    uint8_t dataToSend = (writeAddr << 1) | WREG;
    
    // take the chip select low to select the device:
    digitalWrite(MAX30003_CS_PIN, LOW);
    
    delay(2);
    SPI.transfer(dataToSend);                        //Send register location
    SPI.transfer((UPPER_BYTE_MASK & data) >> 16);    //number of register to wr
    SPI.transfer((MID_BYTE_MASK & data) >> 8);       //number of register to wr
    SPI.transfer(LOWER_BYTE_MASK & data);            //Send value to record into register
    delay(2);
    
    // take the chip select high to de-select:
    digitalWrite(MAX30003_CS_PIN, HIGH);
}