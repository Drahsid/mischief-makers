#include "common.h"
#include "actor.h"
#include "common_structs.h"
#include "music.h"
#include "player_actions.h"
#include "rle.h"

#define D_80335D58 ((u16*)(ASSET_DEST3 + 0x15D58))

extern u16 D_800D28E4;
extern u16 D_800D44A8[];
extern u16 D_800D44F4[];
extern u16 D_800D4518[];
extern u16 D_800D46A8[];
extern u16 D_800D47B4[];
extern u16 D_800D4958[];
extern u16 D_800D4AA4[];
extern u16 D_800D4F90[];
extern u16 D_800D5348[];

s16 D_800E4560[] = {
    0x00F2, 0x0200, 0x00F4, 0x0001, 0x00F6, 0x0001, 0x00F8, 0x0002,
    0x00F6, 0x0001, 0x00F4, 0x0001, 0xFFFA, 0x0000,
};

s16 D_800E457C[] = {
    0x00FA, 0x0002, 0x00FC, 0x0002, 0x00FE, 0x0010, 0x00FC, 0x0008,
    0x00FA, 0x0008, 0x0000, 0x0000,
};

u16 D_800E4594[] = {
#include "textures/tlut_RGBA16__D_800E4594.inc.c"
};

s16 D_800E45D0[] = {
    0x1810, 0x0400, 0x000D, 0x1812, 0x0400, 0x000C, 0x1804, 0x0400,
    0x0010, 0x0000, 0x0000, 0x0040, 0x1800, 0x8400, 0x0010, 0x0000,
    0x0000, 0x0040, 0x1808, 0x8400, 0x0011, 0x0000, 0x0000, 0x0040,
    0x180A, 0x8640, 0x0010, 0x180A, 0x87C0, 0x0010, 0x1806, 0x0400,
    0x0000, 0x0000, 0x0000, 0x0040, 0x1800, 0x8400, 0x0000, 0x0000,
    0x0000, 0x0040, 0x1808, 0x8400, 0x0001, 0x0000, 0x0000, 0x0040,
    0x180A, 0x8640, 0x0000, 0x180A, 0x87C0, 0x0000, 0x0000, 0x0000,
    0x0040, 0x1800, 0x8400, 0x0008, 0x0000, 0x0000, 0x0040, 0x180C,
    0x8500, 0x0008, 0x0000, 0x0000, 0x0040, 0x180E, 0x8400, 0x0009,
    0x0000, 0x0000, 0x0040, 0x1800, 0x8400, 0x0004, 0x0000, 0x0000,
    0x0040, 0x180C, 0x8500, 0x0004, 0x0000, 0x0000, 0x0040, 0x180E,
    0x8400, 0x0005, 0x0000, 0x0000, 0x0040, 0x1802, 0x8400, 0x0007,
    0x183E, 0x0400, 0x000C, 0x0000,
};

s16 D_800E4698[] = {
    0x0001, 0x0000, 0x0000, 0x0200, 0x0000, 0x0002, 0x0001, 0xFFE8,
    0x0200, 0x0000, 0x0003, 0x0001, 0xFFE8, 0x0200, 0x0000, 0x0004,
    0x0003, 0x0000, 0x0200, 0x0000, 0x0005, 0x0004, 0x0011, 0x0200,
    0x0000, 0x0006, 0x0005, 0x0007, 0x0200, 0x0000, 0x0007, 0x0006,
    0x000D, 0x0200, 0x0000, 0x0008, 0x0007, 0x000C, 0x0200, 0x0000,
    0x0009, 0x0008, 0x000E, 0x0200, 0x0000, 0x000A, 0x0008, 0x000E,
    0x0200, 0x0000, 0x000B, 0x0001, 0x0015, 0x0200, 0x0000, 0x000C,
    0x000B, 0x0000, 0x0200, 0x0000, 0x000D, 0x000C, 0x0011, 0x0200,
    0x0000, 0x000E, 0x000D, 0x0007, 0x0200, 0x0000, 0x000F, 0x000E,
    0x000D, 0x0200, 0x0000, 0x0010, 0x000F, 0x000C, 0x0200, 0x0000,
    0x0011, 0x0010, 0x000E, 0x0200, 0x0000, 0x0012, 0x0010, 0x000E,
    0x0200, 0x0000, 0x0013, 0x0001, 0x0013, 0x0200, 0x0000, 0x0014,
    0x0013, 0x0008, 0x0200, 0x0000, 0x0015, 0x0014, 0x000A, 0x0200,
    0x0000, 0x0016, 0x0015, 0x0008, 0x0200, 0x0000, 0x0017, 0x0016,
    0x0007, 0x0200, 0x0000, 0x0018, 0x0017, 0x0006, 0x0200, 0x0000,
    0x0019, 0x0001, 0x0013, 0x0200, 0x0000, 0x001A, 0x0019, 0x0006,
    0x0200, 0x0000, 0x001B, 0x001A, 0x000A, 0x0200, 0x0000, 0x001C,
    0x001B, 0x0008, 0x0200, 0x0000, 0x001D, 0x001C, 0x0007, 0x0200,
    0x0000, 0x001E, 0x001D, 0x0006, 0x0200, 0x0000, 0x001F, 0x0002,
    0xFFF0, 0x0200, 0x0000, 0x0020, 0x001F, 0xFFF7, 0x0200, 0x0000,
    0x0021, 0x0002, 0xFFE9, 0x0200, 0x0000, 0x7FFF,
};

u32 D_800E47E4[] = {
    0x00000000, 0x0000FFFF, 0x0048000A, 0x00080002,
    0x00000000, 0x02580000, 0x00000000, 0x01780000,
    0x0000FFFC, 0x03E00000, 0x00400000, 0x00100000,
    0x02700000, 0x00080000, 0x03B00000, 0x01A80000,
    0x0000FFFC, 0x03C80000, 0x00300000, 0x02E00000,
    0x00100001, 0x00000000, 0x03600000, 0x00700004,
    0x01400000, 0x03300000, 0x00600003, 0x00000000,
    0x03300000, 0x00400004, 0x01000000, 0x00080000,
    0x00300000, 0x02F80000,
};

u32 D_800E486C[] = {
    0x0000FFFC, 0x0000FFFF, 0x0048000A, 0x00200000,
    0x00000000, 0x02580000, 0x00000000, 0x01780000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03F80000,
    0x02A80000, 0x00080000, 0x03B00000, 0x01A80000,
    0x0000FFFC, 0x03780000, 0x00700000, 0x02D00000,
    0x0040FFFF, 0x00000000, 0x03280000, 0x00700004,
    0x01580000, 0x03300000, 0x00700001, 0x00000000,
    0x0320FFFF, 0x00400004, 0x01000001, 0x00080000,
    0x00500000, 0x02F80000,
};

