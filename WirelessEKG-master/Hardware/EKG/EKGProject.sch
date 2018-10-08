EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MAXIM
LIBS:EKGProject-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C_Small C1
U 1 1 5AE76733
P 5300 1650
F 0 "C1" H 5400 1700 50  0000 L CNN
F 1 "10pF" H 5400 1600 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5300 1650 50  0001 C CNN
F 3 "" H 5300 1650 50  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5AE7673A
P 4750 1450
F 0 "R1" V 4850 1400 50  0000 L CNN
F 1 "49.9k" V 4650 1350 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	0    -1   -1   0   
$EndComp
Text Label 4250 1450 0    60   ~ 0
ECGP_1
Text Label 5300 1450 2    60   ~ 0
ECGP_1_R
$Comp
L Conn_01x16 J9
U 1 1 5AE7B358
P 1950 4450
F 0 "J9" H 1950 5250 50  0000 C CNN
F 1 "Conn_01x16" H 1950 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 1950 4450 50  0001 C CNN
F 3 "" H 1950 4450 50  0001 C CNN
	1    1950 4450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x12 J8
U 1 1 5AE7B501
P 3350 4250
F 0 "J8" H 3350 4850 50  0000 C CNN
F 1 "Conn_01x12" H 3350 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12_Pitch2.54mm" H 3350 4250 50  0001 C CNN
F 3 "" H 3350 4250 50  0001 C CNN
	1    3350 4250
	1    0    0    -1  
$EndComp
Text Notes 2250 5600 0    60   ~ 0
FEATHER B2B
$Comp
L +3V3 #PWR9
U 1 1 5AE7BD4B
P 1150 3800
F 0 "#PWR9" H 1150 3650 50  0001 C CNN
F 1 "+3V3" H 1150 3940 50  0000 C CNN
F 2 "" H 1150 3800 50  0001 C CNN
F 3 "" H 1150 3800 50  0001 C CNN
	1    1150 3800
	1    0    0    -1  
$EndComp
Text Label 1300 4750 0    60   ~ 0
SCLK
Text Label 1300 4850 0    60   ~ 0
MOSI
Text Label 1300 4950 0    60   ~ 0
MISO
$Comp
L Earth #PWR10
U 1 1 5AE7DEFE
P 1150 4100
F 0 "#PWR10" H 1150 3850 50  0001 C CNN
F 1 "Earth" H 1150 3950 50  0001 C CNN
F 2 "" H 1150 4100 50  0001 C CNN
F 3 "" H 1150 4100 50  0001 C CNN
	1    1150 4100
	1    0    0    -1  
$EndComp
Text Label 2700 4450 0    60   ~ 0
INTB_1
Text Label 2700 4250 0    60   ~ 0
CS_2
Text Label 2700 4350 0    60   ~ 0
CS_3
Text Label 2700 4550 0    60   ~ 0
INTB_2
Text Notes 7350 7500 0    60   ~ 0
ECG and Feather B2B
$Sheet
S 6700 1200 700  900 
U 5AE78932
F0 "EKG_1" 60
F1 "EKG.sch" 60
F2 "ECGP" I L 6700 1450 60 
F3 "ECGN" I L 6700 1550 60 
F4 "VCM" I L 6700 1300 60 
F5 "FCLK" I R 7400 2000 60 
F6 "CS" I R 7400 1300 60 
F7 "MOSI" I R 7400 1400 60 
F8 "MISO" I R 7400 1500 60 
F9 "SCLK" I R 7400 1600 60 
F10 "INTB" I R 7400 1850 60 
F11 "INT2B" I R 7400 1750 60 
$EndSheet
$Sheet
S 6700 2300 700  900 
U 5AEA43E2
F0 "EKG_2" 60
F1 "EKG.sch" 60
F2 "ECGP" I L 6700 2550 60 
F3 "ECGN" I L 6700 2650 60 
F4 "VCM" I L 6700 2400 60 
F5 "FCLK" I R 7400 3100 60 
F6 "CS" I R 7400 2400 60 
F7 "MOSI" I R 7400 2500 60 
F8 "MISO" I R 7400 2600 60 
F9 "SCLK" I R 7400 2700 60 
F10 "INTB" I R 7400 2950 60 
F11 "INT2B" I R 7400 2850 60 
$EndSheet
$Comp
L Earth #PWR3
U 1 1 5AEA706D
P 5300 1800
F 0 "#PWR3" H 5300 1550 50  0001 C CNN
F 1 "Earth" H 5300 1650 50  0001 C CNN
F 2 "" H 5300 1800 50  0001 C CNN
F 3 "" H 5300 1800 50  0001 C CNN
	1    5300 1800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5AEA738D
