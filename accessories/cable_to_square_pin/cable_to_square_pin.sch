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
L Connector_Generic:Conn_01x01 J1
U 1 1 60B105B2
P 3950 2250
F 0 "J1" H 3868 2467 50  0000 C CNN
F 1 "Pin header" H 3868 2376 50  0000 C CNN
F 2 "oscilloscope-probes:MillMax_0279-0-15" H 3950 2250 50  0001 C CNN
F 3 "~" H 3950 2250 50  0001 C CNN
	1    3950 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60B10B8A
P 4800 2150
F 0 "R1" V 4593 2150 50  0000 C CNN
F 1 "9.53 M" V 4684 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 4730 2150 50  0001 C CNN
F 3 "~" H 4800 2150 50  0001 C CNN
	1    4800 2150
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 60B10F69
P 4800 2350
F 0 "C1" V 4640 2350 50  0000 C CNN
F 1 "5pF" V 4549 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4838 2200 50  0001 C CNN
F 3 "~" H 4800 2350 50  0001 C CNN
	1    4800 2350
	0    1    -1   0   
$EndComp
Wire Wire Line
	4650 2350 4650 2250
Wire Wire Line
	4650 2250 4400 2250
Connection ~ 4650 2250
Wire Wire Line
	4650 2250 4650 2150
Wire Wire Line
	4950 2350 4950 2250
Wire Wire Line
	4950 2250 5550 2250
Connection ~ 4950 2250
Wire Wire Line
	4950 2250 4950 2150
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 60B11C3F
P 5750 2250
F 0 "J2" H 5668 2025 50  0000 C CNN
F 1 "To amplifier" H 5668 2116 50  0000 C CNN
F 2 "oscilloscope-probes:SIMPLE_PAD" H 5750 2250 50  0001 C CNN
F 3 "~" H 5750 2250 50  0001 C CNN
	1    5750 2250
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 60B120D2
P 5750 2900
F 0 "J3" H 5668 2675 50  0000 C CNN
F 1 "Shield mount" H 5668 2766 50  0000 C CNN
F 2 "oscilloscope-probes:SIMPLE_PAD" H 5750 2900 50  0001 C CNN
F 3 "~" H 5750 2900 50  0001 C CNN
	1    5750 2900
	1    0    0    1   
$EndComp
$Comp
L Device:SPARK_GAP E1
U 1 1 60B8F154
P 4800 2900
F 0 "E1" H 4800 3090 50  0000 C CNN
F 1 "SPARK_GAP" H 4800 2999 50  0000 C CNN
F 2 "oscilloscope-probes:PCB_SPARK_GAP_1mm" H 4800 2830 50  0001 C CNN
F 3 "~" V 4800 2900 50  0001 C CNN
	1    4800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2900 4400 2900
Wire Wire Line
	4400 2900 4400 2250
Connection ~ 4400 2250
Wire Wire Line
	4400 2250 4150 2250
Wire Wire Line
	5550 2900 5000 2900
$EndSCHEMATC
