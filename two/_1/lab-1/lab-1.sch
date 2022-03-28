EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5FF7A855
P 5300 3050
F 0 "J1" H 5350 4167 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 5350 4076 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical_SMD" H 5300 3050 50  0001 C CNN
F 3 "~" H 5300 3050 50  0001 C CNN
	1    5300 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FF7FE60
P 3800 2150
F 0 "D1" H 3793 2367 50  0000 C CNN
F 1 "LED" H 3793 2276 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3800 2150 50  0001 C CNN
F 3 "~" H 3800 2150 50  0001 C CNN
	1    3800 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5FF811C9
P 3800 2600
F 0 "D2" H 3793 2817 50  0000 C CNN
F 1 "LED" H 3793 2726 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3800 2600 50  0001 C CNN
F 3 "~" H 3800 2600 50  0001 C CNN
	1    3800 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5FF815D5
P 3800 3050
F 0 "D3" H 3793 3267 50  0000 C CNN
F 1 "LED" H 3793 3176 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3800 3050 50  0001 C CNN
F 3 "~" H 3800 3050 50  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5FF81633
P 3800 3550
F 0 "D4" H 3793 3767 50  0000 C CNN
F 1 "LED" H 3793 3676 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3800 3550 50  0001 C CNN
F 3 "~" H 3800 3550 50  0001 C CNN
	1    3800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FF8176D
P 3350 2150
F 0 "R1" V 3143 2150 50  0000 C CNN
F 1 "200" V 3234 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3280 2150 50  0001 C CNN
F 3 "~" H 3350 2150 50  0001 C CNN
	1    3350 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FF82E96
P 3350 2600
F 0 "R2" V 3143 2600 50  0000 C CNN
F 1 "200" V 3234 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3280 2600 50  0001 C CNN
F 3 "~" H 3350 2600 50  0001 C CNN
	1    3350 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FF833D1
P 3350 3050
F 0 "R3" V 3143 3050 50  0000 C CNN
F 1 "200" V 3234 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3280 3050 50  0001 C CNN
F 3 "~" H 3350 3050 50  0001 C CNN
	1    3350 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FF83586
P 3350 3550
F 0 "R4" V 3143 3550 50  0000 C CNN
F 1 "200" V 3234 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3280 3550 50  0001 C CNN
F 3 "~" H 3350 3550 50  0001 C CNN
	1    3350 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 2150 3950 2150
Wire Wire Line
	5100 2250 3950 2250
Wire Wire Line
	3950 2250 3950 2600
Wire Wire Line
	5100 2350 4050 2350
Wire Wire Line
	4050 2350 4050 3050
Wire Wire Line
	4050 3050 3950 3050
Wire Wire Line
	5100 2450 4150 2450
Wire Wire Line
	4150 2450 4150 3150
Wire Wire Line
	4150 3150 3950 3150
Wire Wire Line
	3950 3150 3950 3550
Wire Wire Line
	3650 3550 3500 3550
Wire Wire Line
	3650 3050 3500 3050
Wire Wire Line
	3650 2600 3500 2600
Wire Wire Line
	3650 2150 3500 2150
$Comp
L Device:LED_RGBC D5
U 1 1 5FF88E22
P 7750 2350
F 0 "D5" H 7750 1883 50  0000 C CNN
F 1 "LED_RGBC" H 7750 1974 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_1210" H 7750 2300 50  0001 C CNN
F 3 "~" H 7750 2300 50  0001 C CNN
	1    7750 2350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FFA66AE
P 8150 2450
F 0 "#PWR04" H 8150 2200 50  0001 C CNN
F 1 "GND" H 8155 2277 50  0000 C CNN
F 2 "" H 8150 2450 50  0001 C CNN
F 3 "" H 8150 2450 50  0001 C CNN
	1    8150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2350 8150 2350
Wire Wire Line
	8150 2350 8150 2450
$Comp
L power:GND #PWR01
U 1 1 5FFAA149
P 2900 3700
F 0 "#PWR01" H 2900 3450 50  0001 C CNN
F 1 "GND" H 2905 3527 50  0000 C CNN
F 2 "" H 2900 3700 50  0001 C CNN
F 3 "" H 2900 3700 50  0001 C CNN
	1    2900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3700 2900 3550
Wire Wire Line
	2900 2150 3200 2150
Wire Wire Line
	3200 2600 2900 2600
Connection ~ 2900 2600
Wire Wire Line
	2900 2600 2900 2150
Wire Wire Line
	3200 3050 2900 3050
Connection ~ 2900 3050
Wire Wire Line
	2900 3050 2900 2600
Wire Wire Line
	3200 3550 2900 3550
