/* 8001F818 0001C758  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001F81C 0001C75C  7C 08 02 A6 */ mflr r0
/* 8001F820 0001C760  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001F824 0001C764  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8001F828 0001C768  93 C1 00 08 */ stw r30, 8(r1)
/* 8001F82C 0001C76C  7C 7E 1B 78 */ mr r30, r3
/* 8001F830 0001C770  7C FF 3B 78 */ mr r31, r7
/* 8001F834 0001C774  7C 83 23 78 */ mr r3, r4
/* 8001F838 0001C778  7C A4 2B 78 */ mr r4, r5
/* 8001F83C 0001C77C  7C C5 33 78 */ mr r5, r6
/* 8001F840 0001C780  4B FF FE 79 */ bl createAppend_X1_
/* 8001F844 0001C784  7C 66 1B 79 */ or. r6, r3, r3
/* 8001F848 0001C788  40 82 00 0C */ bne lbl_8001F854
/* 8001F84C 0001C78C  38 60 00 00 */ li r3, 0
/* 8001F850 0001C790  48 00 00 14 */ b lbl_8001F864
lbl_8001F854:
/* 8001F854 0001C794  7F C3 F3 78 */ mr r3, r30
/* 8001F858 0001C798  7F E4 FB 78 */ mr r4, r31
/* 8001F85C 0001C79C  38 A0 00 00 */ li r5, 0
/* 8001F860 0001C7A0  48 00 2A 95 */ bl fpcM_FastCreate
lbl_8001F864:
/* 8001F864 0001C7A4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8001F868 0001C7A8  83 C1 00 08 */ lwz r30, 8(r1)
/* 8001F86C 0001C7AC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001F870 0001C7B0  7C 08 03 A6 */ mtlr r0
/* 8001F874 0001C7B4  38 21 00 10 */ addi r1, r1, 0x10
/* 8001F878 0001C7B8  4E 80 00 20 */ blr
