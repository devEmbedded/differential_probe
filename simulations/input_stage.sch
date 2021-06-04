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
F 1 "PULSE (0 5 1u 1u 1u 1 1)" H 1978 3555 50  0000 L CNN
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
# .ac dec 50 1 500000k
Wire Wire Line
	1750 3900 1750 4250
$Comp
L Device:R R_tip
U 1 1 60939EE8
P 2900 2600
F 0 "R_tip" V 2693 2600 50  0000 C CNN
F 1 "9.53Meg" V 2784 2600 50  0000 C CNN
F 2 "" V 2830 2600 50  0001 C CNN
F 3 "~" H 2900 2600 50  0001 C CNN
	1    2900 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C_tip
U 1 1 6093A340
P 2900 2800
F 0 "C_tip" V 3060 2800 50  0000 C CNN
F 1 "3p" V 3151 2800 50  0000 C CNN
F 2 "" H 2938 2650 50  0001 C CNN
F 3 "~" H 2900 2800 50  0001 C CNN
	1    2900 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6093AF1E
P 6750 3650
F 0 "R3" H 6820 3696 50  0000 L CNN
F 1 "500k" H 6820 3605 50  0000 L CNN
F 2 "" V 6680 3650 50  0001 C CNN
F 3 "~" H 6750 3650 50  0001 C CNN
	1    6750 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_trim
U 1 1 6093B3B1
P 7200 3650
F 0 "C_trim" H 7315 3696 50  0000 L CNN
F 1 "10p" H 7315 3605 50  0000 L CNN
F 2 "" H 7238 3500 50  0001 C CNN
F 3 "~" H 7200 3650 50  0001 C CNN
	1    7200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2600 3250 2600
Wire Wire Line
	3050 2800 3250 2800
Wire Wire Line
	3250 2800 3250 2600
Wire Wire Line
	6750 3800 6750 4250
Connection ~ 1750 4250
Wire Wire Line
	1750 4250 1750 4500
Wire Wire Line
	6750 4250 7200 4250
Wire Wire Line
	7200 4250 7200 3800
Connection ~ 6750 4250
Wire Wire Line
	7200 3500 7200 3350
Wire Wire Line
	7200 3350 6750 3350
Connection ~ 7200 3350
Wire Wire Line
	6750 3350 6750 3500
Text HLabel 10050 2600 2    50   Output ~ 0
connector
Text HLabel 9250 3350 2    50   Output ~ 0
out
Text GLabel 1500 2600 0    50   Input ~ 0
in
Wire Wire Line
	1500 2600 1750 2600
$Comp
L Device:C C_input
U 1 1 6093FAC9
P 8250 3650
F 0 "C_input" H 8365 3696 50  0000 L CNN
F 1 "2.5p" H 8365 3605 50  0000 L CNN
F 2 "" H 8288 3500 50  0001 C CNN
F 3 "~" H 8250 3650 50  0001 C CNN
	1    8250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3500 8250 3350
Wire Wire Line
	8250 3800 8250 4250
Wire Wire Line
	8250 4250 7200 4250
Connection ~ 7200 4250
Wire Wire Line
	1750 4250 3700 4250
Wire Wire Line
	10000 4250 8250 4250
Connection ~ 8250 4250
$Comp
L Device:C C_cable1
U 1 1 60ACDAA2
P 3700 3550
F 0 "C_cable1" V 3860 3550 50  0000 C CNN
F 1 "12p" V 3951 3550 50  0000 C CNN
F 2 "" H 3738 3400 50  0001 C CNN
F 3 "~" H 3700 3550 50  0001 C CNN
	1    3700 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 3400 3700 2600
Wire Wire Line
	3700 3700 3700 4250
Connection ~ 3700 4250
Wire Wire Line
	3700 4250 4600 4250
$Comp
L Device:C C_cable2
U 1 1 60ADFCFE
P 4600 3550
F 0 "C_cable2" V 4760 3550 50  0000 C CNN
F 1 "12p" V 4851 3550 50  0000 C CNN
F 2 "" H 4638 3400 50  0001 C CNN
F 3 "~" H 4600 3550 50  0001 C CNN
	1    4600 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 3400 4600 2600
Wire Wire Line
	4600 2600 4300 2600
Wire Wire Line
	4600 2600 4750 2600
Connection ~ 4600 2600
Wire Wire Line
	4600 3700 4600 4250
