/* 800F3C18 000F0B58  88 03 05 6A */ lbz r0, 0x56a(r3)
/* 800F3C1C 000F0B5C  28 00 00 2D */ cmplwi r0, 0x2d
/* 800F3C20 000F0B60  40 82 00 14 */ bne lbl_800F3C34
/* 800F3C24 000F0B64  3C 60 80 39 */ lis r3, lbl_8038E610@ha
/* 800F3C28 000F0B68  38 63 E6 10 */ addi r3, r3, lbl_8038E610@l
/* 800F3C2C 000F0B6C  C0 23 00 40 */ lfs f1, 0x40(r3)
/* 800F3C30 000F0B70  4E 80 00 20 */ blr
lbl_800F3C34:
/* 800F3C34 000F0B74  3C 60 80 39 */ lis r3, lbl_8038E610@ha
/* 800F3C38 000F0B78  38 63 E6 10 */ addi r3, r3, lbl_8038E610@l
/* 800F3C3C 000F0B7C  C0 23 00 20 */ lfs f1, 0x20(r3)
/* 800F3C40 000F0B80  4E 80 00 20 */ blr