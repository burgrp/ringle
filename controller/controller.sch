EESchema Schematic File Version 4
EELAYER 26 0
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
L Device:Rotary_Encoder_Switch SW1
U 1 1 5C2D43A9
P 7650 2500
F 0 "SW1" H 7650 2760 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8050 1850 50  0001 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 7550 2660 50  0001 C CNN
F 3 "" H 7650 2760 50  0001 C CNN
	1    7650 2500
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F0:STM32F030F4Px U1
U 1 1 5C2D459B
P 5250 2900
F 0 "U1" H 4850 3550 50  0000 L CNN
F 1 "STM32F030F4Px" H 5450 3550 50  0000 L CNN
F 2 "Package_SO:SSOP-20_4.4x6.5mm_P0.65mm" H 4850 2200 50  0001 R CNN
F 3 "" H 5250 2900 50  0001 C CNN
	1    5250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2400 7350 2400
Wire Wire Line
	5750 2500 7050 2500
Wire Wire Line
	7050 2500 7050 2600
Wire Wire Line
	7050 2600 7350 2600
Wire Wire Line
	5750 2600 7000 2600
Wire Wire Line
	7000 2600 7000 2750
Wire Wire Line
	7000 2750 8300 2750
Wire Wire Line
	8300 2750 8300 2400
Wire Wire Line
	8300 2400 7950 2400
NoConn ~ 4750 3500
NoConn ~ 4750 3300
NoConn ~ 4750 3200
$Comp
L power:GND #PWR02
U 1 1 5C2D490B
P 4750 2600
F 0 "#PWR02" H 4750 2350 50  0001 C CNN
F 1 "GND" V 4750 2400 50  0000 C CNN
F 2 "" H 4750 2600 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4750 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C2D491F
P 5250 3700
F 0 "#PWR03" H 5250 3450 50  0001 C CNN
F 1 "GND" H 5250 3550 50  0000 C CNN
F 2 "" H 5250 3700 50  0001 C CNN
F 3 "" H 5250 3700 50  0001 C CNN
	1    5250 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C2D4945
P 4500 2400
F 0 "C1" V 4350 2250 50  0000 L CNN
F 1 "100n" V 4350 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4538 2250 50  0001 C CNN
F 3 "" H 4500 2400 50  0001 C CNN
	1    4500 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5C2D49B4
P 5050 2050
F 0 "C2" V 4900 1900 50  0000 L CNN
F 1 "100n" V 4900 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5088 1900 50  0001 C CNN
F 3 "" H 5050 2050 50  0001 C CNN
	1    5050 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5C2D49F5
P 5550 2050
F 0 "C3" V 5400 1900 50  0000 L CNN
F 1 "100n" V 5400 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5588 1900 50  0001 C CNN
F 3 "" H 5550 2050 50  0001 C CNN
	1    5550 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2200 5250 2050
Wire Wire Line
	5200 2050 5250 2050
Wire Wire Line
	5350 2050 5350 2200
Connection ~ 5350 2050
Connection ~ 5250 2050
Wire Wire Line
	5300 2050 5300 1950
Connection ~ 5300 2050
$Comp
L power:+3.3V #PWR04
U 1 1 5C2D4A80
P 5300 1950
F 0 "#PWR04" H 5300 1800 50  0001 C CNN
F 1 "+3V3" H 5300 2090 50  0000 C CNN
F 2 "" H 5300 1950 50  0001 C CNN
F 3 "" H 5300 1950 50  0001 C CNN
	1    5300 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C2D4A9D
P 4900 2050
F 0 "#PWR05" H 4900 1800 50  0001 C CNN
F 1 "GND" V 4900 1850 50  0000 C CNN
F 2 "" H 4900 2050 50  0001 C CNN
F 3 "" H 4900 2050 50  0001 C CNN
	1    4900 2050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C2D4ABA
P 5700 2050
F 0 "#PWR06" H 5700 1800 50  0001 C CNN
F 1 "GND" V 5700 1850 50  0000 C CNN
F 2 "" H 5700 2050 50  0001 C CNN
F 3 "" H 5700 2050 50  0001 C CNN
	1    5700 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2400 4750 2400
$Comp
L power:GND #PWR07
U 1 1 5C2D4AEF
P 4350 2400
F 0 "#PWR07" H 4350 2150 50  0001 C CNN
F 1 "GND" V 4350 2200 50  0000 C CNN
F 2 "" H 4350 2400 50  0001 C CNN
F 3 "" H 4350 2400 50  0001 C CNN
	1    4350 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C2D4B99
