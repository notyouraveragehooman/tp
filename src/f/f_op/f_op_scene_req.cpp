/* f_op_scene_req.cpp autogenerated by split.py v0.4 at 2021-02-15 20:29:06.358849 */

#include "global.h"

// additional symbols needed for f_op_scene_req.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:29:06.358877
extern "C" {
void _restgpr_26(void);
void _savegpr_26(void);
void cPhs_Do(void);
void cPhs_Set(void);
void fopOvlpM_Cancel__Fv(void);
void fopOvlpM_ClearOfReq__Fv(void);
void fopOvlpM_IsDoingReq__Fv(void);
void fopOvlpM_IsDone__Fv(void);
void fopOvlpM_Request__FsUs(void);
void fopOvlpM_ToldAboutID__FUi(void);
void fopScnPause_Disable__FP11scene_class(void);
void fopScnPause_Enable__FP11scene_class(void);
void fopScnRq_Execute(void);
void fopScnRq_FadeRequest(void);
void fopScnRq_Handler(void);
void fopScnRq_ReRequest(void);
void fopScnRq_Request(void);
void fopScnRq_phase_ClearOverlap(void);
void fpcEx_SearchByID(void);
void fpcNdRq_Delete(void);
void fpcNdRq_Execute(void);
void fpcNdRq_Handler(void);
void fpcNdRq_ReRequest(void);
void fpcNdRq_Request(void);
void func_8001EE64(void);
void func_8001EE84(void);
void func_8001EEB4(void);
void func_8001EEE4(void);
void func_8001EF6C(void);
void func_8001EFB0(void);
}

// additional symbols needed for f_op_scene_req.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:29:06.358882
extern u8 lbl_803A38C8;
extern u8 lbl_80450CE0;

extern "C" {
// fopScnRq_phase_ClearOverlap__FP19scene_request_class
// fopScnRq_phase_ClearOverlap(scene_request_class*)
asm void fopScnRq_phase_ClearOverlap(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EE34.s"
}

// fopScnRq_phase_Execute__FP19scene_request_class
// fopScnRq_phase_Execute(scene_request_class*)
asm void func_8001EE64(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EE64.s"
}

// fopScnRq_phase_IsDoingOverlap__FP19scene_request_class
// fopScnRq_phase_IsDoingOverlap(scene_request_class*)
asm void func_8001EE84(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EE84.s"
}

// fopScnRq_phase_IsDoneOverlap__FP19scene_request_class
// fopScnRq_phase_IsDoneOverlap(scene_request_class*)
asm void func_8001EEB4(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EEB4.s"
}

// fopScnRq_phase_Done__FP19scene_request_class
// fopScnRq_phase_Done(scene_request_class*)
asm void func_8001EEE4(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EEE4.s"
}

// fopScnRq_Execute__FP19scene_request_class
// fopScnRq_Execute(scene_request_class*)
asm void fopScnRq_Execute(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EF24.s"
}

// fopScnRq_PostMethod__FPvP19scene_request_class
// fopScnRq_PostMethod(void*, scene_request_class*)
asm void func_8001EF6C(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EF6C.s"
}

// fopScnRq_Cancel__FP19scene_request_class
// fopScnRq_Cancel(scene_request_class*)
asm void func_8001EFB0(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EFB0.s"
}

// fopScnRq_FadeRequest__FsUs
// fopScnRq_FadeRequest(s16, u16)
asm void fopScnRq_FadeRequest(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001EFF0.s"
}

// fopScnRq_Request__FiP11scene_classsPvsUs
// fopScnRq_Request(int, scene_class*, s16, void*, s16, u16)
asm void fopScnRq_Request(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001F034.s"
}

// fopScnRq_ReRequest__FUisPv
// fopScnRq_ReRequest(unsigned int, s16, void*)
asm void fopScnRq_ReRequest(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001F0FC.s"
}

// fopScnRq_Handler__Fv
// fopScnRq_Handler(void)
asm void fopScnRq_Handler(void) {
    nofralloc
#include "f/f_op/f_op_scene_req/asm/func_8001F11C.s"
}
};
