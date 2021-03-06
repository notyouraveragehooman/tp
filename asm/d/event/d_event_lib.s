.include "macros.inc"

.section .text, "ax" # 8004886c


/* 8004886C 000457AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048870 000457B0  7C 08 02 A6 */	mflr r0
/* 80048874 000457B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048878 000457B8  80 03 00 08 */	lwz r0, 8(r3)
/* 8004887C 000457BC  28 00 00 00 */	cmplwi r0, 0
/* 80048880 000457C0  40 82 00 0C */	bne lbl_8004888C
/* 80048884 000457C4  38 60 00 00 */	li r3, 0
/* 80048888 000457C8  48 00 00 0C */	b lbl_80048894
lbl_8004888C:
/* 8004888C 000457CC  48 00 01 6D */	bl dEvLib_callback_c_NS_executeAction
/* 80048890 000457D0  38 60 00 01 */	li r3, 1
lbl_80048894:
/* 80048894 000457D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048898 000457D8  7C 08 03 A6 */	mtlr r0
/* 8004889C 000457DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800488A0 000457E0  4E 80 00 20 */	blr 

.global dEvLib_callback_c_NS_setEvent
dEvLib_callback_c_NS_setEvent:
/* 800488A4 000457E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800488A8 000457E8  7C 08 02 A6 */	mflr r0
/* 800488AC 000457EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800488B0 000457F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800488B4 000457F4  93 C1 00 08 */	stw r30, 8(r1)
/* 800488B8 000457F8  7C 7E 1B 78 */	mr r30, r3
/* 800488BC 000457FC  7C DF 33 78 */	mr r31, r6
/* 800488C0 00045800  80 03 00 08 */	lwz r0, 8(r3)
/* 800488C4 00045804  28 00 00 00 */	cmplwi r0, 0
/* 800488C8 00045808  41 82 00 0C */	beq lbl_800488D4
/* 800488CC 0004580C  38 60 00 00 */	li r3, 0
/* 800488D0 00045810  48 00 00 58 */	b lbl_80048928
lbl_800488D4:
/* 800488D4 00045814  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800488D8 00045818  80 7E 00 04 */	lwz r3, 4(r30)
/* 800488DC 0004581C  98 83 00 FE */	stb r4, 0xfe(r3)
/* 800488E0 00045820  2C 04 00 FF */	cmpwi r4, 0xff
/* 800488E4 00045824  41 82 00 28 */	beq lbl_8004890C
/* 800488E8 00045828  2C 05 00 FF */	cmpwi r5, 0xff
/* 800488EC 0004582C  40 82 00 20 */	bne lbl_8004890C
/* 800488F0 00045830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800488F4 00045834  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800488F8 00045838  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800488FC 0004583C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80048900 00045840  7C 05 03 78 */	mr r5, r0
/* 80048904 00045844  4B FF ED 95 */	bl dEvent_manager_c_NS_getEventIdx_X1_
/* 80048908 00045848  7C 65 07 34 */	extsh r5, r3
lbl_8004890C:
/* 8004890C 0004584C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80048910 00045850  B0 A3 00 FC */	sth r5, 0xfc(r3)
/* 80048914 00045854  B3 FE 00 0C */	sth r31, 0xc(r30)
/* 80048918 00045858  7F C3 F3 78 */	mr r3, r30
/* 8004891C 0004585C  3C 80 80 42 */	lis r4, lbl_804246E0@ha
/* 80048920 00045860  38 84 46 E0 */	addi r4, r4, lbl_804246E0@l
/* 80048924 00045864  48 00 00 4D */	bl dEvLib_callback_c_NS_setAction
lbl_80048928:
/* 80048928 00045868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004892C 0004586C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80048930 00045870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048934 00045874  7C 08 03 A6 */	mtlr r0
/* 80048938 00045878  38 21 00 10 */	addi r1, r1, 0x10
/* 8004893C 0004587C  4E 80 00 20 */	blr 
/* 80048940 00045880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048944 00045884  7C 08 02 A6 */	mflr r0
/* 80048948 00045888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004894C 0004588C  2C 06 00 00 */	cmpwi r6, 0
/* 80048950 00045890  38 C0 00 01 */	li r6, 1
/* 80048954 00045894  41 82 00 08 */	beq lbl_8004895C
/* 80048958 00045898  38 C0 01 01 */	li r6, 0x101
lbl_8004895C:
/* 8004895C 0004589C  4B FF FF 49 */	bl dEvLib_callback_c_NS_setEvent
/* 80048960 000458A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048964 000458A4  7C 08 03 A6 */	mtlr r0
/* 80048968 000458A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004896C 000458AC  4E 80 00 20 */	blr 

