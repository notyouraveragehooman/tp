/* 800DEAE4 000DBA24  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800DEAE8 000DBA28  7C 08 02 A6 */ mflr r0
/* 800DEAEC 000DBA2C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800DEAF0 000DBA30  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800DEAF4 000DBA34  7C 7F 1B 78 */ mr r31, r3
/* 800DEAF8 000DBA38  80 63 28 28 */ lwz r3, 0x2828(r3)
/* 800DEAFC 000DBA3C  28 03 00 00 */ cmplwi r3, 0
/* 800DEB00 000DBA40  41 82 00 78 */ beq lbl_800DEB78
/* 800DEB04 000DBA44  A8 03 00 08 */ lha r0, 8(r3)
/* 800DEB08 000DBA48  2C 00 03 08 */ cmpwi r0, 0x308
/* 800DEB0C 000DBA4C  40 82 00 6C */ bne lbl_800DEB78
/* 800DEB10 000DBA50  88 03 09 3C */ lbz r0, 0x93c(r3)
/* 800DEB14 000DBA54  28 00 00 01 */ cmplwi r0, 1
/* 800DEB18 000DBA58  40 82 00 54 */ bne lbl_800DEB6C
/* 800DEB1C 000DBA5C  A8 BF 05 6C */ lha r5, 0x56c(r31)
/* 800DEB20 000DBA60  3C 80 80 39 */ lis r4, lbl_8038E54C@ha
/* 800DEB24 000DBA64  38 84 E5 4C */ addi r4, r4, lbl_8038E54C@l
/* 800DEB28 000DBA68  A8 04 00 2A */ lha r0, 0x2a(r4)
/* 800DEB2C 000DBA6C  7C 05 00 00 */ cmpw r5, r0
/* 800DEB30 000DBA70  41 82 00 10 */ beq lbl_800DEB40
/* 800DEB34 000DBA74  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800DEB38 000DBA78  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800DEB3C 000DBA7C  41 82 00 30 */ beq lbl_800DEB6C
lbl_800DEB40:
/* 800DEB40 000DBA80  38 00 00 00 */ li r0, 0
/* 800DEB44 000DBA84  B0 03 09 50 */ sth r0, 0x950(r3)
/* 800DEB48 000DBA88  88 7F 2F 9C */ lbz r3, 0x2f9c(r31)
/* 800DEB4C 000DBA8C  38 80 FF FF */ li r4, -1
/* 800DEB50 000DBA90  4B F4 FC ED */ bl dComIfGp_addSelectItemNum
/* 800DEB54 000DBA94  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DEB58 000DBA98  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 800DEB5C 000DBA9C  A8 64 5D F4 */ lha r3, 0x5df4(r4)
/* 800DEB60 000DBAA0  38 03 FF FF */ addi r0, r3, -1
/* 800DEB64 000DBAA4  B0 04 5D F4 */ sth r0, 0x5df4(r4)
/* 800DEB68 000DBAA8  48 00 00 08 */ b lbl_800DEB70
lbl_800DEB6C:
/* 800DEB6C 000DBAAC  4B F3 B1 11 */ bl fopAcM_delete__FP10fopAc_ac_c
lbl_800DEB70:
/* 800DEB70 000DBAB0  38 7F 28 24 */ addi r3, r31, 0x2824
/* 800DEB74 000DBAB4  48 08 01 89 */ bl daPy_actorKeep_c_NS_clearData
lbl_800DEB78:
/* 800DEB78 000DBAB8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800DEB7C 000DBABC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800DEB80 000DBAC0  7C 08 03 A6 */ mtlr r0
/* 800DEB84 000DBAC4  38 21 00 10 */ addi r1, r1, 0x10
/* 800DEB88 000DBAC8  4E 80 00 20 */ blr