Connection ~ 2900 3550
Wire Wire Line
	2900 3550 2900 3050
$Comp
L Display_Character:KCSC02-106 U1
U 1 1 5FFACDA5
P 8150 3950
F 0 "U1" H 8150 4617 50  0000 C CNN
F 1 "KCSC02-106" H 8150 4526 50  0000 C CNN
F 2 "Display_7Segment:KCSC02-106" H 8150 3350 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSC02-106(Ver.10A).pdf" H 7650 4425 50  0001 L CNN
	1    8150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2550 7550 2550
Wire Wire Line
	6850 2850 6850 2550
Wire Wire Line
	6750 2850 6850 2850
Wire Wire Line
	6750 2350 7550 2350
Wire Wire Line
	6750 2500 6750 2350
Wire Wire Line
	6750 2150 7550 2150
Wire Wire Line
	5600 2350 6350 2350
Wire Wire Line
	6450 2250 6450 2500
Wire Wire Line
	5600 2250 6450 2250
Wire Wire Line
	6450 2150 5600 2150
$Comp
L Device:R R7
U 1 1 5FFA2C60
P 6600 2850
F 0 "R7" V 6393 2850 50  0000 C CNN
F 1 "150" V 6484 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 6530 2850 50  0001 C CNN
F 3 "~" H 6600 2850 50  0001 C CNN
	1    6600 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FFA2A8C
P 6600 2500
F 0 "R6" V 6393 2500 50  0000 C CNN
F 1 "150" V 6484 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 6530 2500 50  0001 C CNN
F 3 "~" H 6600 2500 50  0001 C CNN
	1    6600 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FF9F65C
P 6600 2150
F 0 "R5" V 6393 2150 50  0000 C CNN
F 1 "150" V 6484 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 6530 2150 50  0001 C CNN
F 3 "~" H 6600 2150 50  0001 C CNN
	1    6600 2150
	0    1    1    0   
$EndComp
NoConn ~ 5100 2550
$Comp
L power:GND #PWR02
U 1 1 5FFB3D84
P 5600 2650
F 0 "#PWR02" H 5600 2400 50  0001 C CNN
F 1 "GND" V 5605 2522 50  0000 R CNN
F 2 "" H 5600 2650 50  0001 C CNN
F 3 "" H 5600 2650 50  0001 C CNN
	1    5600 2650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FFB82F9
P 8700 4350
F 0 "#PWR05" H 8700 4100 50  0001 C CNN
F 1 "GND" H 8705 4177 50  0000 C CNN
F 2 "" H 8700 4350 50  0001 C CNN
F 3 "" H 8700 4350 50  0001 C CNN
	1    8700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2850 6450 2850
Wire Wire Line
	6350 2350 6350 2850
$Comp
L Device:R R9
U 1 1 5FFD06CF
P 7250 3350
F 0 "R9" V 7043 3350 50  0000 C CNN
F 1 "100" V 7134 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 7180 3350 50  0001 C CNN
F 3 "~" H 7250 3350 50  0001 C CNN
	1    7250 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FFD13E9
P 7250 3650
F 0 "R10" V 7043 3650 50  0000 C CNN
F 1 "100" V 7134 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 7180 3650 50  0001 C CNN
F 3 "~" H 7250 3650 50  0001 C CNN
	1    7250 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5FFD1F47
P 7250 3950
F 0 "R11" V 7043 3950 50  0000 C CNN
F 1 "100" V 7134 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 7180 3950 50  0001 C CNN
F 3 "~" H 7250 3950 50  0001 C CNN
	1    7250 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5FFD3D75
P 7250 4250
F 0 "R12" V 7043 4250 50  0000 C CNN
F 1 "100" V 7134 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 7180 4250 50  0001 C CNN
F 3 "~" H 7250 4250 50  0001 C CNN
	1    7250 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5FFD3D7B
P 7250 4550
F 0 "R13" V 7043 4550 50  0000 C CNN
F 1 "100" V 7134 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 7180 4550 50  0001 C CNN
F 3 "~" H 7250 4550 50  0001 C CNN
	1    7250 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5FFD3D81
P 7250 4850
F 0 "R14" V 7043 4850 50  0000 C CNN
F 1 "100" V 7134 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 7180 4850 50  0001 C CNN
F 3 "~" H 7250 4850 50  0001 C CNN
	1    7250 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5FFD3D87
P 7250 5150
F 0 "R15" V 7043 5150 50  0000 C CNN
F 1 "100" V 7134 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 7180 5150 50  0001 C CNN
F 3 "~" H 7250 5150 50  0001 C CNN
	1    7250 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 5150 5600 5150
Wire Wire Line
	5600 5150 5600 4050
