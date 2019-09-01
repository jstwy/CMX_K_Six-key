EESchema Schematic File Version 4
LIBS:CMX_K_Six-Key-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "CMX_K_Six-Key"
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4560 4740 0    60   ~ 0
XTAL1
Text Label 4560 4840 0    60   ~ 0
XTAL2
$Comp
L keyboard_parts:ATMEGA32U4 U1
U 1 1 5D3E5436
P 5960 4290
F 0 "U1" H 5960 3040 60  0000 C CNN
F 1 "ATMEGA32U4" H 5960 5540 60  0000 C CNN
F 2 "keyboard_parts:QFP44" H 5960 4290 60  0001 C CNN
F 3 "" H 5960 4290 60  0000 C CNN
	1    5960 4290
	1    0    0    -1  
$EndComp
Text Label 4560 4540 0    60   ~ 0
VUSB
$Comp
L keyboard_parts:USB_mini_micro_B J1
U 1 1 5D3E66FE
P 2580 2640
F 0 "J1" H 2180 2590 60  0000 C CNN
F 1 "USB_mini_micro_B" H 2430 2890 60  0001 C CNN
F 2 "keyboard_parts:USB_miniB_hirose_5S8" H 2530 2640 60  0001 C CNN
F 3 "" H 2530 2640 60  0000 C CNN
	1    2580 2640
	1    0    0    -1  
$EndComp
NoConn ~ 2730 2790
Text Label 4560 3340 0    60   ~ 0
VUSB
Text Label 1920 3580 0    60   ~ 0
VUSB
Text Label 1930 4180 0    60   ~ 0
GND
Text Label 4560 3440 0    60   ~ 0
D-
Text Label 4560 3540 0    60   ~ 0
D+
Text Label 4560 4640 0    60   ~ 0
GND
$Comp
L keyboard_parts:XTAL_GND X1
U 1 1 5D3EC020
P 2950 5460
F 0 "X1" H 2950 5610 60  0000 C CNN
F 1 "XTAL_GND" H 2950 5310 60  0000 C CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_FA238-4Pin_3.2x2.5mm_HandSoldering" H 2950 5460 60  0001 C CNN
F 3 "" H 2950 5460 60  0000 C CNN
	1    2950 5460
	1    0    0    -1  
$EndComp
Text Label 2760 6240 0    60   ~ 0
GND
Text Label 4560 4440 0    60   ~ 0
~RESET~
$Comp
L keyboard_parts:SW_PUSH SW1
U 1 1 5D3EC745
P 2980 5000
F 0 "SW1" H 3130 5110 50  0000 C CNN
F 1 "SW_PUSH" H 2980 4920 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 2980 5000 60  0001 C CNN
F 3 "" H 2980 5000 60  0000 C CNN
	1    2980 5000
	1    0    0    -1  
$EndComp
Text Label 2500 5000 0    60   ~ 0
GND
Text Label 2510 4650 0    60   ~ 0
VUSB
Text Label 3700 5000 2    60   ~ 0
~RESET~
Text Label 7300 4340 2    60   ~ 0
~HWB~
Text Label 8600 4900 2    60   ~ 0
GND
Text Label 7720 4900 0    60   ~ 0
~HWB~
Text Label 3830 2690 2    60   ~ 0
D+
Text Label 3830 2590 2    60   ~ 0
D-
Text Label 3830 2490 2    60   ~ 0
VUSB
Text Label 3480 2890 2    60   ~ 0
GND
Text Label 4560 3640 0    60   ~ 0
GND
Text Label 4560 3740 0    60   ~ 0
UCAP
Text Label 7300 3240 2    60   ~ 0
VUSB
Text Label 7300 4240 2    60   ~ 0
VUSB
Text Label 7290 5240 2    60   ~ 0
VUSB
Text Label 4560 3840 0    60   ~ 0
VUSB
Text Label 7300 3340 2    60   ~ 0
GND
Text Label 7300 4140 2    60   ~ 0
GND
Text Label 7280 5340 2    60   ~ 0
GND
$Comp
L power:GND #PWR01
U 1 1 5D3F60D8
P 2860 2990
F 0 "#PWR01" H 2860 2740 50  0001 C CNN
F 1 "GND" H 2860 2840 50  0000 C CNN
F 2 "" H 2860 2990 50  0001 C CNN
F 3 "" H 2860 2990 50  0001 C CNN
	1    2860 2990
	1    0    0    -1  
