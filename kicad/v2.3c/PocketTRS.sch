EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L power:GND #PWR0101
U 1 1 5E50EC0A
P 1800 3000
F 0 "#PWR0101" H 1800 2750 50  0001 C CNN
F 1 "GND" H 1805 2827 50  0000 C CNN
F 2 "" H 1800 3000 50  0001 C CNN
F 3 "" H 1800 3000 50  0001 C CNN
	1    1800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1100 1800 1100
Wire Wire Line
	2000 2500 1800 2500
Connection ~ 1800 2500
$Comp
L power:+3.3V #PWR0102
U 1 1 5E50F7B6
P 1900 900
F 0 "#PWR0102" H 1900 750 50  0001 C CNN
F 1 "+3.3V" H 1915 1073 50  0000 C CNN
F 2 "" H 1900 900 50  0001 C CNN
F 3 "" H 1900 900 50  0001 C CNN
	1    1900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1200 1900 1200
Text GLabel 1700 1400 0    50   Input ~ 0
CASS_IN
Text GLabel 10450 5350 2    50   Input ~ 0
IOREQ_N
Wire Wire Line
	2000 1400 1700 1400
Text GLabel 1700 1800 0    50   Input ~ 0
PS2_DATA
Text GLabel 1150 1900 0    50   Input ~ 0
PS2_CLK
Text GLabel 1700 2000 0    50   Input ~ 0
CASS_OUT
Wire Wire Line
	1700 1800 2000 1800
Wire Wire Line
	1150 1900 2000 1900
Wire Wire Line
	1700 2000 2000 2000
Text GLabel 1150 2100 0    50   Input ~ 0
VGA_HSYNC
Wire Wire Line
	2000 2100 1150 2100
Text GLabel 3450 2000 2    50   Input ~ 0
VGA_VSYNC
Text GLabel 4000 1600 2    50   Input ~ 0
VGA_GREEN
Text GLabel 3450 1300 2    50   Input ~ 0
VGA_RED
Text GLabel 4000 1200 2    50   Input ~ 0
VGA_BLUE
Wire Wire Line
	3150 1200 4000 1200
Wire Wire Line
	3150 1600 4000 1600
Wire Wire Line
	3150 2000 3450 2000
$Comp
L Connector:DB15_Female_HighDensity J4
U 1 1 5E5188E0
P 14550 1500
F 0 "J4" H 14550 2367 50  0000 C CNN
F 1 "DB15_Female_HighDensity" H 14550 2276 50  0000 C CNN
F 2 "PocketTRS_Connectors.pretty:DB_15F-VGA" H 13600 1900 50  0001 C CNN
F 3 " ~" H 13600 1900 50  0001 C CNN
	1    14550 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E519EB9
P 14100 2250
F 0 "#PWR0103" H 14100 2000 50  0001 C CNN
F 1 "GND" H 14105 2077 50  0000 C CNN
F 2 "" H 14100 2250 50  0001 C CNN
F 3 "" H 14100 2250 50  0001 C CNN
	1    14100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 1000 14100 1000
Wire Wire Line
	14100 1000 14100 1200
Wire Wire Line
	14250 1200 14100 1200
Connection ~ 14100 1200
Wire Wire Line
	14100 1200 14100 1400
Wire Wire Line
	14250 1400 14100 1400
Connection ~ 14100 1400
Wire Wire Line
	14100 1400 14100 1800
Wire Wire Line
	14250 1800 14100 1800
Connection ~ 14100 1800
Wire Wire Line
	14100 1800 14100 1900
Wire Wire Line
	14250 1900 14100 1900
Connection ~ 14100 1900
Wire Wire Line
	14100 1900 14100 2250
Text GLabel 13950 1100 0    50   Input ~ 0
POT_VGA_RED
Text GLabel 13950 1300 0    50   Input ~ 0
POT_VGA_GREEN
Text GLabel 13950 1500 0    50   Input ~ 0
POT_VGA_BLUE
Text GLabel 14950 1700 2    50   Input ~ 0
VGA_VSYNC
Wire Wire Line
	13950 1100 14250 1100
Wire Wire Line
	13950 1300 14250 1300
Wire Wire Line
	13950 1500 14250 1500
Wire Wire Line
	14850 1500 14950 1500
Wire Wire Line
	14850 1700 14950 1700
$Comp
L Connector:Mini-DIN-6 J3
U 1 1 5E5234B8
P 7900 1900
F 0 "J3" H 7900 2267 50  0000 C CNN
F 1 "Mini-DIN-6" H 7900 2176 50  0000 C CNN
F 2 "PocketTRS_Connectors.pretty:minidin_6_ps2_pcb_mount" H 7900 1900 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 7900 1900 50  0001 C CNN
	1    7900 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E5255F3
P 8350 2150
F 0 "#PWR0104" H 8350 1900 50  0001 C CNN
F 1 "GND" H 8355 1977 50  0000 C CNN
F 2 "" H 8350 2150 50  0001 C CNN
F 3 "" H 8350 2150 50  0001 C CNN
	1    8350 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E527678
P 8350 1600
F 0 "R4" V 8250 1600 50  0000 C CNN
F 1 "2K" V 8350 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8280 1600 50  0001 C CNN
F 3 "~" H 8350 1600 50  0001 C CNN
	1    8350 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5E52793D
P 8600 1600
F 0 "R5" V 8500 1600 50  0000 C CNN
F 1 "2K" V 8600 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 1600 50  0001 C CNN
F 3 "~" H 8600 1600 50  0001 C CNN
	1    8600 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 1800 8350 1800
Wire Wire Line
	8350 1800 8350 1750
Wire Wire Line
	8200 2000 8600 2000
Wire Wire Line
	8600 2000 8600 1750
$Comp
L power:+3.3V #PWR0105
U 1 1 5E528EC0
P 8350 1300
F 0 "#PWR0105" H 8350 1150 50  0001 C CNN
F 1 "+3.3V" H 8365 1473 50  0000 C CNN
F 2 "" H 8350 1300 50  0001 C CNN
F 3 "" H 8350 1300 50  0001 C CNN
	1    8350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1300 8350 1350
Wire Wire Line
	8600 1450 8600 1350
Wire Wire Line
	8600 1350 8350 1350
Connection ~ 8350 1350
Wire Wire Line
	8350 1350 8350 1450
$Comp
L power:+5V #PWR0106
U 1 1 5E52B541
P 7400 1300
F 0 "#PWR0106" H 7400 1150 50  0001 C CNN
F 1 "+5V" H 7415 1473 50  0000 C CNN
F 2 "" H 7400 1300 50  0001 C CNN
F 3 "" H 7400 1300 50  0001 C CNN
	1    7400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1900 7600 1900
Wire Wire Line
	7400 1300 7400 1900
Text GLabel 8900 2000 2    50   Input ~ 0
PS2_DATA
Wire Wire Line
	8600 2000 8900 2000
Connection ~ 8600 2000
Text GLabel 8900 1800 2    50   Input ~ 0
PS2_CLK
Wire Wire Line
	8900 1800 8350 1800
Connection ~ 8350 1800
Wire Wire Line
	8200 1900 8350 1900
Wire Wire Line
	8350 1900 8350 2150
Text GLabel 3450 1800 2    50   Input ~ 0
ESP_MISO
Text GLabel 4000 1900 2    50   Input ~ 0
CS_EXPAND
Wire Wire Line
	3150 1800 3450 1800
Wire Wire Line
	3150 1900 4000 1900
$Comp
L power:GND #PWR0109
U 1 1 5E54A441
P 7150 7450
F 0 "#PWR0109" H 7150 7200 50  0001 C CNN
F 1 "GND" H 7155 7277 50  0000 C CNN
F 2 "" H 7150 7450 50  0001 C CNN
F 3 "" H 7150 7450 50  0001 C CNN
	1    7150 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 7250 7150 7300
Wire Wire Line
	6450 6750 6300 6750
Connection ~ 7150 7300
Wire Wire Line
	7150 7300 7150 7450
