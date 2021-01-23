#ifndef D_BG_S_POLY_PASS_CHK_H_
#define D_BG_S_POLY_PASS_CHK_H_

#include "dolphin/types.h"

class cBgS_PolyPassChk {
public:
    virtual ~cBgS_PolyPassChk() {}
};

class dBgS_PolyPassChk : public cBgS_PolyPassChk {
public:
    dBgS_PolyPassChk();
    ~dBgS_PolyPassChk();

    bool ChkArrow() { return mArrow; }
    bool ChkBomb() { return mBomb; }
    bool ChkBoomerang() { return mBoomerang; }
    bool ChkCam() { return mCamera; }
    bool ChkHorse() { return mHorse; }
    bool ChkIronBall() { return mIronBall; }
    bool ChkLink() { return mLink; }
    bool ChkNoHorse();
    bool ChkObj() { return mObject; }
    bool ChkRope() { return mRope; }
    bool ChkStatue() { return mStatue; }
    bool ChkUnderwaterRoof() { return mUnderwaterRoof; }

    void ClrBomb();
    void ClrCam();
    void ClrIronBall();
    void ClrLink();
    void ClrObj();
    void ClrStatue();

    void SetArrow();
    void SetBomb();
    void SetBoomerang();
    void SetCam();
    void SetHorse();
    void SetIronBall();
    void SetLink();
    void SetObj();
    void SetPassChkInfo(dBgS_PolyPassChk& chk);
    void SetRope();
    void SetStatue();
    void SetUnderwaterRoof();

private:
    bool mObject;
    bool mCamera;
    bool mLink;
    bool mArrow;
    bool mBomb;
    bool mBoomerang;
    bool mRope;
    bool mUnderwaterRoof;
    bool mHorse;
    bool mStatue;
    bool mIronBall;
};

// Additional symbols needed for d_bg_s_poly_pass_chk.cpp
// autogenerated by split.py v0.3 at 2021-01-22 10:32:31.026275
extern u8 lbl_803ABA38;
extern u8 lbl_803ABA44;

// Additional symbols needed for d_bg_s_poly_pass_chk.cpp
// autogenerated by split.py v0.3 at 2021-01-22 10:32:31.090542
extern "C" {
void __ct__16dBgS_PolyPassChkFv(void);
void __dt__16dBgS_PolyPassChkFv(void);

void ChkNoHorse__16dBgS_PolyPassChkFv(void);

void ClrBomb__16dBgS_PolyPassChkFv(void);
void ClrCam__16dBgS_PolyPassChkFv(void);
void ClrLink__16dBgS_PolyPassChkFv(void);
void ClrObj__16dBgS_PolyPassChkFv(void);
void ClrStatue__16dBgS_PolyPassChkFv(void);

void SetArrow__16dBgS_PolyPassChkFv(void);
void SetBomb__16dBgS_PolyPassChkFv(void);
void SetBoomerang__16dBgS_PolyPassChkFv(void);
void SetCam__16dBgS_PolyPassChkFv(void);
void SetHorse__16dBgS_PolyPassChkFv(void);
void SetIronBall__16dBgS_PolyPassChkFv(void);
void SetLink__16dBgS_PolyPassChkFv(void);
void SetObj__16dBgS_PolyPassChkFv(void);
void SetPassChkInfo__16dBgS_PolyPassChkFR16dBgS_PolyPassChk(void);
void SetRope__16dBgS_PolyPassChkFv(void);
void SetStatue__16dBgS_PolyPassChkFv(void);
void SetUnderwaterRoof__16dBgS_PolyPassChkFv(void);

void ClrIronBall__16dBgS_PolyPassChkFv(void);
void func_80078FAC(void);
}

#endif  // D_BG_S_POLY_PASS_CHK_H_