$EndComp
Text Label 7300 3540 2    60   ~ 0
ROW0
Text Label 7300 3640 2    60   ~ 0
ROW1
Text Label 7300 3740 2    60   ~ 0
COL0
Text Label 7300 3840 2    60   ~ 0
COL1
Text Label 7300 3940 2    60   ~ 0
COL2
NoConn ~ 7060 3440
NoConn ~ 7060 4040
NoConn ~ 7060 4440
NoConn ~ 7060 4540
NoConn ~ 7060 4640
NoConn ~ 7060 4740
NoConn ~ 7060 4840
NoConn ~ 7060 4940
NoConn ~ 7060 5040
NoConn ~ 7060 5140
NoConn ~ 4910 4940
NoConn ~ 4910 5040
NoConn ~ 4910 5140
NoConn ~ 4910 5240
NoConn ~ 4910 5340
NoConn ~ 4910 4340
NoConn ~ 4910 3240
NoConn ~ 4910 3940
NoConn ~ 4910 4040
NoConn ~ 4910 4140
NoConn ~ 4910 4240
$Comp
L keyboard_parts:KEYSW K1
U 1 1 5D3F8B73
P 8490 3530
F 0 "K1" H 8440 3530 60  0000 C CNN
F 1 "KEYSW" H 8490 3430 60  0001 C CNN
F 2 "keebs:Mx_Alps_100" H 8490 3530 60  0001 C CNN
F 3 "" H 8490 3530 60  0000 C CNN
	1    8490 3530
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K2
U 1 1 5D3FADFF
P 8490 4080
F 0 "K2" H 8440 4080 60  0000 C CNN
F 1 "KEYSW" H 8490 3980 60  0001 C CNN
F 2 "keebs:Mx_Alps_100" H 8490 4080 60  0001 C CNN
F 3 "" H 8490 4080 60  0000 C CNN
	1    8490 4080
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K3
U 1 1 5D3FBB82
P 9360 3530
F 0 "K3" H 9310 3530 60  0000 C CNN
F 1 "KEYSW" H 9360 3430 60  0001 C CNN
F 2 "keebs:Mx_Alps_100" H 9360 3530 60  0001 C CNN
F 3 "" H 9360 3530 60  0000 C CNN
	1    9360 3530
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K4
U 1 1 5D3FBB91
P 9360 4080
F 0 "K4" H 9310 4080 60  0000 C CNN
F 1 "KEYSW" H 9360 3980 60  0001 C CNN
F 2 "keebs:Mx_Alps_100" H 9360 4080 60  0001 C CNN
F 3 "" H 9360 4080 60  0000 C CNN
	1    9360 4080
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K5
U 1 1 5D3FBE14
P 10270 3530
F 0 "K5" H 10220 3530 60  0000 C CNN
F 1 "KEYSW" H 10270 3430 60  0001 C CNN
F 2 "keebs:Mx_Alps_100" H 10270 3530 60  0001 C CNN
F 3 "" H 10270 3530 60  0000 C CNN
	1    10270 3530
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K6
U 1 1 5D3FBE23
P 10270 4080
F 0 "K6" H 10220 4080 60  0000 C CNN
F 1 "KEYSW" H 10270 3980 60  0001 C CNN
F 2 "keebs:Mx_Alps_100" H 10270 4080 60  0001 C CNN
F 3 "" H 10270 4080 60  0000 C CNN
	1    10270 4080
	1    0    0    -1  
$EndComp
Wire Wire Line
	4560 4740 4910 4740
Wire Wire Line
	4560 4840 4910 4840
Wire Wire Line
	4560 4540 4910 4540
Wire Wire Line
	4560 3340 4910 3340
Wire Wire Line
	4560 3440 4910 3440
Wire Wire Line
	4560 3540 4910 3540
Wire Wire Line
	4560 4640 4910 4640
Wire Wire Line
	4560 4440 4910 4440
Wire Wire Line
	2500 5000 2680 5000
Wire Wire Line
	3280 5000 3400 5000
Connection ~ 3400 5000
Wire Wire Line
	3400 4650 3400 5000
Wire Wire Line
	8430 4900 8600 4900
