/* 800EAD84 000E7CC4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800EAD88 000E7CC8  7C 08 02 A6 */ mflr r0
/* 800EAD8C 000E7CCC  90 01 00 34 */ stw r0, 0x34(r1)
/* 800EAD90 000E7CD0  39 61 00 30 */ addi r11, r1, 0x30
/* 800EAD94 000E7CD4  48 27 74 49 */ bl _savegpr_29
/* 800EAD98 000E7CD8  7C 7D 1B 78 */ mr r29, r3
/* 800EAD9C 000E7CDC  38 00 00 04 */ li r0, 4
/* 800EADA0 000E7CE0  98 03 2F 99 */ stb r0, 0x2f99(r3)
/* 800EADA4 000E7CE4  4B FF FA A1 */ bl daAlink_c_NS_checkSumouVsActor
/* 800EADA8 000E7CE8  2C 03 00 00 */ cmpwi r3, 0
/* 800EADAC 000E7CEC  40 82 00 0C */ bne lbl_800EADB8
/* 800EADB0 000E7CF0  38 60 00 01 */ li r3, 1
/* 800EADB4 000E7CF4  48 00 04 3C */ b lbl_800EB1F0
lbl_800EADB8:
/* 800EADB8 000E7CF8  83 FD 28 58 */ lwz r31, 0x2858(r29)
/* 800EADBC 000E7CFC  3B DD 1F D0 */ addi r30, r29, 0x1fd0
/* 800EADC0 000E7D00  7F C3 F3 78 */ mr r3, r30
/* 800EADC4 000E7D04  C0 3D 34 78 */ lfs f1, 0x3478(r29)
/* 800EADC8 000E7D08  48 23 D6 65 */ bl J3DFrameCtrl_NS_checkPass
/* 800EADCC 000E7D0C  2C 03 00 00 */ cmpwi r3, 0
/* 800EADD0 000E7D10  41 82 00 1C */ beq lbl_800EADEC
/* 800EADD4 000E7D14  7F A3 EB 78 */ mr r3, r29
/* 800EADD8 000E7D18  80 9D 32 CC */ lwz r4, 0x32cc(r29)
/* 800EADDC 000E7D1C  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 800EADE0 000E7D20  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800EADE4 000E7D24  7D 89 03 A6 */ mtctr r12
/* 800EADE8 000E7D28  4E 80 04 21 */ bctrl
lbl_800EADEC:
/* 800EADEC 000E7D2C  88 1D 05 6A */ lbz r0, 0x56a(r29)
/* 800EADF0 000E7D30  28 00 00 09 */ cmplwi r0, 9
/* 800EADF4 000E7D34  41 82 00 0C */ beq lbl_800EAE00
/* 800EADF8 000E7D38  28 00 00 0A */ cmplwi r0, 0xa
/* 800EADFC 000E7D3C  40 82 00 D8 */ bne lbl_800EAED4
lbl_800EAE00:
/* 800EAE00 000E7D40  A8 7D 30 0A */ lha r3, 0x300a(r29)
/* 800EAE04 000E7D44  2C 03 00 00 */ cmpwi r3, 0
/* 800EAE08 000E7D48  41 82 00 0C */ beq lbl_800EAE14
/* 800EAE0C 000E7D4C  38 03 FF FF */ addi r0, r3, -1
/* 800EAE10 000E7D50  B0 1D 30 0A */ sth r0, 0x300a(r29)
lbl_800EAE14:
/* 800EAE14 000E7D54  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800EAE18 000E7D58  D0 01 00 08 */ stfs f0, 8(r1)
/* 800EAE1C 000E7D5C  A8 7D 30 08 */ lha r3, 0x3008(r29)
/* 800EAE20 000E7D60  2C 03 00 00 */ cmpwi r3, 0
/* 800EAE24 000E7D64  41 82 00 54 */ beq lbl_800EAE78
/* 800EAE28 000E7D68  88 1D 2F 8D */ lbz r0, 0x2f8d(r29)
/* 800EAE2C 000E7D6C  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EAE30 000E7D70  41 82 00 0C */ beq lbl_800EAE3C
/* 800EAE34 000E7D74  38 03 FF FF */ addi r0, r3, -1
/* 800EAE38 000E7D78  B0 1D 30 08 */ sth r0, 0x3008(r29)
lbl_800EAE3C:
/* 800EAE3C 000E7D7C  88 1D 05 6A */ lbz r0, 0x56a(r29)
/* 800EAE40 000E7D80  28 00 00 0A */ cmplwi r0, 0xa
/* 800EAE44 000E7D84  40 82 00 18 */ bne lbl_800EAE5C
/* 800EAE48 000E7D88  A8 1D 30 0A */ lha r0, 0x300a(r29)
/* 800EAE4C 000E7D8C  2C 00 00 00 */ cmpwi r0, 0
/* 800EAE50 000E7D90  40 82 00 0C */ bne lbl_800EAE5C
/* 800EAE54 000E7D94  C0 22 93 2C */ lfs f1, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800EAE58 000E7D98  48 00 00 08 */ b lbl_800EAE60
lbl_800EAE5C:
/* 800EAE5C 000E7D9C  C0 22 93 F8 */ lfs f1, lbl_80452DF8-_SDA2_BASE_(r2)
lbl_800EAE60:
/* 800EAE60 000E7DA0  38 61 00 08 */ addi r3, r1, 8
/* 800EAE64 000E7DA4  C0 42 94 A8 */ lfs f2, lbl_80452EA8-_SDA2_BASE_(r2)
/* 800EAE68 000E7DA8  48 18 58 D9 */ bl cLib_chaseF__FPfff
/* 800EAE6C 000E7DAC  C0 01 00 08 */ lfs f0, 8(r1)
/* 800EAE70 000E7DB0  D0 1E 00 0C */ stfs f0, 0xc(r30)
/* 800EAE74 000E7DB4  48 00 03 10 */ b lbl_800EB184
lbl_800EAE78:
/* 800EAE78 000E7DB8  88 1D 05 6A */ lbz r0, 0x56a(r29)
/* 800EAE7C 000E7DBC  28 00 00 09 */ cmplwi r0, 9
/* 800EAE80 000E7DC0  40 82 00 18 */ bne lbl_800EAE98
/* 800EAE84 000E7DC4  38 61 00 08 */ addi r3, r1, 8
/* 800EAE88 000E7DC8  C0 22 93 2C */ lfs f1, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800EAE8C 000E7DCC  C0 42 94 A8 */ lfs f2, lbl_80452EA8-_SDA2_BASE_(r2)
/* 800EAE90 000E7DD0  48 18 58 B1 */ bl cLib_chaseF__FPfff
/* 800EAE94 000E7DD4  48 00 02 F0 */ b lbl_800EB184
lbl_800EAE98:
/* 800EAE98 000E7DD8  7F A3 EB 78 */ mr r3, r29
/* 800EAE9C 000E7DDC  38 80 01 54 */ li r4, 0x154
/* 800EAEA0 000E7DE0  4B FC 20 E1 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800EAEA4 000E7DE4  38 00 00 23 */ li r0, 0x23
/* 800EAEA8 000E7DE8  98 1D 05 6A */ stb r0, 0x56a(r29)
/* 800EAEAC 000E7DEC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EAEB0 000E7DF0  D0 1D 33 9C */ stfs f0, 0x339c(r29)
/* 800EAEB4 000E7DF4  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 800EAEB8 000E7DF8  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 800EAEBC 000E7DFC  3C 60 00 01 */ lis r3, 0x0001004C@ha
/* 800EAEC0 000E7E00  38 03 00 4C */ addi r0, r3, 0x0001004C@l
/* 800EAEC4 000E7E04  90 1D 32 CC */ stw r0, 0x32cc(r29)
/* 800EAEC8 000E7E08  38 00 01 54 */ li r0, 0x154
/* 800EAECC 000E7E0C  90 1D 31 98 */ stw r0, 0x3198(r29)
/* 800EAED0 000E7E10  48 00 02 B4 */ b lbl_800EB184
lbl_800EAED4:
/* 800EAED4 000E7E14  A8 1D 30 0E */ lha r0, 0x300e(r29)
/* 800EAED8 000E7E18  2C 00 00 00 */ cmpwi r0, 0
/* 800EAEDC 000E7E1C  40 82 02 8C */ bne lbl_800EB168
/* 800EAEE0 000E7E20  A8 7D 30 0C */ lha r3, 0x300c(r29)
/* 800EAEE4 000E7E24  2C 03 00 00 */ cmpwi r3, 0
/* 800EAEE8 000E7E28  40 81 00 18 */ ble lbl_800EAF00
/* 800EAEEC 000E7E2C  88 1D 2F 8D */ lbz r0, 0x2f8d(r29)
/* 800EAEF0 000E7E30  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EAEF4 000E7E34  41 82 00 0C */ beq lbl_800EAF00
/* 800EAEF8 000E7E38  38 03 FF FF */ addi r0, r3, -1
/* 800EAEFC 000E7E3C  B0 1D 30 0C */ sth r0, 0x300c(r29)
lbl_800EAF00:
/* 800EAF00 000E7E40  7F A3 EB 78 */ mr r3, r29
/* 800EAF04 000E7E44  38 80 00 64 */ li r4, 0x64
/* 800EAF08 000E7E48  4B FC 83 79 */ bl daAlink_c_NS_setDoStatusContinuation
/* 800EAF0C 000E7E4C  C0 3D 33 9C */ lfs f1, 0x339c(r29)
/* 800EAF10 000E7E50  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EAF14 000E7E54  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EAF18 000E7E58  40 81 00 4C */ ble lbl_800EAF64
/* 800EAF1C 000E7E5C  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800EAF20 000E7E60  D0 01 00 08 */ stfs f0, 8(r1)
/* 800EAF24 000E7E64  88 1D 2F 8D */ lbz r0, 0x2f8d(r29)
/* 800EAF28 000E7E68  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EAF2C 000E7E6C  41 82 00 18 */ beq lbl_800EAF44
/* 800EAF30 000E7E70  38 61 00 08 */ addi r3, r1, 8
/* 800EAF34 000E7E74  C0 22 93 2C */ lfs f1, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800EAF38 000E7E78  C0 42 93 A0 */ lfs f2, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800EAF3C 000E7E7C  48 18 58 05 */ bl cLib_chaseF__FPfff
/* 800EAF40 000E7E80  48 00 00 1C */ b lbl_800EAF5C
lbl_800EAF44:
/* 800EAF44 000E7E84  38 61 00 08 */ addi r3, r1, 8
/* 800EAF48 000E7E88  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800EAF4C 000E7E8C  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800EAF50 000E7E90  C0 62 92 A4 */ lfs f3, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800EAF54 000E7E94  C0 82 94 44 */ lfs f4, lbl_80452E44-_SDA2_BASE_(r2)
/* 800EAF58 000E7E98  48 18 4A 25 */ bl cLib_addCalc__FPfffff
lbl_800EAF5C:
/* 800EAF5C 000E7E9C  C0 01 00 08 */ lfs f0, 8(r1)
/* 800EAF60 000E7EA0  D0 1E 00 0C */ stfs f0, 0xc(r30)
lbl_800EAF64:
/* 800EAF64 000E7EA4  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 800EAF68 000E7EA8  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 800EAF6C 000E7EAC  A0 03 00 AC */ lhz r0, 0xac(r3)
/* 800EAF70 000E7EB0  60 00 00 01 */ ori r0, r0, 1
/* 800EAF74 000E7EB4  B0 03 00 AC */ sth r0, 0xac(r3)
/* 800EAF78 000E7EB8  88 1D 05 6A */ lbz r0, 0x56a(r29)
/* 800EAF7C 000E7EBC  28 00 00 24 */ cmplwi r0, 0x24
/* 800EAF80 000E7EC0  41 82 00 20 */ beq lbl_800EAFA0
/* 800EAF84 000E7EC4  C0 5D 33 9C */ lfs f2, 0x339c(r29)
/* 800EAF88 000E7EC8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EAF8C 000E7ECC  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800EAF90 000E7ED0  40 80 00 B0 */ bge lbl_800EB040
/* 800EAF94 000E7ED4  A8 1D 30 0C */ lha r0, 0x300c(r29)
/* 800EAF98 000E7ED8  2C 00 00 00 */ cmpwi r0, 0
/* 800EAF9C 000E7EDC  40 82 00 A4 */ bne lbl_800EB040
lbl_800EAFA0:
/* 800EAFA0 000E7EE0  38 00 00 01 */ li r0, 1
/* 800EAFA4 000E7EE4  B0 1D 30 0E */ sth r0, 0x300e(r29)
/* 800EAFA8 000E7EE8  38 00 00 0C */ li r0, 0xc
/* 800EAFAC 000E7EEC  98 1D 2F 99 */ stb r0, 0x2f99(r29)
/* 800EAFB0 000E7EF0  C0 3D 33 9C */ lfs f1, 0x339c(r29)
/* 800EAFB4 000E7EF4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EAFB8 000E7EF8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EAFBC 000E7EFC  40 81 00 48 */ ble lbl_800EB004
/* 800EAFC0 000E7F00  88 1F 04 99 */ lbz r0, 0x499(r31)
/* 800EAFC4 000E7F04  54 00 06 7F */ clrlwi. r0, r0, 0x19
/* 800EAFC8 000E7F08  3B E0 01 55 */ li r31, 0x155
/* 800EAFCC 000E7F0C  41 82 00 08 */ beq lbl_800EAFD4
/* 800EAFD0 000E7F10  3B E0 01 56 */ li r31, 0x156
lbl_800EAFD4:
/* 800EAFD4 000E7F14  7F A3 EB 78 */ mr r3, r29
/* 800EAFD8 000E7F18  7F E4 FB 78 */ mr r4, r31
/* 800EAFDC 000E7F1C  4B FC 1F A5 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800EAFE0 000E7F20  38 00 00 24 */ li r0, 0x24
/* 800EAFE4 000E7F24  98 1D 05 6A */ stb r0, 0x56a(r29)
/* 800EAFE8 000E7F28  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 800EAFEC 000E7F2C  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 800EAFF0 000E7F30  3C 60 00 01 */ lis r3, 0x00010062@ha
/* 800EAFF4 000E7F34  38 03 00 62 */ addi r0, r3, 0x00010062@l
/* 800EAFF8 000E7F38  90 1D 32 CC */ stw r0, 0x32cc(r29)
/* 800EAFFC 000E7F3C  93 FD 31 98 */ stw r31, 0x3198(r29)
/* 800EB000 000E7F40  48 00 00 34 */ b lbl_800EB034
lbl_800EB004:
/* 800EB004 000E7F44  7F A3 EB 78 */ mr r3, r29
/* 800EB008 000E7F48  38 80 01 54 */ li r4, 0x154
/* 800EB00C 000E7F4C  4B FC 1F 75 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800EB010 000E7F50  38 00 00 23 */ li r0, 0x23
/* 800EB014 000E7F54  98 1D 05 6A */ stb r0, 0x56a(r29)
/* 800EB018 000E7F58  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 800EB01C 000E7F5C  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 800EB020 000E7F60  3C 60 00 01 */ lis r3, 0x0001004C@ha
/* 800EB024 000E7F64  38 03 00 4C */ addi r0, r3, 0x0001004C@l
/* 800EB028 000E7F68  90 1D 32 CC */ stw r0, 0x32cc(r29)
/* 800EB02C 000E7F6C  38 00 01 54 */ li r0, 0x154
/* 800EB030 000E7F70  90 1D 31 98 */ stw r0, 0x3198(r29)
lbl_800EB034:
/* 800EB034 000E7F74  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EB038 000E7F78  D0 1D 33 9C */ stfs f0, 0x339c(r29)
/* 800EB03C 000E7F7C  48 00 01 48 */ b lbl_800EB184
lbl_800EB040:
/* 800EB040 000E7F80  3B E0 00 00 */ li r31, 0
/* 800EB044 000E7F84  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EB048 000E7F88  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800EB04C 000E7F8C  40 81 00 80 */ ble lbl_800EB0CC
/* 800EB050 000E7F90  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 800EB054 000E7F94  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800EB058 000E7F98  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EB05C 000E7F9C  40 81 00 70 */ ble lbl_800EB0CC
/* 800EB060 000E7FA0  A8 7D 2F E0 */ lha r3, 0x2fe0(r29)
/* 800EB064 000E7FA4  4B FC 84 31 */ bl daAlink_c_NS_getDirectionFromAngle
/* 800EB068 000E7FA8  2C 03 00 02 */ cmpwi r3, 2
/* 800EB06C 000E7FAC  41 82 00 0C */ beq lbl_800EB078
/* 800EB070 000E7FB0  2C 03 00 03 */ cmpwi r3, 3
/* 800EB074 000E7FB4  40 82 00 70 */ bne lbl_800EB0E4
lbl_800EB078:
/* 800EB078 000E7FB8  C0 5D 33 AC */ lfs f2, 0x33ac(r29)
/* 800EB07C 000E7FBC  3C 80 80 39 */ lis r4, lbl_8038E210@ha
/* 800EB080 000E7FC0  38 84 E2 10 */ addi r4, r4, lbl_8038E210@l
/* 800EB084 000E7FC4  A8 04 00 0E */ lha r0, 0xe(r4)
/* 800EB088 000E7FC8  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800EB08C 000E7FCC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800EB090 000E7FD0  90 01 00 14 */ stw r0, 0x14(r1)
/* 800EB094 000E7FD4  3C 00 43 30 */ lis r0, 0x4330
/* 800EB098 000E7FD8  90 01 00 10 */ stw r0, 0x10(r1)
/* 800EB09C 000E7FDC  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 800EB0A0 000E7FE0  EC 00 08 28 */ fsubs f0, f0, f1
/* 800EB0A4 000E7FE4  EC 00 00 B2 */ fmuls f0, f0, f2
/* 800EB0A8 000E7FE8  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EB0AC 000E7FEC  FC 00 00 1E */ fctiwz f0, f0
/* 800EB0B0 000E7FF0  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 800EB0B4 000E7FF4  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800EB0B8 000E7FF8  2C 03 00 03 */ cmpwi r3, 3
/* 800EB0BC 000E7FFC  40 82 00 28 */ bne lbl_800EB0E4
/* 800EB0C0 000E8000  7C 1F 00 D0 */ neg r0, r31
/* 800EB0C4 000E8004  7C 1F 07 34 */ extsh r31, r0
/* 800EB0C8 000E8008  48 00 00 1C */ b lbl_800EB0E4
lbl_800EB0CC:
/* 800EB0CC 000E800C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EB0D0 000E8010  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800EB0D4 000E8014  40 80 00 10 */ bge lbl_800EB0E4
/* 800EB0D8 000E8018  AB FD 30 10 */ lha r31, 0x3010(r29)
/* 800EB0DC 000E801C  38 00 00 00 */ li r0, 0
/* 800EB0E0 000E8020  B0 1D 30 10 */ sth r0, 0x3010(r29)
lbl_800EB0E4:
/* 800EB0E4 000E8024  7F E0 07 35 */ extsh. r0, r31
/* 800EB0E8 000E8028  41 82 00 9C */ beq lbl_800EB184
/* 800EB0EC 000E802C  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 800EB0F0 000E8030  54 04 04 38 */ rlwinm r4, r0, 0, 0x10, 0x1c
/* 800EB0F4 000E8034  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800EB0F8 000E8038  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800EB0FC 000E803C  7C 03 24 2E */ lfsx f0, r3, r4
/* 800EB100 000E8040  C0 3D 04 D0 */ lfs f1, 0x4d0(r29)
/* 800EB104 000E8044  C0 42 93 D4 */ lfs f2, lbl_80452DD4-_SDA2_BASE_(r2)
/* 800EB108 000E8048  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EB10C 000E804C  EC 61 00 2A */ fadds f3, f1, f0
/* 800EB110 000E8050  38 A3 00 04 */ addi r5, r3, 4
/* 800EB114 000E8054  7C 05 24 2E */ lfsx f0, r5, r4
/* 800EB118 000E8058  C0 3D 04 D8 */ lfs f1, 0x4d8(r29)
/* 800EB11C 000E805C  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EB120 000E8060  EC 21 00 2A */ fadds f1, f1, f0
/* 800EB124 000E8064  7C 00 FA 14 */ add r0, r0, r31
/* 800EB128 000E8068  B0 1D 04 E6 */ sth r0, 0x4e6(r29)
/* 800EB12C 000E806C  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 800EB130 000E8070  B0 1D 04 DE */ sth r0, 0x4de(r29)
/* 800EB134 000E8074  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 800EB138 000E8078  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800EB13C 000E807C  7C 03 04 2E */ lfsx f0, r3, r0
/* 800EB140 000E8080  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EB144 000E8084  EC 03 00 28 */ fsubs f0, f3, f0
/* 800EB148 000E8088  D0 1D 04 D0 */ stfs f0, 0x4d0(r29)
/* 800EB14C 000E808C  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 800EB150 000E8090  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800EB154 000E8094  7C 05 04 2E */ lfsx f0, r5, r0
/* 800EB158 000E8098  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EB15C 000E809C  EC 01 00 28 */ fsubs f0, f1, f0
/* 800EB160 000E80A0  D0 1D 04 D8 */ stfs f0, 0x4d8(r29)
/* 800EB164 000E80A4  48 00 00 20 */ b lbl_800EB184
lbl_800EB168:
/* 800EB168 000E80A8  7F C3 F3 78 */ mr r3, r30
/* 800EB16C 000E80AC  48 07 33 61 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800EB170 000E80B0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EB174 000E80B4  41 82 00 10 */ beq lbl_800EB184
/* 800EB178 000E80B8  7F A3 EB 78 */ mr r3, r29
/* 800EB17C 000E80BC  48 00 00 8D */ bl daAlink_c_NS_procSumouSideMoveInit
/* 800EB180 000E80C0  48 00 00 70 */ b lbl_800EB1F0
lbl_800EB184:
/* 800EB184 000E80C4  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800EB188 000E80C8  2C 00 01 4C */ cmpwi r0, 0x14c
/* 800EB18C 000E80CC  41 82 00 1C */ beq lbl_800EB1A8
/* 800EB190 000E80D0  2C 00 01 4D */ cmpwi r0, 0x14d
/* 800EB194 000E80D4  41 82 00 14 */ beq lbl_800EB1A8
/* 800EB198 000E80D8  2C 00 01 4B */ cmpwi r0, 0x14b
/* 800EB19C 000E80DC  41 82 00 0C */ beq lbl_800EB1A8
/* 800EB1A0 000E80E0  2C 00 01 4A */ cmpwi r0, 0x14a
/* 800EB1A4 000E80E4  40 82 00 10 */ bne lbl_800EB1B4
lbl_800EB1A8:
/* 800EB1A8 000E80E8  38 00 00 60 */ li r0, 0x60
/* 800EB1AC 000E80EC  98 1D 2F 9D */ stb r0, 0x2f9d(r29)
/* 800EB1B0 000E80F0  48 00 00 3C */ b lbl_800EB1EC
lbl_800EB1B4:
/* 800EB1B4 000E80F4  2C 00 01 55 */ cmpwi r0, 0x155
/* 800EB1B8 000E80F8  41 82 00 0C */ beq lbl_800EB1C4
/* 800EB1BC 000E80FC  2C 00 01 56 */ cmpwi r0, 0x156
/* 800EB1C0 000E8100  40 82 00 2C */ bne lbl_800EB1EC
lbl_800EB1C4:
/* 800EB1C4 000E8104  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800EB1C8 000E8108  C0 02 94 04 */ lfs f0, lbl_80452E04-_SDA2_BASE_(r2)
/* 800EB1CC 000E810C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EB1D0 000E8110  4C 41 13 82 */ cror 2, 1, 2
/* 800EB1D4 000E8114  40 82 00 18 */ bne lbl_800EB1EC
/* 800EB1D8 000E8118  C0 02 93 90 */ lfs f0, lbl_80452D90-_SDA2_BASE_(r2)
/* 800EB1DC 000E811C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EB1E0 000E8120  40 80 00 0C */ bge lbl_800EB1EC
/* 800EB1E4 000E8124  38 00 00 60 */ li r0, 0x60
/* 800EB1E8 000E8128  98 1D 2F 9D */ stb r0, 0x2f9d(r29)
lbl_800EB1EC:
/* 800EB1EC 000E812C  38 60 00 01 */ li r3, 1
lbl_800EB1F0:
/* 800EB1F0 000E8130  39 61 00 30 */ addi r11, r1, 0x30
/* 800EB1F4 000E8134  48 27 70 35 */ bl _restgpr_29
/* 800EB1F8 000E8138  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800EB1FC 000E813C  7C 08 03 A6 */ mtlr r0
/* 800EB200 000E8140  38 21 00 30 */ addi r1, r1, 0x30
/* 800EB204 000E8144  4E 80 00 20 */ blr
