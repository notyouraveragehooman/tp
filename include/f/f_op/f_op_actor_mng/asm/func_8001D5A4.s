/* 8001D5A4 0001A4E4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001D5A8 0001A4E8  7C 08 02 A6 */ mflr r0
/* 8001D5AC 0001A4EC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001D5B0 0001A4F0  7C 64 1B 78 */ mr r4, r3
/* 8001D5B4 0001A4F4  A8 63 00 0E */ lha r3, 0xe(r3)
/* 8001D5B8 0001A4F8  88 04 04 99 */ lbz r0, 0x499(r4)
/* 8001D5BC 0001A4FC  7C 04 07 74 */ extsb r4, r0
/* 8001D5C0 0001A500  48 00 79 1D */ bl dStage_getName2
/* 8001D5C4 0001A504  28 03 00 00 */ cmplwi r3, 0
/* 8001D5C8 0001A508  41 82 00 08 */ beq lbl_8001D5D0
/* 8001D5CC 0001A50C  48 00 00 10 */ b lbl_8001D5DC
lbl_8001D5D0:
/* 8001D5D0 0001A510  3C 60 80 38 */ lis r3, lbl_803788C8@ha
/* 8001D5D4 0001A514  38 63 88 C8 */ addi r3, r3, lbl_803788C8@l
/* 8001D5D8 0001A518  38 63 01 7A */ addi r3, r3, 0x17a
lbl_8001D5DC:
/* 8001D5DC 0001A51C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001D5E0 0001A520  7C 08 03 A6 */ mtlr r0
/* 8001D5E4 0001A524  38 21 00 10 */ addi r1, r1, 0x10
/* 8001D5E8 0001A528  4E 80 00 20 */ blr