Wire Wire Line
	7720 4900 7930 4900
Wire Wire Line
	2790 2590 2730 2590
Wire Wire Line
	3830 2690 3700 2690
Wire Wire Line
	3480 2890 2860 2890
Wire Wire Line
	2730 2990 2860 2990
Wire Wire Line
	2860 2990 2860 2890
Connection ~ 2860 2890
Wire Wire Line
	4560 3640 4910 3640
Wire Wire Line
	4560 3740 4910 3740
Wire Wire Line
	7060 3240 7300 3240
Wire Wire Line
	7060 4340 7300 4340
Wire Wire Line
	7060 4240 7300 4240
Wire Wire Line
	7290 5240 7060 5240
Wire Wire Line
	4560 3840 4910 3840
Wire Wire Line
	7060 3340 7300 3340
Wire Wire Line
	7060 4140 7300 4140
Wire Wire Line
	7060 5340 7280 5340
Wire Wire Line
	7060 3540 7300 3540
Wire Wire Line
	7060 3640 7300 3640
Wire Wire Line
	7060 3740 7300 3740
Wire Wire Line
	7060 3840 7300 3840
Wire Wire Line
	7060 3940 7300 3940
Wire Wire Line
	8190 3530 8150 3530
Wire Wire Line
	8790 3310 8790 3530
Wire Wire Line
	8190 4080 8150 4080
Wire Wire Line
	9060 3530 9020 3530
Wire Wire Line
	9660 3310 9660 3530
Wire Wire Line
	9060 4080 9020 4080
Wire Wire Line
	9970 3530 9930 3530
Wire Wire Line
	10570 3310 10570 3530
Wire Wire Line
	9970 4080 9930 4080
Connection ~ 10570 3530
Connection ~ 9660 3530
Connection ~ 8790 3530
Text Label 7750 3870 0    60   ~ 0
ROW0
Text Label 7750 4420 0    60   ~ 0
ROW1
Text Label 8790 3310 0    60   ~ 0
COL0
Text Label 9660 3310 0    60   ~ 0
COL1
Text Label 10570 3310 0    60   ~ 0
COL2
Wire Wire Line
	3400 5000 3700 5000
Wire Wire Line
	2860 2890 2730 2890
Wire Wire Line
	10570 3530 10570 4080
Wire Wire Line
	9660 3530 9660 4080
Wire Wire Line
	8790 3530 8790 4080
$Comp
L keyboard_parts:C C2
U 1 1 5D3EEB6F
P 2220 3880
F 0 "C2" H 2350 3926 50  0000 L CNN
F 1 "0.1u" H 2350 3835 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2220 3880 60  0001 C CNN
F 3 "" H 2220 3880 60  0000 C CNN
	1    2220 3880
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:C C3
U 1 1 5D3EF0A6
P 2620 3880
F 0 "C3" H 2750 3926 50  0000 L CNN
F 1 "0.1u" H 2750 3835 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2620 3880 60  0001 C CNN
F 3 "" H 2620 3880 60  0000 C CNN
	1    2620 3880
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:C C4
U 1 1 5D3EF9F5
P 3020 3880
F 0 "C4" H 3150 3926 50  0000 L CNN
F 1 "0.1u" H 3150 3835 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3020 3880 60  0001 C CNN
F 3 "" H 3020 3880 60  0000 C CNN
	1    3020 3880
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:C C5
U 1 1 5D3EFDEF
P 3420 3880
F 0 "C5" H 3550 3926 50  0000 L CNN
F 1 "0.1u" H 3550 3835 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3420 3880 60  0001 C CNN
F 3 "" H 3420 3880 60  0000 C CNN
	1    3420 3880
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:C C6
U 1 1 5D3F04C9
P 3820 3880
F 0 "C6" H 3950 3926 50  0000 L CNN
F 1 "4.7u" H 3950 3835 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3820 3880 60  0001 C CNN
F 3 "" H 3820 3880 60  0000 C CNN
	1    3820 3880
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:C C7
U 1 1 5D3F06FA
P 2450 5740
F 0 "C7" H 2580 5786 50  0000 L CNN
F 1 "22p" H 2580 5695 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 5740 60  0001 C CNN
F 3 "" H 2450 5740 60  0000 C CNN
	1    2450 5740
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:R R1
U 1 1 5D3F0F0B
P 3040 2590
F 0 "R1" V 2832 2590 50  0000 C CNN
F 1 "22" V 2923 2590 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3040 2590 60  0001 C CNN
F 3 "" H 3040 2590 60  0000 C CNN
	1    3040 2590
	0    1    1    0   
