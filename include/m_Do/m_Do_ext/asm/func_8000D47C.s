/* 8000D47C 0000A3BC  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8000D480 0000A3C0  7C 08 02 A6 */ mflr r0
/* 8000D484 0000A3C4  90 01 00 34 */ stw r0, 0x34(r1)
/* 8000D488 0000A3C8  DB E1 00 28 */ stfd f31, 0x28(r1)
/* 8000D48C 0000A3CC  39 61 00 28 */ addi r11, r1, 0x28
/* 8000D490 0000A3D0  48 35 4D 45 */ bl _savegpr_27
/* 8000D494 0000A3D4  7C 7B 1B 78 */ mr r27, r3
/* 8000D498 0000A3D8  7C DC 33 78 */ mr r28, r6
/* 8000D49C 0000A3DC  7C FD 3B 78 */ mr r29, r7
/* 8000D4A0 0000A3E0  FF E0 08 90 */ fmr f31, f1
/* 8000D4A4 0000A3E4  7D 1E 43 78 */ mr r30, r8
/* 8000D4A8 0000A3E8  7D 3F 4B 78 */ mr r31, r9
/* 8000D4AC 0000A3EC  90 A3 00 14 */ stw r5, 0x14(r3)
/* 8000D4B0 0000A3F0  80 63 00 14 */ lwz r3, 0x14(r3)
/* 8000D4B4 0000A3F4  48 31 D3 F1 */ bl J3DAnmColor_NS_searchUpdateMaterialID
/* 8000D4B8 0000A3F8  2C 1C 00 00 */ cmpwi r28, 0
/* 8000D4BC 0000A3FC  41 82 00 3C */ beq lbl_8000D4F8
/* 8000D4C0 0000A400  2C 1D 00 00 */ cmpwi r29, 0
/* 8000D4C4 0000A404  40 80 00 10 */ bge lbl_8000D4D4
/* 8000D4C8 0000A408  80 7B 00 14 */ lwz r3, 0x14(r27)
/* 8000D4CC 0000A40C  88 A3 00 04 */ lbz r5, 4(r3)
/* 8000D4D0 0000A410  48 00 00 08 */ b lbl_8000D4D8
lbl_8000D4D4:
/* 8000D4D4 0000A414  7F A5 EB 78 */ mr r5, r29
lbl_8000D4D8:
/* 8000D4D8 0000A418  80 7B 00 14 */ lwz r3, 0x14(r27)
/* 8000D4DC 0000A41C  A8 83 00 06 */ lha r4, 6(r3)
/* 8000D4E0 0000A420  7F 63 DB 78 */ mr r3, r27
/* 8000D4E4 0000A424  FC 20 F8 90 */ fmr f1, f31
/* 8000D4E8 0000A428  7F C6 F3 78 */ mr r6, r30
/* 8000D4EC 0000A42C  7F E7 FB 78 */ mr r7, r31
/* 8000D4F0 0000A430  4B FF FE 31 */ bl mDoExt_baseAnm_NS_initPlay
/* 8000D4F4 0000A434  48 00 00 08 */ b lbl_8000D4FC
lbl_8000D4F8:
/* 8000D4F8 0000A438  38 60 00 01 */ li r3, 1
lbl_8000D4FC:
/* 8000D4FC 0000A43C  CB E1 00 28 */ lfd f31, 0x28(r1)
/* 8000D500 0000A440  39 61 00 28 */ addi r11, r1, 0x28
/* 8000D504 0000A444  48 35 4D 1D */ bl _restgpr_27
/* 8000D508 0000A448  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8000D50C 0000A44C  7C 08 03 A6 */ mtlr r0
/* 8000D510 0000A450  38 21 00 30 */ addi r1, r1, 0x30
/* 8000D514 0000A454  4E 80 00 20 */ blr