u32 D_800E48F4[] = {
    0x0000000F, 0x03D80000, 0x00180000, 0x00400000,
    0x00000000, 0x02580000, 0x0000FFFF, 0x01600000,
    0x0018FFFD, 0x0348FFFE, 0x0090FFFE, 0x00180000,
    0x02A80000, 0x03E80000, 0x00000000, 0x01680000,
    0x0000FFFD, 0x0370FFFD, 0x00B0FFFD, 0x02E00000,
    0x03A00001, 0x00000000, 0x03C80000, 0x00480003,
    0x00980001, 0x0330FFFE, 0x03980000, 0x00000000,
    0x03280000, 0x00500000, 0x01180000, 0x00580002,
    0x03E00000, 0x03500000,
};

u32 D_800E497C[] = {
    0x0004000C, 0x03C00000, 0x00180000, 0x00580000,
    0x00000000, 0x02580002, 0x0000FFFF, 0x01500000,
    0x0018FFFD, 0x0368FFFE, 0x0070FFFE, 0x00300000,
    0x02A80002, 0x03E80000, 0x00000000, 0x01500000,
    0x0000FFFD, 0x0390FFFD, 0x0098FFFD, 0x02E00000,
    0x03B00001, 0x00000000, 0x03C00000, 0x00480003,
    0x00700001, 0x0330FFFE, 0x03A80000, 0x00000000,
    0x03100000, 0x00500000, 0x01000000, 0x00580002,
    0x03E00005, 0x03780000,
};

u32 D_800E4A04[] = {
    0x00000000, 0x00500000, 0x03D80000, 0x03F80006,
    0x00000000, 0x03B80002, 0x00000002, 0x01500000,
    0x0018FFFD, 0x03080000, 0x00C00000, 0x03980005,
    0x02A80002, 0x01580000, 0x0000FFFF, 0x01100000,
    0x0000FFFD, 0x0358FFFF, 0x00F0FFFF, 0x02E0FFFE,
    0x03E80001, 0x00000000, 0x02D00000, 0x00400001,
    0x00700001, 0x03300005, 0x03D80000, 0x00000000,
    0x02C80000, 0x00400000, 0x0068FFFE, 0x00780002,
    0x00480000, 0x03180000,
};

u32 D_800E4A8C[] = {
    0x0000001C, 0x00380000, 0x00000000, 0x00100009,
    0x00000000, 0x03C80002, 0x00000001, 0x03C80000,
    0x00180000, 0x03780000, 0x00480000, 0x03A80004,
    0x02A80002, 0x01800000, 0x00000001, 0x03D80000,
    0x0000FFFD, 0x03A0FFFF, 0x00680000, 0x02F00002,
    0x00A80001, 0x00000000, 0x03D80000, 0x00000000,
    0x01180001, 0x03480007, 0x00980000, 0x00000000,
    0x00180000, 0x00000000, 0x00C80001, 0x00780002,
    0x01080000, 0x03000000,
};

u32 D_800E4B14[] = {
    0xFFFC0010, 0x00000000, 0x00180000, 0x00300000,
    0x00000000, 0x02580002, 0x00000000, 0x01600000,
    0x00000000, 0x03A0FFFD, 0x00800000, 0x03E00000,
    0x02A80002, 0x00000000, 0x00000000, 0x01580000,
    0x0000FFFE, 0x03A8FFFD, 0x00880000, 0x02B00002,
    0x03F80001, 0x00000000, 0x03F00000, 0x00000002,
    0x00C00001, 0x03180000, 0x03E00002, 0x00000000,
    0x03180000, 0x00000006, 0x01800004, 0x00780002,
    0x00680000, 0x03280000,
};

u32 D_800E4B9C[] = {
    0x00030000, 0x00000000, 0x00180000, 0x00180000,
    0x00000000, 0x02700001, 0x0000FFFD, 0x01500000,
    0x00280000, 0x03D8FFFD, 0x00400000, 0x03E80000,
    0x02100002, 0x00600000, 0x0000FFFF, 0x01700000,
    0x0028FFFE, 0x03E0FFFE, 0x00580000, 0x02B00002,
    0x03E00001, 0x00000000, 0x03D80000, 0x00000002,
    0x00C80001, 0x03180000, 0x03B80002, 0x0000FFFE,
    0x03400000, 0x00000006, 0x01680004, 0x00780002,
    0x00600000, 0x03280000,
};

u32 D_800E4C24[] = {
    0x0000FFFC, 0x0000000A, 0x0048000A, 0x00200000,
    0x00000000, 0x0338FFF3, 0x00000000, 0x01800000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03F80000,
    0x02780000, 0x01100000, 0x03B00000, 0x01A80000,
    0x0000FFFC, 0x03780000, 0x00700000, 0x02D00000,
    0x0040FFFF, 0x00000000, 0x03280000, 0x00700004,
    0x01580000, 0x03300000, 0x00700001, 0x00000000,
    0x0320FFFF, 0x00400004, 0x01000001, 0x00080000,
    0x00500000, 0x02F80000,
};

u32 D_800E4CAC[] = {
    0x0000FFFC, 0x03E0FFFF, 0x0060000A, 0x00400000,
    0x00000000, 0x02800002, 0x00000000, 0x01700000,
    0x0000FFFC, 0x03900000, 0x00680000, 0x00100000,
    0x02A80000, 0x03C00000, 0x00000002, 0x01800000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x02C8FFFC,
    0x0088FFFB, 0x00000000, 0x02500000, 0x00E00002,
    0x00E80000, 0x03200001, 0x00200000, 0x00000000,
    0x03E8FFFC, 0x00800001, 0x00900001, 0x00080000,
    0x00500000, 0x02F80000,
};

u32 D_800E4D34[] = {
    0x00000001, 0x03E0FFFF, 0x0060000A, 0x00400000,
    0x00000000, 0x02880000, 0x0000FFFF, 0x01880000,
    0x0000FFFC, 0x03880000, 0x00880000, 0x00100000,
    0x02A80000, 0x03980000, 0x00000000, 0x01900000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03600001,
    0x00780001, 0x00000000, 0x02C80000, 0x00900002,
    0x01780000, 0x02E80000, 0x00500003, 0x00000000,
    0x0388FFFF, 0x00800000, 0x00E80001, 0x00080000,
    0x00500000, 0x02F80000,
};

u32 D_800E4DBC[] = {
    0x0000FFF7, 0x0000FFFF, 0x0040000A, 0x00180000,
    0x00000000, 0x02780000, 0x00000000, 0x01700000,
    0x0000FFFC, 0x03D00000, 0x00480000, 0x03F00000,
    0x02A80000, 0x03C00006, 0x00000000, 0x01A80000,
    0x0000FFFC, 0x03880000, 0x00980000, 0x03480001,
    0x0030FFFE, 0x00080000, 0x03800000, 0x00A80003,
    0x00600000, 0x02F8FFFD, 0x03800000, 0x00000000,
    0x0070FFFF, 0x00900001, 0x00980000, 0x00080000,
    0x00B80000, 0x02F80000,
};