Wire Wire Line
	7100 4850 5750 4850
Wire Wire Line
	5750 4850 5750 3950
Wire Wire Line
	5750 3950 5600 3950
Wire Wire Line
	7100 4550 5900 4550
Wire Wire Line
	5900 4550 5900 3850
Wire Wire Line
	5900 3850 5600 3850
Wire Wire Line
	7100 4250 6050 4250
Wire Wire Line
	6050 4250 6050 3750
Wire Wire Line
	6050 3750 5600 3750
Wire Wire Line
	7100 3950 6200 3950
Wire Wire Line
	7100 3650 6350 3650
Wire Wire Line
	6350 3650 6350 3450
Wire Wire Line
	6350 3450 5600 3450
Wire Wire Line
	7100 3350 5600 3350
Wire Wire Line
	7100 3050 7000 3050
Wire Wire Line
	7000 3050 7000 3250
Wire Wire Line
	7000 3250 5600 3250
Wire Wire Line
	7850 4350 7850 5150
Wire Wire Line
	7850 5150 7400 5150
Wire Wire Line
	7850 4250 7750 4250
Wire Wire Line
	7750 4250 7750 4850
Wire Wire Line
	7750 4850 7400 4850
Wire Wire Line
	7850 4150 7650 4150
Wire Wire Line
	7650 4150 7650 4550
Wire Wire Line
	7650 4550 7400 4550
Wire Wire Line
	7850 4050 7550 4050
Wire Wire Line
	7550 4050 7550 4250
Wire Wire Line
	7550 4250 7400 4250
Wire Wire Line
	7850 3950 7400 3950
Wire Wire Line
	7850 3850 7550 3850
Wire Wire Line
	7550 3850 7550 3650
Wire Wire Line
	7550 3650 7400 3650
Wire Wire Line
	7850 3750 7650 3750
Wire Wire Line
	7650 3750 7650 3350
Wire Wire Line
	7650 3350 7400 3350
Wire Wire Line
	7850 3650 7750 3650
Wire Wire Line
	7750 3650 7750 3050
Wire Wire Line
	7750 3050 7400 3050
Wire Wire Line
	8700 4350 8450 4350
Wire Wire Line
	8450 4250 8700 4250
Wire Wire Line
	8700 4250 8700 4350
Connection ~ 8700 4350
$Comp
L Device:R R8
U 1 1 5FFC7502
P 7250 3050
F 0 "R8" V 7043 3050 50  0000 C CNN
F 1 "100" V 7134 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 7180 3050 50  0001 C CNN
F 3 "~" H 7250 3050 50  0001 C CNN
	1    7250 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 600084A5
P 5600 3550
F 0 "#PWR07" H 5600 3300 50  0001 C CNN
F 1 "GND" V 5605 3422 50  0000 R CNN
F 2 "" H 5600 3550 50  0001 C CNN
F 3 "" H 5600 3550 50  0001 C CNN
	1    5600 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3950 6200 3650
Wire Wire Line
	6200 3650 5600 3650
$Comp
L power:+3.3V #PWR06
U 1 1 6000A9AE
P 5100 3550
F 0 "#PWR06" H 5100 3400 50  0001 C CNN
F 1 "+3.3V" V 5115 3678 50  0000 L CNN
F 2 "" H 5100 3550 50  0001 C CNN
F 3 "" H 5100 3550 50  0001 C CNN
	1    5100 3550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 6000BDFF
P 3150 4550
F 0 "SW1" H 3150 4835 50  0000 C CNN
F 1 "SW_Push" H 3150 4744 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 3150 4750 50  0001 C CNN
F 3 "~" H 3150 4750 50  0001 C CNN
	1    3150 4550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6000D27E
P 3150 4950
F 0 "SW2" H 3150 5235 50  0000 C CNN
F 1 "SW_Push" H 3150 5144 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 3150 5150 50  0001 C CNN
F 3 "~" H 3150 5150 50  0001 C CNN
	1    3150 4950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 6000F53B
P 3150 5350
F 0 "SW3" H 3150 5635 50  0000 C CNN
F 1 "SW_Push" H 3150 5544 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 3150 5550 50  0001 C CNN
F 3 "~" H 3150 5550 50  0001 C CNN
	1    3150 5350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 6000F541
P 3150 5750
F 0 "SW4" H 3150 6035 50  0000 C CNN
F 1 "SW_Push" H 3150 5944 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 3150 5950 50  0001 C CNN
F 3 "~" H 3150 5950 50  0001 C CNN
	1    3150 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60011363
