/* 801171F4 00114134  94 21 FF 70 */ stwu r1, -0x90(r1)
/* 801171F8 00114138  7C 08 02 A6 */ mflr r0
/* 801171FC 0011413C  90 01 00 94 */ stw r0, 0x94(r1)
/* 80117200 00114140  39 61 00 90 */ addi r11, r1, 0x90
/* 80117204 00114144  48 24 AF C1 */ bl _savegpr_23
/* 80117208 00114148  7C 7F 1B 78 */ mr r31, r3
/* 8011720C 0011414C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80117210 00114150  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
/* 80117214 00114154  38 00 00 00 */ li r0, 0
/* 80117218 00114158  88 7E 4F AD */ lbz r3, 0x4fad(r30)
/* 8011721C 0011415C  28 03 00 00 */ cmplwi r3, 0
/* 80117220 00114160  41 82 00 0C */ beq lbl_8011722C
/* 80117224 00114164  28 03 00 02 */ cmplwi r3, 2
/* 80117228 00114168  40 82 00 08 */ bne lbl_80117230
lbl_8011722C:
/* 8011722C 0011416C  38 00 00 01 */ li r0, 1
lbl_80117230:
/* 80117230 00114170  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 80117234 00114174  41 82 00 3C */ beq lbl_80117270
/* 80117238 00114178  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 8011723C 0011417C  2C 00 00 00 */ cmpwi r0, 0
/* 80117240 00114180  41 82 00 18 */ beq lbl_80117258
/* 80117244 00114184  88 1F 2F BF */ lbz r0, 0x2fbf(r31)
/* 80117248 00114188  28 00 00 00 */ cmplwi r0, 0
/* 8011724C 0011418C  40 82 00 0C */ bne lbl_80117258
/* 80117250 00114190  7F E3 FB 78 */ mr r3, r31
/* 80117254 00114194  48 00 0A A5 */ bl daAlink_c_NS_endDemoMode
lbl_80117258:
/* 80117258 00114198  88 7F 2F B2 */ lbz r3, 0x2fb2(r31)
/* 8011725C 0011419C  28 03 00 00 */ cmplwi r3, 0
/* 80117260 001141A0  41 82 09 18 */ beq lbl_80117B78
/* 80117264 001141A4  38 03 FF FF */ addi r0, r3, -1
/* 80117268 001141A8  98 1F 2F B2 */ stb r0, 0x2fb2(r31)
/* 8011726C 001141AC  48 00 09 0C */ b lbl_80117B78
lbl_80117270:
/* 80117270 001141B0  80 6D 88 A0 */ lwz r3, lbl_80450E20-_SDA_BASE_(r13)
/* 80117274 001141B4  88 9F 04 98 */ lbz r4, 0x498(r31)
/* 80117278 001141B8  4B F2 1E 11 */ bl dDemo_object_c_NS_getActor
/* 8011727C 001141BC  7C 7C 1B 78 */ mr r28, r3
/* 80117280 001141C0  3B 40 00 00 */ li r26, 0
/* 80117284 001141C4  38 00 00 01 */ li r0, 1
/* 80117288 001141C8  90 01 00 18 */ stw r0, 0x18(r1)
/* 8011728C 001141CC  3B 00 00 00 */ li r24, 0
/* 80117290 001141D0  3A E0 00 00 */ li r23, 0
/* 80117294 001141D4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80117298 001141D8  3B A3 61 C0 */ addi r29, r3, g_dComIfG_gameInfo@l
/* 8011729C 001141DC  80 1D 5F 18 */ lwz r0, 0x5f18(r29)
/* 801172A0 001141E0  54 00 02 D0 */ rlwinm r0, r0, 0, 0xb, 8
/* 801172A4 001141E4  90 1D 5F 18 */ stw r0, 0x5f18(r29)
/* 801172A8 001141E8  80 1F 05 7C */ lwz r0, 0x57c(r31)
/* 801172AC 001141EC  54 00 03 98 */ rlwinm r0, r0, 0, 0xe, 0xc
/* 801172B0 001141F0  90 1F 05 7C */ stw r0, 0x57c(r31)
/* 801172B4 001141F4  38 00 00 00 */ li r0, 0
/* 801172B8 001141F8  B0 1F 30 D0 */ sth r0, 0x30d0(r31)
/* 801172BC 001141FC  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 801172C0 00114200  28 00 01 3E */ cmplwi r0, 0x13e
/* 801172C4 00114204  40 82 00 28 */ bne lbl_801172EC
/* 801172C8 00114208  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 801172CC 0011420C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 801172D0 00114210  41 82 00 10 */ beq lbl_801172E0
/* 801172D4 00114214  7F E3 FB 78 */ mr r3, r31
/* 801172D8 00114218  48 01 5E D1 */ bl daAlink_c_NS_procWolfWaitInit
/* 801172DC 0011421C  48 00 00 40 */ b lbl_8011731C
lbl_801172E0:
/* 801172E0 00114220  7F E3 FB 78 */ mr r3, r31
/* 801172E4 00114224  4B FA C0 D5 */ bl daAlink_c_NS_procWaitInit
/* 801172E8 00114228  48 00 00 34 */ b lbl_8011731C
lbl_801172EC:
/* 801172EC 0011422C  28 00 01 3F */ cmplwi r0, 0x13f
/* 801172F0 00114230  40 82 00 2C */ bne lbl_8011731C
/* 801172F4 00114234  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 801172F8 00114238  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 801172FC 0011423C  41 82 00 14 */ beq lbl_80117310
/* 80117300 00114240  7F E3 FB 78 */ mr r3, r31
/* 80117304 00114244  38 80 00 00 */ li r4, 0
/* 80117308 00114248  48 02 12 25 */ bl daAlink_c_NS_procWolfSwimWaitInit
/* 8011730C 0011424C  48 00 00 10 */ b lbl_8011731C
lbl_80117310:
/* 80117310 00114250  7F E3 FB 78 */ mr r3, r31
/* 80117314 00114254  38 80 00 00 */ li r4, 0
/* 80117318 00114258  4B FE CF E1 */ bl daAlink_c_NS_procSwimWaitInit
lbl_8011731C:
/* 8011731C 0011425C  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 80117320 00114260  2C 00 00 04 */ cmpwi r0, 4
/* 80117324 00114264  40 82 00 1C */ bne lbl_80117340
/* 80117328 00114268  38 7E 4F F8 */ addi r3, r30, 0x4ff8
/* 8011732C 0011426C  4B F3 15 01 */ bl dEvent_manager_c_NS_checkStartDemo
/* 80117330 00114270  2C 03 00 00 */ cmpwi r3, 0
/* 80117334 00114274  40 82 00 0C */ bne lbl_80117340
/* 80117338 00114278  38 00 00 02 */ li r0, 2
/* 8011733C 0011427C  B0 1F 06 04 */ sth r0, 0x604(r31)
lbl_80117340:
/* 80117340 00114280  28 1C 00 00 */ cmplwi r28, 0
/* 80117344 00114284  41 82 01 58 */ beq lbl_8011749C
/* 80117348 00114288  80 1F 06 50 */ lwz r0, 0x650(r31)
/* 8011734C 0011428C  90 1C 00 48 */ stw r0, 0x48(r28)
/* 80117350 00114290  38 00 FF FF */ li r0, -1
/* 80117354 00114294  90 1F 31 84 */ stw r0, 0x3184(r31)
/* 80117358 00114298  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 8011735C 0011429C  2C 00 00 01 */ cmpwi r0, 1
/* 80117360 001142A0  41 82 00 A0 */ beq lbl_80117400
/* 80117364 001142A4  38 00 00 01 */ li r0, 1
/* 80117368 001142A8  B0 1F 06 04 */ sth r0, 0x604(r31)
/* 8011736C 001142AC  90 1F 06 14 */ stw r0, 0x614(r31)
/* 80117370 001142B0  7F E3 FB 78 */ mr r3, r31
/* 80117374 001142B4  4B FC D8 61 */ bl daAlink_c_NS_freeGrabItem
/* 80117378 001142B8  38 7E 4F F8 */ addi r3, r30, 0x4ff8
/* 8011737C 001142BC  3C 80 80 39 */ lis r4, lbl_80392094@ha
/* 80117380 001142C0  38 84 20 94 */ addi r4, r4, lbl_80392094@l
/* 80117384 001142C4  38 84 00 D0 */ addi r4, r4, 0xd0
/* 80117388 001142C8  4B F3 06 B1 */ bl dEvent_manager_c_NS_startCheckOld
/* 8011738C 001142CC  2C 03 00 00 */ cmpwi r3, 0
/* 80117390 001142D0  41 82 00 24 */ beq lbl_801173B4
/* 80117394 001142D4  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 80117398 001142D8  28 00 00 42 */ cmplwi r0, 0x42
/* 8011739C 001142DC  40 82 00 28 */ bne lbl_801173C4
/* 801173A0 001142E0  7F E3 FB 78 */ mr r3, r31
/* 801173A4 001142E4  38 80 00 00 */ li r4, 0
/* 801173A8 001142E8  38 A0 00 00 */ li r5, 0
/* 801173AC 001142EC  4B FA 9F 31 */ bl daAlink_c_NS_deleteEquipItem
/* 801173B0 001142F0  48 00 00 14 */ b lbl_801173C4
lbl_801173B4:
/* 801173B4 001142F4  7F E3 FB 78 */ mr r3, r31
/* 801173B8 001142F8  38 80 00 00 */ li r4, 0
/* 801173BC 001142FC  38 A0 00 01 */ li r5, 1
/* 801173C0 00114300  4B FA 9F 1D */ bl daAlink_c_NS_deleteEquipItem
lbl_801173C4:
/* 801173C4 00114304  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 801173C8 00114308  28 00 01 9C */ cmplwi r0, 0x19c
/* 801173CC 0011430C  40 82 00 14 */ bne lbl_801173E0
/* 801173D0 00114310  7F E3 FB 78 */ mr r3, r31
/* 801173D4 00114314  38 80 00 02 */ li r4, 2
/* 801173D8 00114318  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 801173DC 0011431C  4B F9 63 49 */ bl daAlink_c_NS_resetUpperAnime
lbl_801173E0:
/* 801173E0 00114320  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 801173E4 00114324  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 801173E8 00114328  41 82 00 10 */ beq lbl_801173F8
/* 801173EC 0011432C  7F E3 FB 78 */ mr r3, r31
/* 801173F0 00114330  48 01 5D B9 */ bl daAlink_c_NS_procWolfWaitInit
/* 801173F4 00114334  48 00 00 0C */ b lbl_80117400
lbl_801173F8:
/* 801173F8 00114338  7F E3 FB 78 */ mr r3, r31
/* 801173FC 0011433C  4B FA BF BD */ bl daAlink_c_NS_procWaitInit
lbl_80117400:
/* 80117400 00114340  A0 1C 00 04 */ lhz r0, 4(r28)
/* 80117404 00114344  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80117408 00114348  41 82 00 0C */ beq lbl_80117414
/* 8011740C 0011434C  80 1C 00 2C */ lwz r0, 0x2c(r28)
/* 80117410 00114350  48 00 00 08 */ b lbl_80117418
lbl_80117414:
/* 80117414 00114354  80 1F 06 14 */ lwz r0, 0x614(r31)
lbl_80117418:
/* 80117418 00114358  90 01 00 18 */ stw r0, 0x18(r1)
/* 8011741C 0011435C  A0 7C 00 04 */ lhz r3, 4(r28)
/* 80117420 00114360  54 60 07 BD */ rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80117424 00114364  41 82 00 0C */ beq lbl_80117430
/* 80117428 00114368  3B 5C 00 08 */ addi r26, r28, 8
/* 8011742C 0011436C  48 00 00 08 */ b lbl_80117434
lbl_80117430:
/* 80117430 00114370  3B 5F 04 D0 */ addi r26, r31, 0x4d0
lbl_80117434:
/* 80117434 00114374  54 60 07 39 */ rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80117438 00114378  41 82 00 0C */ beq lbl_80117444
/* 8011743C 0011437C  AB 3C 00 22 */ lha r25, 0x22(r28)
/* 80117440 00114380  48 00 00 34 */ b lbl_80117474
lbl_80117444:
/* 80117444 00114384  AB 3F 04 E6 */ lha r25, 0x4e6(r31)
/* 80117448 00114388  48 00 00 2C */ b lbl_80117474
lbl_8011744C:
/* 8011744C 0011438C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80117450 00114390  2C 00 00 00 */ cmpwi r0, 0
/* 80117454 00114394  40 82 00 20 */ bne lbl_80117474
/* 80117458 00114398  80 01 00 10 */ lwz r0, 0x10(r1)
/* 8011745C 0011439C  2C 00 00 00 */ cmpwi r0, 0
/* 80117460 001143A0  40 82 00 14 */ bne lbl_80117474
/* 80117464 001143A4  7F E3 FB 78 */ mr r3, r31
/* 80117468 001143A8  80 81 00 0C */ lwz r4, 0xc(r1)
/* 8011746C 001143AC  A0 A1 00 08 */ lhz r5, 8(r1)
/* 80117470 001143B0  4B FF FB F5 */ bl daAlink_c_NS_setNoDrawSwordShield
lbl_80117474:
/* 80117474 001143B4  7F 83 E3 78 */ mr r3, r28
/* 80117478 001143B8  38 81 00 14 */ addi r4, r1, 0x14
/* 8011747C 001143BC  38 A1 00 10 */ addi r5, r1, 0x10
/* 80117480 001143C0  38 C1 00 0C */ addi r6, r1, 0xc
/* 80117484 001143C4  38 E1 00 08 */ addi r7, r1, 8
/* 80117488 001143C8  39 00 00 00 */ li r8, 0
/* 8011748C 001143CC  4B F2 0E AD */ bl dDemo_actor_c_NS_getDemoIDData
/* 80117490 001143D0  2C 03 00 00 */ cmpwi r3, 0
/* 80117494 001143D4  40 82 FF B8 */ bne lbl_8011744C
/* 80117498 001143D8  48 00 03 38 */ b lbl_801177D0
lbl_8011749C:
/* 8011749C 001143DC  3B 80 00 00 */ li r28, 0
/* 801174A0 001143E0  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 801174A4 001143E4  2C 00 00 00 */ cmpwi r0, 0
/* 801174A8 001143E8  40 82 00 24 */ bne lbl_801174CC
/* 801174AC 001143EC  38 00 00 02 */ li r0, 2
/* 801174B0 001143F0  B0 1F 06 04 */ sth r0, 0x604(r31)
/* 801174B4 001143F4  3B 80 00 01 */ li r28, 1
/* 801174B8 001143F8  80 1F 06 14 */ lwz r0, 0x614(r31)
/* 801174BC 001143FC  28 00 00 00 */ cmplwi r0, 0
/* 801174C0 00114400  40 82 00 0C */ bne lbl_801174CC
/* 801174C4 00114404  38 00 00 41 */ li r0, 0x41
/* 801174C8 00114408  90 01 00 18 */ stw r0, 0x18(r1)
lbl_801174CC:
/* 801174CC 0011440C  80 1F 31 84 */ lwz r0, 0x3184(r31)
/* 801174D0 00114410  2C 00 FF FF */ cmpwi r0, -1
/* 801174D4 00114414  41 82 02 6C */ beq lbl_80117740
/* 801174D8 00114418  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 801174DC 0011441C  28 00 00 EA */ cmplwi r0, 0xea
/* 801174E0 00114420  40 82 00 0C */ bne lbl_801174EC
/* 801174E4 00114424  38 00 00 02 */ li r0, 2
/* 801174E8 00114428  B0 1F 06 04 */ sth r0, 0x604(r31)
lbl_801174EC:
/* 801174EC 0011442C  3B 7E 4F F8 */ addi r27, r30, 0x4ff8
/* 801174F0 00114430  7F 63 DB 78 */ mr r3, r27
/* 801174F4 00114434  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 801174F8 00114438  4B F3 0A 65 */ bl dEvent_manager_c_NS_getMyNowCutName
/* 801174FC 0011443C  28 03 00 00 */ cmplwi r3, 0
/* 80117500 00114440  41 82 02 40 */ beq lbl_80117740
/* 80117504 00114444  88 03 00 02 */ lbz r0, 2(r3)
/* 80117508 00114448  7C 05 07 74 */ extsb r5, r0
/* 8011750C 0011444C  88 03 00 00 */ lbz r0, 0(r3)
/* 80117510 00114450  7C 04 07 74 */ extsb r4, r0
/* 80117514 00114454  38 04 FF D0 */ addi r0, r4, -48
/* 80117518 00114458  1C 80 00 64 */ mulli r4, r0, 0x64
/* 8011751C 0011445C  88 03 00 01 */ lbz r0, 1(r3)
/* 80117520 00114460  7C 03 07 74 */ extsb r3, r0
/* 80117524 00114464  38 03 FF D0 */ addi r0, r3, -48
/* 80117528 00114468  1C 00 00 0A */ mulli r0, r0, 0xa
/* 8011752C 0011446C  7C 64 02 14 */ add r3, r4, r0
/* 80117530 00114470  7C 63 2A 14 */ add r3, r3, r5
/* 80117534 00114474  38 63 FF D0 */ addi r3, r3, -48
/* 80117538 00114478  90 61 00 18 */ stw r3, 0x18(r1)
/* 8011753C 0011447C  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 80117540 00114480  2C 00 00 04 */ cmpwi r0, 4
/* 80117544 00114484  41 82 00 40 */ beq lbl_80117584
/* 80117548 00114488  28 03 00 01 */ cmplwi r3, 1
/* 8011754C 0011448C  41 82 00 0C */ beq lbl_80117558
/* 80117550 00114490  28 03 00 17 */ cmplwi r3, 0x17
/* 80117554 00114494  40 82 00 30 */ bne lbl_80117584
lbl_80117558:
/* 80117558 00114498  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 8011755C 0011449C  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80117560 001144A0  41 82 00 24 */ beq lbl_80117584
/* 80117564 001144A4  80 9F 31 A0 */ lwz r4, 0x31a0(r31)
/* 80117568 001144A8  3C 60 00 07 */ lis r3, 0x00070C52@ha
/* 8011756C 001144AC  38 03 0C 52 */ addi r0, r3, 0x00070C52@l
/* 80117570 001144B0  7C 80 00 39 */ and. r0, r4, r0
/* 80117574 001144B4  40 82 00 10 */ bne lbl_80117584
/* 80117578 001144B8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011757C 001144BC  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 80117580 001144C0  D0 1F 05 2C */ stfs f0, 0x52c(r31)
lbl_80117584:
/* 80117584 001144C4  80 01 00 18 */ lwz r0, 0x18(r1)
/* 80117588 001144C8  28 00 00 32 */ cmplwi r0, 0x32
/* 8011758C 001144CC  40 82 00 48 */ bne lbl_801175D4
/* 80117590 001144D0  3A E0 00 01 */ li r23, 1
/* 80117594 001144D4  48 09 4F E9 */ bl dKy_darkworld_check
/* 80117598 001144D8  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8011759C 001144DC  28 00 00 01 */ cmplwi r0, 1
/* 801175A0 001144E0  41 82 00 24 */ beq lbl_801175C4
/* 801175A4 001144E4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801175A8 001144E8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801175AC 001144EC  38 63 00 28 */ addi r3, r3, 0x28
/* 801175B0 001144F0  38 80 00 03 */ li r4, 3
/* 801175B4 001144F4  4B F1 B6 39 */ bl isTransformLV__21dSv_player_status_b_cCFi
/* 801175B8 001144F8  2C 03 00 00 */ cmpwi r3, 0
/* 801175BC 001144FC  40 82 00 08 */ bne lbl_801175C4
/* 801175C0 00114500  3A E0 00 00 */ li r23, 0
lbl_801175C4:
/* 801175C4 00114504  56 E0 06 3F */ clrlwi. r0, r23, 0x18
/* 801175C8 00114508  40 82 00 0C */ bne lbl_801175D4
/* 801175CC 0011450C  38 00 00 01 */ li r0, 1
/* 801175D0 00114510  90 01 00 18 */ stw r0, 0x18(r1)
lbl_801175D4:
/* 801175D4 00114514  7F 63 DB 78 */ mr r3, r27
/* 801175D8 00114518  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 801175DC 0011451C  3C A0 80 39 */ lis r5, lbl_80392094@ha
/* 801175E0 00114520  38 A5 20 94 */ addi r5, r5, lbl_80392094@l
/* 801175E4 00114524  38 A5 00 DC */ addi r5, r5, 0xdc
/* 801175E8 00114528  38 C0 00 01 */ li r6, 1
/* 801175EC 0011452C  4B F3 0B 01 */ bl dEvent_manager_c_NS_getMySubstanceP
/* 801175F0 00114530  7C 7A 1B 78 */ mr r26, r3
/* 801175F4 00114534  28 03 00 00 */ cmplwi r3, 0
/* 801175F8 00114538  40 82 00 10 */ bne lbl_80117608
/* 801175FC 0011453C  7F 63 DB 78 */ mr r3, r27
/* 80117600 00114540  4B F3 0D E1 */ bl dEvent_manager_c_NS_getGoal
/* 80117604 00114544  7C 7A 1B 78 */ mr r26, r3
lbl_80117608:
/* 80117608 00114548  7F 63 DB 78 */ mr r3, r27
/* 8011760C 0011454C  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 80117610 00114550  3C A0 80 39 */ lis r5, lbl_80392094@ha
/* 80117614 00114554  38 A5 20 94 */ addi r5, r5, lbl_80392094@l
/* 80117618 00114558  38 A5 00 E0 */ addi r5, r5, 0xe0
/* 8011761C 0011455C  38 C0 00 03 */ li r6, 3
/* 80117620 00114560  4B F3 0A CD */ bl dEvent_manager_c_NS_getMySubstanceP
/* 80117624 00114564  28 03 00 00 */ cmplwi r3, 0
/* 80117628 00114568  41 82 00 10 */ beq lbl_80117638
/* 8011762C 0011456C  80 03 00 00 */ lwz r0, 0(r3)
/* 80117630 00114570  7C 19 07 34 */ extsh r25, r0
/* 80117634 00114574  48 00 00 1C */ b lbl_80117650
lbl_80117638:
/* 80117638 00114578  80 01 00 18 */ lwz r0, 0x18(r1)
/* 8011763C 0011457C  28 00 00 05 */ cmplwi r0, 5
/* 80117640 00114580  40 82 00 0C */ bne lbl_8011764C
/* 80117644 00114584  AB 3F 06 06 */ lha r25, 0x606(r31)
/* 80117648 00114588  48 00 00 08 */ b lbl_80117650
lbl_8011764C:
/* 8011764C 0011458C  AB 3F 04 E6 */ lha r25, 0x4e6(r31)
lbl_80117650:
/* 80117650 00114590  7F 63 DB 78 */ mr r3, r27
/* 80117654 00114594  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 80117658 00114598  3C A0 80 39 */ lis r5, lbl_80392094@ha
/* 8011765C 0011459C  38 A5 20 94 */ addi r5, r5, lbl_80392094@l
/* 80117660 001145A0  38 A5 00 E6 */ addi r5, r5, 0xe6
/* 80117664 001145A4  38 C0 00 03 */ li r6, 3
/* 80117668 001145A8  4B F3 0A 85 */ bl dEvent_manager_c_NS_getMySubstanceP
/* 8011766C 001145AC  7C 78 1B 78 */ mr r24, r3
/* 80117670 001145B0  7F 63 DB 78 */ mr r3, r27
/* 80117674 001145B4  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 80117678 001145B8  3C A0 80 39 */ lis r5, lbl_80392094@ha
/* 8011767C 001145BC  38 A5 20 94 */ addi r5, r5, lbl_80392094@l
/* 80117680 001145C0  38 A5 00 EB */ addi r5, r5, 0xeb
/* 80117684 001145C4  38 C0 00 03 */ li r6, 3
/* 80117688 001145C8  4B F3 0A 65 */ bl dEvent_manager_c_NS_getMySubstanceP
/* 8011768C 001145CC  7C 77 1B 78 */ mr r23, r3
/* 80117690 001145D0  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 80117694 001145D4  2C 00 00 02 */ cmpwi r0, 2
/* 80117698 001145D8  40 82 00 3C */ bne lbl_801176D4
/* 8011769C 001145DC  7F 63 DB 78 */ mr r3, r27
/* 801176A0 001145E0  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 801176A4 001145E4  3C A0 80 39 */ lis r5, lbl_80392094@ha
/* 801176A8 001145E8  38 A5 20 94 */ addi r5, r5, lbl_80392094@l
/* 801176AC 001145EC  38 A5 00 F0 */ addi r5, r5, 0xf0
/* 801176B0 001145F0  38 C0 00 00 */ li r6, 0
/* 801176B4 001145F4  4B F3 0A 39 */ bl dEvent_manager_c_NS_getMySubstanceP
/* 801176B8 001145F8  28 03 00 00 */ cmplwi r3, 0
/* 801176BC 001145FC  41 82 00 10 */ beq lbl_801176CC
/* 801176C0 00114600  C0 03 00 00 */ lfs f0, 0(r3)
/* 801176C4 00114604  D0 1F 06 18 */ stfs f0, 0x618(r31)
/* 801176C8 00114608  48 00 00 0C */ b lbl_801176D4
lbl_801176CC:
/* 801176CC 0011460C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 801176D0 00114610  D0 1F 06 18 */ stfs f0, 0x618(r31)
lbl_801176D4:
/* 801176D4 00114614  80 01 00 18 */ lwz r0, 0x18(r1)
/* 801176D8 00114618  28 00 00 02 */ cmplwi r0, 2
/* 801176DC 0011461C  41 82 00 0C */ beq lbl_801176E8
/* 801176E0 00114620  28 00 00 03 */ cmplwi r0, 3
/* 801176E4 00114624  40 82 00 5C */ bne lbl_80117740
lbl_801176E8:
/* 801176E8 00114628  28 17 00 00 */ cmplwi r23, 0
/* 801176EC 0011462C  41 82 00 54 */ beq lbl_80117740
/* 801176F0 00114630  80 17 00 00 */ lwz r0, 0(r23)
/* 801176F4 00114634  2C 00 00 01 */ cmpwi r0, 1
/* 801176F8 00114638  40 82 00 48 */ bne lbl_80117740
/* 801176FC 0011463C  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 80117700 00114640  4B EF 56 65 */ bl mDoMtx_stack_c_NS_transS
/* 80117704 00114644  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80117708 00114648  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8011770C 0011464C  A8 9F 04 E6 */ lha r4, 0x4e6(r31)
/* 80117710 00114650  4B EF 4D 25 */ bl mDoMtx_YrotM
/* 80117714 00114654  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80117718 00114658  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8011771C 0011465C  7F 44 D3 78 */ mr r4, r26
/* 80117720 00114660  38 A1 00 40 */ addi r5, r1, 0x40
/* 80117724 00114664  48 22 F6 49 */ bl PSMTXMultVec
/* 80117728 00114668  7F 63 DB 78 */ mr r3, r27
/* 8011772C 0011466C  38 81 00 40 */ addi r4, r1, 0x40
/* 80117730 00114670  4B F3 0C 95 */ bl dEvent_manager_c_NS_setGoal
/* 80117734 00114674  7F 63 DB 78 */ mr r3, r27
/* 80117738 00114678  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 8011773C 0011467C  4B F3 0A 41 */ bl dEvent_manager_c_NS_cutEnd
lbl_80117740:
/* 80117740 00114680  A0 7F 2F DC */ lhz r3, 0x2fdc(r31)
/* 80117744 00114684  28 03 00 42 */ cmplwi r3, 0x42
/* 80117748 00114688  41 82 00 10 */ beq lbl_80117758
/* 8011774C 0011468C  48 04 72 D5 */ bl daPy_py_c_NS_checkFishingRodItem
/* 80117750 00114690  2C 03 00 00 */ cmpwi r3, 0
/* 80117754 00114694  41 82 00 7C */ beq lbl_801177D0
lbl_80117758:
/* 80117758 00114698  80 61 00 18 */ lwz r3, 0x18(r1)
/* 8011775C 0011469C  28 03 00 01 */ cmplwi r3, 1
/* 80117760 001146A0  41 82 00 70 */ beq lbl_801177D0
/* 80117764 001146A4  28 03 00 1F */ cmplwi r3, 0x1f
/* 80117768 001146A8  41 82 00 68 */ beq lbl_801177D0
/* 8011776C 001146AC  80 1F 31 84 */ lwz r0, 0x3184(r31)
/* 80117770 001146B0  2C 00 FF FF */ cmpwi r0, -1
/* 80117774 001146B4  40 82 00 10 */ bne lbl_80117784
/* 80117778 001146B8  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 8011777C 001146BC  2C 00 00 03 */ cmpwi r0, 3
/* 80117780 001146C0  40 82 00 50 */ bne lbl_801177D0
lbl_80117784:
/* 80117784 001146C4  28 03 00 06 */ cmplwi r3, 6
/* 80117788 001146C8  40 82 00 1C */ bne lbl_801177A4
/* 8011778C 001146CC  2C 1C 00 00 */ cmpwi r28, 0
/* 80117790 001146D0  40 82 00 40 */ bne lbl_801177D0
/* 80117794 001146D4  7F E3 FB 78 */ mr r3, r31
/* 80117798 001146D8  4B FA 1B A9 */ bl daAlink_c_NS_checkEquipAnime
/* 8011779C 001146DC  2C 03 00 00 */ cmpwi r3, 0
/* 801177A0 001146E0  40 82 00 30 */ bne lbl_801177D0
lbl_801177A4:
/* 801177A4 001146E4  7F E3 FB 78 */ mr r3, r31
/* 801177A8 001146E8  38 80 00 00 */ li r4, 0
/* 801177AC 001146EC  38 A0 00 01 */ li r5, 1
/* 801177B0 001146F0  4B FA 9B 2D */ bl daAlink_c_NS_deleteEquipItem
/* 801177B4 001146F4  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 801177B8 001146F8  28 00 01 9C */ cmplwi r0, 0x19c
/* 801177BC 001146FC  40 82 00 14 */ bne lbl_801177D0
/* 801177C0 00114700  7F E3 FB 78 */ mr r3, r31
/* 801177C4 00114704  38 80 00 02 */ li r4, 2
/* 801177C8 00114708  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 801177CC 0011470C  4B F9 5F 59 */ bl daAlink_c_NS_resetUpperAnime
lbl_801177D0:
/* 801177D0 00114710  A0 7F 06 04 */ lhz r3, 0x604(r31)
/* 801177D4 00114714  2C 03 00 04 */ cmpwi r3, 4
/* 801177D8 00114718  40 82 00 9C */ bne lbl_80117874
/* 801177DC 0011471C  80 1F 06 14 */ lwz r0, 0x614(r31)
/* 801177E0 00114720  28 00 00 0E */ cmplwi r0, 0xe
/* 801177E4 00114724  40 82 03 94 */ bne lbl_80117B78
/* 801177E8 00114728  A8 1F 06 08 */ lha r0, 0x608(r31)
/* 801177EC 0011472C  7C 00 07 35 */ extsh. r0, r0
/* 801177F0 00114730  41 82 00 74 */ beq lbl_80117864
/* 801177F4 00114734  A8 7F 06 08 */ lha r3, 0x608(r31)
/* 801177F8 00114738  38 03 FF FF */ addi r0, r3, -1
/* 801177FC 0011473C  B0 1F 06 08 */ sth r0, 0x608(r31)
/* 80117800 00114740  38 61 00 28 */ addi r3, r1, 0x28
/* 80117804 00114744  38 9F 04 D0 */ addi r4, r31, 0x4d0
/* 80117808 00114748  38 BF 04 A8 */ addi r5, r31, 0x4a8
/* 8011780C 0011474C  48 14 F3 29 */ bl __mi__4cXyzCFRC3Vec
/* 80117810 00114750  C0 41 00 28 */ lfs f2, 0x28(r1)
/* 80117814 00114754  D0 41 00 34 */ stfs f2, 0x34(r1)
/* 80117818 00114758  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 8011781C 0011475C  D0 01 00 38 */ stfs f0, 0x38(r1)
/* 80117820 00114760  C0 21 00 30 */ lfs f1, 0x30(r1)
/* 80117824 00114764  D0 21 00 3C */ stfs f1, 0x3c(r1)
/* 80117828 00114768  D0 41 00 1C */ stfs f2, 0x1c(r1)
/* 8011782C 0011476C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80117830 00114770  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 80117834 00114774  D0 21 00 24 */ stfs f1, 0x24(r1)
/* 80117838 00114778  38 61 00 1C */ addi r3, r1, 0x1c
/* 8011783C 0011477C  48 22 F8 FD */ bl PSVECSquareMag
/* 80117840 00114780  C0 02 94 90 */ lfs f0, lbl_80452E90-_SDA2_BASE_(r2)
/* 80117844 00114784  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80117848 00114788  40 81 03 30 */ ble lbl_80117B78
/* 8011784C 0011478C  38 00 00 00 */ li r0, 0
/* 80117850 00114790  B0 1F 06 08 */ sth r0, 0x608(r31)
/* 80117854 00114794  38 7E 4F F8 */ addi r3, r30, 0x4ff8
/* 80117858 00114798  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 8011785C 0011479C  4B F3 09 21 */ bl dEvent_manager_c_NS_cutEnd
/* 80117860 001147A0  48 00 03 18 */ b lbl_80117B78
lbl_80117864:
/* 80117864 001147A4  38 7E 4F F8 */ addi r3, r30, 0x4ff8
/* 80117868 001147A8  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 8011786C 001147AC  4B F3 09 11 */ bl dEvent_manager_c_NS_cutEnd
/* 80117870 001147B0  48 00 03 08 */ b lbl_80117B78
lbl_80117874:
/* 80117874 001147B4  2C 03 00 01 */ cmpwi r3, 1
/* 80117878 001147B8  41 82 00 18 */ beq lbl_80117890
/* 8011787C 001147BC  2C 03 00 02 */ cmpwi r3, 2
/* 80117880 001147C0  40 82 00 D0 */ bne lbl_80117950
/* 80117884 001147C4  80 1F 31 84 */ lwz r0, 0x3184(r31)
/* 80117888 001147C8  2C 00 FF FF */ cmpwi r0, -1
/* 8011788C 001147CC  41 82 00 C4 */ beq lbl_80117950
lbl_80117890:
/* 80117890 001147D0  28 18 00 00 */ cmplwi r24, 0
/* 80117894 001147D4  41 82 00 10 */ beq lbl_801178A4
/* 80117898 001147D8  80 18 00 00 */ lwz r0, 0(r24)
/* 8011789C 001147DC  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 801178A0 001147E0  48 00 00 0C */ b lbl_801178AC
lbl_801178A4:
/* 801178A4 001147E4  38 00 00 00 */ li r0, 0
/* 801178A8 001147E8  90 1F 06 0C */ stw r0, 0x60c(r31)
lbl_801178AC:
/* 801178AC 001147EC  28 17 00 00 */ cmplwi r23, 0
/* 801178B0 001147F0  41 82 00 10 */ beq lbl_801178C0
/* 801178B4 001147F4  80 17 00 00 */ lwz r0, 0(r23)
/* 801178B8 001147F8  90 1F 06 10 */ stw r0, 0x610(r31)
/* 801178BC 001147FC  48 00 00 0C */ b lbl_801178C8
lbl_801178C0:
/* 801178C0 00114800  38 00 00 00 */ li r0, 0
/* 801178C4 00114804  90 1F 06 10 */ stw r0, 0x610(r31)
lbl_801178C8:
/* 801178C8 00114808  80 81 00 18 */ lwz r4, 0x18(r1)
/* 801178CC 0011480C  28 04 00 04 */ cmplwi r4, 4
/* 801178D0 00114810  40 82 00 40 */ bne lbl_80117910
/* 801178D4 00114814  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801178D8 00114818  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 801178DC 0011481C  D0 1F 05 2C */ stfs f0, 0x52c(r31)
/* 801178E0 00114820  38 7F 08 14 */ addi r3, r31, 0x814
/* 801178E4 00114824  48 14 C0 79 */ bl ClrCcMove__9cCcD_SttsFv
/* 801178E8 00114828  7F E3 FB 78 */ mr r3, r31
/* 801178EC 0011482C  7F 44 D3 78 */ mr r4, r26
/* 801178F0 00114830  7F 25 CB 78 */ mr r5, r25
/* 801178F4 00114834  38 C0 00 00 */ li r6, 0
/* 801178F8 00114838  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 801178FC 0011483C  81 8C 01 54 */ lwz r12, 0x154(r12)
/* 80117900 00114840  7D 89 03 A6 */ mtctr r12
/* 80117904 00114844  4E 80 04 21 */ bctrl
/* 80117908 00114848  B3 3F 06 06 */ sth r25, 0x606(r31)
/* 8011790C 0011484C  48 00 00 38 */ b lbl_80117944
lbl_80117910:
/* 80117910 00114850  7F E3 FB 78 */ mr r3, r31
/* 80117914 00114854  4B FF F5 4D */ bl daAlink_c_NS_checkDemoMoveMode
/* 80117918 00114858  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011791C 0011485C  41 82 00 18 */ beq lbl_80117934
/* 80117920 00114860  7F E3 FB 78 */ mr r3, r31
/* 80117924 00114864  38 81 00 18 */ addi r4, r1, 0x18
/* 80117928 00114868  7F 45 D3 78 */ mr r5, r26
/* 8011792C 0011486C  4B FF F5 71 */ bl daAlink_c_NS_setDemoMoveData
/* 80117930 00114870  48 00 00 14 */ b lbl_80117944
lbl_80117934:
/* 80117934 00114874  80 01 00 18 */ lwz r0, 0x18(r1)
/* 80117938 00114878  28 00 00 05 */ cmplwi r0, 5
/* 8011793C 0011487C  40 82 00 08 */ bne lbl_80117944
/* 80117940 00114880  B3 3F 06 06 */ sth r25, 0x606(r31)
lbl_80117944:
/* 80117944 00114884  80 01 00 18 */ lwz r0, 0x18(r1)
/* 80117948 00114888  90 1F 06 14 */ stw r0, 0x614(r31)
/* 8011794C 0011488C  48 00 00 60 */ b lbl_801179AC
lbl_80117950:
/* 80117950 00114890  2C 03 00 03 */ cmpwi r3, 3
/* 80117954 00114894  40 82 00 50 */ bne lbl_801179A4
/* 80117958 00114898  80 9F 06 14 */ lwz r4, 0x614(r31)
/* 8011795C 0011489C  90 81 00 18 */ stw r4, 0x18(r1)
/* 80117960 001148A0  7F E3 FB 78 */ mr r3, r31
/* 80117964 001148A4  4B FF F4 FD */ bl daAlink_c_NS_checkDemoMoveMode
/* 80117968 001148A8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011796C 001148AC  41 82 00 20 */ beq lbl_8011798C
/* 80117970 001148B0  7F E3 FB 78 */ mr r3, r31
/* 80117974 001148B4  38 81 00 18 */ addi r4, r1, 0x18
/* 80117978 001148B8  38 BF 06 1C */ addi r5, r31, 0x61c
/* 8011797C 001148BC  4B FF F5 21 */ bl daAlink_c_NS_setDemoMoveData
/* 80117980 001148C0  80 01 00 18 */ lwz r0, 0x18(r1)
/* 80117984 001148C4  90 1F 06 14 */ stw r0, 0x614(r31)
/* 80117988 001148C8  48 00 00 24 */ b lbl_801179AC
lbl_8011798C:
/* 8011798C 001148CC  80 01 00 18 */ lwz r0, 0x18(r1)
/* 80117990 001148D0  28 00 00 41 */ cmplwi r0, 0x41
/* 80117994 001148D4  40 82 00 18 */ bne lbl_801179AC
/* 80117998 001148D8  38 00 00 01 */ li r0, 1
/* 8011799C 001148DC  90 1F 06 14 */ stw r0, 0x614(r31)
/* 801179A0 001148E0  48 00 00 0C */ b lbl_801179AC
lbl_801179A4:
/* 801179A4 001148E4  80 01 00 18 */ lwz r0, 0x18(r1)
/* 801179A8 001148E8  90 1F 06 14 */ stw r0, 0x614(r31)
lbl_801179AC:
/* 801179AC 001148EC  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 801179B0 001148F0  54 00 03 19 */ rlwinm. r0, r0, 0, 0xc, 0xc
/* 801179B4 001148F4  40 82 00 18 */ bne lbl_801179CC
/* 801179B8 001148F8  80 1F 06 14 */ lwz r0, 0x614(r31)
/* 801179BC 001148FC  28 00 00 06 */ cmplwi r0, 6
/* 801179C0 00114900  41 82 00 0C */ beq lbl_801179CC
/* 801179C4 00114904  28 00 00 08 */ cmplwi r0, 8
/* 801179C8 00114908  40 82 00 1C */ bne lbl_801179E4
lbl_801179CC:
/* 801179CC 0011490C  80 1D 5F 18 */ lwz r0, 0x5f18(r29)
/* 801179D0 00114910  60 00 00 10 */ ori r0, r0, 0x10
/* 801179D4 00114914  90 1D 5F 18 */ stw r0, 0x5f18(r29)
/* 801179D8 00114918  38 00 00 1E */ li r0, 0x1e
/* 801179DC 0011491C  98 1F 2F B2 */ stb r0, 0x2fb2(r31)
/* 801179E0 00114920  48 00 00 10 */ b lbl_801179F0
lbl_801179E4:
/* 801179E4 00114924  80 1D 5F 18 */ lwz r0, 0x5f18(r29)
/* 801179E8 00114928  54 00 07 34 */ rlwinm r0, r0, 0, 0x1c, 0x1a
/* 801179EC 0011492C  90 1D 5F 18 */ stw r0, 0x5f18(r29)
lbl_801179F0:
/* 801179F0 00114930  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 801179F4 00114934  2C 04 FF FF */ cmpwi r4, -1
/* 801179F8 00114938  41 82 00 5C */ beq lbl_80117A54
/* 801179FC 0011493C  80 61 00 18 */ lwz r3, 0x18(r1)
/* 80117A00 00114940  28 03 00 01 */ cmplwi r3, 1
/* 80117A04 00114944  41 82 00 48 */ beq lbl_80117A4C
/* 80117A08 00114948  28 03 00 04 */ cmplwi r3, 4
/* 80117A0C 0011494C  41 82 00 40 */ beq lbl_80117A4C
/* 80117A10 00114950  28 03 00 11 */ cmplwi r3, 0x11
/* 80117A14 00114954  41 82 00 38 */ beq lbl_80117A4C
/* 80117A18 00114958  38 03 FF F2 */ addi r0, r3, -14
/* 80117A1C 0011495C  28 00 00 01 */ cmplwi r0, 1
/* 80117A20 00114960  40 81 00 2C */ ble lbl_80117A4C
/* 80117A24 00114964  38 03 FF EB */ addi r0, r3, -21
/* 80117A28 00114968  28 00 00 03 */ cmplwi r0, 3
/* 80117A2C 0011496C  40 81 00 20 */ ble lbl_80117A4C
/* 80117A30 00114970  38 03 FF FA */ addi r0, r3, -6
/* 80117A34 00114974  28 00 00 02 */ cmplwi r0, 2
/* 80117A38 00114978  40 81 00 14 */ ble lbl_80117A4C
/* 80117A3C 0011497C  28 03 00 29 */ cmplwi r3, 0x29
/* 80117A40 00114980  41 82 00 0C */ beq lbl_80117A4C
/* 80117A44 00114984  28 03 00 12 */ cmplwi r3, 0x12
/* 80117A48 00114988  40 82 00 0C */ bne lbl_80117A54
lbl_80117A4C:
/* 80117A4C 0011498C  38 7E 4F F8 */ addi r3, r30, 0x4ff8
/* 80117A50 00114990  4B F3 07 2D */ bl dEvent_manager_c_NS_cutEnd
lbl_80117A54:
/* 80117A54 00114994  A8 1F 06 0A */ lha r0, 0x60a(r31)
/* 80117A58 00114998  7C 03 07 35 */ extsh. r3, r0
/* 80117A5C 0011499C  41 82 00 FC */ beq lbl_80117B58
/* 80117A60 001149A0  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 80117A64 001149A4  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 80117A68 001149A8  40 82 01 10 */ bne lbl_80117B78
/* 80117A6C 001149AC  2C 03 00 01 */ cmpwi r3, 1
/* 80117A70 001149B0  40 82 00 2C */ bne lbl_80117A9C
/* 80117A74 001149B4  7F E3 FB 78 */ mr r3, r31
/* 80117A78 001149B8  38 80 00 00 */ li r4, 0
/* 80117A7C 001149BC  4B F9 80 2D */ bl daAlink_c_NS_setFacePriTexture
/* 80117A80 001149C0  7F E3 FB 78 */ mr r3, r31
/* 80117A84 001149C4  38 80 01 5A */ li r4, 0x15a
/* 80117A88 001149C8  38 A0 00 01 */ li r5, 1
/* 80117A8C 001149CC  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 80117A90 001149D0  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 80117A94 001149D4  4B F9 7A 1D */ bl daAlink_c_NS_setFaceBck
/* 80117A98 001149D8  48 00 00 A4 */ b lbl_80117B3C
lbl_80117A9C:
/* 80117A9C 001149DC  2C 03 00 02 */ cmpwi r3, 2
/* 80117AA0 001149E0  40 82 00 9C */ bne lbl_80117B3C
/* 80117AA4 001149E4  7F E3 FB 78 */ mr r3, r31
/* 80117AA8 001149E8  38 80 03 E1 */ li r4, 0x3e1
/* 80117AAC 001149EC  38 A0 00 01 */ li r5, 1
/* 80117AB0 001149F0  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 80117AB4 001149F4  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 80117AB8 001149F8  4B F9 7B 65 */ bl daAlink_c_NS_setFaceBtp
/* 80117ABC 001149FC  80 7F 21 54 */ lwz r3, 0x2154(r31)
/* 80117AC0 00114A00  A8 03 00 06 */ lha r0, 6(r3)
/* 80117AC4 00114A04  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 80117AC8 00114A08  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80117ACC 00114A0C  90 01 00 54 */ stw r0, 0x54(r1)
/* 80117AD0 00114A10  3C 00 43 30 */ lis r0, 0x4330
/* 80117AD4 00114A14  90 01 00 50 */ stw r0, 0x50(r1)
/* 80117AD8 00114A18  C8 01 00 50 */ lfd f0, 0x50(r1)
/* 80117ADC 00114A1C  EC 00 08 28 */ fsubs f0, f0, f1
/* 80117AE0 00114A20  D0 03 00 08 */ stfs f0, 8(r3)
/* 80117AE4 00114A24  7F E3 FB 78 */ mr r3, r31
/* 80117AE8 00114A28  38 80 03 7B */ li r4, 0x37b
/* 80117AEC 00114A2C  38 A0 00 01 */ li r5, 1
/* 80117AF0 00114A30  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 80117AF4 00114A34  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 80117AF8 00114A38  4B F9 7C D9 */ bl daAlink_c_NS_setFaceBtk
/* 80117AFC 00114A3C  80 7F 21 58 */ lwz r3, 0x2158(r31)
/* 80117B00 00114A40  A8 03 00 06 */ lha r0, 6(r3)
/* 80117B04 00114A44  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 80117B08 00114A48  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80117B0C 00114A4C  90 01 00 5C */ stw r0, 0x5c(r1)
/* 80117B10 00114A50  3C 00 43 30 */ lis r0, 0x4330
/* 80117B14 00114A54  90 01 00 58 */ stw r0, 0x58(r1)
/* 80117B18 00114A58  C8 01 00 58 */ lfd f0, 0x58(r1)
/* 80117B1C 00114A5C  EC 00 08 28 */ fsubs f0, f0, f1
/* 80117B20 00114A60  D0 03 00 08 */ stfs f0, 8(r3)
/* 80117B24 00114A64  7F E3 FB 78 */ mr r3, r31
/* 80117B28 00114A68  38 80 01 49 */ li r4, 0x149
/* 80117B2C 00114A6C  38 A0 00 01 */ li r5, 1
/* 80117B30 00114A70  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 80117B34 00114A74  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 80117B38 00114A78  4B F9 79 79 */ bl daAlink_c_NS_setFaceBck
lbl_80117B3C:
/* 80117B3C 00114A7C  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 80117B40 00114A80  54 00 04 E2 */ rlwinm r0, r0, 0, 0x13, 0x11
/* 80117B44 00114A84  90 1F 05 74 */ stw r0, 0x574(r31)
/* 80117B48 00114A88  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 80117B4C 00114A8C  60 00 02 00 */ ori r0, r0, 0x200
/* 80117B50 00114A90  90 1F 05 74 */ stw r0, 0x574(r31)
/* 80117B54 00114A94  48 00 00 24 */ b lbl_80117B78
lbl_80117B58:
/* 80117B58 00114A98  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 80117B5C 00114A9C  54 00 05 AD */ rlwinm. r0, r0, 0, 0x16, 0x16
/* 80117B60 00114AA0  41 82 00 18 */ beq lbl_80117B78
/* 80117B64 00114AA4  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 80117B68 00114AA8  54 00 05 EA */ rlwinm r0, r0, 0, 0x17, 0x15
/* 80117B6C 00114AAC  90 1F 05 74 */ stw r0, 0x574(r31)
/* 80117B70 00114AB0  7F E3 FB 78 */ mr r3, r31
/* 80117B74 00114AB4  4B F9 81 49 */ bl daAlink_c_NS_resetFacePriAnime
lbl_80117B78:
/* 80117B78 00114AB8  39 61 00 90 */ addi r11, r1, 0x90
/* 80117B7C 00114ABC  48 24 A6 95 */ bl _restgpr_23
/* 80117B80 00114AC0  80 01 00 94 */ lwz r0, 0x94(r1)
/* 80117B84 00114AC4  7C 08 03 A6 */ mtlr r0
/* 80117B88 00114AC8  38 21 00 90 */ addi r1, r1, 0x90
/* 80117B8C 00114ACC  4E 80 00 20 */ blr