u32 D_800E4E44[] = {
    0x0000FFFC, 0x0020FFFF, 0x0020000A, 0x00000001,
    0x00000000, 0x02280000, 0x00000002, 0x01800000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03D80000,
    0x02A80000, 0x00180002, 0x00000000, 0x01700000,
    0x0000FFFC, 0x03900000, 0x00680000, 0x02F8FFFC,
    0x03E00001, 0x00000000, 0x00180000, 0x00780001,
    0x00780000, 0x02D0FFF9, 0x00280006, 0x0050FFF8,
    0x02500001, 0x00880000, 0x01100000, 0x00080000,
    0x00500000, 0x02F80000,
};

u32 D_800E4ECC[] = {
    0x00000001, 0x0020FFFF, 0x0020000A, 0x03F80000,
    0x00000000, 0x02100000, 0x00000000, 0x01900000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03D80000,
    0x02A80000, 0x00080000, 0x0000FFFF, 0x01880000,
    0x0000FFFC, 0x03880000, 0x00880000, 0x02C80002,
    0x0010FFFE, 0x00000000, 0x03980002, 0x00700001,
    0x01000000, 0x03500004, 0x00280006, 0x0050FFF8,
    0x02B0FFFF, 0x00C80003, 0x01500001, 0x00080000,
    0x00500000, 0x02F80000,
};

u32 D_800E4F54[] = {
    0x0000FFF7, 0x0000FFFF, 0x0040000A, 0x00180000,
    0x00000000, 0x02400006, 0x00000000, 0x01A80000,
    0x0000FFFC, 0x03880000, 0x00980000, 0x00000000,
    0x02A80000, 0x03F00000, 0x00000000, 0x01700000,
    0x0000FFFC, 0x03D00000, 0x00480000, 0x02D0FFFE,
    0x03B8FFFF, 0x00000000, 0x00580000, 0x00600000,
    0x00C00000, 0x0348FFFE, 0x00400006, 0x00000000,
    0x0368FFFB, 0x00800001, 0x00980001, 0x00080000,
    0x00B80000, 0x02F80000,
};

u32 D_800E4FDC[] = {
    0x0004FFEC, 0x0000FFFF, 0x0048000A, 0x03F00002,
    0x00000000, 0x02980000, 0x0000FFFE, 0x01B00000,
    0x0000FFFC, 0x02F80000, 0x00980000, 0x00200000,
    0x02A80000, 0x00080000, 0x03B00000, 0x01D00000,
    0x0000FFFC, 0x02F80000, 0x00980000, 0x02E0FFF8,
    0x0020FFFD, 0x00000000, 0x03080000, 0x00780005,
    0x01B00000, 0x0330FFF8, 0x0080FFFB, 0x00380000,
    0x02E00000, 0x00200004, 0x01600000, 0x00080000,
    0x03C00000, 0x02F80000,
};

u32 D_800E5064[] = {
    0x0000FFF7, 0x03E0FFFF, 0x0060000A, 0x00600000,
    0x00000000, 0x02800002, 0x00000000, 0x01700000,
    0x0000FFFC, 0x03900000, 0x00680000, 0x03F00000,
    0x02A80000, 0x03C00000, 0x00000002, 0x01800000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x02C8FFFC,
    0x0088FFFB, 0x00000000, 0x02500000, 0x00E00002,
    0x00E80000, 0x03380001, 0x00580000, 0x0000FFFB,
    0x0390FFFE, 0x00800001, 0x01080001, 0x00080000,
    0x03D80000, 0x03000000,
};

u32 D_800E50EC[] = {
    0x00000001, 0x03E0FFFF, 0x0060000A, 0x00400000,
    0x00000000, 0x02880000, 0x0000FFFF, 0x01880000,
    0x0000FFFC, 0x03880000, 0x00880000, 0x00100000,
    0x02A80000, 0x03980000, 0x00000000, 0x01900000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03580004,
    0x00600001, 0x00000000, 0x02480000, 0x00900002,
    0x0078FFF9, 0x02E80000, 0x00500003, 0x00000000,
    0x0388FFFF, 0x00800000, 0x00E80001, 0x00080000,
    0x03E00000, 0x03000000,
};

u32 D_800E5174[] = {
    0x0000FFFF, 0x0000FFFF, 0x0020000A, 0x00180000,
    0x00000000, 0x02780000, 0x00000000, 0x01700000,
    0x0000FFFC, 0x03D00000, 0x00480000, 0x03F00000,
    0x02A80000, 0x03C00006, 0x00000000, 0x01A80000,
    0x0000FFFC, 0x03880000, 0x00980000, 0x03480002,
    0x0088FFFE, 0x00080000, 0x03980000, 0x00A80003,
    0x00500000, 0x02C80000, 0x03780000, 0x00000000,
    0x0330FFFF, 0x00900001, 0x00980000, 0x00080000,
    0x00B80000, 0x03200000,
};

u32 D_800E51FC[] = {
    0x0000FFF7, 0x0020FFFF, 0x0020000A, 0x00180001,
    0x00000000, 0x02280000, 0x00000002, 0x01800000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03B80000,
    0x02A80000, 0x00180002, 0x00000000, 0x01700000,
    0x0000FFFC, 0x03900000, 0x00680000, 0x02F8FFFE,
    0x00600001, 0x0000FFFF, 0x03800000, 0x00780001,
    0x01180000, 0x02D0FFF9, 0x00280006, 0x0050FFF8,
    0x02500001, 0x00880000, 0x01100000, 0x00080000,
    0x03D80000, 0x03000000,
};

u32 D_800E5284[] = {
    0x00000001, 0x0020FFFF, 0x0020000A, 0x03F80000,
    0x00000000, 0x02100000, 0x00000000, 0x01900000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03D80000,
    0x02A80000, 0x00080000, 0x0000FFFF, 0x01880000,
    0x0000FFFC, 0x03880000, 0x00880000, 0x02C80002,
    0x0010FFFE, 0x00000000, 0x03980002, 0x00700001,
    0x01000000, 0x03180003, 0x00500006, 0x0050FFFD,
    0x0208FFFF, 0x00A00003, 0x0050FFF9, 0x00080000,
    0x03D80000, 0x03000000,
};

u32 D_800E530C[] = {
    0x0000FFFF, 0x0000FFFF, 0x0020000A, 0x00180000,
    0x00000000, 0x02400006, 0x00000000, 0x01A80000,
    0x0000FFFC, 0x03880000, 0x00980000, 0x00000000,
    0x02A80000, 0x03F00000, 0x00000000, 0x01700000,
    0x0000FFFC, 0x03D00000, 0x00480000, 0x02A80002,
    0x03A0FFFF, 0x00000000, 0x03500000, 0x00600000,
    0x00800002, 0x03600001, 0x00680006, 0x0000FFFE,
    0x03D8FFFF, 0x00800001, 0x00780001, 0x00080000,
    0x00B80000, 0x03200000,
};

