/* 800E5CBC 000E2BFC  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800E5CC0 000E2C00  7C 08 02 A6 */ mflr r0
/* 800E5CC4 000E2C04  90 01 00 34 */ stw r0, 0x34(r1)
/* 800E5CC8 000E2C08  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 800E5CCC 000E2C0C  93 C1 00 28 */ stw r30, 0x28(r1)
/* 800E5CD0 000E2C10  7C 7F 1B 78 */ mr r31, r3
/* 800E5CD4 000E2C14  80 A3 27 F4 */ lwz r5, 0x27f4(r3)
/* 800E5CD8 000E2C18  80 05 04 9C */ lwz r0, 0x49c(r5)
/* 800E5CDC 000E2C1C  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 800E5CE0 000E2C20  41 82 00 0C */ beq lbl_800E5CEC
/* 800E5CE4 000E2C24  4B FC FC 09 */ bl daAlink_c_NS_checkWaitAction
/* 800E5CE8 000E2C28  48 00 01 C8 */ b lbl_800E5EB0
lbl_800E5CEC:
/* 800E5CEC 000E2C2C  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800E5CF0 000E2C30  28 00 00 FF */ cmplwi r0, 0xff
/* 800E5CF4 000E2C34  41 82 00 10 */ beq lbl_800E5D04
/* 800E5CF8 000E2C38  38 80 00 6C */ li r4, 0x6c
/* 800E5CFC 000E2C3C  4B FD D0 E1 */ bl daAlink_c_NS_procPreActionUnequipInit
/* 800E5D00 000E2C40  48 00 01 B0 */ b lbl_800E5EB0
lbl_800E5D04:
/* 800E5D04 000E2C44  38 80 00 6C */ li r4, 0x6c
/* 800E5D08 000E2C48  4B FD C2 65 */ bl daAlink_c_NS_commonProcInit
/* 800E5D0C 000E2C4C  7F E3 FB 78 */ mr r3, r31
/* 800E5D10 000E2C50  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 800E5D14 000E2C54  4B FF FE A1 */ bl daAlink_c_NS_setGrabItemActor
/* 800E5D18 000E2C58  7F E3 FB 78 */ mr r3, r31
/* 800E5D1C 000E2C5C  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 800E5D20 000E2C60  4B F3 4D 75 */ bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800E5D24 000E2C64  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E5D28 000E2C68  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E5D2C 000E2C6C  40 81 00 14 */ ble lbl_800E5D40
/* 800E5D30 000E2C70  7F E3 FB 78 */ mr r3, r31
/* 800E5D34 000E2C74  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 800E5D38 000E2C78  4B F3 49 D9 */ bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800E5D3C 000E2C7C  B0 7F 04 E6 */ sth r3, 0x4e6(r31)
lbl_800E5D40:
/* 800E5D40 000E2C80  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800E5D44 000E2C84  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800E5D48 000E2C88  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800E5D4C 000E2C8C  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800E5D50 000E2C90  38 61 00 08 */ addi r3, r1, 8
/* 800E5D54 000E2C94  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 800E5D58 000E2C98  38 84 04 D0 */ addi r4, r4, 0x4d0
/* 800E5D5C 000E2C9C  38 BF 35 10 */ addi r5, r31, 0x3510
/* 800E5D60 000E2CA0  48 18 0D D5 */ bl __mi__4cXyzCFRC3Vec
/* 800E5D64 000E2CA4  C0 01 00 08 */ lfs f0, 8(r1)
/* 800E5D68 000E2CA8  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 800E5D6C 000E2CAC  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 800E5D70 000E2CB0  D0 1F 37 CC */ stfs f0, 0x37cc(r31)
/* 800E5D74 000E2CB4  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 800E5D78 000E2CB8  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 800E5D7C 000E2CBC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E5D80 000E2CC0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800E5D84 000E2CC4  7F E3 FB 78 */ mr r3, r31
/* 800E5D88 000E2CC8  4B FD 35 B9 */ bl daAlink_c_NS_checkEquipAnime
/* 800E5D8C 000E2CCC  2C 03 00 00 */ cmpwi r3, 0
/* 800E5D90 000E2CD0  41 82 00 14 */ beq lbl_800E5DA4
/* 800E5D94 000E2CD4  7F E3 FB 78 */ mr r3, r31
/* 800E5D98 000E2CD8  38 80 00 02 */ li r4, 2
/* 800E5D9C 000E2CDC  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800E5DA0 000E2CE0  4B FC 79 85 */ bl daAlink_c_NS_resetUpperAnime
lbl_800E5DA4:
/* 800E5DA4 000E2CE4  7F E3 FB 78 */ mr r3, r31
/* 800E5DA8 000E2CE8  4B FF DF 4D */ bl daAlink_c_NS_checkGrabCarryActor
/* 800E5DAC 000E2CEC  2C 03 00 00 */ cmpwi r3, 0
/* 800E5DB0 000E2CF0  41 82 00 7C */ beq lbl_800E5E2C
/* 800E5DB4 000E2CF4  7F E3 FB 78 */ mr r3, r31
/* 800E5DB8 000E2CF8  38 80 00 B5 */ li r4, 0xb5
/* 800E5DBC 000E2CFC  3C A0 80 39 */ lis r5, lbl_8038EC48@ha
/* 800E5DC0 000E2D00  3B C5 EC 48 */ addi r30, r5, lbl_8038EC48@l
/* 800E5DC4 000E2D04  C0 3E 00 90 */ lfs f1, 0x90(r30)
/* 800E5DC8 000E2D08  C0 5E 00 94 */ lfs f2, 0x94(r30)
/* 800E5DCC 000E2D0C  38 A0 00 09 */ li r5, 9
/* 800E5DD0 000E2D10  C0 7E 00 98 */ lfs f3, 0x98(r30)
/* 800E5DD4 000E2D14  4B FC 72 39 */ bl daAlink_c_NS_setSingleAnime
/* 800E5DD8 000E2D18  38 00 00 01 */ li r0, 1
/* 800E5DDC 000E2D1C  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800E5DE0 000E2D20  C0 62 92 B8 */ lfs f3, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E5DE4 000E2D24  C0 22 93 34 */ lfs f1, lbl_80452D34-_SDA2_BASE_(r2)
/* 800E5DE8 000E2D28  C0 1E 00 94 */ lfs f0, 0x94(r30)
/* 800E5DEC 000E2D2C  EC 01 00 28 */ fsubs f0, f1, f0
/* 800E5DF0 000E2D30  EC 03 00 24 */ fdivs f0, f3, f0
/* 800E5DF4 000E2D34  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 800E5DF8 000E2D38  80 7F 28 30 */ lwz r3, 0x2830(r31)
/* 800E5DFC 000E2D3C  A8 03 00 08 */ lha r0, 8(r3)
/* 800E5E00 000E2D40  C0 42 93 24 */ lfs f2, lbl_80452D24-_SDA2_BASE_(r2)
/* 800E5E04 000E2D44  2C 00 01 0C */ cmpwi r0, 0x10c
/* 800E5E08 000E2D48  40 82 00 08 */ bne lbl_800E5E10
/* 800E5E0C 000E2D4C  C0 62 94 6C */ lfs f3, lbl_80452E6C-_SDA2_BASE_(r2)
lbl_800E5E10:
/* 800E5E10 000E2D50  C0 03 04 EC */ lfs f0, 0x4ec(r3)
/* 800E5E14 000E2D54  EC 23 00 32 */ fmuls f1, f3, f0
/* 800E5E18 000E2D58  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E5E1C 000E2D5C  EC 01 00 28 */ fsubs f0, f1, f0
/* 800E5E20 000E2D60  EC 02 00 32 */ fmuls f0, f2, f0
/* 800E5E24 000E2D64  D0 1F 33 EC */ stfs f0, 0x33ec(r31)
/* 800E5E28 000E2D68  48 00 00 60 */ b lbl_800E5E88
lbl_800E5E2C:
/* 800E5E2C 000E2D6C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E5E30 000E2D70  D0 1F 33 EC */ stfs f0, 0x33ec(r31)
/* 800E5E34 000E2D74  7F E3 FB 78 */ mr r3, r31
/* 800E5E38 000E2D78  38 80 00 AF */ li r4, 0xaf
/* 800E5E3C 000E2D7C  3C A0 80 39 */ lis r5, lbl_8038EC48@ha
/* 800E5E40 000E2D80  38 A5 EC 48 */ addi r5, r5, lbl_8038EC48@l
/* 800E5E44 000E2D84  4B FC 72 B1 */ bl daAlink_c_NS_setSingleAnimeParam
/* 800E5E48 000E2D88  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E5E4C 000E2D8C  3C 60 80 39 */ lis r3, lbl_8038EC48@ha
/* 800E5E50 000E2D90  AC 03 EC 48 */ lhau r0, lbl_8038EC48@l(r3)
/* 800E5E54 000E2D94  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800E5E58 000E2D98  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800E5E5C 000E2D9C  90 01 00 1C */ stw r0, 0x1c(r1)
/* 800E5E60 000E2DA0  3C 00 43 30 */ lis r0, 0x4330
/* 800E5E64 000E2DA4  90 01 00 18 */ stw r0, 0x18(r1)
/* 800E5E68 000E2DA8  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 800E5E6C 000E2DAC  EC 20 08 28 */ fsubs f1, f0, f1
/* 800E5E70 000E2DB0  C0 03 00 08 */ lfs f0, 8(r3)
/* 800E5E74 000E2DB4  EC 01 00 28 */ fsubs f0, f1, f0
/* 800E5E78 000E2DB8  EC 02 00 24 */ fdivs f0, f2, f0
/* 800E5E7C 000E2DBC  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 800E5E80 000E2DC0  38 00 00 00 */ li r0, 0
/* 800E5E84 000E2DC4  B0 1F 30 0E */ sth r0, 0x300e(r31)
lbl_800E5E88:
/* 800E5E88 000E2DC8  80 7F 27 F4 */ lwz r3, 0x27f4(r31)
/* 800E5E8C 000E2DCC  88 03 04 9A */ lbz r0, 0x49a(r3)
/* 800E5E90 000E2DD0  70 00 00 43 */ andi. r0, r0, 0x43
/* 800E5E94 000E2DD4  41 82 00 10 */ beq lbl_800E5EA4
/* 800E5E98 000E2DD8  38 00 00 01 */ li r0, 1
/* 800E5E9C 000E2DDC  90 1F 31 98 */ stw r0, 0x3198(r31)
/* 800E5EA0 000E2DE0  48 00 00 0C */ b lbl_800E5EAC
lbl_800E5EA4:
/* 800E5EA4 000E2DE4  38 00 00 00 */ li r0, 0
/* 800E5EA8 000E2DE8  90 1F 31 98 */ stw r0, 0x3198(r31)
lbl_800E5EAC:
/* 800E5EAC 000E2DEC  38 60 00 01 */ li r3, 1
lbl_800E5EB0:
/* 800E5EB0 000E2DF0  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 800E5EB4 000E2DF4  83 C1 00 28 */ lwz r30, 0x28(r1)
/* 800E5EB8 000E2DF8  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800E5EBC 000E2DFC  7C 08 03 A6 */ mtlr r0
/* 800E5EC0 000E2E00  38 21 00 30 */ addi r1, r1, 0x30
/* 800E5EC4 000E2E04  4E 80 00 20 */ blr