P 5300 2300
F 0 "C3" H 5400 2350 50  0000 L CNN
F 1 "10pF" H 5400 2250 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5300 2300 50  0001 C CNN
F 3 "" H 5300 2300 50  0001 C CNN
	1    5300 2300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 5AEA7394
P 4750 2100
F 0 "R6" V 4850 2050 50  0000 L CNN
F 1 "49.9k" V 4650 2000 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4750 2100 50  0001 C CNN
F 3 "" H 4750 2100 50  0001 C CNN
	1    4750 2100
	0    -1   -1   0   
$EndComp
Text Label 4250 2100 0    60   ~ 0
ECGP_2
Text Label 5300 2100 2    60   ~ 0
ECGP_2_R
$Comp
L Earth #PWR6
U 1 1 5AEA73A1
P 5300 2450
F 0 "#PWR6" H 5300 2200 50  0001 C CNN
F 1 "Earth" H 5300 2300 50  0001 C CNN
F 2 "" H 5300 2450 50  0001 C CNN
F 3 "" H 5300 2450 50  0001 C CNN
	1    5300 2450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5AEA76ED
P 5300 2950
F 0 "C4" H 5400 3000 50  0000 L CNN
F 1 "10pF" H 5400 2900 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5300 2950 50  0001 C CNN
F 3 "" H 5300 2950 50  0001 C CNN
	1    5300 2950
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 5AEA76F4
P 4750 2750
F 0 "R7" V 4850 2700 50  0000 L CNN
F 1 "49.9k" V 4650 2650 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4750 2750 50  0001 C CNN
F 3 "" H 4750 2750 50  0001 C CNN
	1    4750 2750
	0    -1   -1   0   
$EndComp
Text Label 4250 2750 0    60   ~ 0
ECGP_3
Text Label 5300 2750 2    60   ~ 0
ECGP_3_R
$Comp
L Earth #PWR7
U 1 1 5AEA7701
P 5300 3100
F 0 "#PWR7" H 5300 2850 50  0001 C CNN
F 1 "Earth" H 5300 2950 50  0001 C CNN
F 2 "" H 5300 3100 50  0001 C CNN
F 3 "" H 5300 3100 50  0001 C CNN
	1    5300 3100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5AEA79CD
P 5300 3600
F 0 "C5" H 5400 3650 50  0000 L CNN
F 1 "10pF" H 5400 3550 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5300 3600 50  0001 C CNN
F 3 "" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 5AEA79D4
P 4750 3400
F 0 "R10" V 4850 3350 50  0000 L CNN
F 1 "49.9k" V 4650 3300 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
	1    4750 3400
	0    -1   -1   0   
$EndComp
Text Label 4250 3400 0    60   ~ 0
ECGN
Text Label 5200 3400 2    60   ~ 0
ECGN_R
$Sheet
S 6700 3400 700  900 
U 5AEA8503
F0 "EKG_3" 60
F1 "EKG.sch" 60
F2 "ECGP" I L 6700 3650 60 
F3 "ECGN" I L 6700 3750 60 
F4 "VCM" I L 6700 3500 60 
F5 "FCLK" I R 7400 4200 60 
F6 "CS" I R 7400 3500 60 
F7 "MOSI" I R 7400 3600 60 
F8 "MISO" I R 7400 3700 60 
F9 "SCLK" I R 7400 3800 60 
F10 "INTB" I R 7400 4050 60 
F11 "INT2B" I R 7400 3950 60 
$EndSheet
Text Label 6300 1300 0    60   ~ 0
VCM_1
$Comp
L MAX1726EUK18+ U1
U 1 1 5AEA40DF
P 2800 1650
F 0 "U1" H 2800 2000 60  0000 C CNN
F 1 "MAX1726EUK18+" H 2800 1900 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23-5_HandSoldering" H 2800 1650 60  0001 C CNN
F 3 "" H 2800 1650 60  0001 C CNN
	1    2800 1650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR1
