/* 800BFFCC 000BCF0C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800BFFD0 000BCF10  7C 08 02 A6 */ mflr r0
/* 800BFFD4 000BCF14  90 01 00 14 */ stw r0, 0x14(r1)
/* 800BFFD8 000BCF18  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800BFFDC 000BCF1C  93 C1 00 08 */ stw r30, 8(r1)
/* 800BFFE0 000BCF20  83 E5 00 04 */ lwz r31, 4(r5)
/* 800BFFE4 000BCF24  38 A0 04 00 */ li r5, 0x400
/* 800BFFE8 000BCF28  4B FF FF 1D */ bl daAlink_c_NS_loadAram
/* 800BFFEC 000BCF2C  7C 7E 1B 78 */ mr r30, r3
/* 800BFFF0 000BCF30  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800BFFF4 000BCF34  D0 03 00 08 */ stfs f0, 8(r3)
/* 800BFFF8 000BCF38  7F E4 FB 78 */ mr r4, r31
/* 800BFFFC 000BCF3C  48 26 B1 D9 */ bl J3DAnmTextureSRTKey_NS_searchUpdateMaterialID_X1_
/* 800C0000 000BCF40  38 7F 00 58 */ addi r3, r31, 0x58
/* 800C0004 000BCF44  7F C4 F3 78 */ mr r4, r30
/* 800C0008 000BCF48  48 26 FC BD */ bl J3DMaterialTable_NS_entryTexMtxAnimator
/* 800C000C 000BCF4C  7F C3 F3 78 */ mr r3, r30
/* 800C0010 000BCF50  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C0014 000BCF54  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C0018 000BCF58  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C001C 000BCF5C  7C 08 03 A6 */ mtlr r0
/* 800C0020 000BCF60  38 21 00 10 */ addi r1, r1, 0x10
/* 800C0024 000BCF64  4E 80 00 20 */ blr
