/* 80127D2C 00124C6C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80127D30 00124C70  7C 08 02 A6 */ mflr r0
/* 80127D34 00124C74  90 01 00 14 */ stw r0, 0x14(r1)
/* 80127D38 00124C78  38 80 00 02 */ li r4, 2
/* 80127D3C 00124C7C  4B F8 A8 91 */ bl itemTriggerCheck__9daAlink_cFUc
/* 80127D40 00124C80  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80127D44 00124C84  7C 08 03 A6 */ mtlr r0
/* 80127D48 00124C88  38 21 00 10 */ addi r1, r1, 0x10
/* 80127D4C 00124C8C  4E 80 00 20 */ blr