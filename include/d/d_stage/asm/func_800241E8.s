/* 800241E8 00021128  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800241EC 0002112C  7C 08 02 A6 */ mflr r0
/* 800241F0 00021130  90 01 00 24 */ stw r0, 0x24(r1)
/* 800241F4 00021134  39 61 00 20 */ addi r11, r1, 0x20
/* 800241F8 00021138  48 33 DF E1 */ bl _savegpr_28
/* 800241FC 0002113C  38 80 FF FF */ li r4, -1
/* 80024200 00021140  98 8D 87 E4 */ stb r4, lbl_80450D64-_SDA_BASE_(r13)
/* 80024204 00021144  98 8D 87 E5 */ stb r4, lbl_80450D65-_SDA_BASE_(r13)
/* 80024208 00021148  98 8D 87 E6 */ stb r4, lbl_80450D66-_SDA_BASE_(r13)
/* 8002420C 0002114C  38 00 00 00 */ li r0, 0
/* 80024210 00021150  98 0D 87 E8 */ stb r0, lbl_80450D68-_SDA_BASE_(r13)
/* 80024214 00021154  98 8D 80 70 */ stb r4, lbl_804505F0-_SDA_BASE_(r13)
/* 80024218 00021158  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002421C 0002115C  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 80024220 00021160  A8 04 4E 08 */ lha r0, 0x4e08(r4)
/* 80024224 00021164  7C 00 07 35 */ extsh. r0, r0
/* 80024228 00021168  40 80 00 0C */ bge lbl_80024234
/* 8002422C 0002116C  2C 00 FF FC */ cmpwi r0, -4
/* 80024230 00021170  40 82 00 08 */ bne lbl_80024238
lbl_80024234:
/* 80024234 00021174  48 00 01 05 */ bl initZone__20dStage_roomControl_cFv
lbl_80024238:
/* 80024238 00021178  3C 60 80 3F */ lis r3, lbl_803F6094@ha
/* 8002423C 0002117C  3B E3 60 94 */ addi r31, r3, lbl_803F6094@l
/* 80024240 00021180  7F FE FB 78 */ mr r30, r31
/* 80024244 00021184  3B A0 00 00 */ li r29, 0
/* 80024248 00021188  3B 80 00 00 */ li r28, 0
lbl_8002424C:
/* 8002424C 0002118C  7F C3 F3 78 */ mr r3, r30
/* 80024250 00021190  81 9E 00 00 */ lwz r12, 0(r30)
/* 80024254 00021194  81 8C 00 08 */ lwz r12, 8(r12)
/* 80024258 00021198  7D 89 03 A6 */ mtctr r12
/* 8002425C 0002119C  4E 80 04 21 */ bctrl
/* 80024260 000211A0  7F C3 F3 78 */ mr r3, r30
/* 80024264 000211A4  48 00 0A 45 */ bl initFileList2__15dStage_roomDt_cFv
/* 80024268 000211A8  38 00 00 00 */ li r0, 0
/* 8002426C 000211AC  7C 7F E2 14 */ add r3, r31, r28
/* 80024270 000211B0  98 03 03 F4 */ stb r0, 0x3f4(r3)
/* 80024274 000211B4  98 1E 03 F5 */ stb r0, 0x3f5(r30)
/* 80024278 000211B8  88 7E 03 F7 */ lbz r3, 0x3f7(r30)
/* 8002427C 000211BC  7C 60 07 75 */ extsb. r0, r3
/* 80024280 000211C0  41 80 00 40 */ blt lbl_800242C0
/* 80024284 000211C4  7C 60 07 74 */ extsb r0, r3
/* 80024288 000211C8  54 04 28 34 */ slwi r4, r0, 5
/* 8002428C 000211CC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80024290 000211D0  38 03 61 C0 */ addi r0, r3, g_dComIfG_gameInfo@l
/* 80024294 000211D4  7C 60 22 14 */ add r3, r0, r4
/* 80024298 000211D8  38 63 09 B6 */ addi r3, r3, 0x9b6
/* 8002429C 000211DC  48 01 0A 51 */ bl clearRoomSwitch__13dSv_zoneBit_cFv
/* 800242A0 000211E0  88 1E 03 F7 */ lbz r0, 0x3f7(r30)
/* 800242A4 000211E4  7C 00 07 74 */ extsb r0, r0
/* 800242A8 000211E8  54 04 28 34 */ slwi r4, r0, 5
/* 800242AC 000211EC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800242B0 000211F0  38 03 61 C0 */ addi r0, r3, g_dComIfG_gameInfo@l
/* 800242B4 000211F4  7C 60 22 14 */ add r3, r0, r4
/* 800242B8 000211F8  38 63 09 B6 */ addi r3, r3, 0x9b6
/* 800242BC 000211FC  48 01 0A 3D */ bl clearRoomItem__13dSv_zoneBit_cFv
lbl_800242C0:
/* 800242C0 00021200  38 00 FF FF */ li r0, -1
/* 800242C4 00021204  98 1E 03 F8 */ stb r0, 0x3f8(r30)
/* 800242C8 00021208  38 00 00 00 */ li r0, 0
/* 800242CC 0002120C  90 1E 04 00 */ stw r0, 0x400(r30)
/* 800242D0 00021210  3B BD 00 01 */ addi r29, r29, 1
/* 800242D4 00021214  2C 1D 00 40 */ cmpwi r29, 0x40
/* 800242D8 00021218  3B DE 04 04 */ addi r30, r30, 0x404
/* 800242DC 0002121C  3B 9C 04 04 */ addi r28, r28, 0x404
/* 800242E0 00021220  41 80 FF 6C */ blt lbl_8002424C
/* 800242E4 00021224  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 800242E8 00021228  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 800242EC 0002122C  38 63 00 8D */ addi r3, r3, 0x8d
/* 800242F0 00021230  48 00 B1 45 */ bl dComIfG_getStageRes
/* 800242F4 00021234  90 6D 87 EC */ stw r3, lbl_80450D6C-_SDA_BASE_(r13)
/* 800242F8 00021238  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 800242FC 0002123C  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80024300 00021240  38 63 00 96 */ addi r3, r3, 0x96
/* 80024304 00021244  48 00 B1 31 */ bl dComIfG_getStageRes
/* 80024308 00021248  90 6D 87 F0 */ stw r3, lbl_80450D70-_SDA_BASE_(r13)
/* 8002430C 0002124C  80 0D 87 EC */ lwz r0, lbl_80450D6C-_SDA_BASE_(r13)
/* 80024310 00021250  28 00 00 00 */ cmplwi r0, 0
/* 80024314 00021254  40 82 00 0C */ bne lbl_80024320
/* 80024318 00021258  38 00 00 00 */ li r0, 0
/* 8002431C 0002125C  90 0D 87 F0 */ stw r0, lbl_80450D70-_SDA_BASE_(r13)
lbl_80024320:
/* 80024320 00021260  39 61 00 20 */ addi r11, r1, 0x20
/* 80024324 00021264  48 33 DF 01 */ bl _restgpr_28
/* 80024328 00021268  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8002432C 0002126C  7C 08 03 A6 */ mtlr r0
/* 80024330 00021270  38 21 00 20 */ addi r1, r1, 0x20
/* 80024334 00021274  4E 80 00 20 */ blr