Wire Wire Line
	6300 7300 7150 7300
Text GLabel 5850 6250 0    50   Input ~ 0
ESP_RESET
Wire Wire Line
	6450 6250 5850 6250
$Comp
L Connector:AudioJack3 J2
U 1 1 5E57360B
P 6650 1800
F 0 "J2" H 6370 1733 50  0000 R CNN
F 1 "AudioJack3" H 6370 1824 50  0000 R CNN
F 2 "PocketTRS_Connectors.pretty:Jack_3.5mm_CUI_SJ1-3535NG_Horizontal_CircularHoles" H 6650 1800 50  0001 C CNN
F 3 "~" H 6650 1800 50  0001 C CNN
	1    6650 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5E5887BF
P 5250 1300
F 0 "R6" V 5350 1250 50  0000 L CNN
F 1 "4K7" V 5250 1250 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5180 1300 50  0001 C CNN
F 3 "~" H 5250 1300 50  0001 C CNN
	1    5250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E588FB8
P 5250 1700
F 0 "R7" V 5350 1650 50  0000 L CNN
F 1 "4K7" V 5250 1650 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5180 1700 50  0001 C CNN
F 3 "~" H 5250 1700 50  0001 C CNN
	1    5250 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E5937F5
P 5250 1950
F 0 "#PWR0111" H 5250 1700 50  0001 C CNN
F 1 "GND" H 5255 1777 50  0000 C CNN
F 2 "" H 5250 1950 50  0001 C CNN
F 3 "" H 5250 1950 50  0001 C CNN
	1    5250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1850 5250 1900
$Comp
L power:+3.3V #PWR0112
U 1 1 5E596281
P 4900 1050
F 0 "#PWR0112" H 4900 900 50  0001 C CNN
F 1 "+3.3V" H 4915 1223 50  0000 C CNN
F 2 "" H 4900 1050 50  0001 C CNN
F 3 "" H 4900 1050 50  0001 C CNN
	1    4900 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 1450 5250 1500
Connection ~ 5250 1500
Wire Wire Line
	5250 1500 5250 1550
Text GLabel 4900 1500 0    50   Input ~ 0
CASS_IN
$Comp
L Device:R R9
U 1 1 5E5CE9FD
P 5800 1050
F 0 "R9" V 5900 1000 50  0000 L CNN
F 1 "150R" V 5800 950 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5730 1050 50  0001 C CNN
F 3 "~" H 5800 1050 50  0001 C CNN
	1    5800 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E5CF02C
P 5350 850
F 0 "R8" V 5450 800 50  0000 L CNN
F 1 "270R" V 5350 750 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5280 850 50  0001 C CNN
F 3 "~" H 5350 850 50  0001 C CNN
	1    5350 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 850  5800 850 
Wire Wire Line
	5800 900  5800 850 
Connection ~ 5800 850 
Wire Wire Line
	5800 850  5600 850 
Wire Wire Line
	5800 1200 5800 1250
$Comp
L Device:C C3
U 1 1 5E5DDC87
P 5600 1050
F 0 "C3" H 5400 1100 50  0000 L CNN
F 1 "100N" H 5300 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5638 900 50  0001 C CNN
F 3 "~" H 5600 1050 50  0001 C CNN
	1    5600 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1200 5600 1250
Wire Wire Line
	5600 1250 5800 1250
Wire Wire Line
	5600 900  5600 850 
Wire Wire Line
	5500 850  5600 850 
Connection ~ 5600 850 
Text GLabel 4850 850  0    50   Input ~ 0
CASS_OUT
Text GLabel 8000 5350 2    50   Input ~ 0
A0
Text GLabel 8000 5450 2    50   Input ~ 0
A1
Text GLabel 8000 5550 2    50   Input ~ 0
A2
Text GLabel 8000 5650 2    50   Input ~ 0
A3
Text GLabel 8000 5750 2    50   Input ~ 0
A4
Text GLabel 8000 5850 2    50   Input ~ 0
A5
Text GLabel 8000 5950 2    50   Input ~ 0
A6
Text GLabel 8000 6050 2    50   Input ~ 0
A7
Wire Wire Line
	7850 5350 8000 5350
Wire Wire Line
	7850 5450 8000 5450
Wire Wire Line
	7850 5550 8000 5550
Wire Wire Line
	7850 5650 8000 5650
Wire Wire Line
	7850 5750 8000 5750
Wire Wire Line
	7850 5850 8000 5850
Wire Wire Line
	7850 5950 8000 5950
Text GLabel 8000 6250 2    50   Input ~ 0
D0
Text GLabel 8000 6350 2    50   Input ~ 0
D1
Text GLabel 8000 6450 2    50   Input ~ 0
D2
Text GLabel 8000 6550 2    50   Input ~ 0
D3
Text GLabel 8000 6650 2    50   Input ~ 0
D4
Text GLabel 8000 6750 2    50   Input ~ 0
D5
Text GLabel 8000 6850 2    50   Input ~ 0
D6
Text GLabel 8000 6950 2    50   Input ~ 0
D7
Wire Wire Line
	7850 6250 8000 6250
Wire Wire Line
	7850 6350 8000 6350
Wire Wire Line
	7850 6450 8000 6450
Wire Wire Line
	7850 6550 8000 6550
Wire Wire Line
	7850 6650 8000 6650
Wire Wire Line
	7850 6750 8000 6750
Wire Wire Line
	7850 6850 8000 6850
Wire Wire Line
	7850 6950 8000 6950
Text GLabel 10450 6650 2    50   Input ~ 0
ESP_RESET
$Comp
L power:GND #PWR0113
U 1 1 5E6602D2
P 9650 7000
F 0 "#PWR0113" H 9650 6750 50  0001 C CNN
F 1 "GND" H 9655 6827 50  0000 C CNN
F 2 "" H 9650 7000 50  0001 C CNN
F 3 "" H 9650 7000 50  0001 C CNN
	1    9650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6900 9650 6900
Wire Wire Line
	9650 6900 9650 7000
$Comp
L power:+5V #PWR0114
U 1 1 5E670B0A
P 9750 5000
F 0 "#PWR0114" H 9750 4850 50  0001 C CNN
F 1 "+5V" H 9765 5173 50  0000 C CNN
F 2 "" H 9750 5000 50  0001 C CNN
F 3 "" H 9750 5000 50  0001 C CNN
	1    9750 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5E6714FE
P 7150 4900
F 0 "#PWR0115" H 7150 4750 50  0001 C CNN
F 1 "+5V" H 7165 5073 50  0000 C CNN
F 2 "" H 7150 4900 50  0001 C CNN
F 3 "" H 7150 4900 50  0001 C CNN
	1    7150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5000 9750 5150
Wire Wire Line
	7150 4900 7150 5050
Text GLabel 1700 2200 0    50   Input ~ 0
ESP_INT_N
Wire Wire Line
	1700 2200 2000 2200
Text GLabel 9050 5550 0    50   Input ~ 0
ESP_INT_N
Text GLabel 10450 5950 2    50   Input ~ 0
OUT_N
Text GLabel 10450 5450 2    50   Input ~ 0
M1_N
Text GLabel 10450 5550 2    50   Input ~ 0
EXTIOSEL_N
Text GLabel 10450 6050 2    50   Input ~ 0
IN_N
Text GLabel 10450 5750 2    50   Input ~ 0
IOINT_N
Text GLabel 10450 5650 2    50   Input ~ 0
IOWAIT_N
Text GLabel 10450 5850 2    50   Input ~ 0
RESET_N
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 5E71B0CD
P 4350 3800
F 0 "J5" H 4268 4217 50  0000 C CNN
F 1 "Programmer" H 4268 4126 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 4350 3800 50  0001 C CNN
F 3 "~" H 4350 3800 50  0001 C CNN
	1    4350 3800
	-1   0    0    -1  
$EndComp
Text GLabel 3450 2400 2    50   Input ~ 0
I00
Wire Wire Line
	3150 2400 3450 2400
