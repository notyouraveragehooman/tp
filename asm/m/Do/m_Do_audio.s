.include "macros.inc"

.section .text, "ax" # 80006fb4


.global mDoAud_zelAudio_c_NS_reset
mDoAud_zelAudio_c_NS_reset:
/* 80006FB4 00003EF4  38 00 00 00 */	li r0, 0
/* 80006FB8 00003EF8  98 0D 86 3A */	stb r0, lbl_80450BBA-_SDA_BASE_(r13)
/* 80006FBC 00003EFC  4E 80 00 20 */	blr 

.global mDoAud_Create
mDoAud_Create:
/* 80006FC0 00003F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006FC4 00003F04  7C 08 02 A6 */	mflr r0
/* 80006FC8 00003F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006FCC 00003F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80006FD0 00003F10  80 0D 86 40 */	lwz r0, lbl_80450BC0-_SDA_BASE_(r13)
/* 80006FD4 00003F14  28 00 00 00 */	cmplwi r0, 0
/* 80006FD8 00003F18  40 82 00 24 */	bne lbl_80006FFC
/* 80006FDC 00003F1C  3C 60 80 37 */	lis r3, lbl_80373D68@ha
/* 80006FE0 00003F20  38 63 3D 68 */	addi r3, r3, lbl_80373D68@l
/* 80006FE4 00003F24  38 80 00 02 */	li r4, 2
/* 80006FE8 00003F28  38 A0 00 00 */	li r5, 0
/* 80006FEC 00003F2C  48 00 F3 A9 */	bl mDoDvdThd_toMainRam_c_NS_create
/* 80006FF0 00003F30  90 6D 86 40 */	stw r3, lbl_80450BC0-_SDA_BASE_(r13)
/* 80006FF4 00003F34  28 03 00 00 */	cmplwi r3, 0
/* 80006FF8 00003F38  41 82 01 58 */	beq lbl_80007150
lbl_80006FFC:
/* 80006FFC 00003F3C  80 0D 86 44 */	lwz r0, lbl_80450BC4-_SDA_BASE_(r13)
/* 80007000 00003F40  28 00 00 00 */	cmplwi r0, 0
/* 80007004 00003F44  40 82 00 2C */	bne lbl_80007030
/* 80007008 00003F48  3C 60 80 37 */	lis r3, lbl_80373D68@ha
/* 8000700C 00003F4C  38 63 3D 68 */	addi r3, r3, lbl_80373D68@l
/* 80007010 00003F50  38 63 00 16 */	addi r3, r3, 0x16
/* 80007014 00003F54  38 80 00 00 */	li r4, 0
/* 80007018 00003F58  38 A0 00 03 */	li r5, 3
/* 8000701C 00003F5C  38 C0 00 00 */	li r6, 0
/* 80007020 00003F60  48 00 F1 C1 */	bl mDoDvdThd_mountXArchive_c_NS_create
/* 80007024 00003F64  90 6D 86 44 */	stw r3, lbl_80450BC4-_SDA_BASE_(r13)
/* 80007028 00003F68  28 03 00 00 */	cmplwi r3, 0
/* 8000702C 00003F6C  41 82 01 24 */	beq lbl_80007150
lbl_80007030:
/* 80007030 00003F70  80 6D 86 40 */	lwz r3, lbl_80450BC0-_SDA_BASE_(r13)
/* 80007034 00003F74  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80007038 00003F78  2C 00 00 00 */	cmpwi r0, 0
/* 8000703C 00003F7C  41 82 01 14 */	beq lbl_80007150
/* 80007040 00003F80  80 6D 86 44 */	lwz r3, lbl_80450BC4-_SDA_BASE_(r13)
/* 80007044 00003F84  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80007048 00003F88  2C 00 00 00 */	cmpwi r0, 0
/* 8000704C 00003F8C  41 82 01 04 */	beq lbl_80007150
/* 80007050 00003F90  80 0D 86 3C */	lwz r0, lbl_80450BBC-_SDA_BASE_(r13)
/* 80007054 00003F94  28 00 00 00 */	cmplwi r0, 0
/* 80007058 00003F98  41 82 00 50 */	beq lbl_800070A8
/* 8000705C 00003F9C  80 6D 8D F4 */	lwz r3, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 80007060 00003FA0  38 80 00 05 */	li r4, 5
/* 80007064 00003FA4  48 2C 77 4D */	bl changeGroupID__7JKRHeapFUc
/* 80007068 00003FA8  7C 7F 1B 78 */	mr r31, r3
/* 8000706C 00003FAC  80 6D 86 44 */	lwz r3, lbl_80450BC4-_SDA_BASE_(r13)
/* 80007070 00003FB0  80 E3 00 1C */	lwz r7, 0x1c(r3)
/* 80007074 00003FB4  80 6D 86 40 */	lwz r3, lbl_80450BC0-_SDA_BASE_(r13)
/* 80007078 00003FB8  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 8000707C 00003FBC  3C 60 80 3E */	lis r3, lbl_803DBF4C@ha
/* 80007080 00003FC0  38 63 BF 4C */	addi r3, r3, lbl_803DBF4C@l
/* 80007084 00003FC4  80 8D 86 3C */	lwz r4, lbl_80450BBC-_SDA_BASE_(r13)
/* 80007088 00003FC8  3C A0 00 A0 */	lis r5, 0xa0
/* 8000708C 00003FCC  48 2C 62 C1 */	bl Z2AudioMgr_NS_init
/* 80007090 00003FD0  80 6D 8D F4 */	lwz r3, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 80007094 00003FD4  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 80007098 00003FD8  48 2C 77 19 */	bl changeGroupID__7JKRHeapFUc
/* 8000709C 00003FDC  80 6D 86 3C */	lwz r3, lbl_80450BBC-_SDA_BASE_(r13)
/* 800070A0 00003FE0  48 2C 9B 55 */	bl adjustSize__12JKRSolidHeapFv
/* 800070A4 00003FE4  48 00 00 18 */	b lbl_800070BC
lbl_800070A8:
/* 800070A8 00003FE8  3C 60 80 37 */	lis r3, lbl_80373D68@ha
/* 800070AC 00003FEC  38 63 3D 68 */	addi r3, r3, lbl_80373D68@l
/* 800070B0 00003FF0  38 63 00 35 */	addi r3, r3, 0x35
/* 800070B4 00003FF4  4C C6 31 82 */	crclr 6
/* 800070B8 00003FF8  4B FF FB 55 */	bl OSReport_Error
lbl_800070BC:
/* 800070BC 00003FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800070C0 00004000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800070C4 00004004  38 83 07 F0 */	addi r4, r3, 0x7f0
/* 800070C8 00004008  3C 60 80 3E */	lis r3, lbl_803DBF4C@ha
/* 800070CC 0000400C  38 63 BF 4C */	addi r3, r3, lbl_803DBF4C@l
/* 800070D0 00004010  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 800070D4 00004014  48 2A F6 85 */	bl setEventBit__11Z2StatusMgrFPv
/* 800070D8 00004018  3C 60 80 3E */	lis r3, lbl_803DBF4C@ha
/* 800070DC 0000401C  38 63 BF 4C */	addi r3, r3, lbl_803DBF4C@l
/* 800070E0 00004020  4B FF FE D5 */	bl mDoAud_zelAudio_c_NS_reset
/* 800070E4 00004024  48 33 94 AD */	bl OSGetSoundMode
/* 800070E8 00004028  7C 64 1B 78 */	mr r4, r3
/* 800070EC 0000402C  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 800070F0 00004030  48 2C 67 99 */	bl Z2AudioMgr_NS_setOutputMode
/* 800070F4 00004034  80 6D 86 40 */	lwz r3, lbl_80450BC0-_SDA_BASE_(r13)
/* 800070F8 00004038  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 800070FC 0000403C  38 80 00 00 */	li r4, 0
/* 80007100 00004040  48 2C 74 01 */	bl free__7JKRHeapFPvP7JKRHeap
/* 80007104 00004044  80 6D 86 40 */	lwz r3, lbl_80450BC0-_SDA_BASE_(r13)
/* 80007108 00004048  28 03 00 00 */	cmplwi r3, 0
/* 8000710C 0000404C  41 82 00 18 */	beq lbl_80007124
/* 80007110 00004050  38 80 00 01 */	li r4, 1
/* 80007114 00004054  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80007118 00004058  81 8C 00 08 */	lwz r12, 8(r12)
/* 8000711C 0000405C  7D 89 03 A6 */	mtctr r12
/* 80007120 00004060  4E 80 04 21 */	bctrl 
lbl_80007124:
/* 80007124 00004064  80 6D 86 44 */	lwz r3, lbl_80450BC4-_SDA_BASE_(r13)
/* 80007128 00004068  28 03 00 00 */	cmplwi r3, 0
/* 8000712C 0000406C  41 82 00 18 */	beq lbl_80007144
/* 80007130 00004070  38 80 00 01 */	li r4, 1
/* 80007134 00004074  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80007138 00004078  81 8C 00 08 */	lwz r12, 8(r12)
/* 8000713C 0000407C  7D 89 03 A6 */	mtctr r12
/* 80007140 00004080  4E 80 04 21 */	bctrl 
lbl_80007144:
/* 80007144 00004084  38 00 00 01 */	li r0, 1
/* 80007148 00004088  98 0D 86 38 */	stb r0, lbl_80450BB8-_SDA_BASE_(r13)
/* 8000714C 0000408C  98 0D 87 00 */	stb r0, lbl_80450C80-_SDA_BASE_(r13)
lbl_80007150:
/* 80007150 00004090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80007154 00004094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007158 00004098  7C 08 03 A6 */	mtlr r0
/* 8000715C 0000409C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007160 000040A0  4E 80 00 20 */	blr 