U 1 1 5AEA43CC
P 2000 1400
F 0 "#PWR1" H 2000 1250 50  0001 C CNN
F 1 "+3.3V" H 2000 1550 50  0000 C CNN
F 2 "" H 2000 1400 50  0001 C CNN
F 3 "" H 2000 1400 50  0001 C CNN
	1    2000 1400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 5AEA48BE
P 1350 2100
F 0 "R5" V 1450 2050 50  0000 L CNN
F 1 "0" V 1250 2050 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1350 2100 50  0001 C CNN
F 3 "" H 1350 2100 50  0001 C CNN
	1    1350 2100
	0    -1   -1   0   
$EndComp
Text Label 1500 2100 0    60   ~ 0
SHDN_L_R
Text Label 750  2100 0    60   ~ 0
SHDN_L
$Comp
L Earth #PWR5
U 1 1 5AEA5670
P 2800 2350
F 0 "#PWR5" H 2800 2100 50  0001 C CNN
F 1 "Earth" H 2800 2200 50  0001 C CNN
F 2 "" H 2800 2350 50  0001 C CNN
F 3 "" H 2800 2350 50  0001 C CNN
	1    2800 2350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5AEA5F41
P 3400 1750
F 0 "C2" H 3500 1800 50  0000 L CNN
F 1 "1uF" H 3500 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3400 1750 50  0001 C CNN
F 3 "" H 3400 1750 50  0001 C CNN
	1    3400 1750
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR4
U 1 1 5AEA6040
P 3400 1950
F 0 "#PWR4" H 3400 1700 50  0001 C CNN
F 1 "Earth" H 3400 1800 50  0001 C CNN
F 2 "" H 3400 1950 50  0001 C CNN
F 3 "" H 3400 1950 50  0001 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR2
U 1 1 5AEA6743
P 3500 1450
F 0 "#PWR2" H 3500 1300 50  0001 C CNN
F 1 "+1V8" H 3500 1590 50  0000 C CNN
F 2 "" H 3500 1450 50  0001 C CNN
F 3 "" H 3500 1450 50  0001 C CNN
	1    3500 1450
	1    0    0    -1  
$EndComp
Text Label 7900 1600 2    60   ~ 0
SCLK
Text Label 7900 1300 2    60   ~ 0
CS_1
Text Label 7900 1400 2    60   ~ 0
MOSI
Text Label 7900 1500 2    60   ~ 0
MISO
Text Label 7900 1750 2    60   ~ 0
INT2B_1_R
Text Label 7900 1850 2    60   ~ 0
INTB_1_R
Text Label 7900 2000 2    60   ~ 0
FCLK
$Comp
L R_Small R3
U 1 1 5AEA9C9B
P 8100 1750
F 0 "R3" V 8200 1750 50  0000 L CNN
F 1 "0" V 8200 1650 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8100 1750 50  0001 C CNN
F 3 "" H 8100 1750 50  0001 C CNN
	1    8100 1750
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R4
U 1 1 5AEAA5CA
P 8700 1850
F 0 "R4" V 8800 1850 50  0000 L CNN
F 1 "0" V 8800 1750 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8700 1850 50  0001 C CNN
F 3 "" H 8700 1850 50  0001 C CNN
	1    8700 1850
	0    -1   -1   0   
$EndComp
Text Label 8550 1750 2    60   ~ 0
INT2B_1
Text Label 9150 1850 2    60   ~ 0
INTB_1
Text Notes 8000 1600 0    60   ~ 0
DNP
Text Label 7900 2700 2    60   ~ 0
SCLK
Text Label 7900 2400 2    60   ~ 0
CS_2
Text Label 7900 2500 2    60   ~ 0
MOSI
Text Label 7900 2600 2    60   ~ 0
MISO
Text Label 7900 2850 2    60   ~ 0
INT2B_2_R
Text Label 7900 2950 2    60   ~ 0
INTB_2_R
Text Label 7900 3100 2    60   ~ 0
FCLK
$Comp
L R_Small R8
U 1 1 5AEB0226
P 8100 2850
F 0 "R8" V 8200 2850 50  0000 L CNN
F 1 "0" V 8200 2750 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8100 2850 50  0001 C CNN
F 3 "" H 8100 2850 50  0001 C CNN
	1    8100 2850
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R9
U 1 1 5AEB022D
P 8700 2950
F 0 "R9" V 8800 2950 50  0000 L CNN
F 1 "0" V 8800 2850 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8700 2950 50  0001 C CNN
F 3 "" H 8700 2950 50  0001 C CNN
	1    8700 2950
	0    -1   -1   0   
