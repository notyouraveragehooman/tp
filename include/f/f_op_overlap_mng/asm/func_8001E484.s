/* 8001E484 0001B3C4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001E488 0001B3C8  7C 08 02 A6 */ mflr r0
/* 8001E48C 0001B3CC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001E490 0001B3D0  80 6D 80 30 */ lwz r3, l_fopOvlpM_overlap-_SDA_BASE_(r13)
/* 8001E494 0001B3D4  28 03 00 00 */ cmplwi r3, 0
/* 8001E498 0001B3D8  41 82 00 18 */ beq lbl_8001E4B0
/* 8001E49C 0001B3DC  80 63 00 20 */ lwz r3, 0x20(r3)
/* 8001E4A0 0001B3E0  80 63 00 C8 */ lwz r3, 0xc8(r3)
/* 8001E4A4 0001B3E4  48 00 2E B5 */ bl fpcEx_SearchByID
/* 8001E4A8 0001B3E8  48 00 20 A1 */ bl fopScnPause_Enable__FP11scene_class
/* 8001E4AC 0001B3EC  48 00 00 08 */ b lbl_8001E4B4
lbl_8001E4B0:
/* 8001E4B0 0001B3F0  38 60 00 00 */ li r3, 0
lbl_8001E4B4:
/* 8001E4B4 0001B3F4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001E4B8 0001B3F8  7C 08 03 A6 */ mtlr r0
/* 8001E4BC 0001B3FC  38 21 00 10 */ addi r1, r1, 0x10
/* 8001E4C0 0001B400  4E 80 00 20 */ blr