u32 D_800E5394[] = {
    0x0000FFFC, 0x00000008, 0x01000000, 0x00200000,
    0x00000000, 0x02580000, 0x00000000, 0x02980000,
    0x0000FFFC, 0x03A00000, 0x00880000, 0x03F80000,
    0x00000000, 0x03900003, 0x00000000, 0x01600000,
    0x0000FFFC, 0x03780000, 0x00700000, 0x02D00000,
    0x03B8FFFF, 0x00000000, 0x00880000, 0x03800000,
    0x03C00000, 0x03300000, 0x00580001, 0x00000000,
    0x03800000, 0x00800000, 0x00400001, 0x0000001F,
    0x00100000, 0x02F80000,
};

u32 D_800E541C[] = {
    0x00000006, 0x00000008, 0x01000000, 0x00200000,
    0x00000000, 0x02980000, 0x00000000, 0x02680000,
    0x0000FFFC, 0x03D00000, 0x00400004, 0x03F80000,
    0x00000000, 0x03500003, 0x00000000, 0x01900000,
    0x0000FFFC, 0x03E00003, 0x00480000, 0x02D00000,
    0x03E0FFFF, 0x00000000, 0x00600000, 0x03800000,
    0x03F00000, 0x03300000, 0x00280001, 0x00000000,
    0x03B00000, 0x00800000, 0x00100001, 0x0000001F,
    0x00100005, 0x02F80000,
};

u32 D_800E54A4[] = {
    0x00000004, 0x0000FFFF, 0x0070000A, 0x00200000,
    0x00000000, 0x02580000, 0x00000000, 0x01780000,
    0x0000FFFC, 0x03D00000, 0x00400003, 0x03F80000,
    0x02A80000, 0x00080000, 0x03B00000, 0x01A80000,
    0x0000FFFC, 0x03C80000, 0x00300002, 0x02D00000,
    0x0000FFFF, 0x00000000, 0x03280000, 0x00700004,
    0x00B00000, 0x03300000, 0x03C00001, 0x00000000,
    0x0308FFFF, 0x00400004, 0x00E80001, 0x00080000,
    0x00C00000, 0x02C80000,
};

u32 D_800E552C[] = {
    0x0000FFF9, 0x03D80000, 0x0018000B, 0x00400000,
    0x00000000, 0x02580000, 0x0000FFFF, 0x01600000,
    0x0018FFFD, 0x0348FFFE, 0x0090FFFE, 0x00180000,
    0x02A80000, 0x03E80000, 0x00000000, 0x01680000,
    0x0000FFFD, 0x0370FFFD, 0x00B0FFFD, 0x02E00000,
    0x03A00001, 0x00000000, 0x03C80000, 0x00480003,
    0x00980001, 0x0330FFFE, 0x03980000, 0x00000000,
    0x03280000, 0x00500000, 0x01180000, 0x00580002,
    0x03E00000, 0x03580000,
};

u32 D_800E55B4[] = {
    0x0004FFF5, 0x03C00000, 0x00180009, 0x00580000,
    0x00000000, 0x02580002, 0x0000FFFF, 0x01500000,
    0x0018FFFD, 0x0368FFFE, 0x0070FFFE, 0x00300000,
    0x02A80002, 0x03E80000, 0x00000000, 0x01500000,
    0x0000FFFD, 0x0390FFFD, 0x0098FFFD, 0x02E00000,
    0x03B00001, 0x00000000, 0x03C00000, 0x00480003,
    0x00700001, 0x0330FFFE, 0x03A80000, 0x00000000,
    0x03100000, 0x00500000, 0x01000000, 0x00580002,
    0x03E00005, 0x03680000,
};

u32 D_800E563C[] = {
    0x00000000, 0x0040FFFF, 0x0368000A, 0x03B00005,
    0x00000000, 0x00A80000, 0x0000FFFE, 0x00A0FFFA,
    0x0000FFFC, 0x02D00000, 0x01080003, 0x03A00000,
    0x02A80000, 0x0190FFFC, 0x03B0FFFD, 0x0388FFFD,
    0x0000FFFC, 0x03D8FFFD, 0x0030FFFF, 0x02900003,
    0x0368FFF8, 0x00000000, 0x03680000, 0x00700004,
    0x00280000, 0x03080002, 0x00A8FFFA, 0x00000000,
    0x0048FFFF, 0x00400004, 0x01180001, 0x00380002,
    0x01480000, 0x03980000,
};

u32 D_800E56C4[] = {
    0x0000FFFA, 0x03E8FFFF, 0x03C80013, 0x00500001,
    0x00000000, 0x03980000, 0x0000FFFE, 0x0368FFFA,
    0x0000FFFC, 0x03F0FFFB, 0x00300003, 0x0038FFFD,
    0x02B00000, 0x01D00001, 0x03B0FFFD, 0x00E0FFFD,
    0x0000FFFC, 0x02E00000, 0x01280000, 0x03580003,
    0x00A8FFF8, 0x00000000, 0x00680000, 0x00700004,
    0x00E00000, 0x02A80002, 0x03B0FFF9, 0x00000000,
    0x0338FFFF, 0x00400004, 0x00680001, 0x00380002,
    0x00A0FFF5, 0x03880000,
};

s16* D_800E574C[] = {
    (s16*)D_800E47E4, (s16*)D_800E486C, (s16*)D_800E48F4, (s16*)D_800E497C,
    (s16*)D_800E4A04, (s16*)D_800E4A8C, (s16*)D_800E4B14, (s16*)D_800E4B9C,
    (s16*)D_800E4C24, (s16*)D_800E4CAC, (s16*)D_800E4D34, (s16*)D_800E4DBC,
    (s16*)D_800E4E44, (s16*)D_800E4ECC, (s16*)D_800E4F54, (s16*)D_800E4FDC,
    (s16*)D_800E5064, (s16*)D_800E50EC, (s16*)D_800E5174, (s16*)D_800E51FC,
    (s16*)D_800E5284, (s16*)D_800E530C, (s16*)D_800E5394, (s16*)D_800E541C,
    (s16*)D_800E5394, (s16*)D_800E5394, (s16*)D_800E5394, (s16*)D_800E5394,
    (s16*)D_800E54A4, (s16*)D_800E552C, (s16*)D_800E55B4, (s16*)D_800E563C,
    (s16*)D_800E56C4, NULL,
};

s16 D_800E57D4[] = {
    0x0000, 0x0020, 0x001C, 0x0000, 0x0010, 0x0004, 0x0001, 0x0020,
    0x001C, 0x0001, 0x0010, 0x0004, 0x7FFE, 0x0000,
};