Text GLabel 4000 1400 2    50   Input ~ 0
TXD0
Text GLabel 3450 1500 2    50   Input ~ 0
RXD0
Wire Wire Line
	4000 1400 3150 1400
Wire Wire Line
	3450 1500 3150 1500
Wire Wire Line
	1900 1200 1900 900 
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J1
U 1 1 5E8955D9
P 1800 6450
F 0 "J1" H 1850 5025 50  0000 C CNN
F 1 "TRS-80 Pin Header" H 1850 5116 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x25_Pitch2.54mm" H 1800 6450 50  0001 C CNN
F 3 "~" H 1800 6450 50  0001 C CNN
	1    1800 6450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5E8A5977
P 1350 7750
F 0 "#PWR0120" H 1350 7500 50  0001 C CNN
F 1 "GND" H 1355 7577 50  0000 C CNN
F 2 "" H 1350 7750 50  0001 C CNN
F 3 "" H 1350 7750 50  0001 C CNN
	1    1350 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5250 1350 5250
Wire Wire Line
	1350 5250 1350 5350
Wire Wire Line
	1500 7650 1350 7650
Connection ~ 1350 7650
Wire Wire Line
	1350 7650 1350 7750
Wire Wire Line
	1500 7550 1350 7550
Connection ~ 1350 7550
Wire Wire Line
	1350 7550 1350 7650
Wire Wire Line
	1500 7450 1350 7450
Connection ~ 1350 7450
Wire Wire Line
	1350 7450 1350 7550
Wire Wire Line
	1500 7350 1350 7350
Connection ~ 1350 7350
Wire Wire Line
	1350 7350 1350 7450
Wire Wire Line
	1500 7250 1350 7250
Connection ~ 1350 7250
Wire Wire Line
	1350 7250 1350 7350
Wire Wire Line
	1500 7150 1350 7150
Connection ~ 1350 7150
Wire Wire Line
	1350 7150 1350 7250
Wire Wire Line
	1500 7050 1350 7050
Connection ~ 1350 7050
Wire Wire Line
	1350 7050 1350 7150
Wire Wire Line
	1500 6950 1350 6950
Connection ~ 1350 6950
Wire Wire Line
	1350 6950 1350 7050
Wire Wire Line
	1500 6850 1350 6850
Connection ~ 1350 6850
Wire Wire Line
	1350 6850 1350 6950
Wire Wire Line
	1500 5350 1350 5350
Connection ~ 1350 5350
Wire Wire Line
	1350 5350 1350 5450
Wire Wire Line
	1500 5450 1350 5450
Connection ~ 1350 5450
Wire Wire Line
	1350 5450 1350 5550
Wire Wire Line
	1500 5550 1350 5550
Connection ~ 1350 5550
Wire Wire Line
	1350 5550 1350 5650
Wire Wire Line
	1500 5650 1350 5650
Connection ~ 1350 5650
Wire Wire Line
	1350 5650 1350 5750
Wire Wire Line
	1500 5750 1350 5750
Connection ~ 1350 5750
Wire Wire Line
	1350 5750 1350 5850
Wire Wire Line
	1500 5850 1350 5850
Connection ~ 1350 5850
Wire Wire Line
	1350 5850 1350 5950
Wire Wire Line
	1500 5950 1350 5950
Connection ~ 1350 5950
Wire Wire Line
	1350 5950 1350 6050
Wire Wire Line
	1500 6050 1350 6050
Connection ~ 1350 6050
Wire Wire Line
	1350 6050 1350 6150
Wire Wire Line
	1500 6150 1350 6150
Connection ~ 1350 6150
Wire Wire Line
	1350 6150 1350 6250
Wire Wire Line
	1500 6250 1350 6250
Connection ~ 1350 6250
Wire Wire Line
	1350 6250 1350 6350
Wire Wire Line
	1500 6350 1350 6350
Connection ~ 1350 6350
Wire Wire Line
	1350 6350 1350 6450
Wire Wire Line
	1500 6450 1350 6450
Connection ~ 1350 6450
Wire Wire Line
	1350 6450 1350 6550
Wire Wire Line
	1500 6550 1350 6550
Connection ~ 1350 6550
Wire Wire Line
	1350 6550 1350 6650
Wire Wire Line
	1500 6650 1350 6650
Connection ~ 1350 6650
Wire Wire Line
	1350 6650 1350 6750
Wire Wire Line
	1500 6750 1350 6750
Connection ~ 1350 6750
Wire Wire Line
	1350 6750 1350 6850
Text GLabel 2200 7650 2    50   Input ~ 0
D0
Text GLabel 2200 7550 2    50   Input ~ 0
D1
Text GLabel 2200 7450 2    50   Input ~ 0
D2
Text GLabel 2200 7350 2    50   Input ~ 0
D3
Text GLabel 2200 7250 2    50   Input ~ 0
D4
Text GLabel 2200 7150 2    50   Input ~ 0
D5
Text GLabel 2200 7050 2    50   Input ~ 0
D6
Text GLabel 2200 6850 2    50   Input ~ 0
A0
Text GLabel 2200 6750 2    50   Input ~ 0
A1
Text GLabel 2200 6650 2    50   Input ~ 0
A2
Text GLabel 2200 6550 2    50   Input ~ 0
A3
Text GLabel 2200 6450 2    50   Input ~ 0
A4
Text GLabel 2200 6350 2    50   Input ~ 0
A5
Text GLabel 2200 6250 2    50   Input ~ 0
A6
Text GLabel 2200 6950 2    50   Input ~ 0
D7
Text GLabel 2200 6150 2    50   Input ~ 0
A7
Text GLabel 2200 6050 2    50   Input ~ 0
IN_N
Text GLabel 2200 5950 2    50   Input ~ 0
OUT_N
Text GLabel 2200 5850 2    50   Input ~ 0
RESET_N
Text GLabel 2200 5750 2    50   Input ~ 0
IOINT_N
Text GLabel 2200 5650 2    50   Input ~ 0
IOWAIT_N
Text GLabel 2200 5550 2    50   Input ~ 0
EXTIOSEL_N
Text GLabel 2200 5350 2    50   Input ~ 0
M1_N
Text GLabel 2200 5250 2    50   Input ~ 0
IOREQ_N
Wire Wire Line
	2000 5250 2200 5250
Wire Wire Line
	2000 5350 2200 5350
Wire Wire Line
	2000 5550 2200 5550
Wire Wire Line
	2000 5650 2200 5650
Wire Wire Line
	2000 5750 2200 5750
Wire Wire Line
	2000 5850 2200 5850
Wire Wire Line
	2000 5950 2200 5950
Wire Wire Line
	2000 6050 2200 6050
Wire Wire Line
	2000 6150 2200 6150
Wire Wire Line
	2200 6250 2000 6250
Wire Wire Line
	2000 6350 2200 6350
Wire Wire Line
	2200 6450 2000 6450
Wire Wire Line
	2000 6550 2200 6550
Wire Wire Line
	2200 6650 2000 6650
Wire Wire Line
	2000 6750 2200 6750
Wire Wire Line
	2200 6850 2000 6850
Wire Wire Line
	2200 6950 2000 6950
Wire Wire Line
	2000 7050 2200 7050
Wire Wire Line
	2200 7150 2000 7150
Wire Wire Line
	2000 7250 2200 7250
Wire Wire Line
	2200 7350 2000 7350
Wire Wire Line
	2000 7450 2200 7450
Wire Wire Line
	2200 7550 2000 7550
Wire Wire Line
	2000 7650 2200 7650
Wire Wire Line
	9650 6850 9650 6900
Connection ~ 9650 6900
Wire Wire Line
	7850 6050 8000 6050
Wire Wire Line
	9050 5550 9350 5550
$Comp
L Connector:USB_B_Micro J6
U 1 1 5EB74BAC
P 13250 5550
F 0 "J6" H 13307 6017 50  0000 C CNN
F 1 "USB_B_Micro" H 13307 5926 50  0000 C CNN
F 2 "PocketTRS_Connectors.pretty:USBmicro-B" H 13400 5500 50  0001 C CNN
F 3 "~" H 13400 5500 50  0001 C CNN
	1    13250 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5EB9A7F6