$EndComp
$Comp
L keyboard_parts:R R2
U 1 1 5D3F1ACB
P 3450 2690
F 0 "R2" V 3242 2690 50  0000 C CNN
F 1 "22" V 3333 2690 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 2690 60  0001 C CNN
F 3 "" H 3450 2690 60  0000 C CNN
	1    3450 2690
	0    1    1    0   
$EndComp
$Comp
L keyboard_parts:R R4
U 1 1 5D3F2279
P 8180 4900
F 0 "R4" V 7972 4900 50  0000 C CNN
F 1 "10k" V 8063 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8180 4900 60  0001 C CNN
F 3 "" H 8180 4900 60  0000 C CNN
	1    8180 4900
	0    1    1    0   
$EndComp
$Comp
L keyboard_parts:R R3
U 1 1 5D3FCB1C
P 3150 4650
F 0 "R3" V 2942 4650 50  0000 C CNN
F 1 "10k" V 3033 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3150 4650 60  0001 C CNN
F 3 "" H 3150 4650 60  0000 C CNN
	1    3150 4650
	0    1    1    0   
$EndComp
$Comp
L keyboard_parts:D D1
U 1 1 5D3FD602
P 8150 3770
F 0 "D1" H 8022 3720 60  0000 R CNN
F 1 "D" V 8300 3720 60  0001 C CNN
F 2 "keyboard_parts:D_SOD123_hand" H 8150 3770 60  0001 C CNN
F 3 "" H 8150 3770 60  0000 C CNN
	1    8150 3770
	-1   0    0    1   
$EndComp
$Comp
L keyboard_parts:D D2
U 1 1 5D3FDA0C
P 8150 4320
F 0 "D2" H 8022 4270 60  0000 R CNN
F 1 "D" V 8300 4270 60  0001 C CNN
F 2 "keyboard_parts:D_SOD123_hand" H 8150 4320 60  0001 C CNN
F 3 "" H 8150 4320 60  0000 C CNN
	1    8150 4320
	-1   0    0    1   
$EndComp
$Comp
L keyboard_parts:D D3
U 1 1 5D3FE2F5
P 9020 3780
F 0 "D3" H 8892 3730 60  0000 R CNN
F 1 "D" V 9170 3730 60  0001 C CNN
F 2 "keyboard_parts:D_SOD123_hand" H 9020 3780 60  0001 C CNN
F 3 "" H 9020 3780 60  0000 C CNN
	1    9020 3780
	-1   0    0    1   
$EndComp
$Comp
L keyboard_parts:D D4
U 1 1 5D3FE2FF
P 9020 4320
F 0 "D4" H 8892 4270 60  0000 R CNN
F 1 "D" V 9170 4270 60  0001 C CNN
F 2 "keyboard_parts:D_SOD123_hand" H 9020 4320 60  0001 C CNN
F 3 "" H 9020 4320 60  0000 C CNN
	1    9020 4320
	-1   0    0    1   
$EndComp
$Comp
L keyboard_parts:D D5
U 1 1 5D401B02
P 9930 3780
F 0 "D5" H 9802 3730 60  0000 R CNN
F 1 "D" V 10080 3730 60  0001 C CNN
F 2 "keyboard_parts:D_SOD123_hand" H 9930 3780 60  0001 C CNN
F 3 "" H 9930 3780 60  0000 C CNN
	1    9930 3780
	-1   0    0    1   
$EndComp
$Comp
L keyboard_parts:D D6
U 1 1 5D401B0C
P 9930 4320
F 0 "D6" H 9802 4270 60  0000 R CNN
F 1 "D" V 10080 4270 60  0001 C CNN
F 2 "keyboard_parts:D_SOD123_hand" H 9930 4320 60  0001 C CNN
F 3 "" H 9930 4320 60  0000 C CNN
	1    9930 4320
	-1   0    0    1   
$EndComp
Wire Wire Line
	2730 2690 3200 2690
Wire Wire Line
	3290 2590 3830 2590
