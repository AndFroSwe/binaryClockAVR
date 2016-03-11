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
EELAYER 25 0
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
L ATMEGA328P-P IC1
U 1 1 56E25A57
P 7650 3800
F 0 "IC1" H 6900 5050 50  0000 L BNN
F 1 "ATMEGA328P-P" H 8050 2400 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 7650 3800 50  0000 C CIN
F 3 "" H 7650 3800 50  0000 C CNN
	1    7650 3800
	1    0    0    -1  
$EndComp
NoConn ~ 6750 3000
NoConn ~ 6750 3300
$Comp
L LED D1
U 1 1 56E25D1D
P 2850 1050
F 0 "D1" H 2850 1150 50  0000 C CNN
F 1 "LED" H 2850 950 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 2850 1050 50  0001 C CNN
F 3 "" H 2850 1050 50  0000 C CNN
	1    2850 1050
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 56E25E56
P 2850 1300
F 0 "D2" H 2850 1400 50  0000 C CNN
F 1 "LED" H 2850 1200 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 2850 1300 50  0001 C CNN
F 3 "" H 2850 1300 50  0000 C CNN
	1    2850 1300
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 56E25E93
P 2850 1550
F 0 "D3" H 2850 1650 50  0000 C CNN
F 1 "LED" H 2850 1450 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 2850 1550 50  0001 C CNN
F 3 "" H 2850 1550 50  0000 C CNN
	1    2850 1550
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 56E25EB3
P 2850 1800
F 0 "D4" H 2850 1900 50  0000 C CNN
F 1 "LED" H 2850 1700 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 2850 1800 50  0001 C CNN
F 3 "" H 2850 1800 50  0000 C CNN
	1    2850 1800
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 56E25EE6
P 2850 2050
F 0 "D5" H 2850 2150 50  0000 C CNN
F 1 "LED" H 2850 1950 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 2850 2050 50  0001 C CNN
F 3 "" H 2850 2050 50  0000 C CNN
	1    2850 2050
	-1   0    0    1   
$EndComp
$Comp
L LED D6
U 1 1 56E25F0E
P 2850 2300
F 0 "D6" H 2850 2400 50  0000 C CNN
F 1 "LED" H 2850 2200 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 2850 2300 50  0001 C CNN
F 3 "" H 2850 2300 50  0000 C CNN
	1    2850 2300
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 56E25F59
P 2250 1050
F 0 "R1" V 2330 1050 50  0000 C CNN
F 1 "220" V 2250 1050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2180 1050 50  0001 C CNN
F 3 "" H 2250 1050 50  0000 C CNN
	1    2250 1050
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 56E25FEC
P 2250 1300
F 0 "R2" V 2330 1300 50  0000 C CNN
F 1 "220" V 2250 1300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2180 1300 50  0001 C CNN
F 3 "" H 2250 1300 50  0000 C CNN
	1    2250 1300
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 56E2601F
P 2250 1550
F 0 "R3" V 2330 1550 50  0000 C CNN
F 1 "220" V 2250 1550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2180 1550 50  0001 C CNN
F 3 "" H 2250 1550 50  0000 C CNN
	1    2250 1550
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 56E26073
P 2250 1800
F 0 "R4" V 2330 1800 50  0000 C CNN
F 1 "220" V 2250 1800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2180 1800 50  0001 C CNN
F 3 "" H 2250 1800 50  0000 C CNN
	1    2250 1800
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 56E260A8
P 2250 2050
F 0 "R5" V 2330 2050 50  0000 C CNN
F 1 "220" V 2250 2050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2180 2050 50  0001 C CNN
F 3 "" H 2250 2050 50  0000 C CNN
	1    2250 2050
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 56E260E0
P 2250 2300
F 0 "R6" V 2330 2300 50  0000 C CNN
F 1 "220" V 2250 2300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Ceramic_Horizontal_L19mm-W8mm-H8mm-p25mm" V 2180 2300 50  0001 C CNN
F 3 "" H 2250 2300 50  0000 C CNN
	1    2250 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1050 2650 1050
Wire Wire Line
	2400 1300 2650 1300
Wire Wire Line
	2400 1550 2650 1550
Wire Wire Line
	2400 1800 2650 1800
Wire Wire Line
	2400 2050 2650 2050
Wire Wire Line
	2400 2300 2650 2300
$Comp
L GND #PWR01
U 1 1 56E2704C
P 3200 2400
F 0 "#PWR01" H 3200 2150 50  0001 C CNN
F 1 "GND" H 3200 2250 50  0000 C CNN
F 2 "" H 3200 2400 50  0000 C CNN
F 3 "" H 3200 2400 50  0000 C CNN
	1    3200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2300 3200 2300
Wire Wire Line
	3200 1050 3200 2400
Wire Wire Line
	3050 2050 3200 2050
Connection ~ 3200 2300
Wire Wire Line
	3050 1800 3200 1800
Connection ~ 3200 2050
Wire Wire Line
	3050 1550 3200 1550
Connection ~ 3200 1800
Wire Wire Line
	3050 1300 3200 1300
Connection ~ 3200 1550
Wire Wire Line
	3050 1050 3200 1050
Connection ~ 3200 1300
Text GLabel 1900 1050 0    60   Input ~ 0
minute_leastsig_1
Wire Wire Line
	1900 1050 2100 1050
Text GLabel 1900 1300 0    60   Input ~ 0
minute_leastsig_2
Text GLabel 1900 1550 0    60   Input ~ 0
minute_leastsig_3
Text GLabel 1900 1800 0    60   Input ~ 0
minute_leastsig_4
Text GLabel 1900 2050 0    60   Input ~ 0
minute_leastsig_5
Text GLabel 1900 2300 0    60   Input ~ 0
minute_leastsig_6
Wire Wire Line
	1900 1300 2100 1300
Wire Wire Line
	1900 1550 2100 1550
Wire Wire Line
	1900 1800 2100 1800
Wire Wire Line
	1900 2050 2100 2050
Wire Wire Line
	1900 2300 2100 2300
$Comp
L +3.3V #PWR02
U 1 1 56E283CA
P 6300 2700
F 0 "#PWR02" H 6300 2550 50  0001 C CNN
F 1 "+3.3V" H 6300 2840 50  0000 C CNN
F 2 "" H 6300 2700 50  0000 C CNN
F 3 "" H 6300 2700 50  0000 C CNN
	1    6300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2700 6750 2700
$Comp
L GND #PWR03
U 1 1 56E2841F
P 6500 5000
F 0 "#PWR03" H 6500 4750 50  0001 C CNN
F 1 "GND" H 6500 4850 50  0000 C CNN
F 2 "" H 6500 5000 50  0000 C CNN
F 3 "" H 6500 5000 50  0000 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5000 6500 5000
Wire Wire Line
	6750 4900 6500 4900
Wire Wire Line
	6500 4900 6500 5000
Text GLabel 8650 4300 2    60   Input ~ 0
minute_leastsig_1
Text GLabel 8650 4400 2    60   Input ~ 0
minute_leastsig_2
Text GLabel 8650 4500 2    60   Input ~ 0
minute_leastsig_3
Text GLabel 8650 4600 2    60   Input ~ 0
minute_leastsig_4
Text GLabel 8650 4700 2    60   Input ~ 0
minute_leastsig_5
Text GLabel 8650 4800 2    60   Input ~ 0
minute_leastsig_6
$EndSCHEMATC