.global dEvLib_callback_c_NS_setAction
dEvLib_callback_c_NS_setAction:
/* 80048970 000458B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048974 000458B4  7C 08 02 A6 */	mflr r0
/* 80048978 000458B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004897C 000458BC  90 83 00 08 */	stw r4, 8(r3)
/* 80048980 000458C0  80 03 00 08 */	lwz r0, 8(r3)
/* 80048984 000458C4  28 00 00 00 */	cmplwi r0, 0
/* 80048988 000458C8  40 82 00 0C */	bne lbl_80048994
/* 8004898C 000458CC  38 60 00 00 */	li r3, 0
/* 80048990 000458D0  48 00 00 08 */	b lbl_80048998
lbl_80048994:
/* 80048994 000458D4  48 00 00 15 */	bl dEvLib_callback_c_NS_initAction
lbl_80048998:
/* 80048998 000458D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004899C 000458DC  7C 08 03 A6 */	mtlr r0
/* 800489A0 000458E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800489A4 000458E4  4E 80 00 20 */	blr 

.global dEvLib_callback_c_NS_initAction
dEvLib_callback_c_NS_initAction:
/* 800489A8 000458E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800489AC 000458EC  7C 08 02 A6 */	mflr r0
/* 800489B0 000458F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800489B4 000458F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800489B8 000458F8  7C 7F 1B 78 */	mr r31, r3
/* 800489BC 000458FC  80 63 00 08 */	lwz r3, 8(r3)
/* 800489C0 00045900  48 31 96 59 */	bl func_80362018
/* 800489C4 00045904  2C 03 00 00 */	cmpwi r3, 0
/* 800489C8 00045908  40 82 00 0C */	bne lbl_800489D4
/* 800489CC 0004590C  38 60 00 01 */	li r3, 1
/* 800489D0 00045910  48 00 00 14 */	b lbl_800489E4
lbl_800489D4:
/* 800489D4 00045914  81 9F 00 08 */	lwz r12, 8(r31)
/* 800489D8 00045918  7F E3 FB 78 */	mr r3, r31
/* 800489DC 0004591C  48 31 96 A9 */	bl func_80362084
/* 800489E0 00045920  60 00 00 00 */	nop 
lbl_800489E4:
/* 800489E4 00045924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800489E8 00045928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800489EC 0004592C  7C 08 03 A6 */	mtlr r0
/* 800489F0 00045930  38 21 00 10 */	addi r1, r1, 0x10
/* 800489F4 00045934  4E 80 00 20 */	blr 

.global dEvLib_callback_c_NS_executeAction
dEvLib_callback_c_NS_executeAction:
/* 800489F8 00045938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800489FC 0004593C  7C 08 02 A6 */	mflr r0
/* 80048A00 00045940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048A04 00045944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80048A08 00045948  7C 7F 1B 78 */	mr r31, r3
/* 80048A0C 0004594C  80 63 00 08 */	lwz r3, 8(r3)
/* 80048A10 00045950  38 63 00 0C */	addi r3, r3, 0xc
/* 80048A14 00045954  48 31 96 05 */	bl func_80362018
/* 80048A18 00045958  2C 03 00 00 */	cmpwi r3, 0
/* 80048A1C 0004595C  40 82 00 0C */	bne lbl_80048A28
/* 80048A20 00045960  38 60 00 01 */	li r3, 1
/* 80048A24 00045964  48 00 00 18 */	b lbl_80048A3C
lbl_80048A28:
/* 80048A28 00045968  80 7F 00 08 */	lwz r3, 8(r31)
/* 80048A2C 0004596C  39 83 00 0C */	addi r12, r3, 0xc
/* 80048A30 00045970  7F E3 FB 78 */	mr r3, r31
/* 80048A34 00045974  48 31 96 51 */	bl func_80362084
/* 80048A38 00045978  60 00 00 00 */	nop 
lbl_80048A3C:
/* 80048A3C 0004597C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80048A40 00045980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048A44 00045984  7C 08 03 A6 */	mtlr r0
/* 80048A48 00045988  38 21 00 10 */	addi r1, r1, 0x10
/* 80048A4C 0004598C  4E 80 00 20 */	blr 
/* 80048A50 00045990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048A54 00045994  7C 08 02 A6 */	mflr r0
/* 80048A58 00045998  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048A5C 0004599C  48 00 00 15 */	bl dEvLib_callback_c_NS_executeStart
/* 80048A60 000459A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048A64 000459A4  7C 08 03 A6 */	mtlr r0
/* 80048A68 000459A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80048A6C 000459AC  4E 80 00 20 */	blr 

