/* 8026F97C 0026C8BC  C0 A3 00 00 */ lfs f5, 0(r3)
/* 8026F980 0026C8C0  FC 05 08 00 */ fcmpu cr0, f5, f1
/* 8026F984 0026C8C4  41 82 00 A4 */ beq lbl_8026FA28
/* 8026F988 0026C8C8  EC 01 28 28 */ fsubs f0, f1, f5
/* 8026F98C 0026C8CC  EC C2 00 32 */ fmuls f6, f2, f0
/* 8026F990 0026C8D0  FC 06 20 40 */ fcmpo cr0, f6, f4
/* 8026F994 0026C8D4  4C 41 13 82 */ cror 2, 1, 2
/* 8026F998 0026C8D8  41 82 00 14 */ beq lbl_8026F9AC
/* 8026F99C 0026C8DC  FC 40 20 50 */ fneg f2, f4
/* 8026F9A0 0026C8E0  FC 06 10 40 */ fcmpo cr0, f6, f2
/* 8026F9A4 0026C8E4  4C 40 13 82 */ cror 2, 0, 2
/* 8026F9A8 0026C8E8  40 82 00 30 */ bne lbl_8026F9D8
lbl_8026F9AC:
/* 8026F9AC 0026C8EC  FC 06 18 40 */ fcmpo cr0, f6, f3
/* 8026F9B0 0026C8F0  40 81 00 08 */ ble lbl_8026F9B8
/* 8026F9B4 0026C8F4  FC C0 18 90 */ fmr f6, f3
lbl_8026F9B8:
/* 8026F9B8 0026C8F8  FC 00 18 50 */ fneg f0, f3
/* 8026F9BC 0026C8FC  FC 06 00 40 */ fcmpo cr0, f6, f0
/* 8026F9C0 0026C900  40 80 00 08 */ bge lbl_8026F9C8
/* 8026F9C4 0026C904  FC C0 00 90 */ fmr f6, f0
lbl_8026F9C8:
/* 8026F9C8 0026C908  C0 03 00 00 */ lfs f0, 0(r3)
/* 8026F9CC 0026C90C  EC 00 30 2A */ fadds f0, f0, f6
/* 8026F9D0 0026C910  D0 03 00 00 */ stfs f0, 0(r3)
/* 8026F9D4 0026C914  48 00 00 54 */ b lbl_8026FA28
lbl_8026F9D8:
/* 8026F9D8 0026C918  C0 02 B7 E0 */ lfs f0, lbl_804551E0-_SDA2_BASE_(r2)
/* 8026F9DC 0026C91C  FC 06 00 40 */ fcmpo cr0, f6, f0
/* 8026F9E0 0026C920  40 81 00 28 */ ble lbl_8026FA08
/* 8026F9E4 0026C924  FC 06 20 40 */ fcmpo cr0, f6, f4
/* 8026F9E8 0026C928  40 80 00 40 */ bge lbl_8026FA28
/* 8026F9EC 0026C92C  EC 05 20 2A */ fadds f0, f5, f4
/* 8026F9F0 0026C930  D0 03 00 00 */ stfs f0, 0(r3)
/* 8026F9F4 0026C934  C0 03 00 00 */ lfs f0, 0(r3)
/* 8026F9F8 0026C938  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8026F9FC 0026C93C  40 81 00 2C */ ble lbl_8026FA28
/* 8026FA00 0026C940  D0 23 00 00 */ stfs f1, 0(r3)
/* 8026FA04 0026C944  48 00 00 24 */ b lbl_8026FA28
lbl_8026FA08:
/* 8026FA08 0026C948  FC 06 10 40 */ fcmpo cr0, f6, f2
/* 8026FA0C 0026C94C  40 81 00 1C */ ble lbl_8026FA28
/* 8026FA10 0026C950  EC 05 10 2A */ fadds f0, f5, f2
/* 8026FA14 0026C954  D0 03 00 00 */ stfs f0, 0(r3)
/* 8026FA18 0026C958  C0 03 00 00 */ lfs f0, 0(r3)
/* 8026FA1C 0026C95C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8026FA20 0026C960  40 80 00 08 */ bge lbl_8026FA28
/* 8026FA24 0026C964  D0 23 00 00 */ stfs f1, 0(r3)
lbl_8026FA28:
/* 8026FA28 0026C968  C0 03 00 00 */ lfs f0, 0(r3)
/* 8026FA2C 0026C96C  EC 01 00 28 */ fsubs f0, f1, f0
/* 8026FA30 0026C970  FC 00 02 10 */ fabs f0, f0
/* 8026FA34 0026C974  FC 20 00 18 */ frsp f1, f0
/* 8026FA38 0026C978  4E 80 00 20 */ blr
