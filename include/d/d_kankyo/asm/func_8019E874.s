/* 8019E874 0019B7B4  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 8019E878 0019B7B8  7C 08 02 A6 */ mflr r0
/* 8019E87C 0019B7BC  90 01 00 54 */ stw r0, 0x54(r1)
/* 8019E880 0019B7C0  39 61 00 50 */ addi r11, r1, 0x50
/* 8019E884 0019B7C4  48 1C 39 39 */ bl func_803621BC
/* 8019E888 0019B7C8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8019E88C 0019B7CC  3B A3 CA 54 */ addi r29, r3, lbl_8042CA54@l
/* 8019E890 0019B7D0  38 60 00 00 */ li r3, 0
/* 8019E894 0019B7D4  38 80 00 00 */ li r4, 0
/* 8019E898 0019B7D8  38 A0 00 00 */ li r5, 0
/* 8019E89C 0019B7DC  38 C0 00 00 */ li r6, 0
/* 8019E8A0 0019B7E0  38 E0 00 00 */ li r7, 0
/* 8019E8A4 0019B7E4  3D 00 80 3C */ lis r8, lbl_803BBF58@ha
/* 8019E8A8 0019B7E8  3B C8 BF 58 */ addi r30, r8, lbl_803BBF58@l
/* 8019E8AC 0019B7EC  C0 E2 A2 48 */ lfs f7, lbl_80453C48-_SDA2_BASE_(r2)
/* 8019E8B0 0019B7F0  C0 C2 A2 90 */ lfs f6, lbl_80453C90-_SDA2_BASE_(r2)
/* 8019E8B4 0019B7F4  3D 00 80 3C */ lis r8, lbl_803BBFB8@ha
/* 8019E8B8 0019B7F8  3B E8 BF B8 */ addi r31, r8, lbl_803BBFB8@l
/* 8019E8BC 0019B7FC  C0 A2 A2 94 */ lfs f5, lbl_80453C94-_SDA2_BASE_(r2)
/* 8019E8C0 0019B800  C0 82 A2 0C */ lfs f4, lbl_80453C0C-_SDA2_BASE_(r2)
/* 8019E8C4 0019B804  C0 62 A2 2C */ lfs f3, lbl_80453C2C-_SDA2_BASE_(r2)
/* 8019E8C8 0019B808  C0 42 A2 98 */ lfs f2, lbl_80453C98-_SDA2_BASE_(r2)
/* 8019E8CC 0019B80C  C0 22 A2 9C */ lfs f1, lbl_80453C9C-_SDA2_BASE_(r2)
/* 8019E8D0 0019B810  38 00 00 08 */ li r0, 8
/* 8019E8D4 0019B814  7C 09 03 A6 */ mtctr r0
lbl_8019E8D8:
/* 8019E8D8 0019B818  7D 1E 3A 14 */ add r8, r30, r7
/* 8019E8DC 0019B81C  C1 48 00 00 */ lfs f10, 0(r8)
/* 8019E8E0 0019B820  D1 41 00 14 */ stfs f10, 0x14(r1)
/* 8019E8E4 0019B824  C1 28 00 04 */ lfs f9, 4(r8)
/* 8019E8E8 0019B828  D1 21 00 18 */ stfs f9, 0x18(r1)
/* 8019E8EC 0019B82C  C1 08 00 08 */ lfs f8, 8(r8)
/* 8019E8F0 0019B830  D1 01 00 1C */ stfs f8, 0x1c(r1)
/* 8019E8F4 0019B834  7F 9D 32 14 */ add r28, r29, r6
/* 8019E8F8 0019B838  D1 5C 09 B8 */ stfs f10, 0x9b8(r28)
/* 8019E8FC 0019B83C  D1 3C 09 BC */ stfs f9, 0x9bc(r28)
/* 8019E900 0019B840  D1 1C 09 C0 */ stfs f8, 0x9c0(r28)
/* 8019E904 0019B844  D0 FC 09 C8 */ stfs f7, 0x9c8(r28)
/* 8019E908 0019B848  D0 DC 09 CC */ stfs f6, 0x9cc(r28)
/* 8019E90C 0019B84C  7D 1F 2A 14 */ add r8, r31, r5
/* 8019E910 0019B850  89 88 00 00 */ lbz r12, 0(r8)
/* 8019E914 0019B854  99 9C 09 C4 */ stb r12, 0x9c4(r28)
/* 8019E918 0019B858  89 68 00 01 */ lbz r11, 1(r8)
/* 8019E91C 0019B85C  99 7C 09 C5 */ stb r11, 0x9c5(r28)
/* 8019E920 0019B860  89 48 00 02 */ lbz r10, 2(r8)
/* 8019E924 0019B864  99 5C 09 C6 */ stb r10, 0x9c6(r28)
/* 8019E928 0019B868  39 20 00 FF */ li r9, 0xff
/* 8019E92C 0019B86C  99 3C 09 C7 */ stb r9, 0x9c7(r28)
/* 8019E930 0019B870  C0 1C 09 B8 */ lfs f0, 0x9b8(r28)
/* 8019E934 0019B874  D0 1C 09 E4 */ stfs f0, 0x9e4(r28)
/* 8019E938 0019B878  C0 1C 09 BC */ lfs f0, 0x9bc(r28)
/* 8019E93C 0019B87C  D0 1C 09 E8 */ stfs f0, 0x9e8(r28)
/* 8019E940 0019B880  C0 1C 09 C0 */ lfs f0, 0x9c0(r28)
/* 8019E944 0019B884  D0 1C 09 EC */ stfs f0, 0x9ec(r28)
/* 8019E948 0019B888  88 1C 09 C4 */ lbz r0, 0x9c4(r28)
/* 8019E94C 0019B88C  B0 1C 09 F0 */ sth r0, 0x9f0(r28)
/* 8019E950 0019B890  88 1C 09 C5 */ lbz r0, 0x9c5(r28)
/* 8019E954 0019B894  B0 1C 09 F2 */ sth r0, 0x9f2(r28)
/* 8019E958 0019B898  88 1C 09 C6 */ lbz r0, 0x9c6(r28)
/* 8019E95C 0019B89C  B0 1C 09 F4 */ sth r0, 0x9f4(r28)
/* 8019E960 0019B8A0  C0 1C 09 C8 */ lfs f0, 0x9c8(r28)
/* 8019E964 0019B8A4  EC 05 00 32 */ fmuls f0, f5, f0
/* 8019E968 0019B8A8  D0 1C 09 F8 */ stfs f0, 0x9f8(r28)
/* 8019E96C 0019B8AC  D0 9C 09 FC */ stfs f4, 0x9fc(r28)
/* 8019E970 0019B8B0  D0 7C 09 D0 */ stfs f3, 0x9d0(r28)
/* 8019E974 0019B8B4  D0 5C 09 D4 */ stfs f2, 0x9d4(r28)
/* 8019E978 0019B8B8  D0 9C 09 D8 */ stfs f4, 0x9d8(r28)
/* 8019E97C 0019B8BC  39 00 00 00 */ li r8, 0
/* 8019E980 0019B8C0  99 1C 09 DC */ stb r8, 0x9dc(r28)
/* 8019E984 0019B8C4  38 00 00 02 */ li r0, 2
/* 8019E988 0019B8C8  98 1C 09 DD */ stb r0, 0x9dd(r28)
/* 8019E98C 0019B8CC  D1 41 00 08 */ stfs f10, 8(r1)
/* 8019E990 0019B8D0  D1 21 00 0C */ stfs f9, 0xc(r1)
/* 8019E994 0019B8D4  D1 01 00 10 */ stfs f8, 0x10(r1)
/* 8019E998 0019B8D8  7E DD 22 14 */ add r22, r29, r4
/* 8019E99C 0019B8DC  3A F6 0C 18 */ addi r23, r22, 0xc18
/* 8019E9A0 0019B8E0  D1 56 0C 18 */ stfs f10, 0xc18(r22)
/* 8019E9A4 0019B8E4  3B 16 0C 1C */ addi r24, r22, 0xc1c
/* 8019E9A8 0019B8E8  D1 36 0C 1C */ stfs f9, 0xc1c(r22)
/* 8019E9AC 0019B8EC  3B 36 0C 20 */ addi r25, r22, 0xc20
/* 8019E9B0 0019B8F0  D1 16 0C 20 */ stfs f8, 0xc20(r22)
/* 8019E9B4 0019B8F4  3B 56 0C 24 */ addi r26, r22, 0xc24
/* 8019E9B8 0019B8F8  99 96 0C 24 */ stb r12, 0xc24(r22)
/* 8019E9BC 0019B8FC  99 76 0C 25 */ stb r11, 0xc25(r22)
/* 8019E9C0 0019B900  99 56 0C 26 */ stb r10, 0xc26(r22)
/* 8019E9C4 0019B904  99 36 0C 27 */ stb r9, 0xc27(r22)
/* 8019E9C8 0019B908  39 36 0C 28 */ addi r9, r22, 0xc28
/* 8019E9CC 0019B90C  D0 36 0C 28 */ stfs f1, 0xc28(r22)
/* 8019E9D0 0019B910  39 56 0C 2C */ addi r10, r22, 0xc2c
/* 8019E9D4 0019B914  D0 D6 0C 2C */ stfs f6, 0xc2c(r22)
/* 8019E9D8 0019B918  3A B6 0C 3E */ addi r21, r22, 0xc3e
/* 8019E9DC 0019B91C  99 16 0C 3E */ stb r8, 0xc3e(r22)
/* 8019E9E0 0019B920  39 76 0C 30 */ addi r11, r22, 0xc30
/* 8019E9E4 0019B924  D0 76 0C 30 */ stfs f3, 0xc30(r22)
/* 8019E9E8 0019B928  39 96 0C 34 */ addi r12, r22, 0xc34
/* 8019E9EC 0019B92C  D0 56 0C 34 */ stfs f2, 0xc34(r22)
/* 8019E9F0 0019B930  3B 76 0C 38 */ addi r27, r22, 0xc38
/* 8019E9F4 0019B934  D0 96 0C 38 */ stfs f4, 0xc38(r22)
/* 8019E9F8 0019B938  3B 96 0C 3C */ addi r28, r22, 0xc3c
/* 8019E9FC 0019B93C  99 16 0C 3C */ stb r8, 0xc3c(r22)
/* 8019EA00 0019B940  39 16 0C 3D */ addi r8, r22, 0xc3d
/* 8019EA04 0019B944  98 16 0C 3D */ stb r0, 0xc3d(r22)
/* 8019EA08 0019B948  2C 03 00 06 */ cmpwi r3, 6
/* 8019EA0C 0019B94C  40 80 00 64 */ bge lbl_8019EA70
/* 8019EA10 0019B950  C0 17 00 00 */ lfs f0, 0(r23)
/* 8019EA14 0019B954  D0 16 0D 58 */ stfs f0, 0xd58(r22)
/* 8019EA18 0019B958  C0 18 00 00 */ lfs f0, 0(r24)
/* 8019EA1C 0019B95C  D0 16 0D 5C */ stfs f0, 0xd5c(r22)
/* 8019EA20 0019B960  C0 19 00 00 */ lfs f0, 0(r25)
/* 8019EA24 0019B964  D0 16 0D 60 */ stfs f0, 0xd60(r22)
/* 8019EA28 0019B968  80 1A 00 00 */ lwz r0, 0(r26)
/* 8019EA2C 0019B96C  90 16 0D 64 */ stw r0, 0xd64(r22)
/* 8019EA30 0019B970  C0 09 00 00 */ lfs f0, 0(r9)
/* 8019EA34 0019B974  D0 16 0D 68 */ stfs f0, 0xd68(r22)
/* 8019EA38 0019B978  C0 0A 00 00 */ lfs f0, 0(r10)
/* 8019EA3C 0019B97C  D0 16 0D 6C */ stfs f0, 0xd6c(r22)
/* 8019EA40 0019B980  C0 0B 00 00 */ lfs f0, 0(r11)
/* 8019EA44 0019B984  D0 16 0D 70 */ stfs f0, 0xd70(r22)
/* 8019EA48 0019B988  C0 0C 00 00 */ lfs f0, 0(r12)
/* 8019EA4C 0019B98C  D0 16 0D 74 */ stfs f0, 0xd74(r22)
/* 8019EA50 0019B990  C0 1B 00 00 */ lfs f0, 0(r27)
/* 8019EA54 0019B994  D0 16 0D 78 */ stfs f0, 0xd78(r22)
/* 8019EA58 0019B998  88 1C 00 00 */ lbz r0, 0(r28)
/* 8019EA5C 0019B99C  98 16 0D 7C */ stb r0, 0xd7c(r22)
/* 8019EA60 0019B9A0  88 08 00 00 */ lbz r0, 0(r8)
/* 8019EA64 0019B9A4  98 16 0D 7D */ stb r0, 0xd7d(r22)
/* 8019EA68 0019B9A8  88 15 00 00 */ lbz r0, 0(r21)
/* 8019EA6C 0019B9AC  98 16 0D 7E */ stb r0, 0xd7e(r22)
lbl_8019EA70:
/* 8019EA70 0019B9B0  38 63 00 01 */ addi r3, r3, 1
/* 8019EA74 0019B9B4  38 84 00 28 */ addi r4, r4, 0x28
/* 8019EA78 0019B9B8  38 A5 00 03 */ addi r5, r5, 3
/* 8019EA7C 0019B9BC  38 C6 00 4C */ addi r6, r6, 0x4c
/* 8019EA80 0019B9C0  38 E7 00 0C */ addi r7, r7, 0xc
/* 8019EA84 0019B9C4  42 00 FE 54 */ bdnz lbl_8019E8D8
/* 8019EA88 0019B9C8  39 61 00 50 */ addi r11, r1, 0x50
/* 8019EA8C 0019B9CC  48 1C 37 7D */ bl func_80362208
/* 8019EA90 0019B9D0  80 01 00 54 */ lwz r0, 0x54(r1)
/* 8019EA94 0019B9D4  7C 08 03 A6 */ mtlr r0
/* 8019EA98 0019B9D8  38 21 00 50 */ addi r1, r1, 0x50
/* 8019EA9C 0019B9DC  4E 80 00 20 */ blr
