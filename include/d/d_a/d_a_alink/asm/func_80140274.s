/* 80140274 0013D1B4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80140278 0013D1B8  7C 08 02 A6 */ mflr r0
/* 8014027C 0013D1BC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80140280 0013D1C0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80140284 0013D1C4  7C 7F 1B 78 */ mr r31, r3
/* 80140288 0013D1C8  88 63 2F D1 */ lbz r3, 0x2fd1(r3)
/* 8014028C 0013D1CC  28 03 00 00 */ cmplwi r3, 0
/* 80140290 0013D1D0  41 82 00 88 */ beq lbl_80140318
/* 80140294 0013D1D4  38 03 FF FF */ addi r0, r3, -1
/* 80140298 0013D1D8  98 1F 2F D1 */ stb r0, 0x2fd1(r31)
/* 8014029C 0013D1DC  88 1F 2F D1 */ lbz r0, 0x2fd1(r31)
/* 801402A0 0013D1E0  28 00 00 02 */ cmplwi r0, 2
/* 801402A4 0013D1E4  40 82 00 34 */ bne lbl_801402D8
/* 801402A8 0013D1E8  38 00 00 00 */ li r0, 0
/* 801402AC 0013D1EC  90 1F 06 78 */ stw r0, 0x678(r31)
/* 801402B0 0013D1F0  38 7F 06 3C */ addi r3, r31, 0x63c
/* 801402B4 0013D1F4  80 9F 06 44 */ lwz r4, 0x644(r31)
/* 801402B8 0013D1F8  4B EE CD 51 */ bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 801402BC 0013D1FC  38 7F 06 3C */ addi r3, r31, 0x63c
/* 801402C0 0013D200  48 12 63 65 */ bl cPhs_Reset
/* 801402C4 0013D204  80 7F 06 48 */ lwz r3, 0x648(r31)
/* 801402C8 0013D208  48 18 E3 05 */ bl freeAll__7JKRHeapFv
/* 801402CC 0013D20C  7F E3 FB 78 */ mr r3, r31
/* 801402D0 0013D210  4B FF FC C1 */ bl daAlink_c_NS_setShieldArcName
/* 801402D4 0013D214  48 00 00 4C */ b lbl_80140320
lbl_801402D8:
/* 801402D8 0013D218  28 00 00 01 */ cmplwi r0, 1
/* 801402DC 0013D21C  40 82 00 44 */ bne lbl_80140320
/* 801402E0 0013D220  38 7F 06 3C */ addi r3, r31, 0x63c
/* 801402E4 0013D224  80 9F 06 44 */ lwz r4, 0x644(r31)
/* 801402E8 0013D228  80 BF 06 48 */ lwz r5, 0x648(r31)
/* 801402EC 0013D22C  4B EE CC D5 */ bl dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap
/* 801402F0 0013D230  2C 03 00 04 */ cmpwi r3, 4
/* 801402F4 0013D234  40 82 00 18 */ bne lbl_8014030C
/* 801402F8 0013D238  38 00 00 00 */ li r0, 0
/* 801402FC 0013D23C  98 1F 2F D1 */ stb r0, 0x2fd1(r31)
/* 80140300 0013D240  7F E3 FB 78 */ mr r3, r31
/* 80140304 0013D244  4B FF FE F5 */ bl daAlink_c_NS_setShieldModel
/* 80140308 0013D248  48 00 00 18 */ b lbl_80140320
lbl_8014030C:
/* 8014030C 0013D24C  38 00 00 02 */ li r0, 2
/* 80140310 0013D250  98 1F 2F D1 */ stb r0, 0x2fd1(r31)
/* 80140314 0013D254  48 00 00 0C */ b lbl_80140320
lbl_80140318:
/* 80140318 0013D258  38 60 00 01 */ li r3, 1
/* 8014031C 0013D25C  48 00 00 08 */ b lbl_80140324
lbl_80140320:
/* 80140320 0013D260  38 60 00 00 */ li r3, 0
lbl_80140324:
/* 80140324 0013D264  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80140328 0013D268  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8014032C 0013D26C  7C 08 03 A6 */ mtlr r0
/* 80140330 0013D270  38 21 00 10 */ addi r1, r1, 0x10
/* 80140334 0013D274  4E 80 00 20 */ blr
