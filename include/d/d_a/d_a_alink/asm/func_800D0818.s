/* 800D0818 000CD758  54 80 06 3E */ clrlwi r0, r4, 0x18
/* 800D081C 000CD75C  60 00 80 00 */ ori r0, r0, 0x8000
/* 800D0820 000CD760  B0 03 31 12 */ sth r0, 0x3112(r3)
/* 800D0824 000CD764  98 A3 2F AC */ stb r5, 0x2fac(r3)
/* 800D0828 000CD768  90 C3 28 08 */ stw r6, 0x2808(r3)
/* 800D082C 000CD76C  4E 80 00 20 */ blr