P 13250 6100
F 0 "#PWR0117" H 13250 5850 50  0001 C CNN
F 1 "GND" H 13255 5927 50  0000 C CNN
F 2 "" H 13250 6100 50  0001 C CNN
F 3 "" H 13250 6100 50  0001 C CNN
	1    13250 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 5950 13250 6050
$Comp
L Regulator_Linear:AMS1117-3.3 U4
U 1 1 5EBBDF36
P 14450 5350
F 0 "U4" H 14450 5592 50  0000 C CNN
F 1 "AMS1117-3.3" H 14450 5501 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 14450 5550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 14550 5100 50  0001 C CNN
	1    14450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 5350 13950 5350
Wire Wire Line
	14450 5650 14450 6050
Wire Wire Line
	14450 6050 13950 6050
Connection ~ 13250 6050
Wire Wire Line
	13250 6050 13250 6100
$Comp
L Device:CP C4
U 1 1 5EC06522
P 13950 5650
F 0 "C4" H 14068 5696 50  0000 L CNN
F 1 "100U" H 14068 5605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 13988 5500 50  0001 C CNN
F 3 "~" H 13950 5650 50  0001 C CNN
	1    13950 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5EC07311
P 15000 5650
F 0 "C5" H 15118 5696 50  0000 L CNN
F 1 "100U" H 15118 5605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 15038 5500 50  0001 C CNN
F 3 "~" H 15000 5650 50  0001 C CNN
	1    15000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 5800 15000 6050
Wire Wire Line
	15000 6050 14450 6050
Connection ~ 14450 6050
Wire Wire Line
	14750 5350 15000 5350
Wire Wire Line
	15000 5350 15000 5500
$Comp
L power:+3.3V #PWR0122
U 1 1 5EC2C372
P 15000 5200
F 0 "#PWR0122" H 15000 5050 50  0001 C CNN
F 1 "+3.3V" H 15015 5373 50  0000 C CNN
F 2 "" H 15000 5200 50  0001 C CNN
F 3 "" H 15000 5200 50  0001 C CNN
	1    15000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 5200 15000 5350
Connection ~ 15000 5350
Wire Wire Line
	13950 5500 13950 5350
Connection ~ 13950 5350
Wire Wire Line
	13950 5800 13950 6050
Connection ~ 13950 6050
Wire Wire Line
	13950 6050 13250 6050
$Comp
L Device:C C6
U 1 1 5EC77939
P 10800 8800
F 0 "C6" H 10915 8846 50  0000 L CNN
F 1 "100N" H 10915 8755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10838 8650 50  0001 C CNN
F 3 "~" H 10800 8800 50  0001 C CNN
	1    10800 8800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EC77E32
P 11300 8800
F 0 "C7" H 11415 8846 50  0000 L CNN
F 1 "100N" H 11415 8755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 11338 8650 50  0001 C CNN
F 3 "~" H 11300 8800 50  0001 C CNN
	1    11300 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 8650 10800 8600
Wire Wire Line
	3150 1300 3450 1300
Text GLabel 5850 5650 0    50   Input ~ 0
MISO
Text GLabel 5850 5550 0    50   Input ~ 0
MOSI
Text GLabel 5850 5450 0    50   Input ~ 0
SCK
Wire Wire Line
	5850 5450 6450 5450
Wire Wire Line
	5850 5550 6450 5550
Wire Wire Line
	5850 5650 6450 5650
Text GLabel 10450 6350 2    50   Input ~ 0
MISO
Text GLabel 10450 6250 2    50   Input ~ 0
MOSI
Text GLabel 10450 6150 2    50   Input ~ 0
SCK
Text GLabel 5850 5350 0    50   Input ~ 0
CS_EXPAND
Wire Wire Line
	5850 5350 6100 5350
Text GLabel 9050 5750 0    50   Input ~ 0
CS_EXPAND
Wire Wire Line
	9050 5750 9350 5750
Text GLabel 1150 2300 0    50   Input ~ 0
SCK
Text GLabel 1700 2600 0    50   Input ~ 0
MOSI
Wire Wire Line
	1700 2600 2000 2600
Wire Wire Line
	1150 2300 2000 2300
Text GLabel 3450 2600 2    50   Input ~ 0
CS_SD
Wire Wire Line
	3450 2600 3150 2600
Text GLabel 13900 7300 0    50   Input ~ 0
ESP_MISO
Text GLabel 14950 7300 2    50   Input ~ 0
MISO
$Comp
L Device:R R10
U 1 1 5E982D39
P 14050 7150
F 0 "R10" H 14120 7196 50  0000 L CNN
F 1 "10K" H 14120 7105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13980 7150 50  0001 C CNN
F 3 "~" H 14050 7150 50  0001 C CNN
	1    14050 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5E983740
P 14750 7150
F 0 "R11" H 14820 7196 50  0000 L CNN
F 1 "10K" H 14820 7105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 14680 7150 50  0001 C CNN
F 3 "~" H 14750 7150 50  0001 C CNN
	1    14750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 7300 14050 7300
Wire Wire Line
	14050 7300 14200 7300
Connection ~ 14050 7300
Wire Wire Line
	14600 7300 14750 7300
Wire Wire Line
	14950 7300 14750 7300
Connection ~ 14750 7300
Wire Wire Line
	14050 7000 14050 6950
Wire Wire Line
	14050 6950 14400 6950
Wire Wire Line
	14400 6950 14400 7000
$Comp
L power:+3.3V #PWR0108
U 1 1 5E9E9000
P 14400 6850
F 0 "#PWR0108" H 14400 6700 50  0001 C CNN
F 1 "+3.3V" H 14415 7023 50  0000 C CNN
F 2 "" H 14400 6850 50  0001 C CNN
F 3 "" H 14400 6850 50  0001 C CNN
	1    14400 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 6850 14400 6950
Connection ~ 14400 6950
$Comp
L power:+5V #PWR0125
U 1 1 5E9FE68D
P 14750 6850
F 0 "#PWR0125" H 14750 6700 50  0001 C CNN
F 1 "+5V" H 14765 7023 50  0000 C CNN
F 2 "" H 14750 6850 50  0001 C CNN
F 3 "" H 14750 6850 50  0001 C CNN
	1    14750 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14750 6850 14750 7000
Wire Wire Line
	5600 1250 5600 1900
Connection ~ 5600 1250
Wire Wire Line
	6450 1700 6300 1700
Wire Wire Line
	6300 1700 6300 850 
Wire Wire Line
	6300 850  6200 850 
Wire Wire Line
	5600 1900 5250 1900
Connection ~ 5600 1900
Connection ~ 5250 1900
Wire Wire Line
	5250 1900 5250 1950
Wire Wire Line
	5600 1900 6450 1900
Wire Wire Line
	5250 1500 5800 1500
Wire Wire Line
	6450 1800 6200 1800
Wire Wire Line
	6200 1800 6200 1500
Wire Wire Line
	6200 1500 6100 1500
Wire Wire Line
	4900 1050 5250 1050
Wire Wire Line
	5250 1050 5250 1150
Text Notes 12650 10900 0    50   ~ 0
POCKETTRS V2.3b
Wire Wire Line
	1150 1700 2000 1700
Text GLabel 1150 1700 0    50   Input ~ 0
PTRS_RESET
$Comp
L ESP32-WROVER-B:ESP32-WROVER-B U1
U 1 1 5E96BFAB
P 2600 1950
F 0 "U1" H 2575 3087 60  0000 C CNN
F 1 "ESP32-WROVER-B" H 2575 2981 60  0000 C CNN
F 2 "esp32-wrover.pretty:ESP32-WROVER" H 2200 2350 60  0001 C CNN
F 3 "" H 2200 2350 60  0001 C CNN
	1    2600 1950
	1    0    0    -1  
$EndComp
Text GLabel 1100 850  0    50   Input ~ 0
ESP_RESET
Wire Wire Line
	1100 850  1500 850 
