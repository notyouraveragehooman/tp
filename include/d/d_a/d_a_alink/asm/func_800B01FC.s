/* 800B01FC 000AD13C  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800B0200 000AD140  7C 08 02 A6 */ mflr r0
/* 800B0204 000AD144  90 01 00 54 */ stw r0, 0x54(r1)
/* 800B0208 000AD148  39 61 00 50 */ addi r11, r1, 0x50
/* 800B020C 000AD14C  48 2B 1F CD */ bl _savegpr_28
/* 800B0210 000AD150  7C 9C 23 78 */ mr r28, r4
/* 800B0214 000AD154  7C BD 2B 78 */ mr r29, r5
/* 800B0218 000AD158  7C DE 33 78 */ mr r30, r6
/* 800B021C 000AD15C  7C FF 3B 78 */ mr r31, r7
/* 800B0220 000AD160  C0 05 00 00 */ lfs f0, 0(r5)
/* 800B0224 000AD164  FC 20 00 50 */ fneg f1, f0
/* 800B0228 000AD168  C0 05 00 08 */ lfs f0, 8(r5)
/* 800B022C 000AD16C  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800B0230 000AD170  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B0234 000AD174  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800B0238 000AD178  D0 21 00 1C */ stfs f1, 0x1c(r1)
/* 800B023C 000AD17C  38 61 00 08 */ addi r3, r1, 8
/* 800B0240 000AD180  38 81 00 14 */ addi r4, r1, 0x14
/* 800B0244 000AD184  48 1B 6D 05 */ bl cXyz_NS_normalizeZP
/* 800B0248 000AD188  38 61 00 20 */ addi r3, r1, 0x20
/* 800B024C 000AD18C  38 81 00 14 */ addi r4, r1, 0x14
/* 800B0250 000AD190  C0 21 00 1C */ lfs f1, 0x1c(r1)
/* 800B0254 000AD194  C0 1C 00 08 */ lfs f0, 8(r28)
/* 800B0258 000AD198  EC 61 00 32 */ fmuls f3, f1, f0
/* 800B025C 000AD19C  C0 21 00 14 */ lfs f1, 0x14(r1)
/* 800B0260 000AD1A0  C0 1C 00 00 */ lfs f0, 0(r28)
/* 800B0264 000AD1A4  EC 41 00 32 */ fmuls f2, f1, f0
/* 800B0268 000AD1A8  C0 21 00 18 */ lfs f1, 0x18(r1)
/* 800B026C 000AD1AC  C0 1C 00 04 */ lfs f0, 4(r28)
/* 800B0270 000AD1B0  EC 01 00 32 */ fmuls f0, f1, f0
/* 800B0274 000AD1B4  EC 02 00 2A */ fadds f0, f2, f0
/* 800B0278 000AD1B8  EC 03 00 2A */ fadds f0, f3, f0
/* 800B027C 000AD1BC  FC 20 00 50 */ fneg f1, f0
/* 800B0280 000AD1C0  48 1B F1 5D */ bl cM3dGPla_X1_
/* 800B0284 000AD1C4  7F A3 EB 78 */ mr r3, r29
/* 800B0288 000AD1C8  7F C4 F3 78 */ mr r4, r30
/* 800B028C 000AD1CC  38 A1 00 20 */ addi r5, r1, 0x20
/* 800B0290 000AD1D0  7F E6 FB 78 */ mr r6, r31
/* 800B0294 000AD1D4  48 1B E6 0D */ bl cM3d_3PlaneCrossPos
/* 800B0298 000AD1D8  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 800B029C 000AD1DC  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 800B02A0 000AD1E0  90 01 00 30 */ stw r0, 0x30(r1)
/* 800B02A4 000AD1E4  39 61 00 50 */ addi r11, r1, 0x50
/* 800B02A8 000AD1E8  48 2B 1F 7D */ bl _restgpr_28
/* 800B02AC 000AD1EC  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800B02B0 000AD1F0  7C 08 03 A6 */ mtlr r0
/* 800B02B4 000AD1F4  38 21 00 50 */ addi r1, r1, 0x50
/* 800B02B8 000AD1F8  4E 80 00 20 */ blr