P 2750 5850
F 0 "#PWR03" H 2750 5600 50  0001 C CNN
F 1 "GND" H 2755 5677 50  0000 C CNN
F 2 "" H 2750 5850 50  0001 C CNN
F 3 "" H 2750 5850 50  0001 C CNN
	1    2750 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5750 2750 5750
Wire Wire Line
	2750 5750 2750 5850
Wire Wire Line
	2950 5350 2750 5350
Wire Wire Line
	2750 5350 2750 5750
Connection ~ 2750 5750
Wire Wire Line
	2950 4950 2750 4950
Wire Wire Line
	2750 4950 2750 5350
Connection ~ 2750 5350
Wire Wire Line
	2950 4550 2750 4550
Wire Wire Line
	2750 4550 2750 4950
Connection ~ 2750 4950
$Comp
L Device:R R16
U 1 1 6001A8B0
P 3800 4550
F 0 "R16" V 4007 4550 50  0000 C CNN
F 1 "10K" V 3916 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3730 4550 50  0001 C CNN
F 3 "~" H 3800 4550 50  0001 C CNN
	1    3800 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 6001B969
P 3800 4950
F 0 "R17" V 4007 4950 50  0000 C CNN
F 1 "10K" V 3916 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3730 4950 50  0001 C CNN
F 3 "~" H 3800 4950 50  0001 C CNN
	1    3800 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 6001DCBC
P 3800 5350
F 0 "R18" V 4007 5350 50  0000 C CNN
F 1 "10K" V 3916 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3730 5350 50  0001 C CNN
F 3 "~" H 3800 5350 50  0001 C CNN
	1    3800 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R19
U 1 1 6002053D
P 3800 5750
F 0 "R19" V 4007 5750 50  0000 C CNN
F 1 "10K" V 3916 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3730 5750 50  0001 C CNN
F 3 "~" H 3800 5750 50  0001 C CNN
	1    3800 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 6002B898
P 4250 4350
F 0 "#PWR0101" H 4250 4200 50  0001 C CNN
F 1 "+3.3V" H 4265 4523 50  0000 C CNN
F 2 "" H 4250 4350 50  0001 C CNN
F 3 "" H 4250 4350 50  0001 C CNN
	1    4250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5750 4250 5750
Wire Wire Line
	4250 5750 4250 5350
Wire Wire Line
	3950 5350 4250 5350
Connection ~ 4250 5350
Wire Wire Line
	4250 5350 4250 4950
Wire Wire Line
	3950 4950 4250 4950
Connection ~ 4250 4950
Wire Wire Line
	4250 4950 4250 4550
Wire Wire Line
	3950 4550 4250 4550
Connection ~ 4250 4550
Wire Wire Line
	4250 4550 4250 4350
Wire Wire Line
	3350 4950 3500 4950
Wire Wire Line
	3350 5350 3500 5350
Wire Wire Line
	3350 5750 3500 5750
Wire Wire Line
	5100 4050 5100 5450
Wire Wire Line
	5100 5450 3500 5450
Wire Wire Line
	3500 5450 3500 5750
Connection ~ 3500 5750
Wire Wire Line
	3500 5750 3650 5750
Wire Wire Line
	5100 3950 5000 3950
Wire Wire Line
	5000 3950 5000 5050
Wire Wire Line
	5000 5050 3500 5050
Wire Wire Line
	3500 5050 3500 5350
Connection ~ 3500 5350
Wire Wire Line
	3500 5350 3650 5350
Wire Wire Line
	5100 3850 4900 3850
Wire Wire Line
	4900 3850 4900 4650
Wire Wire Line
	4900 4650 3500 4650
Wire Wire Line
	3500 4650 3500 4950
Connection ~ 3500 4950
Wire Wire Line
	3500 4950 3650 4950
Wire Wire Line
	3350 4550 3500 4550
Wire Wire Line
	3500 4100 3500 4550
Connection ~ 3500 4550
Wire Wire Line
	3500 4550 3650 4550
Wire Wire Line
	4800 4100 4800 3750
Wire Wire Line
	4800 3750 5100 3750
Wire Wire Line
	3500 4100 4800 4100
NoConn ~ 5100 2650
NoConn ~ 5100 2750
NoConn ~ 5100 2850
NoConn ~ 5100 2950
NoConn ~ 5100 3050
NoConn ~ 5100 3150
NoConn ~ 5100 3250
NoConn ~ 5100 3350
NoConn ~ 5100 3450
NoConn ~ 5100 3650
NoConn ~ 5600 2450
NoConn ~ 5600 2550
NoConn ~ 5600 2750
NoConn ~ 5600 2850
NoConn ~ 5600 2950
NoConn ~ 5600 3050
NoConn ~ 5600 3150
$EndSCHEMATC
