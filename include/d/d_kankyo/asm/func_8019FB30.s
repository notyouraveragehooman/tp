/* 8019FB30 0019CA70  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8019FB34 0019CA74  7C 08 02 A6 */ mflr r0
/* 8019FB38 0019CA78  90 01 00 24 */ stw r0, 0x24(r1)
/* 8019FB3C 0019CA7C  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8019FB40 0019CA80  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8019FB44 0019CA84  48 00 00 89 */ bl dScnKy_env_light_c_NS_getDarkDaytime
/* 8019FB48 0019CA88  C0 62 A2 BC */ lfs f3, lbl_80453CBC-_SDA2_BASE_(r2)
/* 8019FB4C 0019CA8C  C0 42 A2 70 */ lfs f2, lbl_80453C70-_SDA2_BASE_(r2)
/* 8019FB50 0019CA90  EC 02 00 72 */ fmuls f0, f2, f1
/* 8019FB54 0019CA94  FC 00 00 1E */ fctiwz f0, f0
/* 8019FB58 0019CA98  D8 01 00 08 */ stfd f0, 8(r1)
/* 8019FB5C 0019CA9C  80 81 00 0C */ lwz r4, 0xc(r1)
/* 8019FB60 0019CAA0  3C 60 00 E5 */ lis r3, 0x00E4E1C0@ha
/* 8019FB64 0019CAA4  38 63 E1 C0 */ addi r3, r3, 0x00E4E1C0@l
/* 8019FB68 0019CAA8  7C 04 1B D6 */ divw r0, r4, r3
/* 8019FB6C 0019CAAC  7C 00 19 D6 */ mullw r0, r0, r3
/* 8019FB70 0019CAB0  7C 00 20 50 */ subf r0, r0, r4
/* 8019FB74 0019CAB4  C8 22 A2 30 */ lfd f1, lbl_80453C30-_SDA2_BASE_(r2)
/* 8019FB78 0019CAB8  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8019FB7C 0019CABC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8019FB80 0019CAC0  3C 00 43 30 */ lis r0, 0x4330
/* 8019FB84 0019CAC4  90 01 00 10 */ stw r0, 0x10(r1)
/* 8019FB88 0019CAC8  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8019FB8C 0019CACC  EC 00 08 28 */ fsubs f0, f0, f1
/* 8019FB90 0019CAD0  EC 20 10 24 */ fdivs f1, f0, f2
/* 8019FB94 0019CAD4  C0 02 A2 AC */ lfs f0, lbl_80453CAC-_SDA2_BASE_(r2)
/* 8019FB98 0019CAD8  EC 01 00 24 */ fdivs f0, f1, f0
/* 8019FB9C 0019CADC  EC 03 00 32 */ fmuls f0, f3, f0
/* 8019FBA0 0019CAE0  FC 00 00 1E */ fctiwz f0, f0
/* 8019FBA4 0019CAE4  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 8019FBA8 0019CAE8  80 61 00 1C */ lwz r3, 0x1c(r1)
/* 8019FBAC 0019CAEC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8019FBB0 0019CAF0  7C 08 03 A6 */ mtlr r0
/* 8019FBB4 0019CAF4  38 21 00 20 */ addi r1, r1, 0x20
/* 8019FBB8 0019CAF8  4E 80 00 20 */ blr