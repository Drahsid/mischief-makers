#ifndef LINKER_H
#define LINKER_H

#include <PR/ultratypes.h>

extern u8 _bssSegmentStart[];
extern u8 _bssSegmentEnd[];
extern u8 _bssSegmentSize[];
extern u64 __gBootStackEnd[];
extern u64 __gIdleStackEnd[];
extern u64 __gMainStackEnd[];
extern u64 __gRmonStackEnd[];

extern u8 overlay_F00D0_ROM_START[];
extern u8 overlay_F00D0_ROM_END[];

#include "overlay_0.h"
#include "overlay_1.h"
#include "overlay_2.h"
#include "overlay_3.h"
#include "overlay_4.h"

extern u8 Segment_01_ROM_START[];
extern u8 Segment_01_ROM_END[];
extern u8 Segment_01_DATA_START[];
extern u8 Segment_01_DATA_END[];
#define Segment_01_ROM_SIZE (Segment_01_ROM_END - Segment_01_ROM_START)
#define Segment_01_DATA_SIZE (Segment_01_DATA_END - Segment_01_DATA_START)

extern u8 Segment_02_ROM_START[];
extern u8 Segment_02_ROM_END[];
extern u8 Segment_02_DATA_START[];
extern u8 Segment_02_DATA_END[];
#define Segment_02_ROM_SIZE (Segment_02_ROM_END - Segment_02_ROM_START)
#define Segment_02_DATA_SIZE (Segment_02_DATA_END - Segment_02_DATA_START)

extern u8 Segment_03_ROM_START[];
extern u8 Segment_03_ROM_END[];
extern u8 Segment_03_DATA_START[];
extern u8 Segment_03_DATA_END[];
#define Segment_03_ROM_SIZE (Segment_03_ROM_END - Segment_03_ROM_START)
#define Segment_03_DATA_SIZE (Segment_03_DATA_END - Segment_03_DATA_START)

extern u8 Segment_04_ROM_START[];
extern u8 Segment_04_ROM_END[];
extern u8 Segment_04_DATA_START[];
extern u8 Segment_04_DATA_END[];
#define Segment_04_ROM_SIZE (Segment_04_ROM_END - Segment_04_ROM_START)
#define Segment_04_DATA_SIZE (Segment_04_DATA_END - Segment_04_DATA_START)

extern u8 Segment_05_ROM_START[];
extern u8 Segment_05_ROM_END[];
extern u8 Segment_05_DATA_START[];
extern u8 Segment_05_DATA_END[];
#define Segment_05_ROM_SIZE (Segment_05_ROM_END - Segment_05_ROM_START)
#define Segment_05_DATA_SIZE (Segment_05_DATA_END - Segment_05_DATA_START)

extern u8 Segment_06_ROM_START[];
extern u8 Segment_06_ROM_END[];
extern u8 Segment_06_DATA_START[];
extern u8 Segment_06_DATA_END[];
#define Segment_06_ROM_SIZE (Segment_06_ROM_END - Segment_06_ROM_START)
#define Segment_06_DATA_SIZE (Segment_06_DATA_END - Segment_06_DATA_START)

extern u8 Segment_07_ROM_START[];
extern u8 Segment_07_ROM_END[];
extern u8 Segment_07_DATA_START[];
extern u8 Segment_07_DATA_END[];
#define Segment_07_ROM_SIZE (Segment_07_ROM_END - Segment_07_ROM_START)
#define Segment_07_DATA_SIZE (Segment_07_DATA_END - Segment_07_DATA_START)

#include "../assets/generated/Segment_01/rle.h"
#include "../assets/generated/Segment_02/segment_02_assets.h"
#include "Segment03.h"
#include "Segment04.h"
#include "../assets/generated/Segment_05/rle.h"
#include "../assets/generated/Segment_06/rle.h"
#include "../assets/generated/Segment_07/rle.h"


extern u8 audio_bank_ctl_ROM_START[];
extern u8 audio_bank_ctl_ROM_END[];
extern u8 audio_bank_tbl_ROM_START[];
extern u8 audio_seq_bank_ROM_START[];
extern u8 audio_seq_bank_DATA_START[];

#endif
