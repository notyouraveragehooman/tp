/* 8026EC3C 0026BB7C  C0 22 B7 CC */ lfs f1, lbl_804551CC-_SDA2_BASE_(r2)
/* 8026EC40 0026BB80  3C 60 80 45 */ lis r3, lbl_80450AEC@ha
/* 8026EC44 0026BB84  C0 03 0A EC */ lfs f0, lbl_80450AEC@l(r3)
/* 8026EC48 0026BB88  EC 01 00 32 */ fmuls f0, f1, f0
/* 8026EC4C 0026BB8C  D0 0D 8C 00 */ stfs f0, lbl_80451180-_SDA_BASE_(r13)
/* 8026EC50 0026BB90  4E 80 00 20 */ blr