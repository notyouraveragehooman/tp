/* 802C1FB0 002BEEF0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C1FB4 002BEEF4  7C 08 02 A6 */ mflr r0
/* 802C1FB8 002BEEF8  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C1FBC 002BEEFC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802C1FC0 002BEF00  7C 7F 1B 78 */ mr r31, r3
/* 802C1FC4 002BEF04  4B FF F0 01 */ bl Z2CreatureEnemy_NS_deleteObject
/* 802C1FC8 002BEF08  38 7F 00 A4 */ addi r3, r31, 0xa4
/* 802C1FCC 002BEF0C  4B FF C0 2D */ bl deleteObject__14Z2SoundObjBaseFv
/* 802C1FD0 002BEF10  38 7F 00 C4 */ addi r3, r31, 0xc4
/* 802C1FD4 002BEF14  4B FF C0 25 */ bl deleteObject__14Z2SoundObjBaseFv
/* 802C1FD8 002BEF18  38 7F 00 E4 */ addi r3, r31, 0xe4
/* 802C1FDC 002BEF1C  4B FF C0 1D */ bl deleteObject__14Z2SoundObjBaseFv
/* 802C1FE0 002BEF20  38 7F 01 04 */ addi r3, r31, 0x104
/* 802C1FE4 002BEF24  4B FF C0 15 */ bl deleteObject__14Z2SoundObjBaseFv
/* 802C1FE8 002BEF28  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802C1FEC 002BEF2C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C1FF0 002BEF30  7C 08 03 A6 */ mtlr r0
/* 802C1FF4 002BEF34  38 21 00 10 */ addi r1, r1, 0x10
/* 802C1FF8 002BEF38  4E 80 00 20 */ blr