Wire Wire Line
	2730 2490 3830 2490
Text Label 3820 3290 2    60   ~ 0
UCAP
$Comp
L keyboard_parts:C C1
U 1 1 5D3EDA65
P 3480 3090
F 0 "C1" H 3610 3136 50  0000 L CNN
F 1 "1u" H 3610 3045 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3480 3090 60  0001 C CNN
F 3 "" H 3480 3090 60  0000 C CNN
	1    3480 3090
	1    0    0    -1  
$EndComp
Wire Wire Line
	3820 3290 3480 3290
Wire Wire Line
	3820 3680 3820 3580
Wire Wire Line
	3820 3580 3420 3580
Wire Wire Line
	2220 3580 2220 3680
Wire Wire Line
	2620 3680 2620 3580
Connection ~ 2620 3580
Wire Wire Line
	2620 3580 2220 3580
Wire Wire Line
	3020 3680 3020 3580
Connection ~ 3020 3580
Wire Wire Line
	3020 3580 2620 3580
Wire Wire Line
	3420 3680 3420 3580
Connection ~ 3420 3580
Wire Wire Line
	3420 3580 3020 3580
Wire Wire Line
	2220 4080 2220 4180
Wire Wire Line
	2220 4180 2620 4180
Wire Wire Line
	3820 4180 3820 4080
Wire Wire Line
	2620 4080 2620 4180
Connection ~ 2620 4180
Wire Wire Line
	3020 4080 3020 4180
Wire Wire Line
	2620 4180 3020 4180
Connection ~ 3020 4180
Wire Wire Line
	3020 4180 3420 4180
Wire Wire Line
	3420 4080 3420 4180
Connection ~ 3420 4180
Wire Wire Line
	3420 4180 3820 4180
Wire Wire Line
	1920 3580 2220 3580
Wire Wire Line
	2220 3580 2220 3590
Connection ~ 2220 3580
Wire Wire Line
	1930 4180 2220 4180
Connection ~ 2220 4180
Wire Wire Line
	2900 4650 2510 4650
$Comp
L keyboard_parts:C C8
U 1 1 5D3F0AC8
P 3450 5740
F 0 "C8" H 3580 5786 50  0000 L CNN
F 1 "22p" H 3580 5695 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 5740 60  0001 C CNN
F 3 "" H 3450 5740 60  0000 C CNN
	1    3450 5740
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5460 3450 5460
Wire Wire Line
	3450 5460 3450 5540
Wire Wire Line
	2650 5460 2450 5460
Wire Wire Line
	2450 5460 2450 5540
Wire Wire Line
	2450 5940 2450 6040
Wire Wire Line
	2450 6040 2950 6040
Wire Wire Line
	3450 6040 3450 5940
Wire Wire Line
	2950 5660 2950 6040
Connection ~ 2950 6040
Wire Wire Line
	2950 6040 3450 6040
Wire Wire Line
	2950 6240 2950 6040
Wire Wire Line
	7750 3870 8150 3870
Wire Wire Line
	7750 4420 8150 4420
Wire Wire Line
	8150 3530 8150 3620
Wire Wire Line
	8150 3820 8150 3870
Connection ~ 8150 3870
Wire Wire Line
	8150 3870 9020 3870
Wire Wire Line
	8150 4080 8150 4170
Wire Wire Line
	8150 4370 8150 4420
Connection ~ 8150 4420
Wire Wire Line
	8150 4420 9020 4420
Wire Wire Line
	9020 3530 9020 3630
Wire Wire Line
	9930 3530 9930 3630
Wire Wire Line
	9020 3830 9020 3870
Connection ~ 9020 3870
Wire Wire Line
	9020 3870 9930 3870
Wire Wire Line
	9930 3830 9930 3870
Wire Wire Line
	9930 4080 9930 4170
Wire Wire Line
	9020 4080 9020 4170
Wire Wire Line
	9020 4370 9020 4420
Connection ~ 9020 4420
Wire Wire Line
	9020 4420 9930 4420
Wire Wire Line
	9930 4370 9930 4420
Connection ~ 2860 2990
Text Label 3450 5460 0    60   ~ 0
XTAL2
Text Label 2450 5460 2    60   ~ 0
XTAL1
Wire Wire Line
	2760 6240 2950 6240
$EndSCHEMATC