Wire Wire Line
	1500 850  1500 1300
Wire Wire Line
	1500 1300 2000 1300
Text GLabel 14950 1500 2    50   Input ~ 0
VGA_HSYNC
Text GLabel 13750 3500 0    50   Input ~ 0
MOSI
Text GLabel 15050 3300 2    50   Input ~ 0
ESP_MISO
Text GLabel 13750 3400 0    50   Input ~ 0
SCK
$Comp
L Device:C C8
U 1 1 5F11F0D4
P 10350 8800
F 0 "C8" H 10465 8846 50  0000 L CNN
F 1 "100N" H 10465 8755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10388 8650 50  0001 C CNN
F 3 "~" H 10350 8800 50  0001 C CNN
	1    10350 8800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F246F51
P 11050 9150
F 0 "#PWR0123" H 11050 8900 50  0001 C CNN
F 1 "GND" H 11050 9000 50  0000 C CNN
F 2 "" H 11050 9150 50  0001 C CNN
F 3 "" H 11050 9150 50  0001 C CNN
	1    11050 9150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 5F247655
P 11050 8500
F 0 "#PWR0124" H 11050 8350 50  0001 C CNN
F 1 "+5V" H 11050 8640 50  0000 C CNN
F 2 "" H 11050 8500 50  0001 C CNN
F 3 "" H 11050 8500 50  0001 C CNN
	1    11050 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2300 4000 2300
Text GLabel 4000 2300 2    50   Input ~ 0
CS43x1
Text GLabel 13750 3300 0    50   Input ~ 0
CS43x1
Text GLabel 15050 3800 2    50   Input ~ 0
VGA_RED
Text GLabel 15050 3700 2    50   Input ~ 0
POT_VGA_RED
Text GLabel 13750 3800 0    50   Input ~ 0
VGA_GREEN
Text GLabel 13750 3700 0    50   Input ~ 0
POT_VGA_GREEN
Text GLabel 15050 3000 2    50   Input ~ 0
VGA_BLUE
Text GLabel 15050 3100 2    50   Input ~ 0
POT_VGA_BLUE
$Comp
L MCP43X1:MCP43x1 U5
U 1 1 5EE1BCB7
P 14400 3400
F 0 "U5" H 14150 3950 50  0000 C CNN
F 1 "MCP43x1" H 14650 3950 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 14400 3550 50  0001 C CNN
F 3 "" H 14400 3550 50  0001 C CNN
	1    14400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13750 3800 14000 3800
Wire Wire Line
	13750 3700 14000 3700
Wire Wire Line
	13750 3500 14000 3500
Wire Wire Line
	13750 3400 14000 3400
Wire Wire Line
	13750 3300 14000 3300
Wire Wire Line
	15050 3000 14800 3000
Wire Wire Line
	15050 3100 14800 3100
Wire Wire Line
	15050 3300 14800 3300
Wire Wire Line
	15050 3700 14800 3700
Wire Wire Line
	15050 3800 14800 3800
$Comp
L power:GND #PWR0126
U 1 1 5EF3879A
P 14400 4150
F 0 "#PWR0126" H 14400 3900 50  0001 C CNN
F 1 "GND" H 14400 4000 50  0000 C CNN
F 2 "" H 14400 4150 50  0001 C CNN
F 3 "" H 14400 4150 50  0001 C CNN
	1    14400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 3950 14400 4000
Wire Wire Line
	14800 3200 14950 3200
Wire Wire Line
	14950 3200 14950 3600
Wire Wire Line
	14950 4000 14400 4000
Connection ~ 14400 4000
Wire Wire Line
	14400 4000 14400 4150
Wire Wire Line
	14800 3600 14950 3600
Connection ~ 14950 3600
Wire Wire Line
	14950 3600 14950 4000
Wire Wire Line
	14000 3600 13900 3600
Wire Wire Line
	13900 3600 13900 4000
Wire Wire Line
	13900 4000 14400 4000
$Comp
L power:+3.3V #PWR0116
U 1 1 5EEB1E42
P 14400 2800
F 0 "#PWR0116" H 14400 2650 50  0001 C CNN
F 1 "+3.3V" H 14400 2940 50  0000 C CNN
F 2 "" H 14400 2800 50  0001 C CNN
F 3 "" H 14400 2800 50  0001 C CNN
	1    14400 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5EF05C1D
P 9850 8800
F 0 "C9" H 9965 8846 50  0000 L CNN
F 1 "100N" H 9965 8755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9888 8650 50  0001 C CNN
F 3 "~" H 9850 8800 50  0001 C CNN
	1    9850 8800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0127
U 1 1 5EF56273
P 10100 8500
F 0 "#PWR0127" H 10100 8350 50  0001 C CNN
F 1 "+3.3V" H 10100 8640 50  0000 C CNN
F 2 "" H 10100 8500 50  0001 C CNN
F 3 "" H 10100 8500 50  0001 C CNN
	1    10100 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 8600 11050 8600
Wire Wire Line
	11300 8600 11300 8650
Wire Wire Line
	11300 8950 11300 9050
Wire Wire Line
	11300 9050 11050 9050
Wire Wire Line
	10800 9050 10800 8950
Wire Wire Line
	10350 8950 10350 9050
Wire Wire Line
	10350 9050 10100 9050
Wire Wire Line
	9850 9050 9850 8950
Wire Wire Line
	10350 8650 10350 8600
Wire Wire Line
	10350 8600 10100 8600
Wire Wire Line
	9850 8600 9850 8650
Wire Wire Line
	10100 8500 10100 8600
Connection ~ 10100 8600
Wire Wire Line
	10100 8600 9850 8600
Wire Wire Line
	11050 8500 11050 8600
Connection ~ 11050 8600
Wire Wire Line
	11050 8600 11300 8600
$Comp
L power:GND #PWR0128
U 1 1 5F078B92
P 10100 9150
F 0 "#PWR0128" H 10100 8900 50  0001 C CNN
F 1 "GND" H 10100 9000 50  0000 C CNN
F 2 "" H 10100 9150 50  0001 C CNN
F 3 "" H 10100 9150 50  0001 C CNN
	1    10100 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 9150 10100 9050
Connection ~ 10100 9050
Wire Wire Line
	10100 9050 9850 9050
Wire Wire Line
	11050 9150 11050 9050
Connection ~ 11050 9050
Wire Wire Line
	11050 9050 10800 9050
Wire Wire Line
	1800 2500 1800 3000
$Comp
L Device:R R14
U 1 1 5F3807BD
P 5150 3500
F 0 "R14" V 5150 3500 50  0000 C CNN
F 1 "12K" V 5250 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5080 3500 50  0001 C CNN
F 3 "~" H 5150 3500 50  0001 C CNN
	1    5150 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5F380A2C
P 5150 2950
F 0 "R15" V 5150 2950 50  0000 C CNN
F 1 "12K" V 5050 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5080 2950 50  0001 C CNN
F 3 "~" H 5150 2950 50  0001 C CNN
	1    5150 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5F2B2A6E
P 7850 3850
F 0 "C10" H 7950 3900 50  0000 L CNN
F 1 "100N" H 7950 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7888 3700 50  0001 C CNN
F 3 "~" H 7850 3850 50  0001 C CNN
	1    7850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3100 7550 3200
Connection ~ 7550 3100
Wire Wire Line
	7850 3100 7550 3100
Wire Wire Line
	7550 3050 7550 3100
Connection ~ 7550 3600
Wire Wire Line
	7550 3500 7550 3600
Wire Wire Line
	7850 3200 7850 3100
$Comp
L power:+3.3V #PWR0129
U 1 1 5F206C4D
P 7550 3050
F 0 "#PWR0129" H 7550 2900 50  0001 C CNN
F 1 "+3.3V" H 7565 3223 50  0000 C CNN
F 2 "" H 7550 3050 50  0001 C CNN
F 3 "" H 7550 3050 50  0001 C CNN
	1    7550 3050
	1    0    0    -1  