Connection ~ 4600 4250
Wire Wire Line
	4600 4250 5250 4250
Wire Wire Line
	4000 2600 3700 2600
Connection ~ 3700 2600
Connection ~ 3250 2600
Wire Wire Line
	3250 2600 3700 2600
Wire Wire Line
	1750 2600 1750 3300
Connection ~ 1750 2600
Wire Wire Line
	2600 2600 2600 2800
Wire Wire Line
	2600 2800 2750 2800
Wire Wire Line
	2750 2600 2600 2600
Connection ~ 2600 2600
$Comp
L Device:L L_cable2
U 1 1 60ADF6DC
P 4900 2600
F 0 "L_cable2" V 5090 2600 50  0000 C CNN
F 1 "7n" V 4999 2600 50  0000 C CNN
F 2 "" H 4900 2600 50  0001 C CNN
F 3 "~" H 4900 2600 50  0001 C CNN
	1    4900 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L_cable1
U 1 1 60ADEFFD
P 4150 2600
F 0 "L_cable1" V 4340 2600 50  0000 C CNN
F 1 "7n" V 4249 2600 50  0000 C CNN
F 2 "" H 4150 2600 50  0001 C CNN
F 3 "~" H 4150 2600 50  0001 C CNN
	1    4150 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L_cable?
U 1 1 60AE659B
P 5600 2600
F 0 "L_cable?" V 5790 2600 50  0000 C CNN
F 1 "7n" V 5699 2600 50  0000 C CNN
F 2 "" H 5600 2600 50  0001 C CNN
F 3 "~" H 5600 2600 50  0001 C CNN
	1    5600 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C_cable3
U 1 1 60AE6958
P 5250 3550
F 0 "C_cable3" V 5410 3550 50  0000 C CNN
F 1 "12p" V 5501 3550 50  0000 C CNN
F 2 "" H 5288 3400 50  0001 C CNN
F 3 "~" H 5250 3550 50  0001 C CNN
	1    5250 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C_cable4
U 1 1 60AE6C3C
P 6100 3550
F 0 "C_cable4" V 6260 3550 50  0000 C CNN
F 1 "12p" V 6351 3550 50  0000 C CNN
F 2 "" H 6138 3400 50  0001 C CNN
F 3 "~" H 6100 3550 50  0001 C CNN
	1    6100 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 3400 5250 2600
Wire Wire Line
	5250 2600 5050 2600
Wire Wire Line
	5250 2600 5450 2600
Connection ~ 5250 2600
Wire Wire Line
	5250 3700 5250 4250
Connection ~ 5250 4250
Wire Wire Line
	5250 4250 6100 4250
Wire Wire Line
	6100 3400 6100 2600
Wire Wire Line
	6100 2600 5750 2600
Wire Wire Line
	6100 3700 6100 4250
Connection ~ 6100 4250
Wire Wire Line
	6100 4250 6750 4250
$Comp
L Device:R R_damp?
U 1 1 60AEB0A1
P 6450 2600
F 0 "R_damp?" V 6243 2600 50  0000 C CNN
F 1 "22" V 6334 2600 50  0000 C CNN
F 2 "" V 6380 2600 50  0001 C CNN
F 3 "~" H 6450 2600 50  0001 C CNN
	1    6450 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2600 6100 2600
Connection ~ 6100 2600
Text Notes 3300 4850 0    50   ~ 0
The shielded audio cable used for probe connection has approximately 6 pF/cm and 2 nH/cm.
$Comp
L Device:R R?
U 1 1 60AEF118
P 7800 3350
F 0 "R?" H 7870 3396 50  0000 L CNN
F 1 "110" H 7870 3305 50  0000 L CNN
F 2 "" V 7730 3350 50  0001 C CNN
F 3 "~" H 7800 3350 50  0001 C CNN
	1    7800 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 3350 7200 3350
Wire Wire Line
	7950 3350 8250 3350
Connection ~ 8250 3350
Wire Wire Line
	8250 3350 9250 3350
Wire Wire Line
	6600 2600 6750 2600
Wire Wire Line
	6750 3350 6750 2600
Connection ~ 6750 3350
Connection ~ 6750 2600
Wire Wire Line
	6750 2600 10050 2600
Wire Wire Line
	1750 2600 2600 2600
Text Notes 2000 5350 0    50   ~ 0
.tran 1u 10m
$EndSCHEMATC