$EndComp
Text Label 8550 2850 2    60   ~ 0
INT2B_2
Text Label 9150 2950 2    60   ~ 0
INTB_2
Text Notes 8000 2700 0    60   ~ 0
DNP
$Comp
L R_Small R2
U 1 1 5AEB1F3D
P 2000 1600
F 0 "R2" H 2030 1620 50  0000 L CNN
F 1 "0" H 2050 1550 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2000 1600 50  0001 C CNN
F 3 "" H 2000 1600 50  0001 C CNN
	1    2000 1600
	1    0    0    -1  
$EndComp
Text Notes 1250 1950 0    60   ~ 0
DNP
Text Label 7900 3800 2    60   ~ 0
SCLK
Text Label 7900 3500 2    60   ~ 0
CS_3
Text Label 7900 3600 2    60   ~ 0
MOSI
Text Label 7900 3700 2    60   ~ 0
MISO
Text Label 7900 3950 2    60   ~ 0
INT2B_3_R
Text Label 7900 4050 2    60   ~ 0
INTB_3_R
Text Label 7900 4200 2    60   ~ 0
FCLK
$Comp
L R_Small R11
U 1 1 5AEB6B86
P 8100 3950
F 0 "R11" V 8200 3950 50  0000 L CNN
F 1 "0" V 8200 3850 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8100 3950 50  0001 C CNN
F 3 "" H 8100 3950 50  0001 C CNN
	1    8100 3950
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R12
U 1 1 5AEB6B8D
P 8700 4050
F 0 "R12" V 8800 4050 50  0000 L CNN
F 1 "0" V 8800 3950 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8700 4050 50  0001 C CNN
F 3 "" H 8700 4050 50  0001 C CNN
	1    8700 4050
	0    -1   -1   0   
$EndComp
Text Label 8550 3950 2    60   ~ 0
INT2B_3
Text Label 9150 4050 2    60   ~ 0
INTB_3
Text Notes 8000 3800 0    60   ~ 0
DNP
Text Label 2700 4150 0    60   ~ 0
CS_1
Text Label 2700 4650 0    60   ~ 0
INTB_3
Text Label 2700 4750 0    60   ~ 0
INT2B_1
Text Label 2700 4850 0    60   ~ 0
INT2B_2
Text Label 1300 3950 0    60   ~ 0
AIN_1
Text Label 1300 4150 0    60   ~ 0
GPIO_14
Text Label 1300 4250 0    60   ~ 0
SHDN_L
Text Label 1300 4350 0    60   ~ 0
GPIO_16
Text Label 1300 4450 0    60   ~ 0
GPIO_17
Text Label 1300 4550 0    60   ~ 0
GPIO_18
Text Label 1300 4650 0    60   ~ 0
GPIO_19
Text Label 2700 4050 0    60   ~ 0
INT2B_3
NoConn ~ 1750 3750
Text Label 1300 5050 0    60   ~ 0
GPIO_0
Text Label 1300 5150 0    60   ~ 0
FCLK
$Comp
L Earth #PWR8
U 1 1 5AEDD4F0
P 5300 3750
F 0 "#PWR8" H 5300 3500 50  0001 C CNN
F 1 "Earth" H 5300 3600 50  0001 C CNN
F 2 "" H 5300 3750 50  0001 C CNN
F 3 "" H 5300 3750 50  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
Text Notes 8000 1600 0    60   ~ 0
DNP
Text Notes 5050 1700 0    60   ~ 0
DNP
Text Notes 5050 2350 0    60   ~ 0
DNP
Text Notes 5050 3000 0    60   ~ 0
DNP
Text Notes 5050 3650 0    60   ~ 0
DNP
$Comp
L Conn_01x01 J4
U 1 1 5AF526A2
P 6000 2400
F 0 "J4" H 6000 2500 50  0000 C CNN
F 1 "Conn_01x01" H 6000 2300 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 6000 2400 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    6000 2400
	-1   0    0    1   