$EndComp
Connection ~ 7850 3700
Wire Wire Line
	7850 3700 7850 3500
$Comp
L Device:R R12
U 1 1 5F195A63
P 7550 3350
F 0 "R12" H 7620 3396 50  0000 L CNN
F 1 "4K7" H 7620 3305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7480 3350 50  0001 C CNN
F 3 "~" H 7550 3350 50  0001 C CNN
	1    7550 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5F195648
P 7850 3350
F 0 "R13" H 7920 3396 50  0000 L CNN
F 1 "4K7" H 7920 3305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7780 3350 50  0001 C CNN
F 3 "~" H 7850 3350 50  0001 C CNN
	1    7850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5E76EE9A
P 7150 3400
F 0 "#PWR0119" H 7150 3250 50  0001 C CNN
F 1 "+5V" H 7165 3573 50  0000 C CNN
F 2 "" H 7150 3400 50  0001 C CNN
F 3 "" H 7150 3400 50  0001 C CNN
	1    7150 3400
	1    0    0    -1  
$EndComp
Text GLabel 7250 3900 2    50   Input ~ 0
RXD0
Text GLabel 7250 3800 2    50   Input ~ 0
TXD0
$Comp
L power:GND #PWR0118
U 1 1 5E737F39
P 7850 4150
F 0 "#PWR0118" H 7850 3900 50  0001 C CNN
F 1 "GND" H 7855 3977 50  0000 C CNN
F 2 "" H 7850 4150 50  0001 C CNN
F 3 "" H 7850 4150 50  0001 C CNN
	1    7850 4150
	1    0    0    -1  
$EndComp
Text GLabel 8300 3700 2    50   Input ~ 0
ESP_RESET
Text GLabel 8300 3600 2    50   Input ~ 0
I00
Wire Wire Line
	5300 2950 5400 2950
Wire Wire Line
	5300 3500 5400 3500
Wire Wire Line
	4800 2950 5000 2950
Wire Wire Line
	4950 3500 5000 3500
Wire Wire Line
	5700 3150 5700 3200
Wire Wire Line
	5700 3200 4950 3200
Wire Wire Line
	4950 3200 4950 3500
Connection ~ 4950 3500
Wire Wire Line
	5700 3700 5700 3750
Wire Wire Line
	5700 3750 4800 3750
Wire Wire Line
	5700 3300 6450 3300
Wire Wire Line
	6450 3300 6450 3600
Wire Wire Line
	6450 3600 7550 3600
Wire Wire Line
	5700 2750 6800 2750
Wire Wire Line
	6800 2750 6800 3700
Wire Wire Line
	6800 3700 7850 3700
Text Notes 13450 11050 0    50   ~ 0
7 September 2021
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5F682E52
P 14400 7200
F 0 "Q1" V 14649 7200 50  0000 C CNN
F 1 "BSS138" V 14740 7200 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 14600 7125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 14400 7200 50  0001 L CNN
	1    14400 7200
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q2
U 1 1 5F6A7B46
P 5600 3500
F 0 "Q2" H 5791 3546 50  0000 L CNN
F 1 "MMBT3904" H 5791 3455 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5800 3425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5600 3500 50  0001 L CNN
	1    5600 3500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 5F6AB329
P 5600 2950
F 0 "Q3" H 5791 2996 50  0000 L CNN
F 1 "MMBT3904" H 5791 2905 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5800 2875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5600 2950 50  0001 L CNN
	1    5600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4000 7150 4000
Wire Wire Line
	7150 4000 7150 3400
Wire Wire Line
	7850 4000 7850 4100
Wire Wire Line
	4550 4100 7850 4100
Connection ~ 7850 4100
Wire Wire Line
	7850 4100 7850 4150
Wire Wire Line
	7250 3800 4550 3800
Wire Wire Line
	7250 3900 4550 3900
$Comp
L MCP23008-E-P-ND:MCP23S08T-E U3
U 1 1 5F4F19DE
P 9650 5850
F 0 "U3" H 9400 6650 60  0000 C CNN
F 1 "MCP23S08T-E" H 9150 6550 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-20_5.3x7.2mm_Pitch0.65mm" H 9650 6550 60  0001 L CNN
F 3 "" H 9850 6150 60  0001 L CNN
	1    9650 5850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10400 6450 10400 6550
Wire Wire Line
	10150 6450 10400 6450
Wire Wire Line
	10150 6150 10450 6150
Wire Wire Line
	10150 6250 10450 6250
Wire Wire Line
	10150 5450 10450 5450
Wire Wire Line
	10150 5550 10450 5550
Wire Wire Line
	10150 5650 10450 5650
Wire Wire Line
	10150 5750 10450 5750
Wire Wire Line
	10150 5850 10450 5850
Wire Wire Line
	10150 5950 10450 5950
Wire Wire Line
	10150 6050 10450 6050
Wire Wire Line
	10150 6550 10400 6550
Connection ~ 10400 6550
Wire Wire Line
	10400 6550 10400 6900
Wire Wire Line
	10150 6650 10450 6650
Wire Wire Line
	10150 6350 10450 6350
Wire Wire Line
	10150 5350 10450 5350
Wire Wire Line
	7550 3600 8300 3600
Wire Wire Line
	7850 3700 8300 3700
$Comp
L Switch:SW_Push SW2
U 1 1 5F8AF772
P 13500 8800
F 0 "SW2" H 13500 9085 50  0000 C CNN
F 1 "ESP_RESET" H 13500 8994 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 13500 9000 50  0001 C CNN
F 3 "~" H 13500 9000 50  0001 C CNN
	1    13500 8800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5E52FC4B
P 14450 8800
F 0 "SW1" H 14450 9085 50  0000 C CNN
F 1 "PTRS_RESET" H 14450 8994 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 14450 9000 50  0001 C CNN
F 3 "~" H 14450 9000 50  0001 C CNN
	1    14450 8800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5EBC88EB
P 14850 8450
F 0 "#PWR0110" H 14850 8300 50  0001 C CNN
F 1 "+3.3V" H 14865 8623 50  0000 C CNN
F 2 "" H 14850 8450 50  0001 C CNN
F 3 "" H 14850 8450 50  0001 C CNN
	1    14850 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 8800 15000 8800
Connection ~ 14850 8800
Wire Wire Line
	14850 8750 14850 8800
$Comp
L Device:R R16
U 1 1 5EBB332D
P 14850 8600
F 0 "R16" V 14950 8550 50  0000 L CNN
F 1 "4K7" V 14850 8550 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 14780 8600 50  0001 C CNN
F 3 "~" H 14850 8600 50  0001 C CNN
	1    14850 8600
	1    0    0    -1  
$EndComp
Text GLabel 15000 8800 2    50   Input ~ 0
PTRS_RESET
$Comp
L Interface_Expansion:MCP23S17_SP U2
U 1 1 5E79654E
P 7150 6150
F 0 "U2" H 7500 7250 50  0000 C CNN
F 1 "MCP23S17_SP" H 7500 7150 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 7350 5150 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 7350 5050 50  0001 L CNN
	1    7150 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 8800 13900 8900
$Comp
L power:GND #PWR0107
U 1 1 5E52F83F
P 13900 8900
F 0 "#PWR0107" H 13900 8650 50  0001 C CNN
F 1 "GND" H 13905 8727 50  0000 C CNN
F 2 "" H 13900 8900 50  0001 C CNN
F 3 "" H 13900 8900 50  0001 C CNN
	1    13900 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 8800 13700 8800
Connection ~ 13900 8800
Text GLabel 13050 8800 0    50   Input ~ 0
ESP_RESET
Wire Wire Line
	13050 8800 13300 8800
$Comp
L Device:CP C11
U 1 1 5F93150D
P 15400 5650
F 0 "C11" H 15518 5696 50  0000 L CNN
F 1 "10U" H 15518 5605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 15438 5500 50  0001 C CNN
F 3 "~" H 15400 5650 50  0001 C CNN
	1    15400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 5350 15400 5350
Wire Wire Line
	15400 5350 15400 5500
