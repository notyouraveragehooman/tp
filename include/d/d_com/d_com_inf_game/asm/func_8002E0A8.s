/* 8002E0A8 0002AFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E0AC 0002AFEC  7C 08 02 A6 */	mflr r0
/* 8002E0B0 0002AFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E0B4 0002AFF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E0B8 0002AFF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E0BC 0002AFFC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002E0C0 0002B000  38 80 1D 01 */	li r4, 0x1d01
/* 8002E0C4 0002B004  48 00 68 F9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002E0C8 0002B008  7C 60 00 34 */	cntlzw r0, r3
/* 8002E0CC 0002B00C  54 03 D9 7E */	srwi r3, r0, 5
/* 8002E0D0 0002B010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E0D4 0002B014  7C 08 03 A6 */	mtlr r0
/* 8002E0D8 0002B018  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E0DC 0002B01C  4E 80 00 20 */	blr 