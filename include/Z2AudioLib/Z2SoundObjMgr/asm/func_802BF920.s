/* 802BF920 002BC860  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802BF924 002BC864  7C 08 02 A6 */ mflr r0
/* 802BF928 002BC868  90 01 00 14 */ stw r0, 0x14(r1)
/* 802BF92C 002BC86C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802BF930 002BC870  7C 7F 1B 78 */ mr r31, r3
/* 802BF934 002BC874  93 ED 85 C8 */ stw r31, lbl_80450B48-_SDA_BASE_(r13)
/* 802BF938 002BC878  48 01 C5 DD */ bl initiate__10JSUPtrListFv
/* 802BF93C 002BC87C  38 00 00 00 */ li r0, 0
/* 802BF940 002BC880  98 1F 00 19 */ stb r0, 0x19(r31)
/* 802BF944 002BC884  98 1F 00 1B */ stb r0, 0x1b(r31)
/* 802BF948 002BC888  7F E3 FB 78 */ mr r3, r31
/* 802BF94C 002BC88C  48 00 07 B5 */ bl setBattleInit__13Z2SoundObjMgrFv
/* 802BF950 002BC890  7F E3 FB 78 */ mr r3, r31
/* 802BF954 002BC894  38 80 00 00 */ li r4, 0
/* 802BF958 002BC898  38 A0 02 BC */ li r5, 0x2bc
/* 802BF95C 002BC89C  38 C0 04 4C */ li r6, 0x44c
/* 802BF960 002BC8A0  38 E0 05 DC */ li r7, 0x5dc
/* 802BF964 002BC8A4  48 00 00 1D */ bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802BF968 002BC8A8  7F E3 FB 78 */ mr r3, r31
/* 802BF96C 002BC8AC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802BF970 002BC8B0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802BF974 002BC8B4  7C 08 03 A6 */ mtlr r0
/* 802BF978 002BC8B8  38 21 00 10 */ addi r1, r1, 0x10
/* 802BF97C 002BC8BC  4E 80 00 20 */ blr
