/* 802C80F8 002C5038  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C80FC 002C503C  98 83 01 88 */ stb r4, 0x188(r3)
/* 802C8100 002C5040  54 A0 06 3E */ clrlwi r0, r5, 0x18
/* 802C8104 002C5044  28 00 00 64 */ cmplwi r0, 0x64
/* 802C8108 002C5048  41 80 00 10 */ blt lbl_802C8118
/* 802C810C 002C504C  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C8110 002C5050  D0 03 01 AC */ stfs f0, 0x1ac(r3)
/* 802C8114 002C5054  48 00 00 28 */ b lbl_802C813C
lbl_802C8118:
/* 802C8118 002C5058  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C811C 002C505C  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C8120 002C5060  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C8124 002C5064  3C 00 43 30 */ lis r0, 0x4330
/* 802C8128 002C5068  90 01 00 08 */ stw r0, 8(r1)
/* 802C812C 002C506C  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C8130 002C5070  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C8134 002C5074  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C8138 002C5078  D0 03 01 AC */ stfs f0, 0x1ac(r3)
lbl_802C813C:
/* 802C813C 002C507C  54 C0 06 3E */ clrlwi r0, r6, 0x18
/* 802C8140 002C5080  28 00 00 FF */ cmplwi r0, 0xff
/* 802C8144 002C5084  40 82 00 10 */ bne lbl_802C8154
/* 802C8148 002C5088  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C814C 002C508C  D0 03 01 B0 */ stfs f0, 0x1b0(r3)
/* 802C8150 002C5090  48 00 00 28 */ b lbl_802C8178
lbl_802C8154:
/* 802C8154 002C5094  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C8158 002C5098  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C815C 002C509C  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C8160 002C50A0  3C 00 43 30 */ lis r0, 0x4330
/* 802C8164 002C50A4  90 01 00 08 */ stw r0, 8(r1)
/* 802C8168 002C50A8  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C816C 002C50AC  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C8170 002C50B0  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C8174 002C50B4  D0 03 01 B0 */ stfs f0, 0x1b0(r3)
lbl_802C8178:
/* 802C8178 002C50B8  54 E0 06 3E */ clrlwi r0, r7, 0x18
/* 802C817C 002C50BC  28 00 00 FF */ cmplwi r0, 0xff
/* 802C8180 002C50C0  40 82 00 10 */ bne lbl_802C8190
/* 802C8184 002C50C4  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C8188 002C50C8  D0 03 01 B4 */ stfs f0, 0x1b4(r3)
/* 802C818C 002C50CC  48 00 00 28 */ b lbl_802C81B4
lbl_802C8190:
/* 802C8190 002C50D0  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C8194 002C50D4  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C8198 002C50D8  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C819C 002C50DC  3C 00 43 30 */ lis r0, 0x4330
/* 802C81A0 002C50E0  90 01 00 08 */ stw r0, 8(r1)
/* 802C81A4 002C50E4  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C81A8 002C50E8  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C81AC 002C50EC  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C81B0 002C50F0  D0 03 01 B4 */ stfs f0, 0x1b4(r3)
lbl_802C81B4:
/* 802C81B4 002C50F4  54 80 06 3E */ clrlwi r0, r4, 0x18
/* 802C81B8 002C50F8  2C 00 00 03 */ cmpwi r0, 3
/* 802C81BC 002C50FC  41 82 00 4C */ beq lbl_802C8208
/* 802C81C0 002C5100  40 80 00 14 */ bge lbl_802C81D4
/* 802C81C4 002C5104  2C 00 00 01 */ cmpwi r0, 1
/* 802C81C8 002C5108  41 82 00 18 */ beq lbl_802C81E0
/* 802C81CC 002C510C  40 80 00 28 */ bge lbl_802C81F4
/* 802C81D0 002C5110  48 00 00 5C */ b lbl_802C822C
lbl_802C81D4:
/* 802C81D4 002C5114  2C 00 00 05 */ cmpwi r0, 5
/* 802C81D8 002C5118  41 82 00 44 */ beq lbl_802C821C
/* 802C81DC 002C511C  48 00 00 50 */ b lbl_802C822C
lbl_802C81E0:
/* 802C81E0 002C5120  C0 22 C4 30 */ lfs f1, lbl_80455E30-_SDA2_BASE_(r2)
/* 802C81E4 002C5124  C0 03 01 B4 */ lfs f0, 0x1b4(r3)
/* 802C81E8 002C5128  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C81EC 002C512C  D0 03 01 64 */ stfs f0, 0x164(r3)
/* 802C81F0 002C5130  48 00 00 3C */ b lbl_802C822C
lbl_802C81F4:
/* 802C81F4 002C5134  C0 22 C4 34 */ lfs f1, lbl_80455E34-_SDA2_BASE_(r2)
/* 802C81F8 002C5138  C0 03 01 B4 */ lfs f0, 0x1b4(r3)
/* 802C81FC 002C513C  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C8200 002C5140  D0 03 01 64 */ stfs f0, 0x164(r3)
/* 802C8204 002C5144  48 00 00 28 */ b lbl_802C822C
lbl_802C8208:
/* 802C8208 002C5148  C0 22 C3 60 */ lfs f1, lbl_80455D60-_SDA2_BASE_(r2)
/* 802C820C 002C514C  C0 03 01 B4 */ lfs f0, 0x1b4(r3)
/* 802C8210 002C5150  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C8214 002C5154  D0 03 01 64 */ stfs f0, 0x164(r3)
/* 802C8218 002C5158  48 00 00 14 */ b lbl_802C822C
lbl_802C821C:
/* 802C821C 002C515C  C0 22 C4 30 */ lfs f1, lbl_80455E30-_SDA2_BASE_(r2)
/* 802C8220 002C5160  C0 03 01 B4 */ lfs f0, 0x1b4(r3)
/* 802C8224 002C5164  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C8228 002C5168  D0 03 01 64 */ stfs f0, 0x164(r3)
lbl_802C822C:
/* 802C822C 002C516C  38 21 00 10 */ addi r1, r1, 0x10
/* 802C8230 002C5170  4E 80 00 20 */ blr
