#ifndef MAX30003_H_
#define MAX30003_H_

#include <arduino.h>

#define FACTORYRESET_ENABLE         1
#define MINIMUM_FIRMWARE_VERSION    "0.6.6"
#define MODE_LED_BEHAVIOUR          "MODE"

#define SERIAL_BAUD_RATE    115200

#define UPPER_BYTE_MASK   0x00FF0000
#define MID_BYTE_MASK     0x0000FF00
#define LOWER_BYTE_MASK   0x000000FF

/* MAX30003 Constants */
#define EINT_STATUS_MASK        (1 << 23)
#define FIFO_OVF_MASK           0x07
#define FIFO_VALID_SAMPLE_MASK  0x00
#define FIFO_FAST_SAMPLE_MASK   0x01
#define ETAG_BITS_MASK          0x07

#define WREG    0x00
#define RREG    0x01

#define MAX30003_CS_PIN   9
#define EINT_PIN          10

/* MAX30003 Registers Addresses */
#define   NO_OP           0x00
#define   STATUS          0x01
#define   EN_INT          0x02
#define   EN_INT2         0x03
#define   MNGR_INT        0x04
#define   MNGR_DYN        0x05
#define   SW_RST          0x08
#define   SYNCH           0x09
#define   FIFO_RST        0x0A
#define   INFO            0x0F
#define   CNFG_GEN        0x10
#define   CNFG_CAL        0x12
#define   CNFG_EMUX       0x14
#define   CNFG_ECG        0x15
#define   CNFG_RTOR1      0x1D
#define   CNFG_RTOR2      0x1E
#define   ECG_FIFO_BURST  0x20
#define   ECG_FIFO        0x21
#define   RTOR            0x25
#define   NO_OP           0x7F

void MAX30003_begin(void);
void max30003_synch(void);
void max30003_sw_reset(void);
uint32_t MAX30003_Reg_Read(uint8_t);
void MAX30003_Reg_Write(uint8_t, uint32_t);

#endif