P 7950 2600
F 0 "#PWR08" H 7950 2350 50  0001 C CNN
F 1 "GND" V 7950 2400 50  0000 C CNN
F 2 "" H 7950 2600 50  0001 C CNN
F 3 "" H 7950 2600 50  0001 C CNN
	1    7950 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5C2D4BB6
P 7350 2500
F 0 "#PWR09" H 7350 2250 50  0001 C CNN
F 1 "GND" V 7350 2300 50  0000 C CNN
F 2 "" H 7350 2500 50  0001 C CNN
F 3 "" H 7350 2500 50  0001 C CNN
	1    7350 2500
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG011
U 1 1 5C2D4FB2
P 3200 2400
F 0 "#FLG011" H 3200 2475 50  0001 C CNN
F 1 "PWR_FLAG" V 3200 2700 50  0000 C CNN
F 2 "" H 3200 2400 50  0001 C CNN
F 3 "" H 3200 2400 50  0001 C CNN
	1    3200 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5C2D502C
P 3200 2400
F 0 "#PWR014" H 3200 2250 50  0001 C CNN
F 1 "+3V3" V 3200 2650 50  0000 C CNN
F 2 "" H 3200 2400 50  0001 C CNN
F 3 "" H 3200 2400 50  0001 C CNN
	1    3200 2400
	0    1    1    0   
$EndComp
Text Label 5750 3400 0    60   ~ 0
SWDIO
Text Label 5750 3500 0    60   ~ 0
SWCLK
$Comp
L device.farm:SWD X2
U 1 1 5C2D529E
P 2900 3050
F 0 "X2" H 2900 3300 60  0000 C CNN
F 1 "SWD" H 2900 2800 60  0000 C CNN
F 2 "device.farm:SWD" H 2900 3050 60  0001 C CNN
F 3 "" H 2900 3050 60  0000 C CNN
	1    2900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5C2D5329
P 3250 3050
F 0 "#PWR015" H 3250 2800 50  0001 C CNN
F 1 "GND" V 3250 2850 50  0000 C CNN
F 2 "" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3050 50  0001 C CNN
	1    3250 3050
	0    -1   -1   0   
$EndComp
Text Label 3250 2950 0    60   ~ 0
SWDIO
Text Label 3250 3150 0    60   ~ 0
SWCLK
Wire Wire Line
	5350 2050 5400 2050
Wire Wire Line
	5250 2050 5300 2050
Wire Wire Line
	5300 2050 5350 2050
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 5C8B0AD9
P 7650 3150
F 0 "SW2" H 7650 3410 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8050 2500 50  0001 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 7550 3310 50  0001 C CNN
F 3 "" H 7650 3410 50  0001 C CNN
	1    7650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3050 7350 3050
Wire Wire Line
	7050 3150 7050 3250
Wire Wire Line
	7050 3250 7350 3250
Wire Wire Line
	7000 3250 7000 3400
Wire Wire Line
	7000 3400 8300 3400
Wire Wire Line
	8300 3400 8300 3050
Wire Wire Line
	8300 3050 7950 3050
$Comp
L power:GND #PWR0101
U 1 1 5C8B0AE9
P 7950 3250
F 0 "#PWR0101" H 7950 3000 50  0001 C CNN
F 1 "GND" V 7950 3050 50  0000 C CNN
F 2 "" H 7950 3250 50  0001 C CNN
F 3 "" H 7950 3250 50  0001 C CNN
	1    7950 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C8B0AEF
P 7350 3150
F 0 "#PWR0102" H 7350 2900 50  0001 C CNN
F 1 "GND" V 7350 2950 50  0000 C CNN
F 2 "" H 7350 3150 50  0001 C CNN
F 3 "" H 7350 3150 50  0001 C CNN
	1    7350 3150
	0    1    1    0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW3
U 1 1 5C8B13F7
P 7650 3800
F 0 "SW3" H 7650 4060 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8050 3150 50  0001 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 7550 3960 50  0001 C CNN
F 3 "" H 7650 4060 50  0001 C CNN
	1    7650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3800 7050 3900
Wire Wire Line
	7050 3900 7350 3900
Wire Wire Line
	7000 3900 7000 4050
Wire Wire Line
	7000 4050 8300 4050
Wire Wire Line
	8300 4050 8300 3700
Wire Wire Line
	8300 3700 7950 3700