$EndComp
Text Label 6350 2400 0    60   ~ 0
VCM_2
$Comp
L Conn_01x01 J7
U 1 1 5AF52DDE
P 6000 3500
F 0 "J7" H 6000 3600 50  0000 C CNN
F 1 "Conn_01x01" H 6000 3400 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 6000 3500 50  0001 C CNN
F 3 "" H 6000 3500 50  0001 C CNN
	1    6000 3500
	-1   0    0    1   
$EndComp
Text Label 6300 3500 0    60   ~ 0
VCM_3
Text Label 2700 3850 0    60   ~ 0
PP3V3_EN
$Comp
L Conn_01x04 J10
U 1 1 5AF5BC03
P 4550 5100
F 0 "J10" H 4550 5300 50  0000 C CNN
F 1 "Conn_01x04" H 4550 4800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4550 5100 50  0001 C CNN
F 3 "" H 4550 5100 50  0001 C CNN
	1    4550 5100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 5AF6104D
P 5100 5250
F 0 "#FLG2" H 5100 5325 50  0001 C CNN
F 1 "PWR_FLAG" H 5100 5400 50  0000 C CNN
F 2 "" H 5100 5250 50  0001 C CNN
F 3 "" H 5100 5250 50  0001 C CNN
	1    5100 5250
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG3
U 1 1 5AF61179
P 5500 5250
F 0 "#FLG3" H 5500 5325 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 5400 50  0000 C CNN
F 2 "" H 5500 5250 50  0001 C CNN
F 3 "" H 5500 5250 50  0001 C CNN
	1    5500 5250
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 5AF6129E
P 5900 5050
F 0 "#FLG1" H 5900 5125 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 5200 50  0000 C CNN
F 2 "" H 5900 5050 50  0001 C CNN
F 3 "" H 5900 5050 50  0001 C CNN
	1    5900 5050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR11
U 1 1 5AF61921
P 5100 5050
F 0 "#PWR11" H 5100 4900 50  0001 C CNN
F 1 "+3V3" H 5100 5190 50  0000 C CNN
F 2 "" H 5100 5050 50  0001 C CNN
F 3 "" H 5100 5050 50  0001 C CNN
	1    5100 5050
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR12
U 1 1 5AF61C30
P 5500 5050
F 0 "#PWR12" H 5500 4900 50  0001 C CNN
F 1 "+1V8" H 5500 5190 50  0000 C CNN
F 2 "" H 5500 5050 50  0001 C CNN
F 3 "" H 5500 5050 50  0001 C CNN
	1    5500 5050
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR13
U 1 1 5AF61E68
P 5900 5250
F 0 "#PWR13" H 5900 5000 50  0001 C CNN
F 1 "Earth" H 5900 5100 50  0001 C CNN
F 2 "" H 5900 5250 50  0001 C CNN
F 3 "" H 5900 5250 50  0001 C CNN
	1    5900 5250
	1    0    0    -1  
$EndComp
NoConn ~ 3150 3750
NoConn ~ 3150 3950
$Comp
L Earth #PWR14
U 1 1 5AFCA355
P 4200 5400
F 0 "#PWR14" H 4200 5150 50  0001 C CNN
F 1 "Earth" H 4200 5250 50  0001 C CNN
F 2 "" H 4200 5400 50  0001 C CNN
F 3 "" H 4200 5400 50  0001 C CNN
	1    4200 5400
	1    0    0    -1  
$EndComp
NoConn ~ 2700 3850
NoConn ~ 1300 3950
NoConn ~ 1300 4350
NoConn ~ 1300 4450
NoConn ~ 1300 4550
NoConn ~ 1300 4650
NoConn ~ 1300 5050
Wire Wire Line
	4850 1450 6700 1450
Wire Wire Line
	4250 1450 4650 1450
Wire Notes Line
	6950 3350 6950 3400
Wire Notes Line
	1600 5400 1600 5500
Wire Notes Line
	1600 5500 3600 5500
