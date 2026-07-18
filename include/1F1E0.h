#ifndef FILE_1F1E0_H
#define FILE_1F1E0_H

#include <PR/ultratypes.h>

extern u16 D_800CA230;
extern u16 D_800CA238;
extern u16 D_800CA26C[];

void func_80020844(void);
void func_800208D4(void);
void func_8002092C(void);
void func_80020A54(void);
void func_80021620(void);
void func_80021658(void);
void func_80021660(void);
void func_8002167C(void);

// hacky workaround as we sometimes need x and y as s32
#ifndef func_8001FCA0_ARGS
#define func_8001FCA0_ARGS u16 actor_index, s16 x, s16 y
#endif
u8 func_8001FCA0(func_8001FCA0_ARGS);

#endif