.global mDoAud_Execute
mDoAud_Execute:
/* 80007164 000040A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007168 000040A8  7C 08 02 A6 */	mflr r0
/* 8000716C 000040AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007170 000040B0  88 0D 86 38 */	lbz r0, lbl_80450BB8-_SDA_BASE_(r13)
/* 80007174 000040B4  28 00 00 00 */	cmplwi r0, 0
/* 80007178 000040B8  40 82 00 28 */	bne lbl_800071A0
/* 8000717C 000040BC  80 6D 86 F8 */	lwz r3, m_Do_Reset_NS_mDoRst_NS_mResetData-_SDA_BASE_(r13)
/* 80007180 000040C0  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80007184 000040C4  2C 00 00 00 */	cmpwi r0, 0
/* 80007188 000040C8  40 82 00 24 */	bne lbl_800071AC
/* 8000718C 000040CC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80007190 000040D0  2C 00 00 00 */	cmpwi r0, 0
/* 80007194 000040D4  40 82 00 18 */	bne lbl_800071AC
/* 80007198 000040D8  4B FF FE 29 */	bl mDoAud_Create
/* 8000719C 000040DC  48 00 00 10 */	b lbl_800071AC
lbl_800071A0:
/* 800071A0 000040E0  3C 60 80 3E */	lis r3, lbl_803DBF4C@ha
/* 800071A4 000040E4  38 63 BF 4C */	addi r3, r3, lbl_803DBF4C@l
/* 800071A8 000040E8  48 2C 67 5D */	bl Z2AudioMgr_NS_gframeProcess
lbl_800071AC:
/* 800071AC 000040EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800071B0 000040F0  7C 08 03 A6 */	mtlr r0
/* 800071B4 000040F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800071B8 000040F8  4E 80 00 20 */	blr 

.global mDoAud_setSceneName
mDoAud_setSceneName:
/* 800071BC 000040FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800071C0 00004100  7C 08 02 A6 */	mflr r0
/* 800071C4 00004104  90 01 00 14 */	stw r0, 0x14(r1)
/* 800071C8 00004108  7C 67 1B 78 */	mr r7, r3
/* 800071CC 0000410C  7C 80 23 78 */	mr r0, r4
/* 800071D0 00004110  7C A6 2B 78 */	mr r6, r5
/* 800071D4 00004114  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 800071D8 00004118  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 800071DC 0000411C  7C E4 3B 78 */	mr r4, r7
/* 800071E0 00004120  7C 05 03 78 */	mr r5, r0
/* 800071E4 00004124  48 2A F9 15 */	bl setSceneName__10Z2SceneMgrFPcll
/* 800071E8 00004128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800071EC 0000412C  7C 08 03 A6 */	mtlr r0
/* 800071F0 00004130  38 21 00 10 */	addi r1, r1, 0x10
/* 800071F4 00004134  4E 80 00 20 */	blr 

.global mDoAud_load1stDynamicWave
mDoAud_load1stDynamicWave:
/* 800071F8 00004138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800071FC 0000413C  7C 08 02 A6 */	mflr r0
/* 80007200 00004140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007204 00004144  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80007208 00004148  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 8000720C 0000414C  48 2B 2B 35 */	bl Z2SceneMgr_NS_load1stDynamicWave
/* 80007210 00004150  38 60 00 01 */	li r3, 1
/* 80007214 00004154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007218 00004158  7C 08 03 A6 */	mtlr r0
/* 8000721C 0000415C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007220 00004160  4E 80 00 20 */	blr 

