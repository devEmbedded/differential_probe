EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Probe tips for differential tweezer"
Date "2021-01-12"
Rev "1"
Comp "devEmbedded"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5FFC9D55
P 3350 3650
F 0 "J1" H 3242 3425 50  0000 C CNN
F 1 "TIP" H 3242 3516 50  0000 C CNN
F 2 "oscilloscope-probes:SIMPLE_PAD" H 3350 3650 50  0001 C CNN
F 3 "~" H 3350 3650 50  0001 C CNN
	1    3350 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5FFCA007
P 6850 3650
F 0 "J2" H 6878 3676 50  0000 L CNN
F 1 "TO_AMP" H 6878 3585 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 6850 3650 50  0001 C CNN
F 3 "~" H 6850 3650 50  0001 C CNN
	1    6850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FFCA62C
P 4950 3500
F 0 "R1" V 4743 3500 50  0000 C CNN
F 1 "9.53M" V 4834 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4880 3500 50  0001 C CNN
F 3 "~" H 4950 3500 50  0001 C CNN
	1    4950 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FFCAB53
P 4950 3800
F 0 "C1" V 4790 3800 50  0000 C CNN
F 1 "1.0pF" V 4699 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4988 3650 50  0001 C CNN
F 3 "~" H 4950 3800 50  0001 C CNN
	1    4950 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 3500 4800 3500
Wire Wire Line
	4750 3800 4800 3800
Wire Wire Line
	5100 3800 5200 3800
Wire Wire Line
	5200 3800 5200 3650
Wire Wire Line
	5200 3650 5600 3650
Wire Wire Line
	5100 3500 5200 3500
Wire Wire Line
	5200 3500 5200 3650
Connection ~ 5200 3650
$Comp
L power:GND #PWR01
U 1 1 5FFCB4EE
P 5600 4400
F 0 "#PWR01" H 5600 4150 50  0001 C CNN
F 1 "GND" H 5605 4227 50  0000 C CNN
F 2 "" H 5600 4400 50  0001 C CNN
F 3 "" H 5600 4400 50  0001 C CNN
	1    5600 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5FFCB7FA
P 6850 4300
F 0 "J3" H 6878 4326 50  0000 L CNN
F 1 "GND" H 6878 4235 50  0000 L CNN
F 2 "oscilloscope-probes:SIMPLE_PAD" H 6850 4300 50  0001 C CNN
F 3 "~" H 6850 4300 50  0001 C CNN
	1    6850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4300 6150 4300
Wire Wire Line
	5600 4300 5600 4400
Text Label 3750 3650 0    50   ~ 0
TIP
Text Label 5700 3650 0    50   ~ 0
AMP
Wire Wire Line
	4750 3500 4750 3650
$Comp
L Device:R R2
U 1 1 609904A1
P 4600 3650
F 0 "R2" V 4393 3650 50  0000 C CNN
F 1 "220" V 4484 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 3650 50  0001 C CNN
F 3 "~" H 4600 3650 50  0001 C CNN
	1    4600 3650
	0    1    1    0   
$EndComp
Connection ~ 4750 3650
Wire Wire Line
	4750 3650 4750 3800
Wire Wire Line
	4450 3650 4000 3650
$Comp
L Device:C C2
U 1 1 60B603A2
P 5600 4000
F 0 "C2" H 5715 4046 50  0000 L CNN
F 1 "N/A" H 5715 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5638 3850 50  0001 C CNN
F 3 "~" H 5600 4000 50  0001 C CNN
	1    5600 4000
	1    0    0    -1  
$EndComp
Connection ~ 5600 3650
Wire Wire Line
	5600 3650 6150 3650
Wire Wire Line
	5600 3850 5600 3650
Wire Wire Line
	5600 4150 5600 4300
Connection ~ 5600 4300
$Comp
L Device:SPARK_GAP E1
U 1 1 60B619A9
P 4000 4000
F 0 "E1" V 3954 4053 50  0000 L CNN
F 1 "SPARK_GAP" V 4045 4053 50  0000 L CNN
F 2 "oscilloscope-probes:PCB_SPARK_GAP" H 4000 3930 50  0001 C CNN
F 3 "~" V 4000 4000 50  0001 C CNN
	1    4000 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4300 5600 4300
Wire Wire Line
	4000 4300 4000 4200
Wire Wire Line
	4000 3800 4000 3650
Connection ~ 4000 3650
Wire Wire Line
	4000 3650 3550 3650
$Comp
L Device:SPARK_GAP E2
U 1 1 60B63DD8
P 6150 4000
F 0 "E2" V 6104 4053 50  0000 L CNN
F 1 "SPARK_GAP" V 6195 4053 50  0000 L CNN
F 2 "oscilloscope-probes:PCB_SPARK_GAP" H 6150 3930 50  0001 C CNN
F 3 "~" V 6150 4000 50  0001 C CNN
	1    6150 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4200 6150 4300
Connection ~ 6150 4300
Wire Wire Line
	6150 4300 5600 4300
Wire Wire Line
	6150 3800 6150 3650
Connection ~ 6150 3650
Wire Wire Line
	6150 3650 6650 3650
$EndSCHEMATC