s16 D_800E57F0[] = {
    0x0000, 0x0000, 0x0000, 0x0008, 0x0006, 0x0000, 0x7FFD, 0x0001,
    0x0000, 0x0010, 0x0004, 0x7FFF,
};

s16 D_800E5808[] = {
    0x0000, 0x0000, 0x0000, 0x000F, 0x0010, 0x0004, 0x000F, 0x0010,
    0x0000, 0x7FFF,
};

s16 D_800E581C[] = {
    0x0000, 0x0000, 0x0000, 0x000F, 0x0008, 0x0003, 0x000F, 0x0008,
    0x0004, 0x7FFF,
};

s16 D_800E5830[] = {
    0x001F, 0x0007, 0x0000, 0x0020, 0x0007, 0x0000, 0x7FFE, 0x0000,
};

s16 D_800E5840[] = {
    0x0000, 0x0000, 0x0000, 0x0009, 0x000A, 0x0000, 0x000A, 0x0009,
    0x0000, 0x000B, 0x0008, 0x0003, 0x7FFD, 0x0001, 0x000B, 0x0005,
    0x0000, 0x7FFF,
};

s16 D_800E5864[] = {
    0x0000, 0x0000, 0x0000, 0x000C, 0x000A, 0x0000, 0x000D, 0x0009,
    0x0000, 0x000E, 0x0008, 0x0003, 0x7FFD, 0x0001, 0x000E, 0x0005,
    0x0000, 0x7FFF,
};

s16 D_800E5888[] = {
    0x0010, 0x0008, 0x0000, 0x7FFD, 0x0001, 0x0011, 0x0008, 0x0000,
    0x0012, 0x0008, 0x0000, 0x0013, 0x0008, 0x0000, 0x7FFD, 0x0001,
    0x0014, 0x0008, 0x0000, 0x0015, 0x0008, 0x0000, 0x7FFE, 0x0000,
    0x001D, 0x0002, 0x0000, 0x001E, 0x0004, 0x0000, 0x001D, 0x0003,
    0x0000, 0x001E, 0x0003, 0x0000, 0x7FFE, 0x0000,
};

s16 D_800E58D4[] = {
    0x0002, 0x0002, 0x0000, 0x0003, 0x0004, 0x0002, 0x0002, 0x0003,
    0x0000, 0x0003, 0x0003, 0x0000, 0x7FFE, 0x0000,
};

u16 D_800E58F0[] = {
    0x0000, 0x0000, 0x0000, 0x0004, 0x000B, 0x0000, 0x0005, 0x000E,
    0x0008, 0x0005, 0x0018, 0x0000, 0x0006, 0x0030, 0x0000, 0x7FFF,
};

s16 D_800E5910[] = {
    0x0006, 0x001C, 0x0000, 0x0007, 0x001C, 0x000C, 0x0007, 0x0010,
    0x0006, 0x0007, 0x001C, 0x0006, 0x0006, 0x0020, 0x000C, 0x0006,
    0x0010, 0x0004, 0x7FFE, 0x0000,
};

s16 D_800E5938[] = {
    0x0000, 0x0000, 0x0000, 0x0004, 0x0018, 0x0014, 0x0002, 0x0020,
    0x0000, 0x7FFF, 0x0016, 0x0008, 0x0000, 0x0017, 0x0008, 0x0000,
    0x7FFE, 0x0000, 0x0000, 0x0000, 0x0000, 0x001C, 0x0010, 0x0004,
    0x001C, 0x0010, 0x0000, 0x7FFF,
};

s16 D_800E5970[] = {
    0x183E, 0x000E, 0x1840, 0x0006, 0x1842, 0x000E, 0x1840, 0x0006,
    0xFFF8, 0x0000,
};

s16 D_800E5984[] = {
    0x183E, 0x0007, 0x1840, 0x0003, 0x1842, 0x0007, 0x1840, 0x0003,
    0xFFF8, 0x0000,
};

s16 D_800E5998[] = {
    0x184C, 0x0008, 0x184E, 0x0008, 0xFFFC, 0x0000, 0x1844, 0x0003,
    0x1846, 0x0003, 0x1848, 0x0003, 0x184A, 0x0004, 0x0000, 0x0000,
};

s16 D_800E59B8[] = {
    0x184A, 0x0005, 0x1846, 0x0003, 0x1848, 0x0003, 0xFFFC, 0x0000,
    0x184C, 0x0004, 0x184E, 0x0008, 0x1850, 0x0004, 0x1852, 0x0004,
    0x1854, 0x0003, 0x0000, 0x0000,
};

s16 D_800E59E0[] = {
    0x1858, 0x0008, 0x185A, 0x0004, 0x185C, 0x0002, 0x185E, 0x0004,
    0x185A, 0x0004, 0xFFF6, 0x0000, 0x1856, 0x0004, 0x1858, 0x0008,
    0x185A, 0x0004, 0x185C, 0x0004, 0x185E, 0x0004, 0x0000, 0x0000,
    0x1858, 0x0008, 0x185A, 0x0004, 0x185C, 0x0002, 0x185E, 0x0004,
    0x185A, 0x0004, 0x1858, 0x0008, 0x185A, 0x0004, 0x185C, 0x0002,
    0x185E, 0x0004, 0x185A, 0x0004, 0x0000, 0x0000,
};

u16 D_800E5A3C[] = {
    0x1810, 0x1860, 0x1862, 0x1864,
};

