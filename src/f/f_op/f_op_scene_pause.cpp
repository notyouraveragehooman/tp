/* f_op_scene_pause.cpp autogenerated by split.py v0.4 at 2021-02-15 20:28:00.829529 */

#include "global.h"

// additional symbols needed for f_op_scene_pause.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:28:00.829561
extern "C" {
void fopScnPause_Disable__FP11scene_class(void);
void fopScnPause_Enable__FP11scene_class(void);
void fpcEx_IsExist(void);
void fpcM_IsPause(void);
void fpcM_PauseDisable(void);
void fpcM_PauseEnable(void);
}

// additional symbols needed for f_op_scene_pause.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:28:00.829565

extern "C" {
// fopScnPause_Enable__FP11scene_class
// fopScnPause_Enable(scene_class*)
asm void fopScnPause_Enable__FP11scene_class(void) {
    nofralloc
#include "f/f_op/f_op_scene_pause/asm/func_80020548.s"
}

// fopScnPause_Disable__FP11scene_class
// fopScnPause_Disable(scene_class*)
asm void fopScnPause_Disable__FP11scene_class(void) {
    nofralloc
#include "f/f_op/f_op_scene_pause/asm/func_80020594.s"
}
};