.global mDoAud_setFadeOutStart
mDoAud_setFadeOutStart:
/* 80007224 00004164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007228 00004168  7C 08 02 A6 */	mflr r0
/* 8000722C 0000416C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007230 00004170  7C 60 1B 78 */	mr r0, r3
/* 80007234 00004174  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80007238 00004178  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 8000723C 0000417C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80007240 00004180  48 2A F7 3D */	bl setFadeOutStart__10Z2SceneMgrFUc
/* 80007244 00004184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007248 00004188  7C 08 03 A6 */	mtlr r0
/* 8000724C 0000418C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007250 00004190  4E 80 00 20 */	blr 

.global mDoAud_setFadeInStart
mDoAud_setFadeInStart:
/* 80007254 00004194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007258 00004198  7C 08 02 A6 */	mflr r0
/* 8000725C 0000419C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007260 000041A0  7C 60 1B 78 */	mr r0, r3
/* 80007264 000041A4  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80007268 000041A8  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 8000726C 000041AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80007270 000041B0  48 2A F7 A9 */	bl setFadeInStart__10Z2SceneMgrFUc
/* 80007274 000041B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007278 000041B8  7C 08 03 A6 */	mtlr r0
/* 8000727C 000041BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80007280 000041C0  4E 80 00 20 */	blr 

.global mDoAud_resetProcess
mDoAud_resetProcess:
/* 80007284 000041C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007288 000041C8  7C 08 02 A6 */	mflr r0
/* 8000728C 000041CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007290 000041D0  88 0D 86 39 */	lbz r0, lbl_80450BB9-_SDA_BASE_(r13)
/* 80007294 000041D4  28 00 00 00 */	cmplwi r0, 0
/* 80007298 000041D8  40 82 00 1C */	bne lbl_800072B4
/* 8000729C 000041DC  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 800072A0 000041E0  38 80 00 1E */	li r4, 0x1e
/* 800072A4 000041E4  38 A0 00 00 */	li r5, 0
/* 800072A8 000041E8  48 2C 66 CD */	bl Z2AudioMgr_NS_resetProcess
/* 800072AC 000041EC  38 00 00 01 */	li r0, 1
/* 800072B0 000041F0  98 0D 86 39 */	stb r0, lbl_80450BB9-_SDA_BASE_(r13)
lbl_800072B4:
/* 800072B4 000041F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800072B8 000041F8  7C 08 03 A6 */	mtlr r0
/* 800072BC 000041FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800072C0 00004200  4E 80 00 20 */	blr 

.global mDoAud_resetRecover
mDoAud_resetRecover:
/* 800072C4 00004204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800072C8 00004208  7C 08 02 A6 */	mflr r0
/* 800072CC 0000420C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800072D0 00004210  88 0D 86 39 */	lbz r0, lbl_80450BB9-_SDA_BASE_(r13)
/* 800072D4 00004214  28 00 00 00 */	cmplwi r0, 0
/* 800072D8 00004218  41 82 00 2C */	beq lbl_80007304
/* 800072DC 0000421C  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 800072E0 00004220  48 2C 67 8D */	bl Z2AudioMgr_NS_hasReset
/* 800072E4 00004224  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800072E8 00004228  40 82 00 0C */	bne lbl_800072F4
/* 800072EC 0000422C  38 60 00 00 */	li r3, 0
/* 800072F0 00004230  48 00 00 18 */	b lbl_80007308
lbl_800072F4:
/* 800072F4 00004234  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 800072F8 00004238  48 2C 66 D5 */	bl Z2AudioMgr_NS_resetRecover
/* 800072FC 0000423C  38 00 00 00 */	li r0, 0
/* 80007300 00004240  98 0D 86 39 */	stb r0, lbl_80450BB9-_SDA_BASE_(r13)
lbl_80007304:
/* 80007304 00004244  38 60 00 01 */	li r3, 1
lbl_80007308:
/* 80007308 00004248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000730C 0000424C  7C 08 03 A6 */	mtlr r0
/* 80007310 00004250  38 21 00 10 */	addi r1, r1, 0x10
/* 80007314 00004254  4E 80 00 20 */	blr 
/* 80007318 00004258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000731C 0000425C  7C 08 02 A6 */	mflr r0
/* 80007320 00004260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007324 00004264  3C 60 80 3E */	lis r3, lbl_803DBF4C@ha
/* 80007328 00004268  38 63 BF 4C */	addi r3, r3, lbl_803DBF4C@l
/* 8000732C 0000426C  48 2C 5F 1D */	bl Z2AudioMgr
/* 80007330 00004270  3C 60 80 3A */	lis r3, lbl_803A2F40@ha
/* 80007334 00004274  38 03 2F 40 */	addi r0, r3, lbl_803A2F40@l
/* 80007338 00004278  3C 60 80 3E */	lis r3, lbl_803DBF4C@ha
/* 8000733C 0000427C  38 63 BF 4C */	addi r3, r3, lbl_803DBF4C@l
/* 80007340 00004280  90 03 05 14 */	stw r0, 0x514(r3)
.global mDoAud_zelAudio_c_NS_dtor
/* 80007344 00004284  3C 80 80 00 */	lis r4, mDoAud_zelAudio_c_NS_dtor@ha
.global mDoAud_zelAudio_c_NS_dtor
/* 80007348 00004288  38 84 73 68 */	addi r4, r4, mDoAud_zelAudio_c_NS_dtor@l
/* 8000734C 0000428C  3C A0 80 3E */	lis r5, lbl_803DBF40@ha
/* 80007350 00004290  38 A5 BF 40 */	addi r5, r5, lbl_803DBF40@l
/* 80007354 00004294  48 35 A8 D1 */	bl func_80361C24
/* 80007358 00004298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000735C 0000429C  7C 08 03 A6 */	mtlr r0
/* 80007360 000042A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80007364 000042A4  4E 80 00 20 */	blr 
.global mDoAud_zelAudio_c_NS_dtor
mDoAud_zelAudio_c_NS_dtor:
/* 80007368 000042A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000736C 000042AC  7C 08 02 A6 */	mflr r0
/* 80007370 000042B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007374 000042B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80007378 000042B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8000737C 000042BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80007380 000042C0  7C 9F 23 78 */	mr r31, r4
/* 80007384 000042C4  41 82 00 28 */	beq lbl_800073AC
/* 80007388 000042C8  3C 80 80 3A */	lis r4, lbl_803A2F40@ha
/* 8000738C 000042CC  38 04 2F 40 */	addi r0, r4, lbl_803A2F40@l
/* 80007390 000042D0  90 1E 05 14 */	stw r0, 0x514(r30)
/* 80007394 000042D4  38 80 00 00 */	li r4, 0
/* 80007398 000042D8  48 00 00 31 */	bl Z2AudioMgr_NS_dtor
/* 8000739C 000042DC  7F E0 07 35 */	extsh. r0, r31
/* 800073A0 000042E0  40 81 00 0C */	ble lbl_800073AC
/* 800073A4 000042E4  7F C3 F3 78 */	mr r3, r30
/* 800073A8 000042E8  48 2C 79 95 */	bl __dl__FPv
lbl_800073AC:
/* 800073AC 000042EC  7F C3 F3 78 */	mr r3, r30
/* 800073B0 000042F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800073B4 000042F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800073B8 000042F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800073BC 000042FC  7C 08 03 A6 */	mtlr r0
/* 800073C0 00004300  38 21 00 10 */	addi r1, r1, 0x10
/* 800073C4 00004304  4E 80 00 20 */	blr 