u16 D_800E5A44[] = {
    0x009D, 0x01C1, 0x009E, 0x0141, 0x009F, 0x0201, 0x00A0, 0x0281,
    0x00A1, 0x0381, 0x00A2, 0x02C1, 0x00A3, 0x0341, 0x00A4, 0x0501,
    0x00A5, 0x0541, 0x00A6, 0x0401, 0x00A7, 0x0601, 0x00A8, 0x0741,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

void func_8008CF60(u16 actor_index);
void func_8008D1E8(u16 actor_index);
void func_8008D2B0(u16 actor_index);
void func_8008D320(u16 actor_index);
void func_8008D510(u16 actor_index);
void func_8008D728(u16 arg0);
void func_8008D730(u16 actor_index);
void func_8008D958(u16 arg0);
void func_8008D960(u16 actor_index);
void func_8008D99C(u16 actor_index);
s32 func_8008DA24(u16 actor_index);
void func_8008DA4C(u16 actor_index);
void func_8008DCE0(u16 actor_index);
void func_8008DE20(u16 arg0);
void func_8008DE28(u16 arg0);
void func_8008DE30(u16 actor_index);
void func_8008DEBC(u16 actor_index);
void func_8008DF20(u16 actor_index);

ActorFunc D_800E5A80[] = {
    func_8008D730, func_8008D958, func_8008D728, func_8008DE30,
    func_8008DEBC, func_8008DE28, func_8008D728, func_8008D960,
    (ActorFunc)func_8008DA24, func_8008D99C, func_8008DA4C, func_8008DCE0,
    func_8008DE20, NULL, NULL, NULL,
};

void ActorUpdate_Type15(u16 arg0) {
}

void ActorUpdate_Type16(u16 arg0) {
}

// unknown/unused
void func_8008C4B0(u32 arg0, u32 arg1, u32 arg2) {
}

void ActorUpdate_Type37(u16 arg0) {
}

void ActorUpdate_Type43(u16 arg0) {
}

void ActorUpdate_Type65(u16 arg0) {
}

void ActorUpdate_Type83(u16 arg0) {
}

void func_8008C4E0(u16 actor_index) {
    gActors[actor_index].colorB = 0;
    gActors[actor_index].colorG = 0;
    gActors[actor_index].colorR = 0;
    gPlayerData.unk_40 = 0;
}

void func_8008C528(u16 arg0) {
    s16* graphic_index_list;
    s16 blue;
    s16 red;
    s16 green;
    u16 actor_index;

    actor_index = PLAYER_INDEX;
    if (gPlayerData.marina_Flags_098 & ACTOR_FLAG3_UNK1) {
        if ((gActors[actor_index].stateLower >= 0x30) && (gActors[actor_index].stateLower < 0x37)) {
            gPlayerData.unk_43 = 1;
        }
    }
    switch (gPlayerData.unk_43) {
    case 0:
        graphic_index_list = D_800E4560;
        break;
    case 1:
        graphic_index_list = D_800E457C;
        break;
    }
    red = gActors[actor_index].colorR;
    green = gActors[actor_index].colorG;
    blue = gActors[actor_index].colorB;
    if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK4) {
        red = -red;
        green = -green;
        blue = -blue;
    }
    Palette_AdjustRgb5551Array(D_800E4594, PALETTE_80222220, 0x1A, blue / 8, green / 8, red / 8);
    gPortraits[arg0].graphicIndex = graphic_index_list[gPlayerData.unk_42 * 2];
    gPlayerData.unk_40_s16++;
    if (gPlayerData.unk_40_s16 >= graphic_index_list[gPlayerData.unk_42 * 2 + 1]) {
        if (graphic_index_list[gPlayerData.unk_42 * 2 + 2] == 0) {
            gPlayerData.unk_40 = 0;
        }
        else {
            gPlayerData.unk_42++;
            gPlayerData.unk_40_s16 = 0;
        }
        if (graphic_index_list[gPlayerData.unk_42 * 2] < 0) {
            gPlayerData.unk_42 += graphic_index_list[gPlayerData.unk_42 * 2];
            gPlayerData.unk_40_s16 = Rand() * 2;
        }
    }
}

void func_8008C710(u16 actor_index) {
    s16 temp_s2;
    u16 index_0;
    u16 index_1;
    s32 var_v1;
    u16* var_s4;

    gActors[actor_index + 1].unk_138 = -gActors[actor_index + 1].var_154 / FIXED_UNIT(1.0); // 2D0: 0x13
    var_v1 = FIXED_UNIT(1.0);
    gActors[actor_index + 1].graphicIndex = 0x1864;
    for (index_0 = 0; index_0 < 4; index_0++, var_v1 += FIXED_UNIT(3.0)) {
        if (var_v1 >= gActors[actor_index + 1].var_154) {
            gActors[actor_index + 1].graphicIndex = D_800E5A3C[index_0];
            break;
        }
    }
    if (gActors[actor_index + 1].graphicIndex == 0x1810) {
        gActors[actor_index + 2].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index + 3].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index + 0xB].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index + 0x21].flags |= ACTOR_FLAG_DRAW;
    }
    else {
        gActors[actor_index + 1].posY.whole += 4;
        gActors[actor_index + 2].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_index + 3].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_index + 0xB].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_index + 0x21].flags &= ~ACTOR_FLAG_DRAW;
    }
    if (gActors[actor_index + 1].graphicIndex == 0x1864) {
        gActors[actor_index + 0xD].unk_13C_f32 = 14.0f;
        gActors[actor_index + 0x11].unk_13C_f32 = 14.0f;
        gActors[actor_index + 0x12].unk_13C_f32 = 14.0f;
        gActors[actor_index + 0xF].unk_13C_f32 = 15.0f;
    }
    else {
        gActors[actor_index + 0xD].unk_13C_f32 = 0.0f;
        gActors[actor_index + 0x11].unk_13C_f32 = 0.0f;
        gActors[actor_index + 0x12].unk_13C_f32 = 0.0f;
        gActors[actor_index + 0xF].unk_13C_f32 = 1.0f;
    }
    gActors[actor_index + 1].graphicFlags &= ~ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 1, 0x20);
    gActors[actor_index + 0x21].graphicFlags &= ~ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x21, 0x18);
    gActors[actor_index + 0xB].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0xB, 0x20);
    gActors[actor_index + 0xF].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0xF, 0x20);
    gActors[actor_index + 0x11].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x11, 0x30);
    gActors[actor_index + 0x12].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x12, 0x20);
    gActors[actor_index + 0x9].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 9, 0x20);
    gActors[actor_index + 0x1C].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x1C, 0x30);
    gActors[actor_index + 0x1E].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x1E, 0x30);
    
    temp_s2 = func_800456DC() / 2;
    var_s4 = D_80335D58;
    for (index_1 = 0; D_800E5A44[index_1 + 0] != 0; index_1 += 2) {
        var_s4[D_800E5A44[index_1 + 0]] = Palette_AdjustRgb5551(D_800E5A44[index_1 + 1], temp_s2, temp_s2, 0);
    }
    var_s4[0xBE] = func_8004571C();
}

void func_8008CA90(void) {
    u16 actor_index;
    u16 temp_val;

    if ((D_800D294C == 0) || (D_800D294C & 0x8000)) {
        return;
    }

    actor_index = 0x10;
    gActors[actor_index].actorType = ACTORTYPE_114;
    Actor_Initialize(actor_index);
    temp_val = 0x8030;
    gActors[actor_index].var_110 = (f32) temp_val;
    gActors[actor_index].var_0D8 = 0;
    D_800BE5F4.unk_00_u32 = 4;
    gActors[actor_index].posX.whole = gPlayerActor.posX.whole;
    gActors[actor_index].posY.whole = gPlayerActor.posY.whole;
    gActors[actor_index].health = gPlayerActor.health;
    gActors[actor_index].state = 0;
    func_8008DF20(actor_index);
    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_index].flags |= (gPlayerActor.flags & ACTOR_FLAG_FLIPPED);
    switch ((u32)D_800D294C) { // fakematch: (u32) cast
    case 1:
        func_8008CF60(0x10);
        break;
    case 2:
        func_8008D1E8(0x10);
        break;
    case 3:
        func_8008D2B0(0x10);
        break;
    case 4:
        func_8008D320(0x10);
        break;
    }
    D_800D294C |= 0x8000;
}