Wire Wire Line
	15400 5800 15400 6050
Wire Wire Line
	15400 6050 15000 6050
Connection ~ 15000 6050
Wire Wire Line
	4800 2950 4800 3700
Wire Wire Line
	4550 3600 4950 3600
Wire Wire Line
	4950 3600 4950 3500
Wire Wire Line
	4550 3700 4800 3700
Connection ~ 4800 3700
Wire Wire Line
	4800 3700 4800 3750
$Comp
L Device:C C2
U 1 1 5FC96A78
P 6050 850
F 0 "C2" V 5798 850 50  0000 C CNN
F 1 "10U" V 5889 850 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6088 700 50  0001 C CNN
F 3 "~" H 6050 850 50  0001 C CNN
	1    6050 850 
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FC96EFC
P 5950 1500
F 0 "C1" V 5698 1500 50  0000 C CNN
F 1 "10U" V 5789 1500 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5988 1350 50  0001 C CNN
F 3 "~" H 5950 1500 50  0001 C CNN
	1    5950 1500
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 5FC97B1B
P 5050 1700
F 0 "C12" V 5000 1500 50  0000 L CNN
F 1 "1U" V 5000 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5088 1550 50  0001 C CNN
F 3 "~" H 5050 1700 50  0001 C CNN
	1    5050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 850  5200 850 
Wire Wire Line
	4900 1500 5050 1500
Wire Wire Line
	5050 1550 5050 1500
Connection ~ 5050 1500
Wire Wire Line
	5050 1500 5250 1500
Wire Wire Line
	5050 1850 5050 1900
Wire Wire Line
	5050 1900 5250 1900
Wire Wire Line
	13550 5350 13950 5350
$Comp
L power:+5V #PWR0121
U 1 1 6008D4CC
P 13950 5200
F 0 "#PWR0121" H 13950 5050 50  0001 C CNN
F 1 "+5V" H 13965 5373 50  0000 C CNN
F 2 "" H 13950 5200 50  0001 C CNN
F 3 "" H 13950 5200 50  0001 C CNN
	1    13950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 5200 13950 5350
Wire Wire Line
	14650 8800 14850 8800
Wire Wire Line
	13900 8800 14250 8800
Wire Wire Line
	1800 1100 1800 2500
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J7
U 1 1 612D877C
P 3750 6450
F 0 "J7" H 3800 5025 50  0000 C CNN
F 1 "TRS-80 Edge Connector" H 3800 5116 50  0000 C CNN
F 2 "PocketTRS_Connectors.pretty:EDGE50" H 3750 6450 50  0001 C CNN
F 3 "~" H 3750 6450 50  0001 C CNN
	1    3750 6450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 612D8782
P 3300 7750
F 0 "#PWR0130" H 3300 7500 50  0001 C CNN
F 1 "GND" H 3305 7577 50  0000 C CNN
F 2 "" H 3300 7750 50  0001 C CNN
F 3 "" H 3300 7750 50  0001 C CNN
	1    3300 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5250 3300 5250
Wire Wire Line
	3300 5250 3300 5350
Wire Wire Line
	3450 7650 3300 7650
Connection ~ 3300 7650
Wire Wire Line
	3300 7650 3300 7750
Wire Wire Line
	3450 7550 3300 7550
Connection ~ 3300 7550
Wire Wire Line
	3300 7550 3300 7650
Wire Wire Line
	3450 7450 3300 7450
Connection ~ 3300 7450
Wire Wire Line
	3300 7450 3300 7550
Wire Wire Line
	3450 7350 3300 7350
Connection ~ 3300 7350
Wire Wire Line
	3300 7350 3300 7450
Wire Wire Line
	3450 7250 3300 7250
Connection ~ 3300 7250
Wire Wire Line
	3300 7250 3300 7350
Wire Wire Line
	3450 7150 3300 7150
Connection ~ 3300 7150
Wire Wire Line
	3300 7150 3300 7250
Wire Wire Line
	3450 7050 3300 7050
Connection ~ 3300 7050
Wire Wire Line
	3300 7050 3300 7150
Wire Wire Line
	3450 6950 3300 6950
Connection ~ 3300 6950
Wire Wire Line
	3300 6950 3300 7050
Wire Wire Line
	3450 6850 3300 6850
Connection ~ 3300 6850
Wire Wire Line
	3300 6850 3300 6950
Wire Wire Line
	3450 5350 3300 5350
Connection ~ 3300 5350
Wire Wire Line
	3300 5350 3300 5450
Wire Wire Line
	3450 5450 3300 5450
Connection ~ 3300 5450
Wire Wire Line
	3300 5450 3300 5550
Wire Wire Line
	3450 5550 3300 5550
Connection ~ 3300 5550
Wire Wire Line
	3300 5550 3300 5650
Wire Wire Line
	3450 5650 3300 5650
Connection ~ 3300 5650
Wire Wire Line
	3300 5650 3300 5750
Wire Wire Line
	3450 5750 3300 5750
Connection ~ 3300 5750
Wire Wire Line
	3300 5750 3300 5850
Wire Wire Line
	3450 5850 3300 5850
Connection ~ 3300 5850
Wire Wire Line
	3300 5850 3300 5950
Wire Wire Line
	3450 5950 3300 5950
Connection ~ 3300 5950
Wire Wire Line
	3300 5950 3300 6050
Wire Wire Line
	3450 6050 3300 6050
Connection ~ 3300 6050
Wire Wire Line
	3300 6050 3300 6150
Wire Wire Line
	3450 6150 3300 6150
Connection ~ 3300 6150
Wire Wire Line
	3300 6150 3300 6250
Wire Wire Line
	3450 6250 3300 6250
Connection ~ 3300 6250
Wire Wire Line
	3300 6250 3300 6350
Wire Wire Line
	3450 6350 3300 6350
Connection ~ 3300 6350
Wire Wire Line
	3300 6350 3300 6450
Wire Wire Line
	3450 6450 3300 6450
Connection ~ 3300 6450
Wire Wire Line
	3300 6450 3300 6550
Wire Wire Line
	3450 6550 3300 6550
Connection ~ 3300 6550
Wire Wire Line
	3300 6550 3300 6650
Wire Wire Line
	3450 6650 3300 6650
Connection ~ 3300 6650
Wire Wire Line
	3300 6650 3300 6750
Wire Wire Line
	3450 6750 3300 6750
Connection ~ 3300 6750
Wire Wire Line
	3300 6750 3300 6850
Text GLabel 4150 7650 2    50   Input ~ 0
D0
Text GLabel 4150 7550 2    50   Input ~ 0
D1
Text GLabel 4150 7450 2    50   Input ~ 0
D2
Text GLabel 4150 7350 2    50   Input ~ 0
D3
Text GLabel 4150 7250 2    50   Input ~ 0
D4
Text GLabel 4150 7150 2    50   Input ~ 0
D5
Text GLabel 4150 7050 2    50   Input ~ 0
D6
Text GLabel 4150 6850 2    50   Input ~ 0
A0
Text GLabel 4150 6750 2    50   Input ~ 0
A1
Text GLabel 4150 6650 2    50   Input ~ 0
A2
Text GLabel 4150 6550 2    50   Input ~ 0
A3
Text GLabel 4150 6450 2    50   Input ~ 0
A4
Text GLabel 4150 6350 2    50   Input ~ 0
A5
Text GLabel 4150 6250 2    50   Input ~ 0
A6
Text GLabel 4150 6950 2    50   Input ~ 0
D7
Text GLabel 4150 6150 2    50   Input ~ 0
A7
Text GLabel 4150 6050 2    50   Input ~ 0
IN_N
Text GLabel 4150 5950 2    50   Input ~ 0
OUT_N
Text GLabel 4150 5850 2    50   Input ~ 0
RESET_N
Text GLabel 4150 5750 2    50   Input ~ 0
IOINT_N
Text GLabel 4150 5650 2    50   Input ~ 0
IOWAIT_N
Text GLabel 4150 5550 2    50   Input ~ 0
EXTIOSEL_N
Text GLabel 4150 5350 2    50   Input ~ 0
M1_N
Text GLabel 4150 5250 2    50   Input ~ 0
IOREQ_N
Wire Wire Line
	3950 5250 4150 5250