$Comp
L power:GND #PWR0103
U 1 1 5C8B1407
P 7950 3900
F 0 "#PWR0103" H 7950 3650 50  0001 C CNN
F 1 "GND" V 7950 3700 50  0000 C CNN
F 2 "" H 7950 3900 50  0001 C CNN
F 3 "" H 7950 3900 50  0001 C CNN
	1    7950 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C8B140D
P 7350 3800
F 0 "#PWR0104" H 7350 3550 50  0001 C CNN
F 1 "GND" V 7350 3600 50  0000 C CNN
F 2 "" H 7350 3800 50  0001 C CNN
F 3 "" H 7350 3800 50  0001 C CNN
	1    7350 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2700 6750 2700
Wire Wire Line
	6750 2700 6750 3050
Wire Wire Line
	5750 2800 6650 2800
Wire Wire Line
	6650 2800 6650 3150
Wire Wire Line
	6650 3150 7050 3150
Wire Wire Line
	5750 2900 6550 2900
Wire Wire Line
	6550 2900 6550 3250
Wire Wire Line
	6550 3250 7000 3250
Wire Wire Line
	7350 3700 6450 3700
Wire Wire Line
	6450 3700 6450 3000
Wire Wire Line
	6450 3000 5750 3000
Wire Wire Line
	7050 3800 6350 3800
Wire Wire Line
	6350 3800 6350 3100
Wire Wire Line
	6350 3100 5750 3100
Wire Wire Line
	7000 3900 6250 3900
Wire Wire Line
	6250 3900 6250 3200
Wire Wire Line
	6250 3200 5750 3200
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5C8B6B78
P 7700 4850
F 0 "J2" H 7850 4800 50  0000 C CNN
F 1 "Conn_01x03" H 8000 4900 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S3B-XH-A_1x03_P2.50mm_Horizontal" H 7700 4850 50  0001 C CNN
F 3 "~" H 7700 4850 50  0001 C CNN
	1    7700 4850
	1    0    0    1   
$EndComp
Text Label 5750 3300 0    50   ~ 0
LED_DATA
Text Label 7500 4850 2    50   ~ 0
LED_DATA
$Comp
L power:GND #PWR0105
U 1 1 5C8B76AA
P 7500 4950
F 0 "#PWR0105" H 7500 4700 50  0001 C CNN
F 1 "GND" H 7500 4800 50  0000 C CNN
F 2 "" H 7500 4950 50  0001 C CNN
F 3 "" H 7500 4950 50  0001 C CNN
	1    7500 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5C8B82E3
P 7500 4750
F 0 "#PWR0106" H 7500 4600 50  0001 C CNN
F 1 "+5V" V 7515 4878 50  0000 L CNN
F 2 "" H 7500 4750 50  0001 C CNN
F 3 "" H 7500 4750 50  0001 C CNN
	1    7500 4750
	0    -1   -1   0   
$EndComp
$Comp
L device.farm:RT9193 U2
U 1 1 5C8B88C2
P 5200 4700
F 0 "U2" H 5200 5137 60  0000 C CNN
F 1 "RT9193" H 5200 5031 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 5200 4700 60  0001 C CNN
F 3 "" H 5200 4700 60  0001 C CNN
	1    5200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4850 4750 4550
Connection ~ 4750 4550
$Comp
L power:GND #PWR0107
U 1 1 5C8BAADA
P 5200 5150
F 0 "#PWR0107" H 5200 4900 50  0001 C CNN
F 1 "GND" H 5200 5000 50  0000 C CNN
F 2 "" H 5200 5150 50  0001 C CNN
F 3 "" H 5200 5150 50  0001 C CNN
	1    5200 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C8BAB28
P 5750 5000
F 0 "C5" H 5865 5046 50  0000 L CNN
F 1 "22n" H 5865 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5788 4850 50  0001 C CNN
F 3 "~" H 5750 5000 50  0001 C CNN
	1    5750 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C8BABDD
P 6100 4750
F 0 "C6" H 6215 4796 50  0000 L CNN
F 1 "1u" H 6215 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6138 4600 50  0001 C CNN
F 3 "~" H 6100 4750 50  0001 C CNN
	1    6100 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C8BAC15
P 4550 4800
F 0 "C4" H 4300 4850 50  0000 L CNN
F 1 "1u" H 4300 4750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 4650 50  0001 C CNN
F 3 "~" H 4550 4800 50  0001 C CNN
	1    4550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4550 4550 4550
Wire Wire Line
	4550 4650 4550 4550
Connection ~ 4550 4550
Wire Wire Line
	4550 4550 4750 4550
