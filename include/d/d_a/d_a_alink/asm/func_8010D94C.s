/* 8010D94C 0010A88C  3C 60 80 39 */ lis r3, lbl_8038EA30@ha
/* 8010D950 0010A890  38 63 EA 30 */ addi r3, r3, lbl_8038EA30@l
/* 8010D954 0010A894  C0 23 00 24 */ lfs f1, 0x24(r3)
/* 8010D958 0010A898  4E 80 00 20 */ blr