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
L Connector:Conn_01x01_Male J1
U 1 1 60B636AB
P 2700 2800
F 0 "J1" H 2808 2981 50  0000 C CNN
F 1 "Banana" H 2808 2890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 2700 2800 50  0001 C CNN
F 3 "~" H 2700 2800 50  0001 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60B64D14
P 3350 2800
F 0 "R1" V 3143 2800 50  0000 C CNN
F 1 "10M" V 3234 2800 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" V 3280 2800 50  0001 C CNN
F 3 "~" H 3350 2800 50  0001 C CNN
	1    3350 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60B65004
P 3850 2800
F 0 "R2" V 3643 2800 50  0000 C CNN
F 1 "10M" V 3734 2800 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" V 3780 2800 50  0001 C CNN
F 3 "~" H 3850 2800 50  0001 C CNN
	1    3850 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 60B67038
P 6250 2950
F 0 "C6" H 6365 2904 50  0000 L CNN
F 1 "N/A" H 6365 2995 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6288 2800 50  0001 C CNN
F 3 "~" H 6250 2950 50  0001 C CNN
	1    6250 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2800 6550 2800
$Comp
L Device:R R6
U 1 1 60B6842C
P 6550 2950
F 0 "R6" H 6480 2904 50  0000 R CNN
F 1 "499k" H 6480 2995 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6480 2950 50  0001 C CNN
F 3 "~" H 6550 2950 50  0001 C CNN
	1    6550 2950
	-1   0    0    1   
$EndComp
Connection ~ 6550 2800
Wire Wire Line
	6250 3100 6550 3100
Connection ~ 6550 3100
Wire Wire Line
	6550 2800 7150 2800
Wire Wire Line
	2900 2800 3100 2800
$Comp
L Device:C C1
U 1 1 60B77076
P 3350 3100
F 0 "C1" V 3510 3100 50  0000 C CNN
F 1 "10pF 2kV" V 3601 3100 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" H 3388 2950 50  0001 C CNN
F 3 "~" H 3350 3100 50  0001 C CNN
	1    3350 3100
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 60B77903
P 3850 3100
F 0 "C2" V 4010 3100 50  0000 C CNN
F 1 "10pF 2kV" V 4101 3100 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" H 3888 2950 50  0001 C CNN
F 3 "~" H 3850 3100 50  0001 C CNN
	1    3850 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2800 3100 3100
Wire Wire Line
	3100 3100 3200 3100
Connection ~ 3100 2800
Wire Wire Line
	3100 2800 3200 2800
Wire Wire Line
	3500 2800 3600 2800
Wire Wire Line
	3500 3100 3600 3100
Wire Wire Line
	3600 3100 3600 2800
Connection ~ 3600 3100
Wire Wire Line
	3600 3100 3700 3100
Connection ~ 3600 2800
Wire Wire Line
	3600 2800 3700 2800
Wire Wire Line
	4000 2800 4100 2800
Wire Wire Line
	4000 3100 4100 3100
Wire Wire Line
	4100 3100 4100 2800
$Comp
L Device:R R3
U 1 1 60B82854
P 4350 2800
F 0 "R3" V 4143 2800 50  0000 C CNN
F 1 "10M" V 4234 2800 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" V 4280 2800 50  0001 C CNN
F 3 "~" H 4350 2800 50  0001 C CNN
	1    4350 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60B8285A
P 4850 2800
F 0 "R4" V 4643 2800 50  0000 C CNN
F 1 "10M" V 4734 2800 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" V 4780 2800 50  0001 C CNN
F 3 "~" H 4850 2800 50  0001 C CNN
	1    4850 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 60B82860
P 4350 3100
F 0 "C3" V 4510 3100 50  0000 C CNN
F 1 "10pF 2kV" V 4601 3100 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" H 4388 2950 50  0001 C CNN
F 3 "~" H 4350 3100 50  0001 C CNN
	1    4350 3100
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 60B82866
P 4850 3100
F 0 "C4" V 5010 3100 50  0000 C CNN
F 1 "10pF 2kV" V 5101 3100 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" H 4888 2950 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	1    4850 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3100 4200 3100
Wire Wire Line
	4100 2800 4200 2800
Wire Wire Line
	4500 2800 4600 2800
Wire Wire Line
	4500 3100 4600 3100
Wire Wire Line
	4600 3100 4600 2800
Connection ~ 4600 3100
Wire Wire Line
	4600 3100 4700 3100
Connection ~ 4600 2800
Wire Wire Line
	4600 2800 4700 2800
Wire Wire Line
	5000 2800 5100 2800
Wire Wire Line
	5000 3100 5100 3100
Wire Wire Line
	5100 3100 5100 2800
$Comp
L Device:R R5
U 1 1 60B82DE2
P 5350 2800
F 0 "R5" V 5143 2800 50  0000 C CNN
F 1 "10M" V 5234 2800 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" V 5280 2800 50  0001 C CNN
F 3 "~" H 5350 2800 50  0001 C CNN
	1    5350 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 60B82EDA
P 5350 3100
F 0 "C5" V 5510 3100 50  0000 C CNN
F 1 "10pF 2kV" V 5601 3100 50  0000 C CNN
F 2 "oscilloscope-probes:Minimal1206" H 5388 2950 50  0001 C CNN
F 3 "~" H 5350 3100 50  0001 C CNN
	1    5350 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3100 5200 3100
Wire Wire Line
	5100 2800 5200 2800
Wire Wire Line
	5500 2800 5600 2800
Wire Wire Line
	5500 3100 5600 3100
Wire Wire Line
	5600 3100 5600 2800
Connection ~ 5100 2800
Connection ~ 5100 3100
Wire Wire Line
	6250 2800 5600 2800
Connection ~ 6250 2800
Connection ~ 5600 2800
Connection ~ 4100 2800
Connection ~ 4100 3100
Wire Wire Line
	6550 3200 6550 3100
$Comp
L power:GND #PWR01
U 1 1 60B68D14
P 6550 3200
F 0 "#PWR01" H 6550 2950 50  0001 C CNN
F 1 "GND" H 6555 3027 50  0000 C CNN
F 2 "" H 6550 3200 50  0001 C CNN
F 3 "" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 60B8DDDA
P 7350 2800
F 0 "J2" H 7378 2826 50  0000 L CNN
F 1 "Coax center" H 7378 2735 50  0000 L CNN
F 2 "oscilloscope-probes:SIMPLE_PAD" H 7350 2800 50  0001 C CNN
F 3 "~" H 7350 2800 50  0001 C CNN
	1    7350 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 60B8E0A8
P 7350 3100
F 0 "J3" H 7378 3126 50  0000 L CNN
F 1 "Coax shield" H 7378 3035 50  0000 L CNN
F 2 "oscilloscope-probes:SIMPLE_PAD" H 7350 3100 50  0001 C CNN
F 3 "~" H 7350 3100 50  0001 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3100 6550 3100
$EndSCHEMATC