void func_8008CC00(void) {
    u16 index;
    index = 0x10;
    D_800BE5F4.unk_00_u32 = 5;
    gPlayerActor.posX.whole = gActors[index].posX.whole;
    gPlayerActor.posY.whole = gActors[index].posY.whole;
    gPlayerPosX.whole = gActors[index].posX.whole + gScreenPosCurrentX.parts[0];
    gPlayerPosY.whole = gActors[index].posY.whole + gScreenPosCurrentY.parts[0];
    gPlayerActor.flags &= ~0x20;
    gPlayerActor.flags |= (gActors[index].flags & 0x20);
    D_800D294C = 0;
    gActors[index].flags = 0;
    gActors[index].state = 0;
}

void func_8008CC90(u16 actor_index) {
    s16* palette;

    if (gActors[actor_index].state < 0x21) {
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        return;
    }

    if (gActors[actor_index].unk_118 != 0.0f) {
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 == 0.0f) {
            palette = (s16*)gActors[actor_index].palette_18C;
            gActors[actor_index].graphicIndex = palette[0];
            gActors[actor_index].unk_118 = palette[1];
            palette += 2;
            if (palette[0] == 0) {
                gActors[actor_index].unk_118 = 0.0f;
            }
            else {
                if (palette[0] < 0) {
                    palette += palette[0] * 2;
                }
                gActors[actor_index].palette_18C = (u16*)palette;
            }
        }
    }
    func_8008D510(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK27 | ACTOR_FLAG_DRAW;
    D_800BE714 = TRUE;
    gActors->graphicIndex = gActors[actor_index].graphicIndex;
}

void func_8008CDC4(u16 actor_index, u16 arg1) {
    switch (arg1) {
    default:
    case 0: 
        switch (gActors[actor_index].unk_190) {
        case 0:
            gActors[actor_index].palette_18C = D_800D431C;
            break;
        case 1:
            gActors[actor_index].palette_18C = D_800D4F90;
            break;
        }
        break;
    case 1: 
        switch (gActors[actor_index].unk_190) {
        case 0:
            gActors[actor_index].palette_18C = D_800D5348;
            break;
        case 1:
            gActors[actor_index].palette_18C = D_800D4F90;
            break;
        }
        break;
    case 18:
        switch (gActors[actor_index].unk_190) {
        case 0:
            gActors[actor_index].palette_18C = D_800D47B4;
            break;
        case 1:
            gActors[actor_index].palette_18C = D_800D47B4;
            break;
        }
        break;
    }
    gActors[actor_index].unk_118 = 1.0f;
}

void func_8008CF10(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBY1 = -0xE;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
}

void func_8008CF60(u16 actor_index) {
    gActors[actor_index].state = 0x70;
    func_8008CDC4(actor_index, 0);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].unk_188 = 0;
}

void func_8008CFE4(u16 actor_index) {
    gActors[actor_index].state = 0x90;
    func_8008CDC4(actor_index, 0x12);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].unk_184 = (f32)gActors[actor_index].unk_184 * 0.75;
}

void func_8008D0A8(u16 actor_index) {
    gActors[actor_index].state = 0x80;
    func_8008CDC4(actor_index, 0x11);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
}

void func_8008D128(u16 actor_index) {
    Actor_SetColorRgb(actor_index, 0x7F);
    gActors[actor_index].iFrames = 60;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16| ACTOR_FLAG_UNK8);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].unk_118 = 1.0f;
    gActors[actor_index].unk_184 = gPlayerActor.unk_0F8.raw;
    gActors[actor_index].unk_188 = gPlayerActor.unk_0FC.raw;

    if (gActors[actor_index].unk_184 > 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    else if (gActors[actor_index].unk_184 < 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }
}

void func_8008D1E8(u16 actor_index) {
    gActors[actor_index].state = 0xA0;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].palette_18C = D_800D4958;
    gActors[actor_index].unk_118 = 1.0f;
    gActors[actor_index].unk_184 = gPlayerActor.unk_0F8.raw;
    gActors[actor_index].unk_188 = gPlayerActor.unk_0FC.raw;

    if (gActors[actor_index].unk_184 > 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    else if (gActors[actor_index].unk_184 < 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }

    Sound_PlaySfx(SFX_GRABDEFLECT);
}

void func_8008D2B0(u16 actor_index) {
    gActors[actor_index].state = 0xB0;
    gActors[actor_index].palette_18C = D_800D44F4;
    gActors[actor_index].unk_120 = 8.0f;
    func_8008D128(actor_index);
}

void func_8008D320(u16 actor_index) {
    gActors[actor_index].state = 0xB0;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    gActors[actor_index].palette_18C = D_800D4518;
    gActors[actor_index].unk_120 = 20.0f;
    func_8008D128(actor_index);
}

void func_8008D39C(u16 actor_index) {
    gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, 0, FIXED_UNIT(16.0/256));
    gActors[actor_index].unk_188 = Math_ApproachS32(gActors[actor_index].unk_188, FIXED_UNIT(-6.5), FIXED_UNIT(0.21875));
}

s32 func_8008D418(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        func_8008D0A8(actor_index);
        return TRUE;
    }

    return FALSE;
}

s32 func_8008D480(u16 actor_index) {
    func_8008D39C(actor_index);

    if (gActors[actor_index].unk_188 < 0) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            func_8008CFE4(actor_index);
            return TRUE;
        }
    }

    return FALSE;
}

void func_8008D510(u16 actor_index) {
    if ((u16)gActors[actor_index].var_110 & 0x10) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    }
    if ((u16)gActors[actor_index].var_110 & 0x20) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8;
    }
    if ((u16)gActors[actor_index].var_110 & 0x40) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10;
    }
}

void func_8008D728(u16 arg0) {
}

void func_8008D730(u16 actor_index) {
    gActors[actor_index].state = 0x10;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    if ((u16)gActors[actor_index].var_110 & 0x10) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    }
    if ((u16)gActors[actor_index].var_110 & 0x20) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8;
    }
    if ((u16)gActors[actor_index].var_110 & 0x40) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10;
    }
}

void func_8008D958(u16 arg0) {
}

void func_8008D960(u16 actor_index) {
    if (func_8008D418(actor_index) == 0) {
        func_8008CF10(actor_index);
    }
}

void func_8008D99C(u16 actor_index) {
    if (func_8008D418(actor_index) == 0) {
        func_8008CF10(actor_index);
        if (gActors[actor_index].unk_118 == 0.0f) {
            func_8008CF60(actor_index);
        }
    }
}

s32 func_8008DA24(u16 actor_index) {
    return func_8008D480(actor_index);
}