.global dEvLib_callback_c_NS_executeStart
dEvLib_callback_c_NS_executeStart:
/* 80048A70 000459B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048A74 000459B4  7C 08 02 A6 */	mflr r0
/* 80048A78 000459B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048A7C 000459BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80048A80 000459C0  7C 7F 1B 78 */	mr r31, r3
/* 80048A84 000459C4  80 C3 00 04 */	lwz r6, 4(r3)
/* 80048A88 000459C8  A0 06 00 F8 */	lhz r0, 0xf8(r6)
/* 80048A8C 000459CC  28 00 00 02 */	cmplwi r0, 2
/* 80048A90 000459D0  41 82 00 6C */	beq lbl_80048AFC
/* 80048A94 000459D4  88 06 00 FE */	lbz r0, 0xfe(r6)
/* 80048A98 000459D8  28 00 00 FF */	cmplwi r0, 0xff
/* 80048A9C 000459DC  41 82 00 28 */	beq lbl_80048AC4
/* 80048AA0 000459E0  A8 A6 00 FC */	lha r5, 0xfc(r6)
/* 80048AA4 000459E4  7C C3 33 78 */	mr r3, r6
/* 80048AA8 000459E8  7C 04 03 78 */	mr r4, r0
/* 80048AAC 000459EC  3C C0 00 01 */	lis r6, 0x0000FFFF@ha
/* 80048AB0 000459F0  38 C6 FF FF */	addi r6, r6, 0x0000FFFF@l
/* 80048AB4 000459F4  A0 FF 00 0C */	lhz r7, 0xc(r31)
/* 80048AB8 000459F8  39 00 00 00 */	li r8, 0
/* 80048ABC 000459FC  4B FD 2C F9 */	bl fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs
/* 80048AC0 00045A00  48 00 00 24 */	b lbl_80048AE4
lbl_80048AC4:
/* 80048AC4 00045A04  A8 86 00 FC */	lha r4, 0xfc(r6)
/* 80048AC8 00045A08  7C C3 33 78 */	mr r3, r6
/* 80048ACC 00045A0C  7C 05 03 78 */	mr r5, r0
/* 80048AD0 00045A10  3C C0 00 01 */	lis r6, 0x0000FFFF@ha
/* 80048AD4 00045A14  38 C6 FF FF */	addi r6, r6, 0x0000FFFF@l
/* 80048AD8 00045A18  38 E0 00 00 */	li r7, 0
/* 80048ADC 00045A1C  A1 1F 00 0C */	lhz r8, 0xc(r31)
/* 80048AE0 00045A20  4B FD 2B 9D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80048AE4:
/* 80048AE4 00045A24  80 7F 00 04 */	lwz r3, 4(r31)
/* 80048AE8 00045A28  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80048AEC 00045A2C  60 00 00 02 */	ori r0, r0, 2
/* 80048AF0 00045A30  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 80048AF4 00045A34  38 60 00 01 */	li r3, 1
/* 80048AF8 00045A38  48 00 00 10 */	b lbl_80048B08
lbl_80048AFC:
/* 80048AFC 00045A3C  3C 80 80 42 */	lis r4, lbl_804246F8@ha
/* 80048B00 00045A40  38 84 46 F8 */	addi r4, r4, lbl_804246F8@l
/* 80048B04 00045A44  4B FF FE 6D */	bl dEvLib_callback_c_NS_setAction
lbl_80048B08:
/* 80048B08 00045A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80048B0C 00045A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048B10 00045A50  7C 08 03 A6 */	mtlr r0
/* 80048B14 00045A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80048B18 00045A58  4E 80 00 20 */	blr 
/* 80048B1C 00045A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048B20 00045A60  7C 08 02 A6 */	mflr r0
/* 80048B24 00045A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048B28 00045A68  81 83 00 00 */	lwz r12, 0(r3)
/* 80048B2C 00045A6C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80048B30 00045A70  7D 89 03 A6 */	mtctr r12
/* 80048B34 00045A74  4E 80 04 21 */	bctrl 
/* 80048B38 00045A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048B3C 00045A7C  7C 08 03 A6 */	mtlr r0
/* 80048B40 00045A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80048B44 00045A84  4E 80 00 20 */	blr 
/* 80048B48 00045A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048B4C 00045A8C  7C 08 02 A6 */	mflr r0
/* 80048B50 00045A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048B54 00045A94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80048B58 00045A98  93 C1 00 08 */	stw r30, 8(r1)
/* 80048B5C 00045A9C  7C 7E 1B 78 */	mr r30, r3
/* 80048B60 00045AA0  80 63 00 04 */	lwz r3, 4(r3)
/* 80048B64 00045AA4  A8 83 00 FC */	lha r4, 0xfc(r3)
/* 80048B68 00045AA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80048B6C 00045AAC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80048B70 00045AB0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80048B74 00045AB4  4B FF EF 05 */	bl dEvent_manager_c_NS_endCheck
/* 80048B78 00045AB8  2C 03 00 00 */	cmpwi r3, 0
/* 80048B7C 00045ABC  40 82 00 1C */	bne lbl_80048B98
/* 80048B80 00045AC0  7F C3 F3 78 */	mr r3, r30
/* 80048B84 00045AC4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80048B88 00045AC8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80048B8C 00045ACC  7D 89 03 A6 */	mtctr r12
/* 80048B90 00045AD0  4E 80 04 21 */	bctrl 
/* 80048B94 00045AD4  48 00 00 2C */	b lbl_80048BC0
lbl_80048B98:
/* 80048B98 00045AD8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80048B9C 00045ADC  4B FF 98 CD */	bl dEvt_control_c_NS_reset
/* 80048BA0 00045AE0  7F C3 F3 78 */	mr r3, r30
/* 80048BA4 00045AE4  38 80 00 00 */	li r4, 0
/* 80048BA8 00045AE8  4B FF FD C9 */	bl dEvLib_callback_c_NS_setAction
/* 80048BAC 00045AEC  7F C3 F3 78 */	mr r3, r30
/* 80048BB0 00045AF0  81 9E 00 00 */	lwz r12, 0(r30)
/* 80048BB4 00045AF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80048BB8 00045AF8  7D 89 03 A6 */	mtctr r12
/* 80048BBC 00045AFC  4E 80 04 21 */	bctrl 
lbl_80048BC0:
/* 80048BC0 00045B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80048BC4 00045B04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80048BC8 00045B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048BCC 00045B0C  7C 08 03 A6 */	mtlr r0
/* 80048BD0 00045B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80048BD4 00045B14  4E 80 00 20 */	blr 
/* 80048BD8 00045B18  3C 60 80 3B */	lis r3, lbl_803A82B8@ha
/* 80048BDC 00045B1C  38 A3 82 B8 */	addi r5, r3, lbl_803A82B8@l
/* 80048BE0 00045B20  3C 60 80 42 */	lis r3, lbl_804246E0@ha
/* 80048BE4 00045B24  38 83 46 E0 */	addi r4, r3, lbl_804246E0@l
/* 80048BE8 00045B28  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80048BEC 00045B2C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80048BF0 00045B30  90 64 00 00 */	stw r3, 0(r4)
/* 80048BF4 00045B34  90 04 00 04 */	stw r0, 4(r4)
/* 80048BF8 00045B38  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80048BFC 00045B3C  90 04 00 08 */	stw r0, 8(r4)
/* 80048C00 00045B40  80 65 00 18 */	lwz r3, 0x18(r5)
/* 80048C04 00045B44  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 80048C08 00045B48  90 64 00 0C */	stw r3, 0xc(r4)
/* 80048C0C 00045B4C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80048C10 00045B50  80 05 00 20 */	lwz r0, 0x20(r5)
/* 80048C14 00045B54  90 04 00 14 */	stw r0, 0x14(r4)
/* 80048C18 00045B58  3C 60 80 42 */	lis r3, lbl_804246F8@ha
/* 80048C1C 00045B5C  38 83 46 F8 */	addi r4, r3, lbl_804246F8@l
/* 80048C20 00045B60  80 65 00 24 */	lwz r3, 0x24(r5)
/* 80048C24 00045B64  80 05 00 28 */	lwz r0, 0x28(r5)
/* 80048C28 00045B68  90 64 00 00 */	stw r3, 0(r4)
/* 80048C2C 00045B6C  90 04 00 04 */	stw r0, 4(r4)
/* 80048C30 00045B70  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 80048C34 00045B74  90 04 00 08 */	stw r0, 8(r4)
/* 80048C38 00045B78  80 65 00 30 */	lwz r3, 0x30(r5)
/* 80048C3C 00045B7C  80 05 00 34 */	lwz r0, 0x34(r5)
/* 80048C40 00045B80  90 64 00 0C */	stw r3, 0xc(r4)
/* 80048C44 00045B84  90 04 00 10 */	stw r0, 0x10(r4)
/* 80048C48 00045B88  80 05 00 38 */	lwz r0, 0x38(r5)
/* 80048C4C 00045B8C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80048C50 00045B90  4E 80 00 20 */	blr 