Wire Wire Line
	3950 5350 4150 5350
Wire Wire Line
	3950 5550 4150 5550
Wire Wire Line
	3950 5650 4150 5650
Wire Wire Line
	3950 5750 4150 5750
Wire Wire Line
	3950 5850 4150 5850
Wire Wire Line
	3950 5950 4150 5950
Wire Wire Line
	3950 6050 4150 6050
Wire Wire Line
	3950 6150 4150 6150
Wire Wire Line
	4150 6250 3950 6250
Wire Wire Line
	3950 6350 4150 6350
Wire Wire Line
	4150 6450 3950 6450
Wire Wire Line
	3950 6550 4150 6550
Wire Wire Line
	4150 6650 3950 6650
Wire Wire Line
	3950 6750 4150 6750
Wire Wire Line
	4150 6850 3950 6850
Wire Wire Line
	4150 6950 3950 6950
Wire Wire Line
	3950 7050 4150 7050
Wire Wire Line
	4150 7150 3950 7150
Wire Wire Line
	3950 7250 4150 7250
Wire Wire Line
	4150 7350 3950 7350
Wire Wire Line
	3950 7450 4150 7450
Wire Wire Line
	4150 7550 3950 7550
Wire Wire Line
	3950 7650 4150 7650
$Comp
L Device:R R17
U 1 1 6121C563
P 6100 5100
F 0 "R17" H 6170 5146 50  0000 L CNN
F 1 "10K" H 6170 5055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 5100 50  0001 C CNN
F 3 "~" H 6100 5100 50  0001 C CNN
	1    6100 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0131
U 1 1 6121CBDA
P 6100 4850
F 0 "#PWR0131" H 6100 4700 50  0001 C CNN
F 1 "+3.3V" H 6115 5023 50  0000 C CNN
F 2 "" H 6100 4850 50  0001 C CNN
F 3 "" H 6100 4850 50  0001 C CNN
	1    6100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4850 6100 4950
Wire Wire Line
	6100 5250 6100 5350
Connection ~ 6100 5350
Wire Wire Line
	6100 5350 6450 5350
$Comp
L SDCard:SD_Card J8
U 1 1 612ADED4
P 7250 9450
F 0 "J8" H 7250 10115 50  0000 C CNN
F 1 "SD_Card" H 7250 10024 50  0000 C CNN
F 2 "PocketTRS_Connectors.pretty:TFP09-2-12B" H 7250 9450 50  0001 C CNN
F 3 "http://portal.fciconnect.com/Comergent//fci/drawing/10067847.pdf" H 7250 9450 50  0001 C CNN
	1    7250 9450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 612AF2A8
P 8500 9750
F 0 "#PWR0132" H 8500 9500 50  0001 C CNN
F 1 "GND" H 8500 9600 50  0000 C CNN
F 2 "" H 8500 9750 50  0001 C CNN
F 3 "" H 8500 9750 50  0001 C CNN
	1    8500 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 9250 8500 9250
Wire Wire Line
	8500 9250 8500 9350
Wire Wire Line
	8150 9350 8500 9350
Connection ~ 8500 9350
Wire Wire Line
	8500 9350 8500 9550
Wire Wire Line
	8150 9550 8500 9550
Connection ~ 8500 9550
Wire Wire Line
	8500 9550 8500 9650
Wire Wire Line
	8150 9650 8500 9650
Connection ~ 8500 9650
Wire Wire Line
	8500 9650 8500 9750
Wire Wire Line
	6350 9550 5850 9550
$Comp
L power:GND #PWR0133
U 1 1 613A4EC9
P 5850 10250
F 0 "#PWR0133" H 5850 10000 50  0001 C CNN
F 1 "GND" H 5850 10100 50  0000 C CNN
F 2 "" H 5850 10250 50  0001 C CNN
F 3 "" H 5850 10250 50  0001 C CNN
	1    5850 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 9550 5850 10250
Text GLabel 4850 9650 0    50   Input ~ 0
ESP_MISO
Text GLabel 4850 9250 0    50   Input ~ 0
MOSI
$Comp
L power:+3.3V #PWR0134
U 1 1 6146D5B8
P 6200 8500
F 0 "#PWR0134" H 6200 8350 50  0001 C CNN
F 1 "+3.3V" H 6200 8640 50  0000 C CNN
F 2 "" H 6200 8500 50  0001 C CNN
F 3 "" H 6200 8500 50  0001 C CNN
	1    6200 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 9350 6200 9350
Wire Wire Line
	6200 9350 6200 8600
$Comp
L Device:R R18
U 1 1 614A2497
P 5900 8850
F 0 "R18" H 5970 8896 50  0000 L CNN
F 1 "10K" H 5970 8805 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5830 8850 50  0001 C CNN
F 3 "~" H 5900 8850 50  0001 C CNN
	1    5900 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 9050 5900 9050
Wire Wire Line
	5900 9050 5900 9000
Wire Wire Line
	6200 8600 5900 8600
Wire Wire Line
	5900 8600 5900 8700
Connection ~ 6200 8600
Wire Wire Line
	6200 8600 6200 8500
Text GLabel 4850 9150 0    50   Input ~ 0
CS_SD
$Comp
L Device:R R19
U 1 1 616768AE
P 5600 8850
F 0 "R19" H 5670 8896 50  0000 L CNN
F 1 "10K" H 5670 8805 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5530 8850 50  0001 C CNN
F 3 "~" H 5600 8850 50  0001 C CNN
	1    5600 8850
	1    0    0    -1  
$EndComp
Connection ~ 5900 8600
Wire Wire Line
	5600 8600 5600 8700
Wire Wire Line
	5600 8600 5900 8600
Wire Wire Line
	5600 9000 5600 9150
Wire Wire Line
	5600 9150 6350 9150
Connection ~ 5600 9150
$Comp
L Device:R R20
U 1 1 6181FD12
P 5300 8850
F 0 "R20" H 5370 8896 50  0000 L CNN
F 1 "10K" H 5370 8805 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 8850 50  0001 C CNN
F 3 "~" H 5300 8850 50  0001 C CNN
	1    5300 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 8700 5300 8600
Wire Wire Line
	5300 8600 5600 8600
Connection ~ 5600 8600
Wire Wire Line
	5300 9000 5300 9750
Wire Wire Line
	5300 9750 6350 9750
Text GLabel 4850 9450 0    50   Input ~ 0
SCK
$Comp
L power:+5V #PWR0135
U 1 1 619A36B4
P 5850 6750
F 0 "#PWR0135" H 5850 6600 50  0001 C CNN
F 1 "+5V" H 5865 6923 50  0000 C CNN
F 2 "" H 5850 6750 50  0001 C CNN
F 3 "" H 5850 6750 50  0001 C CNN
	1    5850 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6750 6300 6850
Wire Wire Line
	6450 6850 6300 6850
Connection ~ 6300 6850
Wire Wire Line
	6300 6850 6300 7300
Wire Wire Line
	6450 6950 5850 6950
Wire Wire Line
	5850 6750 5850 6950
Wire Wire Line
	4850 9150 5600 9150
Wire Wire Line
	4850 9250 5000 9250
Wire Wire Line
	4850 9450 6350 9450
Wire Wire Line
	4850 9650 6350 9650
$Comp
L Device:R R21
U 1 1 6136EADA
P 5000 8850
F 0 "R21" H 5070 8896 50  0000 L CNN
F 1 "10K" H 5070 8805 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 8850 50  0001 C CNN
F 3 "~" H 5000 8850 50  0001 C CNN
	1    5000 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 8600 5000 8600
Wire Wire Line
	5000 8600 5000 8700
Connection ~ 5300 8600
Wire Wire Line
	5000 9000 5000 9250
Connection ~ 5000 9250
Wire Wire Line
	5000 9250 6350 9250
$EndSCHEMATC