void func_8008DA4C(u16 actor_index) {
    func_8008D39C(actor_index);
    if ((gButtonHold & gButton_DRight) && (gActors[actor_index].velocityX.raw < 0)) {
        gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, FIXED_UNIT(1.0), FIXED_UNIT(32.0/256));
    }
    else if ((gButtonHold & gButton_DLeft) && (gActors[actor_index].velocityX.raw > 0)) {
        gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, FIXED_UNIT(-1.0), FIXED_UNIT(32.0/256));
    }

    if ((gActors[actor_index].unk_188 < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK17) {
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
        }
    }

    switch (gActors[actor_index].state) {
    case 0xA0:
        if (gActors[actor_index].unk_118 == 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].palette_18C = D_800D4AA4;
            gActors[actor_index].unk_118 = 1.0f;
        }
        break;
    case 0xA1:
        if (gActors[actor_index].unk_118 == 0.0f) {
            if (gActors[actor_index].flags & 0x10000) {
                func_8008CC00();
            }
            else {
                gActors[actor_index].state++;
                gActors[actor_index].palette_18C = D_800D44A8;
                gActors[actor_index].unk_118 = 1.0f;
            }
        }
        break;
    case 0xA2:
        if (gActors[actor_index].flags & 0x10000) {
            func_8008CC00();
        }
        break;
    }
}

void func_8008DC70(u16 actor_index) {
    if (gGameState == GAMESTATE_GAMEPLAY) {
        gActors[actor_index].flags = 0;
        gActors[actor_index].state = 0;
        gGameState = GAMESTATE_CONTINUE;
        gGameStateSubState = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityZ.raw = 0;
    }
}

void func_8008DCE0(u16 actor_index) {
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
    gActors[actor_index].colorG = Math_ApproachS32(gActors[actor_index].colorG, 0, 4);
    gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0, 4);
    func_8008D39C(actor_index);

    if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTZ) {
        gActors[actor_index].rotateZ += 20.0f;
    }

    gActors[actor_index].unk_120 -= 1.0f;
    if ((gActors[actor_index].unk_120 < 0.0f) || ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && (gActors[actor_index].flags & ACTOR_FLAG_UNK17))) {
        if ((gPlayerActor.health == 0) || (gPlayerActor.health & 0x8000)) {
            func_8008DC70(actor_index);
        }
        else {
            func_8008CC00();
        }
    }
}

void func_8008DE20(u16 arg0) {
}

void func_8008DE28(u16 arg0) {
}

void func_8008DE30(u16 actor_index) {
    Sound_StopSfx(SFX_MARINA_OW1);
    Sound_StopSfx(SFX_MARINA_YELL1);

    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1953125);
    }

    if (gActors[actor_index].posY.whole < -0x100) {
        gActors[actor_index].state = 0x40;
    }
}

void func_8008DEBC(u16 actor_index) {
    if (D_800D28E4 > 0x60) {
        gActors[actor_index].flags = 0;
    }
    else {
        D_800D28FC |= 0x200;
    }
}

void func_8008DF20(u16 actor_index) {
    if ((gActors[actor_index].state >= 0x61) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)) {
        gPlayerActor.health = gActors[actor_index].health;
        func_8008CC00();
        return;
    }

    D_800E5A80[gActors[actor_index].state / 16](actor_index);
    if (gActors[actor_index].state >= 0x61) {
        if (gActors[actor_index].unk_184 >= FIXED_UNIT(8.0)) {
            gActors[actor_index].velocityX.raw = (FIXED_UNIT(8.0) - 1);
        }
        else if (gActors[actor_index].unk_184 <= FIXED_UNIT(-8.0)) {
            gActors[actor_index].velocityX.raw = (FIXED_UNIT(-8.0) + 1);
        }
        else {
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_184;
        }
        if (gActors[actor_index].unk_188 >= FIXED_UNIT(8.0)) {
            gActors[actor_index].velocityY.raw = (FIXED_UNIT(8.0) - 1);
        }
        else if (gActors[actor_index].unk_188 <= FIXED_UNIT(-8.0)) {
            gActors[actor_index].velocityY.raw = (FIXED_UNIT(-8.0) + 1);
        }
        else {
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_188;
        }
        if (gActors[actor_index].iFrames > 0) {
            gActors[actor_index].iFrames--;
        }
    }

    if (gActors[actor_index].state >= 0x21) {
        if ((u16)gActors[actor_index].var_110 & 0x8000) {
            gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
            gPlayerActor.flags |= (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED);
            gPlayerActor.posX.raw = gActors[actor_index].posX.raw;
            gPlayerActor.posY.raw = gActors[actor_index].posY.raw;
            gPlayerPosX.whole = gActors[actor_index].posX.whole + gScreenPosCurrentX.parts[0];
            gPlayerPosY.whole = gActors[actor_index].posY.whole + gScreenPosCurrentY.parts[0];
        }
    }
    func_8008CC90(actor_index);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8008E1A0(u16 actor_index) {
    func_8008DF20(actor_index);
    switch (gActors[actor_index].state) {
    case 0x10:
        switch (gActors[actor_index].state) { // BUG: inner switch on same state?
        case 1:
            func_8008CF60(actor_index);
            break;
        case 2:
            func_8008D1E8(actor_index);
            break;
        case 3:
            func_8008D2B0(actor_index);
            break;
        case 4:
            func_8008D320(actor_index);
            break;
        }
        break;
    case 0x70:
        gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, 0, FIXED_UNIT(32.0/256));
        if (gButtonHold & gButton_DLeft) {
            gActors[actor_index].unk_184 = FIXED_UNIT(-2.0);
        }
        if (gButtonHold & gButton_DRight) {
            gActors[actor_index].unk_184 = FIXED_UNIT(2.0);
        }
        if (gButtonPress & gButton_A) {
            func_8008D0A8(actor_index);
            gActors[actor_index].unk_188 = FIXED_UNIT(4.0);
        }
        break;
    }
}

void SpawnMarinaOhNo(u16 actor_index, u16 arg1_unused) {
    D_800BE5F4.unk_00_u32 = 4;
    if (actor_index == 0) {
        actor_index = 0x10;
    }
    gActors[actor_index].actorType = ACTORTYPE_MARINAOHNO;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = gPlayerActor.posX.whole;
    gActors[actor_index].posY.whole = gPlayerActor.posY.whole;
    gActors[actor_index].velocityX.raw = gPlayerActor.velocityX.raw / 2;
}

void ActorUpdate_MarinaOhNo(u16 actor_index) {
    D_800BE5F4.unk_00_u32 = 4;
    func_8008DF20(actor_index);
    if (gActors[actor_index].state == 0x10) {
        D_800BE5F4.unk_00_u32 = 4;
        gActors[actor_index].state = 0x30;
        gActors[actor_index].palette_18C = D_800D46A8; // Marina rolling
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
        gActors[actor_index].unk_118 = 1.0f;
        Sound_StopSfx(SFX_MARINA_OW1);
        Sound_StopSfx(SFX_MARINA_YELL1);
        Sound_PlaySfx(SFX_MARINA_OHNO);
    }
}
