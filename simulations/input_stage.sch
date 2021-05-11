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
L pspice:VSOURCE V1
U 1 1 6093881D
P 1750 3600
F 0 "V1" H 1978 3646 50  0000 L CNN
F 1 "dc 0 ac 1" H 1978 3555 50  0000 L CNN
F 2 "" H 1750 3600 50  0001 C CNN
F 3 "~" H 1750 3600 50  0001 C CNN
	1    1750 3600
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND01
U 1 1 60939228
P 1750 4500
F 0 "#GND01" H 1750 4400 50  0001 C CNN
F 1 "0" H 1750 4589 50  0000 C CNN
F 2 "" H 1750 4500 50  0001 C CNN
F 3 "~" H 1750 4500 50  0001 C CNN
	1    1750 4500
	1    0    0    -1  
$EndComp
Text Notes 1650 4850 0    50   ~ 0
.ac dec 50 1 100000k
Wire Wire Line
	1750 3900 1750 4250
$Comp
L Device:R R_tip
U 1 1 60939EE8
P 2300 2600
F 0 "R_tip" V 2093 2600 50  0000 C CNN
F 1 "9.53Meg" V 2184 2600 50  0000 C CNN
F 2 "" V 2230 2600 50  0001 C CNN
F 3 "~" H 2300 2600 50  0001 C CNN
	1    2300 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C_tip
U 1 1 6093A340
P 2300 2800
F 0 "C_tip" V 2460 2800 50  0000 C CNN
F 1 "1.2p" V 2551 2800 50  0000 C CNN
F 2 "" H 2338 2650 50  0001 C CNN
F 3 "~" H 2300 2800 50  0001 C CNN
	1    2300 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 3300 1750 2800
Wire Wire Line
	1750 2600 2150 2600
Wire Wire Line
	2150 2800 1750 2800
Connection ~ 1750 2800
Wire Wire Line
	1750 2800 1750 2600
$Comp
L Device:R R2
U 1 1 6093AA89
P 4350 3050
F 0 "R2" H 4420 3096 50  0000 L CNN
F 1 "500k" H 4420 3005 50  0000 L CNN
F 2 "" V 4280 3050 50  0001 C CNN
F 3 "~" H 4350 3050 50  0001 C CNN
	1    4350 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6093AF1E
P 4350 3650
F 0 "R3" H 4420 3696 50  0000 L CNN
F 1 "500k" H 4420 3605 50  0000 L CNN
F 2 "" V 4280 3650 50  0001 C CNN
F 3 "~" H 4350 3650 50  0001 C CNN
	1    4350 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_trim
U 1 1 6093B3B1
P 4800 3650
F 0 "C_trim" H 4915 3696 50  0000 L CNN
F 1 "18.3p" H 4915 3605 50  0000 L CNN
F 2 "" H 4838 3500 50  0001 C CNN
F 3 "~" H 4800 3650 50  0001 C CNN
	1    4800 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6093B683
P 4800 3050
F 0 "C2" H 4915 3096 50  0000 L CNN
F 1 "20p" H 4915 3005 50  0000 L CNN
F 2 "" H 4838 2900 50  0001 C CNN
F 3 "~" H 4800 3050 50  0001 C CNN
	1    4800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2600 2650 2600
Wire Wire Line
	4800 2600 4800 2900
Wire Wire Line
	2450 2800 2650 2800
Wire Wire Line
	2650 2800 2650 2600
Connection ~ 2650 2600
Wire Wire Line
	2650 2600 2950 2600
Wire Wire Line
	4350 2900 4350 2600
Connection ~ 4350 2600
Wire Wire Line
	4350 2600 4800 2600
Wire Wire Line
	4350 3200 4350 3350
Wire Wire Line
	4350 3800 4350 4250
Wire Wire Line
	4350 4250 2950 4250
Connection ~ 1750 4250
Wire Wire Line
	1750 4250 1750 4500
Wire Wire Line
	4350 4250 4800 4250
Wire Wire Line
	4800 4250 4800 3800
Connection ~ 4350 4250
Wire Wire Line
	4800 3500 4800 3350
Wire Wire Line
	4800 3350 4350 3350
Connection ~ 4800 3350
Wire Wire Line
	4800 3350 4800 3200
Connection ~ 4350 3350
Wire Wire Line
	4350 3350 4350 3500
Wire Wire Line
	4800 3350 5400 3350
Wire Wire Line
	4800 2600 6400 2600
Connection ~ 4800 2600
Text HLabel 6400 2600 2    50   Output ~ 0
connector
Text HLabel 6400 3350 2    50   Output ~ 0
out
Text GLabel 1500 2600 0    50   Input ~ 0
in
Wire Wire Line
	1500 2600 1750 2600
Connection ~ 1750 2600
$Comp
L Device:C C_cable
U 1 1 6093EBB1
P 2950 3350
F 0 "C_cable" H 2835 3304 50  0000 R CNN
F 1 "1p" H 2835 3395 50  0000 R CNN
F 2 "" H 2988 3200 50  0001 C CNN
F 3 "~" H 2950 3350 50  0001 C CNN
	1    2950 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 3200 2950 2600
Connection ~ 2950 2600
Wire Wire Line
	2950 2600 4350 2600
Wire Wire Line
	2950 3500 2950 4250
Connection ~ 2950 4250
Wire Wire Line
	2950 4250 1750 4250
$Comp
L Device:C C_input
U 1 1 6093FAC9
P 5400 3650
F 0 "C_input" H 5515 3696 50  0000 L CNN
F 1 "2.5p" H 5515 3605 50  0000 L CNN
F 2 "" H 5438 3500 50  0001 C CNN
F 3 "~" H 5400 3650 50  0001 C CNN
	1    5400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3500 5400 3350
Connection ~ 5400 3350
Wire Wire Line
	5400 3350 6400 3350
Wire Wire Line
	5400 3800 5400 4250
Wire Wire Line
	5400 4250 4800 4250
Connection ~ 4800 4250
Text Notes 1450 1900 0    50   ~ 0
For flat frequency response, the tip and internal divider capacitors must be roughly in\nsame ratio as the resistors. Because cable capacitance and component values vary\nfrom unit to unit, C_trim is used to adjust compensation.\n\nThe strategy is:\n1. Initially set (C_trim + C_input) = C2. This can be done by feeding square wave\n     directly to 3.5mm connector and trimming to eliminate overshoot.\n\n2. In characterization, try out C_tip values until best match is obtained.\n\n3. For manufactured units, use C_trim for fine tuning. The small mismatch\n     between C2 and (C_trim + C_input) causes a bump / dip in frequency response\n     at around 10 kHz frequency. This is larger when C_cable is larger, because it\n     moves the C_tip*R_tip frequency away from R2*C2 frequency. For 0.1 pF\n     accuracy in tip capacitance the gain error is typically less than 0.1 dB.
$EndSCHEMATC