Wire Wire Line
	5650 4850 5750 4850
Wire Wire Line
	5650 4550 6100 4550
Wire Wire Line
	6100 4600 6100 4550
Connection ~ 6100 4550
Wire Wire Line
	6100 4550 6250 4550
$Comp
L power:+5V #PWR0108
U 1 1 5C8BF025
P 4400 4550
F 0 "#PWR0108" H 4400 4400 50  0001 C CNN
F 1 "+5V" V 4415 4678 50  0000 L CNN
F 2 "" H 4400 4550 50  0001 C CNN
F 3 "" H 4400 4550 50  0001 C CNN
	1    4400 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5C8BF04A
P 6250 4550
F 0 "#PWR0109" H 6250 4400 50  0001 C CNN
F 1 "+3V3" V 6250 4800 50  0000 C CNN
F 2 "" H 6250 4550 50  0001 C CNN
F 3 "" H 6250 4550 50  0001 C CNN
	1    6250 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C8BFF92
P 5750 5150
F 0 "#PWR0110" H 5750 4900 50  0001 C CNN
F 1 "GND" H 5750 5000 50  0000 C CNN
F 2 "" H 5750 5150 50  0001 C CNN
F 3 "" H 5750 5150 50  0001 C CNN
	1    5750 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5C8C1E34
P 6100 5150
F 0 "#PWR0111" H 6100 4900 50  0001 C CNN
F 1 "GND" H 6100 5000 50  0000 C CNN
F 2 "" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4900 6100 5150
$Comp
L power:GND #PWR0112
U 1 1 5C8C3DC4
P 4550 5150
F 0 "#PWR0112" H 4550 4900 50  0001 C CNN
F 1 "GND" H 4550 5000 50  0000 C CNN
F 2 "" H 4550 5150 50  0001 C CNN
F 3 "" H 4550 5150 50  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4950 4550 5150
$Comp
L power:+5V #PWR0113
U 1 1 5C8C6DE5
P 3400 4000
F 0 "#PWR0113" H 3400 3850 50  0001 C CNN
F 1 "+5V" V 3415 4128 50  0000 L CNN
F 2 "" H 3400 4000 50  0001 C CNN
F 3 "" H 3400 4000 50  0001 C CNN
	1    3400 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5C8C6F68
P 3050 4700
F 0 "#PWR0114" H 3050 4450 50  0001 C CNN
F 1 "GND" H 3050 4550 50  0000 C CNN
F 2 "" H 3050 4700 50  0001 C CNN
F 3 "" H 3050 4700 50  0001 C CNN
	1    3050 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 5C8CDAAC
P 3100 4200
F 0 "J1" H 3155 4667 50  0000 C CNN
F 1 "USB_B" H 3155 4576 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 3250 4150 50  0001 C CNN
F 3 " ~" H 3250 4150 50  0001 C CNN
	1    3100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4600 3000 4650
Wire Wire Line
	3000 4650 3050 4650
Wire Wire Line
	3100 4650 3100 4600
Wire Wire Line
	3050 4650 3050 4700
Connection ~ 3050 4650
Wire Wire Line
	3050 4650 3100 4650
$Comp
L Mechanical:MountingHole H1
U 1 1 5C8D299A
P 9100 3200
F 0 "H1" H 9200 3246 50  0000 L CNN
F 1 "MountingHole" H 9200 3155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm_Pad" H 9100 3200 50  0001 C CNN
F 3 "~" H 9100 3200 50  0001 C CNN
	1    9100 3200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C8D2A7C
P 9100 3400
F 0 "H2" H 9200 3446 50  0000 L CNN
F 1 "MountingHole" H 9200 3355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm_Pad" H 9100 3400 50  0001 C CNN
F 3 "~" H 9100 3400 50  0001 C CNN
	1    9100 3400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C8D2AB4
P 9100 3600
F 0 "H3" H 9200 3646 50  0000 L CNN
F 1 "MountingHole" H 9200 3555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm_Pad" H 9100 3600 50  0001 C CNN
F 3 "~" H 9100 3600 50  0001 C CNN
	1    9100 3600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C8D2AEA
P 9100 3800
F 0 "H4" H 9200 3846 50  0000 L CNN
F 1 "MountingHole" H 9200 3755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm_Pad" H 9100 3800 50  0001 C CNN
F 3 "~" H 9100 3800 50  0001 C CNN
	1    9100 3800
	1    0    0    -1  
$EndComp
NoConn ~ 3400 4200
NoConn ~ 3400 4300
$EndSCHEMATC