Wire Wire Line
	750  3850 1750 3850
Wire Wire Line
	2700 4250 3150 4250
Wire Wire Line
	2700 4350 3150 4350
Wire Wire Line
	3150 4450 2700 4450
Wire Wire Line
	2700 4550 3150 4550
Wire Notes Line
	3600 5500 3600 5400
Wire Wire Line
	5300 1450 5300 1550
Wire Wire Line
	5300 1800 5300 1750
Wire Wire Line
	4250 2100 4650 2100
Wire Wire Line
	5300 2100 5300 2200
Wire Wire Line
	5300 2450 5300 2400
Wire Wire Line
	4850 2750 6400 2750
Wire Wire Line
	4250 2750 4650 2750
Wire Wire Line
	5300 2750 5300 2850
Wire Wire Line
	5300 3100 5300 3050
Wire Wire Line
	4850 3400 6250 3400
Wire Wire Line
	4250 3400 4650 3400
Wire Wire Line
	5300 3400 5300 3500
Wire Wire Line
	5300 3750 5300 3700
Connection ~ 5300 1450
Connection ~ 5300 2100
Connection ~ 5300 2750
Wire Wire Line
	6250 3400 6250 3750
Wire Wire Line
	6250 3750 6700 3750
Connection ~ 5300 3400
Wire Wire Line
	6550 1550 6550 3750
Wire Wire Line
	6550 1550 6700 1550
Connection ~ 6550 3750
Wire Wire Line
	6550 2650 6700 2650
Connection ~ 6550 2650
Wire Wire Line
	6300 1300 6700 1300
Wire Wire Line
	2000 2100 1450 2100
Wire Wire Line
	750  2100 1250 2100
Wire Wire Line
	2750 2250 2750 2300
Wire Wire Line
	2750 2300 2850 2300
Wire Wire Line
	2850 2300 2850 2250
Wire Wire Line
	2800 2350 2800 2300
Connection ~ 2800 2300
Wire Wire Line
	3400 1950 3400 1850
Wire Wire Line
	3400 1650 3400 1550
Wire Wire Line
	3250 1550 3500 1550
Wire Wire Line
	3500 1550 3500 1450
Connection ~ 3400 1550
Wire Wire Line
	7400 1600 7900 1600
Wire Wire Line
	7400 1300 7900 1300
Wire Wire Line
	7400 1500 7900 1500
Wire Wire Line
	7400 1750 8000 1750
Wire Wire Line
	7400 1850 8600 1850
Wire Wire Line
	7400 2000 7900 2000
Wire Wire Line
	8200 1750 8550 1750
Wire Wire Line
	8800 1850 9150 1850
Wire Wire Line
	7400 1400 7900 1400
Wire Wire Line
	7400 2700 7900 2700
Wire Wire Line
	7400 2400 7900 2400
Wire Wire Line
	7400 2600 7900 2600
Wire Wire Line
	7400 2850 8000 2850
Wire Wire Line
	7400 2950 8600 2950
Wire Wire Line
	7400 3100 7900 3100
Wire Wire Line
	8200 2850 8550 2850
Wire Wire Line
	8800 2950 9150 2950
Wire Wire Line
	7400 2500 7900 2500
Wire Wire Line
	2000 1700 2000 2100
Wire Wire Line
	2000 1800 2350 1800
Connection ~ 2000 1800
Wire Wire Line
	2000 1400 2000 1500
Wire Wire Line
	2000 1450 2250 1450
Wire Wire Line
	2250 1450 2250 1550
Wire Wire Line
	2250 1550 2350 1550
Connection ~ 2000 1450
Wire Wire Line
	7400 3800 7900 3800
Wire Wire Line
	7400 3500 7900 3500
Wire Wire Line
	7400 3700 7900 3700
Wire Wire Line
	7400 3950 8000 3950
Wire Wire Line
	7400 4050 8600 4050
Wire Wire Line
	7400 4200 7900 4200
Wire Wire Line
	8200 3950 8550 3950
Wire Wire Line
	8800 4050 9150 4050
Wire Wire Line
	7400 3600 7900 3600
Wire Wire Line
	2700 4150 3150 4150
Wire Wire Line
	2700 4650 3150 4650
