/* 80267674 002645B4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80267678 002645B8  7C 08 02 A6 */ mflr r0
/* 8026767C 002645BC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80267680 002645C0  FC 80 08 90 */ fmr f4, f1
/* 80267684 002645C4  FC 00 22 10 */ fabs f0, f4
/* 80267688 002645C8  FC 00 00 18 */ frsp f0, f0
/* 8026768C 002645CC  C0 6D 8C 00 */ lfs f3, lbl_80451180-_SDA_BASE_(r13)
/* 80267690 002645D0  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 80267694 002645D4  40 80 00 28 */ bge lbl_802676BC
/* 80267698 002645D8  C0 02 B6 B8 */ lfs f0, lbl_804550B8-_SDA2_BASE_(r2)
/* 8026769C 002645DC  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 802676A0 002645E0  4C 41 13 82 */ cror 2, 1, 2
/* 802676A4 002645E4  40 82 00 0C */ bne lbl_802676B0
/* 802676A8 002645E8  38 60 00 00 */ li r3, 0
/* 802676AC 002645EC  48 00 01 54 */ b lbl_80267800
lbl_802676B0:
/* 802676B0 002645F0  3C 60 00 01 */ lis r3, 0x00008000@ha
/* 802676B4 002645F4  38 63 80 00 */ addi r3, r3, 0x00008000@l
/* 802676B8 002645F8  48 00 01 48 */ b lbl_80267800
lbl_802676BC:
/* 802676BC 002645FC  FC 00 12 10 */ fabs f0, f2
/* 802676C0 00264600  FC 00 00 18 */ frsp f0, f0
/* 802676C4 00264604  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 802676C8 00264608  40 80 00 28 */ bge lbl_802676F0
/* 802676CC 0026460C  C0 02 B6 B8 */ lfs f0, lbl_804550B8-_SDA2_BASE_(r2)
/* 802676D0 00264610  FC 04 00 40 */ fcmpo cr0, f4, f0
/* 802676D4 00264614  4C 41 13 82 */ cror 2, 1, 2
/* 802676D8 00264618  40 82 00 0C */ bne lbl_802676E4
/* 802676DC 0026461C  38 60 40 00 */ li r3, 0x4000
/* 802676E0 00264620  48 00 01 20 */ b lbl_80267800
lbl_802676E4:
/* 802676E4 00264624  3C 60 00 01 */ lis r3, 0x0000C000@ha
/* 802676E8 00264628  38 63 C0 00 */ addi r3, r3, 0x0000C000@l
/* 802676EC 0026462C  48 00 01 14 */ b lbl_80267800
lbl_802676F0:
/* 802676F0 00264630  C0 02 B6 B8 */ lfs f0, lbl_804550B8-_SDA2_BASE_(r2)
/* 802676F4 00264634  FC 04 00 40 */ fcmpo cr0, f4, f0
/* 802676F8 00264638  4C 41 13 82 */ cror 2, 1, 2
/* 802676FC 0026463C  40 82 00 7C */ bne lbl_80267778
/* 80267700 00264640  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80267704 00264644  4C 41 13 82 */ cror 2, 1, 2
/* 80267708 00264648  40 82 00 34 */ bne lbl_8026773C
/* 8026770C 0026464C  FC 02 20 40 */ fcmpo cr0, f2, f4
/* 80267710 00264650  4C 41 13 82 */ cror 2, 1, 2
/* 80267714 00264654  40 82 00 10 */ bne lbl_80267724
/* 80267718 00264658  4B FF FF 29 */ bl U_GetAtanTable__Fff
/* 8026771C 0026465C  54 63 04 3E */ clrlwi r3, r3, 0x10
/* 80267720 00264660  48 00 00 E0 */ b lbl_80267800
lbl_80267724:
/* 80267724 00264664  FC 20 10 90 */ fmr f1, f2
/* 80267728 00264668  FC 40 20 90 */ fmr f2, f4
/* 8026772C 0026466C  4B FF FF 15 */ bl U_GetAtanTable__Fff
/* 80267730 00264670  54 60 04 3E */ clrlwi r0, r3, 0x10
/* 80267734 00264674  20 60 40 00 */ subfic r3, r0, 0x4000
/* 80267738 00264678  48 00 00 C8 */ b lbl_80267800
lbl_8026773C:
/* 8026773C 0026467C  FC 40 10 50 */ fneg f2, f2
/* 80267740 00264680  FC 02 20 40 */ fcmpo cr0, f2, f4
/* 80267744 00264684  40 80 00 1C */ bge lbl_80267760
/* 80267748 00264688  FC 20 10 90 */ fmr f1, f2
/* 8026774C 0026468C  FC 40 20 90 */ fmr f2, f4
/* 80267750 00264690  4B FF FE F1 */ bl U_GetAtanTable__Fff
/* 80267754 00264694  54 63 04 3E */ clrlwi r3, r3, 0x10
/* 80267758 00264698  38 63 40 00 */ addi r3, r3, 0x4000
/* 8026775C 0026469C  48 00 00 A4 */ b lbl_80267800
lbl_80267760:
/* 80267760 002646A0  4B FF FE E1 */ bl U_GetAtanTable__Fff
/* 80267764 002646A4  54 64 04 3E */ clrlwi r4, r3, 0x10
/* 80267768 002646A8  3C 60 00 01 */ lis r3, 0x00008000@ha
/* 8026776C 002646AC  38 03 80 00 */ addi r0, r3, 0x00008000@l
/* 80267770 002646B0  7C 64 00 50 */ subf r3, r4, r0
/* 80267774 002646B4  48 00 00 8C */ b lbl_80267800
lbl_80267778:
/* 80267778 002646B8  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 8026777C 002646BC  40 80 00 4C */ bge lbl_802677C8
/* 80267780 002646C0  FC 02 20 40 */ fcmpo cr0, f2, f4
/* 80267784 002646C4  4C 40 13 82 */ cror 2, 0, 2
/* 80267788 002646C8  40 82 00 20 */ bne lbl_802677A8
/* 8026778C 002646CC  FC 20 20 50 */ fneg f1, f4
/* 80267790 002646D0  FC 40 10 50 */ fneg f2, f2
/* 80267794 002646D4  4B FF FE AD */ bl U_GetAtanTable__Fff
/* 80267798 002646D8  54 63 04 3E */ clrlwi r3, r3, 0x10
/* 8026779C 002646DC  3C 63 00 01 */ addis r3, r3, 1
/* 802677A0 002646E0  38 63 80 00 */ addi r3, r3, -32768
/* 802677A4 002646E4  48 00 00 5C */ b lbl_80267800
lbl_802677A8:
/* 802677A8 002646E8  FC 20 10 50 */ fneg f1, f2
/* 802677AC 002646EC  FC 40 20 50 */ fneg f2, f4
/* 802677B0 002646F0  4B FF FE 91 */ bl U_GetAtanTable__Fff
/* 802677B4 002646F4  54 64 04 3E */ clrlwi r4, r3, 0x10
/* 802677B8 002646F8  3C 60 00 01 */ lis r3, 0x0000C000@ha
/* 802677BC 002646FC  38 03 C0 00 */ addi r0, r3, 0x0000C000@l
/* 802677C0 00264700  7C 64 00 50 */ subf r3, r4, r0
/* 802677C4 00264704  48 00 00 3C */ b lbl_80267800
lbl_802677C8:
/* 802677C8 00264708  FC 00 20 50 */ fneg f0, f4
/* 802677CC 0026470C  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 802677D0 00264710  40 80 00 20 */ bge lbl_802677F0
/* 802677D4 00264714  FC 20 10 90 */ fmr f1, f2
/* 802677D8 00264718  FC 40 00 90 */ fmr f2, f0
/* 802677DC 0026471C  4B FF FE 65 */ bl U_GetAtanTable__Fff
/* 802677E0 00264720  54 63 04 3E */ clrlwi r3, r3, 0x10
/* 802677E4 00264724  3C 63 00 01 */ addis r3, r3, 1
/* 802677E8 00264728  38 63 C0 00 */ addi r3, r3, -16384
/* 802677EC 0026472C  48 00 00 14 */ b lbl_80267800
lbl_802677F0:
/* 802677F0 00264730  FC 20 00 90 */ fmr f1, f0
/* 802677F4 00264734  4B FF FE 4D */ bl U_GetAtanTable__Fff
/* 802677F8 00264738  54 60 04 3E */ clrlwi r0, r3, 0x10
/* 802677FC 0026473C  7C 60 00 D0 */ neg r3, r0
lbl_80267800:
/* 80267800 00264740  7C 63 07 34 */ extsh r3, r3
/* 80267804 00264744  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80267808 00264748  7C 08 03 A6 */ mtlr r0
/* 8026780C 0026474C  38 21 00 10 */ addi r1, r1, 0x10
/* 80267810 00264750  4E 80 00 20 */ blr
