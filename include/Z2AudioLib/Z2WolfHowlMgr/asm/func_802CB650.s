/* 802CB650 002C8590  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802CB654 002C8594  7C 08 02 A6 */ mflr r0
/* 802CB658 002C8598  90 01 00 24 */ stw r0, 0x24(r1)
/* 802CB65C 002C859C  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 802CB660 002C85A0  7C 7F 1B 78 */ mr r31, r3
/* 802CB664 002C85A4  88 83 00 BA */ lbz r4, 0xba(r3)
/* 802CB668 002C85A8  4B FF FC B9 */ bl getCorrectLine__13Z2WolfHowlMgrFUc
/* 802CB66C 002C85AC  54 60 84 3E */ srwi r0, r3, 0x10
/* 802CB670 002C85B0  B0 01 00 08 */ sth r0, 8(r1)
/* 802CB674 002C85B4  88 01 00 08 */ lbz r0, 8(r1)
/* 802CB678 002C85B8  28 00 00 01 */ cmplwi r0, 1
/* 802CB67C 002C85BC  40 82 00 14 */ bne lbl_802CB690
/* 802CB680 002C85C0  C0 22 C4 64 */ lfs f1, lbl_80455E64-_SDA2_BASE_(r2)
/* 802CB684 002C85C4  C0 1F 00 14 */ lfs f0, 0x14(r31)
/* 802CB688 002C85C8  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 802CB68C 002C85CC  41 82 00 3C */ beq lbl_802CB6C8
lbl_802CB690:
/* 802CB690 002C85D0  88 01 00 08 */ lbz r0, 8(r1)
/* 802CB694 002C85D4  28 00 00 02 */ cmplwi r0, 2
/* 802CB698 002C85D8  40 82 00 14 */ bne lbl_802CB6AC
/* 802CB69C 002C85DC  C0 22 C4 60 */ lfs f1, lbl_80455E60-_SDA2_BASE_(r2)
/* 802CB6A0 002C85E0  C0 1F 00 14 */ lfs f0, 0x14(r31)
/* 802CB6A4 002C85E4  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 802CB6A8 002C85E8  41 82 00 20 */ beq lbl_802CB6C8
lbl_802CB6AC:
/* 802CB6AC 002C85EC  88 01 00 08 */ lbz r0, 8(r1)
/* 802CB6B0 002C85F0  28 00 00 03 */ cmplwi r0, 3
/* 802CB6B4 002C85F4  40 82 00 20 */ bne lbl_802CB6D4
/* 802CB6B8 002C85F8  C0 22 C4 7C */ lfs f1, lbl_80455E7C-_SDA2_BASE_(r2)
/* 802CB6BC 002C85FC  C0 1F 00 14 */ lfs f0, 0x14(r31)
/* 802CB6C0 002C8600  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 802CB6C4 002C8604  40 82 00 10 */ bne lbl_802CB6D4
lbl_802CB6C8:
/* 802CB6C8 002C8608  88 1F 00 BA */ lbz r0, 0xba(r31)
/* 802CB6CC 002C860C  7C 03 07 74 */ extsb r3, r0
/* 802CB6D0 002C8610  48 00 00 08 */ b lbl_802CB6D8
lbl_802CB6D4:
/* 802CB6D4 002C8614  38 60 FF FF */ li r3, -1
lbl_802CB6D8:
/* 802CB6D8 002C8618  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 802CB6DC 002C861C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802CB6E0 002C8620  7C 08 03 A6 */ mtlr r0
/* 802CB6E4 002C8624  38 21 00 20 */ addi r1, r1, 0x20
/* 802CB6E8 002C8628  4E 80 00 20 */ blr