Wire Wire Line
	2700 4750 3150 4750
Wire Wire Line
	2700 4850 3150 4850
Wire Wire Line
	1300 3950 1750 3950
Wire Wire Line
	1300 4250 1750 4250
Wire Wire Line
	1300 4350 1750 4350
Wire Wire Line
	1300 4450 1750 4450
Wire Wire Line
	1300 4550 1750 4550
Wire Wire Line
	1300 4650 1750 4650
Wire Wire Line
	1300 4750 1750 4750
Wire Wire Line
	1300 4850 1750 4850
Wire Wire Line
	1300 4950 1750 4950
Wire Wire Line
	1300 5050 1750 5050
Wire Wire Line
	1300 5150 1750 5150
Wire Wire Line
	1150 4050 1750 4050
Wire Wire Line
	1150 3850 1150 3800
Wire Wire Line
	1150 4100 1150 4050
Wire Wire Line
	2700 4050 3150 4050
Wire Wire Line
	6200 2400 6700 2400
Wire Wire Line
	3150 3850 2700 3850
Wire Wire Line
	5100 5050 5100 5250
Wire Wire Line
	5500 5250 5500 5050
Wire Wire Line
	5900 5250 5900 5050
Wire Wire Line
	4200 5000 4200 5400
Wire Wire Line
	4200 5000 4350 5000
Wire Wire Line
	4200 5100 4350 5100
Connection ~ 4200 5100
Wire Wire Line
	4200 5200 4350 5200
Connection ~ 4200 5200
Wire Wire Line
	4200 5300 4350 5300
Connection ~ 4200 5300
$Comp
L Screw_Terminal_01x01 J6
U 1 1 5AEDF10B
P 4050 3400
F 0 "J6" H 4050 3500 50  0000 C CNN
F 1 "Screw_Terminal_01x01" H 4050 3300 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 4050 3400 50  0001 C CNN
F 3 "" H 4050 3400 50  0001 C CNN
	1    4050 3400
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_01x01 J5
U 1 1 5AEDEFE9
P 4050 2750
F 0 "J5" H 4050 2850 50  0000 C CNN
F 1 "Screw_Terminal_01x01" H 4050 2650 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 4050 2750 50  0001 C CNN
F 3 "" H 4050 2750 50  0001 C CNN
	1    4050 2750
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_01x01 J3
U 1 1 5AEDEEC9
P 4050 2100
F 0 "J3" H 4050 2200 50  0000 C CNN
F 1 "Screw_Terminal_01x01" H 4050 2000 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 4050 2100 50  0001 C CNN
F 3 "" H 4050 2100 50  0001 C CNN
	1    4050 2100
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_01x01 J2
U 1 1 5AEDEB92
P 4050 1450
F 0 "J2" H 4050 1550 50  0000 C CNN
F 1 "Screw_Terminal_01x01" H 4050 1350 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 4050 1450 50  0001 C CNN
F 3 "" H 4050 1450 50  0001 C CNN
	1    4050 1450
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_01x01 J1
U 1 1 5AF50A9B
P 6100 1300
F 0 "J1" H 6100 1400 50  0000 C CNN
F 1 "Screw_Terminal_01x01" H 6100 1200 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 6100 1300 50  0001 C CNN
F 3 "" H 6100 1300 50  0001 C CNN
	1    6100 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 2100 5750 2100
Wire Wire Line
	5750 2100 5750 2550
Wire Wire Line
	5750 2550 6700 2550
NoConn ~ 1750 5250
Wire Wire Line
	6400 2750 6400 3650
Wire Wire Line
	6400 3650 6700 3650
Wire Wire Line
	6200 3500 6700 3500
Wire Wire Line
	1250 4150 1750 4150
Wire Wire Line
	750  4250 1250 4250
Wire Wire Line
	1250 4250 1250 4150
Connection ~ 1150 3850
$Comp
L R_Small R16
U 1 1 5B023B31
P 750 4050
F 0 "R16" H 780 4070 50  0000 L CNN
F 1 "10k" H 780 4010 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 750 4050 50  0001 C CNN
F 3 "" H 750 4050 50  0001 C CNN
	1    750  4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  4250 750  4150
Wire Wire Line
	750  3950 750  3850
$EndSCHEMATC