.global Z2AudioMgr_NS_dtor
Z2AudioMgr_NS_dtor:
/* 800073C8 00004308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800073CC 0000430C  7C 08 02 A6 */	mflr r0
/* 800073D0 00004310  90 01 00 24 */	stw r0, 0x24(r1)
/* 800073D4 00004314  39 61 00 20 */	addi r11, r1, 0x20
/* 800073D8 00004318  48 35 AE 05 */	bl _savegpr_29
/* 800073DC 0000431C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800073E0 00004320  7C 9F 23 78 */	mr r31, r4
/* 800073E4 00004324  41 82 04 38 */	beq lbl_8000781C
/* 800073E8 00004328  3C 60 80 3D */	lis r3, lbl_803CBF38@ha
/* 800073EC 0000432C  38 03 BF 38 */	addi r0, r3, lbl_803CBF38@l
/* 800073F0 00004330  90 1E 05 14 */	stw r0, 0x514(r30)
/* 800073F4 00004334  34 1E 13 70 */	addic. r0, r30, 0x1370
/* 800073F8 00004338  41 82 00 24 */	beq lbl_8000741C
/* 800073FC 0000433C  34 1E 13 70 */	addic. r0, r30, 0x1370
/* 80007400 00004340  41 82 00 1C */	beq lbl_8000741C
/* 80007404 00004344  80 6D 85 C0 */	lwz r3, lbl_80450B40-_SDA_BASE_(r13)
/* 80007408 00004348  38 1E 13 70 */	addi r0, r30, 0x1370
/* 8000740C 0000434C  7C 03 00 40 */	cmplw r3, r0
/* 80007410 00004350  40 82 00 0C */	bne lbl_8000741C
/* 80007414 00004354  38 00 00 00 */	li r0, 0
/* 80007418 00004358  90 0D 85 C0 */	stw r0, lbl_80450B40-_SDA_BASE_(r13)
lbl_8000741C:
/* 8000741C 0000435C  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 80007420 00004360  41 82 00 98 */	beq lbl_800074B8
/* 80007424 00004364  34 7E 0F 38 */	addic. r3, r30, 0xf38
/* 80007428 00004368  41 82 00 54 */	beq lbl_8000747C
/* 8000742C 0000436C  3C 80 80 3D */	lis r4, lbl_803CBF24@ha
/* 80007430 00004370  38 04 BF 24 */	addi r0, r4, lbl_803CBF24@l
/* 80007434 00004374  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 80007438 00004378  28 03 00 00 */	cmplwi r3, 0
/* 8000743C 0000437C  41 82 00 40 */	beq lbl_8000747C
/* 80007440 00004380  3C 80 80 3D */	lis r4, lbl_803C9D80@ha
/* 80007444 00004384  38 04 9D 80 */	addi r0, r4, lbl_803C9D80@l
/* 80007448 00004388  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 8000744C 0000438C  34 1E 0F 3C */	addic. r0, r30, 0xf3c
/* 80007450 00004390  41 82 00 24 */	beq lbl_80007474
/* 80007454 00004394  34 83 00 04 */	addic. r4, r3, 4
/* 80007458 00004398  41 82 00 08 */	beq lbl_80007460
/* 8000745C 0000439C  38 84 FF FC */	addi r4, r4, -4
lbl_80007460:
/* 80007460 000043A0  80 0D 85 F4 */	lwz r0, lbl_80450B74-_SDA_BASE_(r13)
/* 80007464 000043A4  7C 00 20 40 */	cmplw r0, r4
/* 80007468 000043A8  40 82 00 0C */	bne lbl_80007474
/* 8000746C 000043AC  38 00 00 00 */	li r0, 0
/* 80007470 000043B0  90 0D 85 F4 */	stw r0, lbl_80450B74-_SDA_BASE_(r13)
lbl_80007474:
/* 80007474 000043B4  38 80 00 00 */	li r4, 0
/* 80007478 000043B8  48 29 BB 11 */	bl JAISoundStarter_NS_dtor
lbl_8000747C:
/* 8000747C 000043BC  34 7E 0F 30 */	addic. r3, r30, 0xf30
/* 80007480 000043C0  41 82 00 08 */	beq lbl_80007488
/* 80007484 000043C4  48 29 AD 01 */	bl releaseSound__14JAISoundHandleFv
lbl_80007488:
/* 80007488 000043C8  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 8000748C 000043CC  41 82 00 0C */	beq lbl_80007498
/* 80007490 000043D0  38 7E 0F 2C */	addi r3, r30, 0xf2c
/* 80007494 000043D4  48 29 AC F1 */	bl releaseSound__14JAISoundHandleFv
lbl_80007498:
/* 80007498 000043D8  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 8000749C 000043DC  41 82 00 1C */	beq lbl_800074B8
/* 800074A0 000043E0  80 6D 85 F0 */	lwz r3, lbl_80450B70-_SDA_BASE_(r13)
/* 800074A4 000043E4  38 1E 0F 2C */	addi r0, r30, 0xf2c
/* 800074A8 000043E8  7C 03 00 40 */	cmplw r3, r0
/* 800074AC 000043EC  40 82 00 0C */	bne lbl_800074B8
/* 800074B0 000043F0  38 00 00 00 */	li r0, 0
/* 800074B4 000043F4  90 0D 85 F0 */	stw r0, lbl_80450B70-_SDA_BASE_(r13)
lbl_800074B8:
/* 800074B8 000043F8  38 7E 0D 4C */	addi r3, r30, 0xd4c
/* 800074BC 000043FC  38 80 FF FF */	li r4, -1
/* 800074C0 00004400  48 2B 5D 3D */	bl Z2Audience_NS_dtor
/* 800074C4 00004404  34 1E 0D 40 */	addic. r0, r30, 0xd40
/* 800074C8 00004408  41 82 00 94 */	beq lbl_8000755C
/* 800074CC 0000440C  3C 60 80 3D */	lis r3, lbl_803CAC48@ha
/* 800074D0 00004410  38 63 AC 48 */	addi r3, r3, lbl_803CAC48@l
/* 800074D4 00004414  90 7E 0D 40 */	stw r3, 0xd40(r30)
/* 800074D8 00004418  38 03 00 24 */	addi r0, r3, 0x24
/* 800074DC 0000441C  90 1E 0D 44 */	stw r0, 0xd44(r30)
/* 800074E0 00004420  38 03 00 34 */	addi r0, r3, 0x34
/* 800074E4 00004424  90 1E 0D 48 */	stw r0, 0xd48(r30)
/* 800074E8 00004428  34 1E 0D 4C */	addic. r0, r30, 0xd4c
/* 800074EC 0000442C  41 82 00 24 */	beq lbl_80007510
/* 800074F0 00004430  34 7E 0D 4C */	addic. r3, r30, 0xd4c
/* 800074F4 00004434  41 82 00 08 */	beq lbl_800074FC
/* 800074F8 00004438  38 63 FF F4 */	addi r3, r3, -12
lbl_800074FC:
/* 800074FC 0000443C  80 0D 85 CC */	lwz r0, lbl_80450B4C-_SDA_BASE_(r13)
/* 80007500 00004440  7C 00 18 40 */	cmplw r0, r3
/* 80007504 00004444  40 82 00 0C */	bne lbl_80007510
/* 80007508 00004448  38 00 00 00 */	li r0, 0
/* 8000750C 0000444C  90 0D 85 CC */	stw r0, lbl_80450B4C-_SDA_BASE_(r13)
lbl_80007510:
/* 80007510 00004450  38 7E 0D 48 */	addi r3, r30, 0xd48
/* 80007514 00004454  38 80 00 00 */	li r4, 0
/* 80007518 00004458  48 29 C5 C1 */	bl JAIStreamDataMgr_NS_dtor
/* 8000751C 0000445C  34 1E 0D 44 */	addic. r0, r30, 0xd44
/* 80007520 00004460  41 82 00 30 */	beq lbl_80007550
/* 80007524 00004464  3C 60 80 3A */	lis r3, lbl_803A2F4C@ha
/* 80007528 00004468  38 03 2F 4C */	addi r0, r3, lbl_803A2F4C@l
/* 8000752C 0000446C  90 1E 0D 44 */	stw r0, 0xd44(r30)
/* 80007530 00004470  34 1E 0D 44 */	addic. r0, r30, 0xd44
/* 80007534 00004474  41 82 00 1C */	beq lbl_80007550
/* 80007538 00004478  80 6D 85 D0 */	lwz r3, lbl_80450B50-_SDA_BASE_(r13)
/* 8000753C 0000447C  38 1E 0D 44 */	addi r0, r30, 0xd44
/* 80007540 00004480  7C 03 00 40 */	cmplw r3, r0
/* 80007544 00004484  40 82 00 0C */	bne lbl_80007550
/* 80007548 00004488  38 00 00 00 */	li r0, 0
/* 8000754C 0000448C  90 0D 85 D0 */	stw r0, lbl_80450B50-_SDA_BASE_(r13)
lbl_80007550:
/* 80007550 00004490  38 7E 0D 40 */	addi r3, r30, 0xd40
/* 80007554 00004494  38 80 00 00 */	li r4, 0
/* 80007558 00004498  48 29 B7 F9 */	bl JAISoundInfo_NS_dtor
lbl_8000755C:
/* 8000755C 0000449C  34 1E 05 30 */	addic. r0, r30, 0x530
/* 80007560 000044A0  41 82 01 04 */	beq lbl_80007664
/* 80007564 000044A4  3C 60 80 3D */	lis r3, lbl_803C9D70@ha
/* 80007568 000044A8  38 03 9D 70 */	addi r0, r3, lbl_803C9D70@l
/* 8000756C 000044AC  90 1E 05 30 */	stw r0, 0x530(r30)
/* 80007570 000044B0  37 BE 0C CC */	addic. r29, r30, 0xccc
/* 80007574 000044B4  41 82 00 30 */	beq lbl_800075A4
/* 80007578 000044B8  34 7D 00 58 */	addic. r3, r29, 0x58
/* 8000757C 000044BC  41 82 00 0C */	beq lbl_80007588
/* 80007580 000044C0  38 80 00 00 */	li r4, 0
/* 80007584 000044C4  48 2D 49 29 */	bl __dt__10JSUPtrListFv
lbl_80007588:
/* 80007588 000044C8  28 1D 00 00 */	cmplwi r29, 0
/* 8000758C 000044CC  41 82 00 18 */	beq lbl_800075A4
/* 80007590 000044D0  80 0D 85 E4 */	lwz r0, lbl_80450B64-_SDA_BASE_(r13)
/* 80007594 000044D4  7C 00 E8 40 */	cmplw r0, r29
/* 80007598 000044D8  40 82 00 0C */	bne lbl_800075A4
/* 8000759C 000044DC  38 00 00 00 */	li r0, 0
/* 800075A0 000044E0  90 0D 85 E4 */	stw r0, lbl_80450B64-_SDA_BASE_(r13)
lbl_800075A4:
/* 800075A4 000044E4  37 BE 0C 58 */	addic. r29, r30, 0xc58
/* 800075A8 000044E8  41 82 00 48 */	beq lbl_800075F0
/* 800075AC 000044EC  3C 60 80 3D */	lis r3, lbl_803C9958@ha
/* 800075B0 000044F0  38 03 99 58 */	addi r0, r3, lbl_803C9958@l
/* 800075B4 000044F4  90 1E 0C 58 */	stw r0, 0xc58(r30)
/* 800075B8 000044F8  34 7D 00 64 */	addic. r3, r29, 0x64
/* 800075BC 000044FC  41 82 00 0C */	beq lbl_800075C8
/* 800075C0 00004500  38 80 00 00 */	li r4, 0
/* 800075C4 00004504  48 2D 48 E9 */	bl __dt__10JSUPtrListFv
lbl_800075C8:
/* 800075C8 00004508  7F A3 EB 78 */	mr r3, r29
/* 800075CC 0000450C  38 80 00 00 */	li r4, 0
/* 800075D0 00004510  48 29 A1 A5 */	bl JAISeqDataUser_NS_dtor
/* 800075D4 00004514  28 1D 00 00 */	cmplwi r29, 0
/* 800075D8 00004518  41 82 00 18 */	beq lbl_800075F0
/* 800075DC 0000451C  80 0D 85 E8 */	lwz r0, lbl_80450B68-_SDA_BASE_(r13)
/* 800075E0 00004520  7C 00 E8 40 */	cmplw r0, r29
/* 800075E4 00004524  40 82 00 0C */	bne lbl_800075F0
/* 800075E8 00004528  38 00 00 00 */	li r0, 0
/* 800075EC 0000452C  90 0D 85 E8 */	stw r0, lbl_80450B68-_SDA_BASE_(r13)
lbl_800075F0:
/* 800075F0 00004530  37 BE 05 34 */	addic. r29, r30, 0x534
/* 800075F4 00004534  41 82 00 50 */	beq lbl_80007644
/* 800075F8 00004538  3C 60 80 3D */	lis r3, lbl_803C98B0@ha
/* 800075FC 0000453C  38 03 98 B0 */	addi r0, r3, lbl_803C98B0@l
/* 80007600 00004540  90 1E 05 34 */	stw r0, 0x534(r30)
/* 80007604 00004544  38 7E 05 48 */	addi r3, r30, 0x548
.global JAISeCategoryMgr_NS_dtor
/* 80007608 00004548  3C 80 80 00 */	lis r4, JAISeCategoryMgr_NS_dtor@ha
.global JAISeCategoryMgr_NS_dtor
/* 8000760C 0000454C  38 84 78 DC */	addi r4, r4, JAISeCategoryMgr_NS_dtor@l
/* 80007610 00004550  38 A0 00 6C */	li r5, 0x6c
/* 80007614 00004554  38 C0 00 10 */	li r6, 0x10
/* 80007618 00004558  48 35 A6 D1 */	bl func_80361CE8
/* 8000761C 0000455C  7F A3 EB 78 */	mr r3, r29
/* 80007620 00004560  38 80 00 00 */	li r4, 0
/* 80007624 00004564  48 29 A1 51 */	bl JAISeqDataUser_NS_dtor
/* 80007628 00004568  28 1D 00 00 */	cmplwi r29, 0
/* 8000762C 0000456C  41 82 00 18 */	beq lbl_80007644
/* 80007630 00004570  80 0D 85 EC */	lwz r0, lbl_80450B6C-_SDA_BASE_(r13)
/* 80007634 00004574  7C 00 E8 40 */	cmplw r0, r29
/* 80007638 00004578  40 82 00 0C */	bne lbl_80007644
/* 8000763C 0000457C  38 00 00 00 */	li r0, 0
/* 80007640 00004580  90 0D 85 EC */	stw r0, lbl_80450B6C-_SDA_BASE_(r13)
lbl_80007644:
/* 80007644 00004584  34 1E 05 30 */	addic. r0, r30, 0x530
/* 80007648 00004588  41 82 00 1C */	beq lbl_80007664
/* 8000764C 0000458C  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 80007650 00004590  38 1E 05 30 */	addi r0, r30, 0x530
/* 80007654 00004594  7C 03 00 40 */	cmplw r3, r0
/* 80007658 00004598  40 82 00 0C */	bne lbl_80007664
/* 8000765C 0000459C  38 00 00 00 */	li r0, 0
/* 80007660 000045A0  90 0D 85 E0 */	stw r0, lbl_80450B60-_SDA_BASE_(r13)
lbl_80007664:
/* 80007664 000045A4  34 1E 05 2C */	addic. r0, r30, 0x52c
/* 80007668 000045A8  41 82 00 44 */	beq lbl_800076AC
/* 8000766C 000045AC  3C 60 80 3D */	lis r3, lbl_803C9D80@ha
/* 80007670 000045B0  38 03 9D 80 */	addi r0, r3, lbl_803C9D80@l
/* 80007674 000045B4  90 1E 05 2C */	stw r0, 0x52c(r30)
/* 80007678 000045B8  34 1E 05 30 */	addic. r0, r30, 0x530
/* 8000767C 000045BC  41 82 00 24 */	beq lbl_800076A0
/* 80007680 000045C0  34 7E 05 30 */	addic. r3, r30, 0x530
/* 80007684 000045C4  41 82 00 08 */	beq lbl_8000768C
/* 80007688 000045C8  38 63 FF FC */	addi r3, r3, -4
lbl_8000768C:
/* 8000768C 000045CC  80 0D 85 F4 */	lwz r0, lbl_80450B74-_SDA_BASE_(r13)
/* 80007690 000045D0  7C 00 18 40 */	cmplw r0, r3
/* 80007694 000045D4  40 82 00 0C */	bne lbl_800076A0
/* 80007698 000045D8  38 00 00 00 */	li r0, 0
/* 8000769C 000045DC  90 0D 85 F4 */	stw r0, lbl_80450B74-_SDA_BASE_(r13)
lbl_800076A0:
/* 800076A0 000045E0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 800076A4 000045E4  38 80 00 00 */	li r4, 0
/* 800076A8 000045E8  48 29 B8 E1 */	bl JAISoundStarter_NS_dtor
lbl_800076AC:
/* 800076AC 000045EC  38 7E 05 1C */	addi r3, r30, 0x51c
/* 800076B0 000045F0  38 80 FF FF */	li r4, -1
/* 800076B4 000045F4  48 29 5A 49 */	bl JASAudioReseter_NS_dtor
/* 800076B8 000045F8  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076BC 000045FC  41 82 00 38 */	beq lbl_800076F4
/* 800076C0 00004600  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076C4 00004604  41 82 00 10 */	beq lbl_800076D4
/* 800076C8 00004608  38 7E 04 F4 */	addi r3, r30, 0x4f4
/* 800076CC 0000460C  38 80 00 00 */	li r4, 0
/* 800076D0 00004610  48 2D 47 DD */	bl __dt__10JSUPtrListFv
lbl_800076D4:
/* 800076D4 00004614  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076D8 00004618  41 82 00 1C */	beq lbl_800076F4
/* 800076DC 0000461C  80 6D 85 C8 */	lwz r3, lbl_80450B48-_SDA_BASE_(r13)
/* 800076E0 00004620  38 1E 04 F4 */	addi r0, r30, 0x4f4
/* 800076E4 00004624  7C 03 00 40 */	cmplw r3, r0
/* 800076E8 00004628  40 82 00 0C */	bne lbl_800076F4
/* 800076EC 0000462C  38 00 00 00 */	li r0, 0
/* 800076F0 00004630  90 0D 85 C8 */	stw r0, lbl_80450B48-_SDA_BASE_(r13)
lbl_800076F4:
/* 800076F4 00004634  34 1E 04 C4 */	addic. r0, r30, 0x4c4
/* 800076F8 00004638  41 82 00 24 */	beq lbl_8000771C
/* 800076FC 0000463C  34 1E 04 C4 */	addic. r0, r30, 0x4c4
/* 80007700 00004640  41 82 00 1C */	beq lbl_8000771C
/* 80007704 00004644  80 6D 85 FC */	lwz r3, lbl_80450B7C-_SDA_BASE_(r13)
/* 80007708 00004648  38 1E 04 C4 */	addi r0, r30, 0x4c4
/* 8000770C 0000464C  7C 03 00 40 */	cmplw r3, r0
/* 80007710 00004650  40 82 00 0C */	bne lbl_8000771C
/* 80007714 00004654  38 00 00 00 */	li r0, 0
/* 80007718 00004658  90 0D 85 FC */	stw r0, lbl_80450B7C-_SDA_BASE_(r13)
lbl_8000771C:
/* 8000771C 0000465C  34 1E 04 A4 */	addic. r0, r30, 0x4a4
/* 80007720 00004660  41 82 00 24 */	beq lbl_80007744
/* 80007724 00004664  34 1E 04 A4 */	addic. r0, r30, 0x4a4
/* 80007728 00004668  41 82 00 1C */	beq lbl_80007744
/* 8000772C 0000466C  80 6D 86 00 */	lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 80007730 00004670  38 1E 04 A4 */	addi r0, r30, 0x4a4
/* 80007734 00004674  7C 03 00 40 */	cmplw r3, r0
/* 80007738 00004678  40 82 00 0C */	bne lbl_80007744
/* 8000773C 0000467C  38 00 00 00 */	li r0, 0
/* 80007740 00004680  90 0D 86 00 */	stw r0, lbl_80450B80-_SDA_BASE_(r13)
lbl_80007744:
/* 80007744 00004684  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007748 00004688  41 82 00 58 */	beq lbl_800077A0
/* 8000774C 0000468C  34 7E 03 DC */	addic. r3, r30, 0x3dc
/* 80007750 00004690  41 82 00 08 */	beq lbl_80007758
/* 80007754 00004694  48 29 AA 31 */	bl releaseSound__14JAISoundHandleFv
lbl_80007758:
/* 80007758 00004698  34 7E 03 D8 */	addic. r3, r30, 0x3d8
/* 8000775C 0000469C  41 82 00 08 */	beq lbl_80007764
/* 80007760 000046A0  48 29 AA 25 */	bl releaseSound__14JAISoundHandleFv
lbl_80007764:
/* 80007764 000046A4  34 7E 03 D4 */	addic. r3, r30, 0x3d4
/* 80007768 000046A8  41 82 00 08 */	beq lbl_80007770
/* 8000776C 000046AC  48 29 AA 19 */	bl releaseSound__14JAISoundHandleFv
lbl_80007770:
/* 80007770 000046B0  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007774 000046B4  41 82 00 0C */	beq lbl_80007780
/* 80007778 000046B8  38 7E 03 D0 */	addi r3, r30, 0x3d0
/* 8000777C 000046BC  48 29 AA 09 */	bl releaseSound__14JAISoundHandleFv
lbl_80007780:
/* 80007780 000046C0  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007784 000046C4  41 82 00 1C */	beq lbl_800077A0
/* 80007788 000046C8  80 6D 86 04 */	lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 8000778C 000046CC  38 1E 03 D0 */	addi r0, r30, 0x3d0
/* 80007790 000046D0  7C 03 00 40 */	cmplw r3, r0
/* 80007794 000046D4  40 82 00 0C */	bne lbl_800077A0
/* 80007798 000046D8  38 00 00 00 */	li r0, 0
/* 8000779C 000046DC  90 0D 86 04 */	stw r0, lbl_80450B84-_SDA_BASE_(r13)
lbl_800077A0:
/* 800077A0 000046E0  28 1E 00 00 */	cmplwi r30, 0
/* 800077A4 000046E4  41 82 00 68 */	beq lbl_8000780C
/* 800077A8 000046E8  38 7E 01 D4 */	addi r3, r30, 0x1d4
.global Z2MultiSeObj_NS_dtor
/* 800077AC 000046EC  3C 80 80 00 */	lis r4, Z2MultiSeObj_NS_dtor@ha
.global Z2MultiSeObj_NS_dtor
/* 800077B0 000046F0  38 84 78 88 */	addi r4, r4, Z2MultiSeObj_NS_dtor@l
/* 800077B4 000046F4  38 A0 00 24 */	li r5, 0x24
/* 800077B8 000046F8  38 C0 00 0A */	li r6, 0xa
/* 800077BC 000046FC  48 35 A5 2D */	bl func_80361CE8
/* 800077C0 00004700  38 7E 00 68 */	addi r3, r30, 0x68
.global Z2MultiSeObj_NS_dtor
/* 800077C4 00004704  3C 80 80 00 */	lis r4, Z2MultiSeObj_NS_dtor@ha
.global Z2MultiSeObj_NS_dtor
/* 800077C8 00004708  38 84 78 88 */	addi r4, r4, Z2MultiSeObj_NS_dtor@l
/* 800077CC 0000470C  38 A0 00 24 */	li r5, 0x24
/* 800077D0 00004710  38 C0 00 0A */	li r6, 0xa
/* 800077D4 00004714  48 35 A5 15 */	bl func_80361CE8
/* 800077D8 00004718  7F C3 F3 78 */	mr r3, r30
.global JAISoundHandle_NS_dtor
/* 800077DC 0000471C  3C 80 80 00 */	lis r4, JAISoundHandle_NS_dtor@ha
.global JAISoundHandle_NS_dtor
/* 800077E0 00004720  38 84 78 38 */	addi r4, r4, JAISoundHandle_NS_dtor@l
/* 800077E4 00004724  38 A0 00 04 */	li r5, 4
/* 800077E8 00004728  38 C0 00 18 */	li r6, 0x18
/* 800077EC 0000472C  48 35 A4 FD */	bl func_80361CE8
/* 800077F0 00004730  28 1E 00 00 */	cmplwi r30, 0
/* 800077F4 00004734  41 82 00 18 */	beq lbl_8000780C
/* 800077F8 00004738  80 0D 86 08 */	lwz r0, lbl_80450B88-_SDA_BASE_(r13)
/* 800077FC 0000473C  7C 00 F0 40 */	cmplw r0, r30
/* 80007800 00004740  40 82 00 0C */	bne lbl_8000780C
/* 80007804 00004744  38 00 00 00 */	li r0, 0
/* 80007808 00004748  90 0D 86 08 */	stw r0, lbl_80450B88-_SDA_BASE_(r13)
lbl_8000780C:
/* 8000780C 0000474C  7F E0 07 35 */	extsh. r0, r31
/* 80007810 00004750  40 81 00 0C */	ble lbl_8000781C
/* 80007814 00004754  7F C3 F3 78 */	mr r3, r30
/* 80007818 00004758  48 2C 75 25 */	bl __dl__FPv
lbl_8000781C:
/* 8000781C 0000475C  7F C3 F3 78 */	mr r3, r30
/* 80007820 00004760  39 61 00 20 */	addi r11, r1, 0x20
/* 80007824 00004764  48 35 AA 05 */	bl _restgpr_29
/* 80007828 00004768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000782C 0000476C  7C 08 03 A6 */	mtlr r0
/* 80007830 00004770  38 21 00 20 */	addi r1, r1, 0x20
/* 80007834 00004774  4E 80 00 20 */	blr 
.global JAISoundHandle_NS_dtor
JAISoundHandle_NS_dtor:
/* 80007838 00004778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000783C 0000477C  7C 08 02 A6 */	mflr r0
/* 80007840 00004780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007844 00004784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80007848 00004788  93 C1 00 08 */	stw r30, 8(r1)
/* 8000784C 0000478C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80007850 00004790  7C 9F 23 78 */	mr r31, r4
/* 80007854 00004794  41 82 00 18 */	beq lbl_8000786C
/* 80007858 00004798  48 29 A9 2D */	bl releaseSound__14JAISoundHandleFv
/* 8000785C 0000479C  7F E0 07 35 */	extsh. r0, r31
/* 80007860 000047A0  40 81 00 0C */	ble lbl_8000786C
/* 80007864 000047A4  7F C3 F3 78 */	mr r3, r30
/* 80007868 000047A8  48 2C 74 D5 */	bl __dl__FPv
lbl_8000786C:
/* 8000786C 000047AC  7F C3 F3 78 */	mr r3, r30
/* 80007870 000047B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80007874 000047B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80007878 000047B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000787C 000047BC  7C 08 03 A6 */	mtlr r0
/* 80007880 000047C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80007884 000047C4  4E 80 00 20 */	blr 
.global Z2MultiSeObj_NS_dtor
Z2MultiSeObj_NS_dtor:
/* 80007888 000047C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000788C 000047CC  7C 08 02 A6 */	mflr r0
/* 80007890 000047D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007894 000047D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80007898 000047D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8000789C 000047DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800078A0 000047E0  7C 9F 23 78 */	mr r31, r4
/* 800078A4 000047E4  41 82 00 1C */	beq lbl_800078C0
/* 800078A8 000047E8  38 80 00 00 */	li r4, 0
/* 800078AC 000047EC  48 2A 72 89 */	bl __dt__12Z2MultiSeMgrFv
/* 800078B0 000047F0  7F E0 07 35 */	extsh. r0, r31
/* 800078B4 000047F4  40 81 00 0C */	ble lbl_800078C0
/* 800078B8 000047F8  7F C3 F3 78 */	mr r3, r30
/* 800078BC 000047FC  48 2C 74 81 */	bl __dl__FPv
lbl_800078C0:
/* 800078C0 00004800  7F C3 F3 78 */	mr r3, r30
/* 800078C4 00004804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800078C8 00004808  83 C1 00 08 */	lwz r30, 8(r1)
/* 800078CC 0000480C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800078D0 00004810  7C 08 03 A6 */	mtlr r0
/* 800078D4 00004814  38 21 00 10 */	addi r1, r1, 0x10
/* 800078D8 00004818  4E 80 00 20 */	blr 
.global JAISeCategoryMgr_NS_dtor
JAISeCategoryMgr_NS_dtor:
/* 800078DC 0000481C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800078E0 00004820  7C 08 02 A6 */	mflr r0
/* 800078E4 00004824  90 01 00 14 */	stw r0, 0x14(r1)
/* 800078E8 00004828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800078EC 0000482C  93 C1 00 08 */	stw r30, 8(r1)
/* 800078F0 00004830  7C 7E 1B 79 */	or. r30, r3, r3
/* 800078F4 00004834  7C 9F 23 78 */	mr r31, r4
/* 800078F8 00004838  41 82 00 40 */	beq lbl_80007938
/* 800078FC 0000483C  3C 60 80 3D */	lis r3, lbl_803C98C4@ha
/* 80007900 00004840  38 03 98 C4 */	addi r0, r3, lbl_803C98C4@l
/* 80007904 00004844  90 1E 00 00 */	stw r0, 0(r30)
/* 80007908 00004848  34 1E 00 58 */	addic. r0, r30, 0x58
/* 8000790C 0000484C  41 82 00 10 */	beq lbl_8000791C
/* 80007910 00004850  38 7E 00 58 */	addi r3, r30, 0x58
/* 80007914 00004854  38 80 00 00 */	li r4, 0
/* 80007918 00004858  48 2D 45 95 */	bl __dt__10JSUPtrListFv
lbl_8000791C:
/* 8000791C 0000485C  7F C3 F3 78 */	mr r3, r30
/* 80007920 00004860  38 80 00 00 */	li r4, 0
/* 80007924 00004864  48 29 9E 51 */	bl JAISeqDataUser_NS_dtor
/* 80007928 00004868  7F E0 07 35 */	extsh. r0, r31
/* 8000792C 0000486C  40 81 00 0C */	ble lbl_80007938
/* 80007930 00004870  7F C3 F3 78 */	mr r3, r30
/* 80007934 00004874  48 2C 74 09 */	bl __dl__FPv
lbl_80007938:
/* 80007938 00004878  7F C3 F3 78 */	mr r3, r30
/* 8000793C 0000487C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80007940 00004880  83 C1 00 08 */	lwz r30, 8(r1)
/* 80007944 00004884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007948 00004888  7C 08 03 A6 */	mtlr r0
/* 8000794C 0000488C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007950 00004890  4E 80 00 20 */	blr 

