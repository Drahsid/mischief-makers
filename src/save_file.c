#include "common.h"
#include "save_file.h"
#include "soft_reset.h"
#include "stage.h"
#include "438E0.h"
#include "82F80.h"

#define NAME_ENTRY_CHARSET  gActors[0xB9].unk_0A0
#define NAME_ENTRY_POSITION gActors[0xB8].unk_0A0
#define CHAR_SELECT_ROW     gActors[0xB2].unk_0A0
#define CHAR_SELECT_COLUMN  gActors[0xB1].unk_0A0

enum {
    CHARSET_HIRAGANA = 0,
    CHARSET_KATAKANA = 1,
    CHARSET_LATIN = 2
};

enum {
    SAVE_SLOT_0,
    SAVE_SLOT_1,
    SAVE_SLOT_COUNT
};

#define SAVE_SLOT_NAME_LENGTH 10 // +1 for terminator

// .data
u8 gEEPROMID[] = {
    'T', 'R', 'E', 'A', '0', '7', '2', '2'
};

// list of stage times, backed by EEPROM
u16 gTimeRecords[] = {
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME
};

// default save file name: "Start     "
u16 gDefaultFileName[] = {
    0x014A, 0x0131, 0x011E, 0x012F, 0x0131, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x8FFF
};

u32 D_800C4FC0[] = {
    0x00010000, 0x00020000, 0x00040000, 0x00000064,
    0x00000003, 0x00020000, 0x00000003, 0x00040000,
    0x00000000, 0x00040000,
};

u16 gNameEntrySpace[SAVE_SLOT_NAME_LENGTH + 1] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x8FFF,
};

u8 gSelectedSex = 0x00;
u8 gSelectedAge = 0x00;
u8 gCurrentSaveSlot = 0x00;
u8 gPreviousSaveSlot = 0x00;

u8 D_800C5010[] = {
    0x09, 0x09, 0x09, 0x05, 0x09, 0x05, 0x00, 0x00,
};

u8 D_800C5018[] = {
    0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,
};

// strings
u16 D_800C5024[] = { 0x00A2, 0x8FFF };
u16 D_800C5028[] = { 0x00A3, 0x8FFF };
u16 D_800C502C[] = { 0x0000, 0x0078, 0x0075, 0x008D, 0x8FFF };
u16 D_800C5038[] = { 0x0000, 0x007C, 0x0086, 0x0087, 0x8FFF };
u16 D_800C5044[] = { 0x0000, 0x0081, 0x007D, 0x0082, 0x8FFF };
u16 D_800C5050[] = { 0x0000, 0x0087, 0x0079, 0x0077, 0x8FFF };
u16 D_800C505C[] = { 0x013C, 0x012F, 0x011E, 0x0130, 0x0122, 0x8FFF };
u16 D_800C5068[] = { 0x014E, 0x0125, 0x0126, 0x0120, 0x0125, 0x00B3, 0x8FFF };
u16 D_800C5078[] = { 0x0145, 0x011E, 0x012A, 0x0122, 0x00B3, 0x8FFF };
u16 gNameEntryRow0HIRA[] = {
    0x0051, 0x0056, 0x005B, 0x0060, 0x0065, 0x006A, 0x006F, 0x0074, 0x0077,
    0x007C, 0x007F, 0x0084, 0x0089, 0x008E, 0x0093, 0x0098, 0x009E, 0x8FFF
};
u16 gNameEntryRow1HIRA[] = {
    0x0052, 0x0057, 0x005C, 0x0061, 0x0066, 0x006B, 0x0070, 0x0000, 0x0078,
    0x007D, 0x0080, 0x0085, 0x008A, 0x008F, 0x0094, 0x0099, 0x009F, 0x8FFF
};
u16 gNameEntryRow2HIRA[] = {
    0x0053, 0x0058, 0x005D, 0x0062, 0x0067, 0x006C, 0x0071, 0x0075, 0x0079,
    0x007E, 0x0081, 0x0086, 0x008B, 0x0090, 0x0095, 0x009A, 0x00A0, 0x8FFF
};
u16 gNameEntryRow3HIRA[] = {
    0x0054, 0x0059, 0x005E, 0x0063, 0x0068, 0x006D, 0x0072, 0x0000, 0x007A,
    0x0000, 0x0082, 0x0087, 0x008C, 0x0091, 0x0096, 0x009B, 0x0000, 0x8FFF
};
u16 gNameEntryRow4HIRA[] = {
    0x0055, 0x005A, 0x005F, 0x0064, 0x0069, 0x006E, 0x0073, 0x0076, 0x007B,
    0x00C0, 0x0083, 0x0088, 0x008D, 0x0092, 0x0097, 0x009C, 0x009D, 0x8FFF
};
u16 D_800C5138[] = { 0x00CC, 0x8FFF };
u16 D_800C513C[] = { 0x00CB, 0x8FFF };
u16 D_800C5140[] = { 0x00CA, 0x8FFF };
u16 D_800C5144[] = {
    0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0,
    0x00C0, 0x8FFF
};
u16 gNameEntryRow0KATA[] = {
    0x00CD, 0x00D2, 0x00D7, 0x00DC, 0x00E1, 0x00E6, 0x00EB, 0x00F0, 0x00F3,
    0x00F8, 0x00FB, 0x0100, 0x0105, 0x010A, 0x010F, 0x0114, 0x011A, 0x8FFF
};
u16 gNameEntryRow1KATA[] = {
    0x00CE, 0x00D3, 0x00D8, 0x00DD, 0x00E2, 0x00E7, 0x00EC, 0x0000, 0x00F4,
    0x00F9, 0x00FC, 0x0101, 0x0106, 0x010B, 0x0110, 0x0115, 0x011B, 0x8FFF
};
u16 gNameEntryRow2KATA[] = {
    0x00CF, 0x00D4, 0x00D9, 0x00DE, 0x00E3, 0x00E8, 0x00ED, 0x00F1, 0x00F5,
    0x00FA, 0x00FD, 0x0102, 0x0107, 0x010C, 0x0111, 0x0116, 0x011C, 0x8FFF
};
u16 gNameEntryRow3KATA[] = {
    0x00D0, 0x00D5, 0x00DA, 0x00DF, 0x00E4, 0x00E9, 0x00EE, 0x0000, 0x00F6,
    0x0000, 0x00FE, 0x0103, 0x0108, 0x010D, 0x0112, 0x0117, 0x0119, 0x8FFF
};
u16 gNameEntryRow4KATA[] = {
    0x00D1, 0x00D6, 0x00DB, 0x00E0, 0x00E5, 0x00EA, 0x00EF, 0x00F2, 0x00F7,
    0x00C0, 0x00FF, 0x0104, 0x0109, 0x010E, 0x0113, 0x0118, 0x011D, 0x8FFF
};
u16 D_800C5210[] = { 0x0144, 0x0000, 0x012C, 0x012F, 0x0000, 0x013D, 0x00B3, 0x8FFF };
u16 D_800C5220[] = { 0x0000, 0x0138, 0x0124, 0x0122, 0x00B3, 0x00B3, 0x8FFF };
u16 D_800C5230[] = { 0x014E, 0x0125, 0x0126, 0x0120, 0x0125, 0x00B3, 0x8FFF };
u16 D_800C5240[] = { 0x013C, 0x012F, 0x011E, 0x0130, 0x0122, 0x0000, 0x00B3, 0x8FFF };
u16 D_800C5250[] = { 0x0149, 0x0122, 0x011E, 0x0129, 0x0129, 0x0136, 0x00B3, 0x8FFF };
u16 D_800C5260[] = { 0x0148, 0x0132, 0x0126, 0x0131, 0x00B3, 0x8FFF };
u16 D_800C526C[] = {
    0x0140, 0x0130, 0x0000, 0x0131, 0x0125, 0x0126, 0x0130, 0x0000,
    0x0146, 0x0142, 0x00B3, 0x0000, 0x0150, 0x0122, 0x0130, 0x0000,
    0x0145, 0x012C, 0x8FFF
};
u16 D_800C5294[] = { 0x0150, 0x0122, 0x0130, 0x0000, 0x0145, 0x012C, 0x8FFF };
u16 D_800C52A4[] = { 0x006B, 0x0077, 0x007F, 0x0065, 0x8FFF };
u16 D_800C52B0[] = { 0x00D2, 0x00DC, 0x00D2, 0x00E1, 0x8FFF };
u16 D_800C52BC[] = { 0x005F, 0x0069, 0x006E, 0x0056, 0x8FFF };
u16 D_800C52C8[] = { 0x0145, 0x011E, 0x012A, 0x0122, 0x8FFF };
u16 D_800C52D4[] = { 0x0144, 0x0000, 0x012C, 0x012F, 0x0000, 0x013D, 0x8FFF };
u16 D_800C52E4[] = { 0x0144, 0x8FFF };
u16 D_800C52E8[] = { 0x013D, 0x8FFF };
u16 D_800C52EC[] = { 0x0138, 0x0124, 0x0122, 0x8FFF };
u16 D_800C52F4[] = { 0x0000, 0x8FFF };
u16 D_800C52F8[] = { 0x0000, 0x005B, 0x007B, 0x0079, 0x8FFF };
u16 gNameEntryRow0ENG[] = {
    0x011E, 0x011F, 0x0120, 0x0121, 0x0122, 0x0123, 0x0124, 0x0125, 0x0126,
    0x0127, 0x0128, 0x0129, 0x012A, 0x0000, 0x00CE, 0x00CF, 0x00D0, 0x8FFF
};
u16 gNameEntryRow1ENG[] = {
    0x012B, 0x012C, 0x012D, 0x012E, 0x012F, 0x0130, 0x0131, 0x0132, 0x0133,
    0x0134, 0x0135, 0x0136, 0x0137, 0x0000, 0x00D1, 0x00CD, 0x00BB, 0x8FFF
};
u16 gNameEntryRow2ENG[] = {
    0x0138, 0x0139, 0x013A, 0x013B, 0x013C, 0x013D, 0x013E, 0x013F, 0x0140,
    0x0141, 0x0142, 0x0143, 0x0144, 0x0000, 0x00BF, 0x00C0, 0x00C3, 0x8FFF,
};
u16 gNameEntryRow3ENG[] = {
    0x0145, 0x0146, 0x0147, 0x0148, 0x0149, 0x014A, 0x014B, 0x014C, 0x014D,
    0x014E, 0x014F, 0x0150, 0x0151, 0x0000, 0x00B8, 0x00B9, 0x00C5, 0x8FFF,
};
u16 gNameEntryRow4ENG[] = {
    0x00A1, 0x00A2, 0x00A3, 0x00A4, 0x00A5, 0x00A6, 0x00A7, 0x00A8, 0x00A9,
    0x00AA, 0x00BE, 0x00BC, 0x00BD, 0x0000, 0x00B1, 0x00B3, 0x00C6, 0x8FFF
};

//------------------------------------------------------------------------------
// gFileNames through gFilePlayTimes are backed by EEPROM common 0x48 byte transfers
u16 gFileNames[SAVE_SLOT_COUNT][SAVE_SLOT_NAME_LENGTH + 1];
u8 gFileAges[SAVE_SLOT_COUNT];
u8 gFileSexes[SAVE_SLOT_COUNT];
u16 gFileRedGems[SAVE_SLOT_COUNT];
u16 gFileYellowGems[SAVE_SLOT_COUNT];
u64 gFilePlayTimes[SAVE_SLOT_COUNT];

// code does not match if encapsulated in a struct
#define SAVE_FILE_DATA ((u8*)gFileNames)
#define SAVE_FILE_SIZE (sizeof(gFileNames) + sizeof(gFileAges) + sizeof(gFileSexes) + \
                        sizeof(gFileRedGems) + sizeof(gFileYellowGems) + sizeof(gFilePlayTimes))
//------------------------------------------------------------------------------
// gFestivalRecords through D_80171B19 are backed by EEPROM common 0x32 byte transfers
u32 gFestivalRecords[FESTGAME_TOTAL];
u64 gYellowGemBitfield;
u8 gWorldProgress;
u8 D_80171B19; // set when festival games are won.
#define FESTIVAL_SAVE_DATA ((u8*)gFestivalRecords)
#define FESTIVAL_SAVE_SIZE (sizeof(gFestivalRecords) + sizeof(gYellowGemBitfield) + \
                            sizeof(gWorldProgress) + sizeof(D_80171B19))
//------------------------------------------------------------------------------

u16 D_80171B1A;
u16 D_80171B1C;
u16 D_80171B1E; // actor index
u16 D_80171B20; // actor index
u16 D_80171B22; // bitfield used in GameState_FileSelect

u16 func_80004E70(u32 arg0, u32 arg1) {
    u32 temp_v1;
    u32 mask;

    temp_v1 = (arg1 * 4);
    mask = (0xF << temp_v1);
    return (arg0 & mask) >> temp_v1;
}

s32 func_80004E90(u32 arg0) {
    u16 index;

    for (index = 0; index < 8; index++) {
        if (D_800C5010[index] < func_80004E70(arg0, index)) {
            return TRUE;
        }
    }
    return FALSE;
}

s32 func_80004F08(u32 arg0) {
    if (arg0 >= 0x3E8) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

s32 func_80004F24(void) {
    u16 index;
    s32 result;
    u16 var_v0;

    result = FALSE;
    for (index = 0; index < 7; index++) {
        if (D_800C5018[index] != 0) {
            var_v0 = func_80004F08(gFestivalRecords[index]);
        }
        else {
            var_v0 = func_80004E90(gFestivalRecords[index]);
        }
        if (var_v0) {
            result = TRUE;
            gFestivalRecords[index] = D_800C4FC0[index];
        }
    }
    return result;
}

void func_80004FFC(u8 save_slot) {
    u16 index;

    for (index = 0; index < ARRAYLENGTH(gDefaultFileName); index++) {
        gFileNames[save_slot][index] = gDefaultFileName[index];
    }
    gFileAges[save_slot] = 0;
    gFileSexes[save_slot] = 0;
    gFileRedGems[save_slot] = 0x1E;
    gFileYellowGems[save_slot] = 0;
    gFilePlayTimes[save_slot] = 0;
}

void func_800050B4(void) {
    u16 index;

    for (index = 0; index < ARRAYLENGTH(gFestivalRecords); index++) { gFestivalRecords[index] = D_800C4FC0[index]; }

    // unsure the purpose of this zero, shift, and zero
    gYellowGemBitfield = 0;
    gYellowGemBitfield <<= 0x20;
    gYellowGemBitfield = 0;

    gWorldProgress = 0;
    D_80171B19 = 0;

    for (index = 0; index < ARRAYLENGTH(gTimeRecords); index++) {  gTimeRecords[index] = STAGE_MAX_TIME; }
}

void func_80005188(void) {
    u16 index;
    u8 eeprom_id[8];
    u8 count;
    u8 has_terminator;

    osEepromProbe(&gControllerReadMessageQueue);
    osEepromLongRead(&gControllerReadMessageQueue, 0, eeprom_id, sizeof(eeprom_id));
    for (index = 0, count = 0; index < ARRAYLENGTH(gEEPROMID); index++) {
        if (eeprom_id[index] != gEEPROMID[index]) {
            count++;
        }
    }
    if (count != 0) {
        func_80004FFC(0);
        func_80004FFC(1);
        osEepromLongWrite(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
        func_800050B4();
        osEepromLongWrite(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongWrite(&gControllerReadMessageQueue, 0x14, (u8* ) gTimeRecords, sizeof(gTimeRecords));
        osEepromLongWrite(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongWrite(&gControllerReadMessageQueue, 0x2C, (u8* ) gTimeRecords, sizeof(gTimeRecords));
        osEepromLongWrite(&gControllerReadMessageQueue, 0, gEEPROMID, sizeof(gEEPROMID));
    }
    else {
        // 1st ---------------------------------------------------------------------------------
        osEepromLongRead(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
        osEepromLongRead(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        count = 0;
        for (index = 0; index < ARRAYLENGTH(gFileNames[SAVE_SLOT_0]); index++) {
            if (((gFileNames[SAVE_SLOT_0][index] != 0) && (gFileNames[SAVE_SLOT_0][index] <= 80)) || 
                ((gFileNames[SAVE_SLOT_0][index] >= 338) && (gFileNames[SAVE_SLOT_0][index] != ALPHA_NULL))) {
                count = 1;
            }
        }
        has_terminator = FALSE;
        for (index = 0; index < ARRAYLENGTH(gFileNames[SAVE_SLOT_0]); index++) {
            if (gFileNames[SAVE_SLOT_0][index] == ALPHA_NULL) {
                has_terminator = TRUE;
            }
        }

        if ((count == 1) || (!has_terminator) ||
            (gFileAges[SAVE_SLOT_0] >= 100) ||
            (gFileSexes[SAVE_SLOT_0] >= 2) ||
            (gFileRedGems[SAVE_SLOT_0] >= 10000) ||
            (gFileYellowGems[SAVE_SLOT_0] >= 54) ||
            (CountYellowGems() != gFileYellowGems[SAVE_SLOT_0]) ||
            (gFilePlayTimes[SAVE_SLOT_0] >= FILE_PLAY_TIME_MAX) ||
            (gWorldProgress >= 60))
        {
            func_80004FFC(0);
            osEepromLongWrite(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
            func_800050B4();
            osEepromLongWrite(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        }

        // 2nd ---------------------------------------------------------------------------------
        osEepromLongRead(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
        osEepromLongRead(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        count = 0;
        for (index = 0; index < ARRAYLENGTH(gFileNames[SAVE_SLOT_1]); index++) {
            if (((gFileNames[SAVE_SLOT_1][index] != 0) && (gFileNames[SAVE_SLOT_1][index] <= 80)) || 
                ((gFileNames[SAVE_SLOT_1][index] >= 338) && (gFileNames[SAVE_SLOT_1][index] != ALPHA_NULL))) {
                count = 1;
            }
        }

        has_terminator = FALSE;
        for (index = 0; index < ARRAYLENGTH(gFileNames[SAVE_SLOT_1]); index++) {
            if (gFileNames[SAVE_SLOT_1][index] == ALPHA_NULL) {
                has_terminator = TRUE;
            }
        }
        if ((count == 1) || (!has_terminator) ||
            (gFileAges[SAVE_SLOT_1] >= 100) ||
            (gFileSexes[SAVE_SLOT_1] >= 2) ||
            (gFileRedGems[SAVE_SLOT_1] >= 10000) ||
            (gFileYellowGems[SAVE_SLOT_1] >= 54) ||
            (CountYellowGems() != gFileYellowGems[SAVE_SLOT_1]) ||
            (gFilePlayTimes[SAVE_SLOT_1] >= FILE_PLAY_TIME_MAX) ||
            (gWorldProgress >= 60))
        {
            func_80004FFC(1);
            osEepromLongWrite(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
            func_800050B4();
            osEepromLongWrite(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        }
    }
}

void func_8000565C(void) {
    u16 index;

    osEepromProbe(&gControllerReadMessageQueue);
    if (gCurrentSaveSlot != 0) {
        osEepromLongRead(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongRead(&gControllerReadMessageQueue, 0x2C, (u8* ) gTimeRecords, sizeof(gTimeRecords));
    }
    else {
        osEepromLongRead(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongRead(&gControllerReadMessageQueue, 0x14, (u8* ) gTimeRecords, sizeof(gTimeRecords));
    }
    if (D_80171B19 >= 2) {
        D_80171B19 = 0;
    }
    func_80004F24();
    for (index = 0; index < ARRAYLENGTH(gTimeRecords); index++) {
        if (gTimeRecords[index] > STAGE_MAX_TIME) {
            gTimeRecords[index] = STAGE_MAX_TIME;
        }
    }
}

void func_80005770(void) {
    osEepromProbe(&gControllerReadMessageQueue);
    osEepromLongWrite(&gControllerReadMessageQueue, 0x2, (u8* ) gFileNames, 0x48);
    if (gCurrentSaveSlot != 0) {
        osEepromLongWrite(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongWrite(&gControllerReadMessageQueue, 0x2C, (u8* ) gTimeRecords, sizeof(gTimeRecords));
    }
    else {
        osEepromLongWrite(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongWrite(&gControllerReadMessageQueue, 0x14, (u8* ) gTimeRecords, sizeof(gTimeRecords));
    }
}

void func_80005828(void) {
    func_80004FFC(gCurrentSaveSlot);
    func_800050B4();
    func_80005770();
}

void func_80005860(u16 actor_index, u16 x, u16 y, uintptr_t arg3) {
    Text_InitActorGList(actor_index, gGraphicListGemIcon, x, y, 0);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].palette_18C = (u16*)arg3;
}

void func_800058E0(u16 actor_index, u16 x, u16 y, u16 save_slot, u16* arg4) {
    s32 pad;
    Text_Print2Digits(actor_index, gFileRedGems[save_slot] / 100, x, y, 0, arg4);
    Text_Print2Digits(actor_index + 2, gFileRedGems[save_slot] % 100, x + 18, y, 0, arg4);
}

u16 func_800059A4(u16 actor_index, u16 x, u16 y, u16 index) {
    u32 time_sec;

    time_sec = gFilePlayTimes[index] / 60;
    if (time_sec >= (100 * SEC_PER_DAY - 1)) {
        time_sec = (100 * SEC_PER_DAY - 1);
    }
    Text_Print2Digits(actor_index + 0x0, (time_sec / SEC_PER_DAY),                 x +   0, y, 0, gTextPalettes[2]);
    Text_Print2Digits(actor_index + 0x4, (time_sec % SEC_PER_DAY) / SEC_PER_HOUR,  x +  48, y, 0, gTextPalettes[2]);
    Text_Print2Digits(actor_index + 0x8, (time_sec % SEC_PER_HOUR) / MIN_PER_HOUR, x +  96, y, 0, gTextPalettes[2]);
    Text_Print2Digits(actor_index + 0xB, (time_sec % SEC_PER_MIN),                 x + 144, y, 0, gTextPalettes[2]);
    return actor_index + 0xE;
}

u8 func_80005B68(u8 arg0, u8 arg1) {
    switch (NAME_ENTRY_CHARSET) {
    case CHARSET_HIRAGANA:
        if ((arg0 == 0x10) && (arg1 == 3)) {
            return TRUE;
        }
        // fallthrough
    case CHARSET_KATAKANA:
        if ((arg0 == 7) && (arg1 == 1)) {
            return TRUE;
        }
        else if ((arg0 == 7) && (arg1 == 3)) {
            return TRUE;
        }
        else if ((arg0 == 9) && (arg1 == 3)) {
            return TRUE;
        }
        return FALSE;
    case CHARSET_LATIN:
        if (arg0 == 0xD) {
            return TRUE;
        }
        return FALSE;
    }
    // BUG: missing default return
}

void func_80005C3C(u16 actor_index) {
    s32 angle;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].var_154 = 0x10;
        gActors[actor_index].velocityX.raw = ((((actor_index - gActors[0xB7].unk_0A0) * 16) - gActors[actor_index].posX.whole) * 0x1000) - FIXED_UNIT(4.5);
        gActors[actor_index].velocityY.raw = (-gActors[actor_index].posY.whole * 0x1000) - FIXED_UNIT(3.25);
        gActors[actor_index].state++;
        break;
    case 1:
        if (gActors[actor_index].var_154-- == 0) {
            gActors[actor_index].posX.whole = ((actor_index - gActors[0xB7].unk_0A0) * 16) - 72;
            gActors[actor_index].posY.whole = -52;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state++;
            return;
        }
        gActors[actor_index].posX.raw += gActors[actor_index].velocityX.raw;
        gActors[actor_index].posY.raw += gActors[actor_index].velocityY.raw;
        switch (actor_index % 4) {
        case 0:
            angle = gActors[actor_index].var_154 * 0x40;
            gActors[actor_index].posX.raw += COS(angle) * FIXED_UNIT(16.0);
            gActors[actor_index].posY.raw += SIN(angle) * FIXED_UNIT(16.0);
            break;
        case 1:
            angle = (-gActors[actor_index].var_154 * 0x40) + COS_DEG_360;
            gActors[actor_index].posX.raw += COS(angle) * FIXED_UNIT(16.0);
            gActors[actor_index].posY.raw += SIN(angle) * FIXED_UNIT(16.0);
            break;
        case 2:
            angle = gActors[actor_index].var_154 * 0x40;
            gActors[actor_index].posX.raw -= COS(angle) * FIXED_UNIT(16.0);
            gActors[actor_index].posY.raw -= SIN(angle) * FIXED_UNIT(16.0);
            break;
        case 3:
            angle = (-gActors[actor_index].var_154 * 0x40) + COS_DEG_360;
            gActors[actor_index].posX.raw -= COS(angle) * FIXED_UNIT(16.0);
            gActors[actor_index].posY.raw -= SIN(angle) * FIXED_UNIT(16.0);
            break;
        }
        break;
    case 2:
        break;
    }
}

void func_8000607C(u16 actor_index) {
    u16 actor_1;

    gActors[actor_index + 0].posX.whole = -32;
    gActors[actor_index + 0].posY.whole = 16;
    gActors[actor_index + 1].posX.whole = -32;
    gActors[actor_index + 1].posY.whole = 16;
    actor_1 = Text_PrintStringRGB(actor_index + 3, D_800C5210, 0xFFE0, 0x58, 0x0, 0x80, 0x0, 0x80);

    gActors[actor_1 - 4].posX.whole -= 8;
    gActors[actor_1 - 3].posX.whole -= 8;
    gActors[actor_1 - 2].posX.whole -= 16;
    gActors[actor_1 - 1].posX.whole -= 16;
    actor_1 = Text_PrintStringRGB(actor_1, D_800C52C8, 0xFF90, 0x30, 0x0, 0x80,  0x0, 0x80);
    D_80171B1A = actor_1;
    actor_1 = Text_PrintStringRGB(actor_1, gNameEntrySpace, 0xFFE0, 0x30, 0x0, 0x40, 0x20, 0xFF);
    D_80171B1C = actor_1;
    actor_1 = Text_PrintStringRGB(actor_1, D_800C52D4, 0xFF8A, 0x10, 0x0, 0x80,  0x0, 0x80);

    gActors[actor_1 - 3].posX.whole -= 8;
    gActors[actor_1 - 2].posX.whole -= 8;
    gActors[actor_1 - 1].posX.whole -= 16;
    D_80171B1E = actor_1;
    actor_1 = Text_PrintStringRGB(actor_1, D_800C52E4, 0xFFE0,   0x10, 0x0, 0x40, 0x20, 0xFF);
    actor_1 = Text_PrintStringRGB(actor_1, D_800C52E8,    0x0,   0x10, 0x0, 0x40, 0x20, 0xFF);
    actor_1 = Text_PrintStringRGB(actor_1, D_800C52EC, 0xFF98, 0xFFF0, 0x0, 0x80,  0x0, 0x80);
    actor_1 = Text_PrintStringRGB(actor_1, D_800C52F4, 0xFFF6, 0xFFEF, 0x0, 0x80,  0x0,  0x0);
    gActors[0xB7].unk_0A0 = actor_1;
    D_80171B20 = actor_1;
    Text_Print2Digits(actor_1, gSelectedAge, 0xFFE0, 0xFFF0, 0, gTextPalettes[3]);
}

void func_80006360(u16 actor_index) {
    u16 index;
    u16 count;
    s32 var_v0;
    s32 pad;

    Text_SetColor(0, 0x10, 0x1F, 0x1F);
    Text_SetColor(6, 0x1F, 0x1F, 0x10);
    Text_SetColor(2, 0x10, 0x1F, 0x10);
    Text_SetColor(3, 0x18, 0x1C, 0);
    Text_SetColor(4, 0x1F, 0x10, 0x10);
    Text_SetColor(5, 0x1F, 0x1F, 0x1F);
    for (count = 1; count < 0xB9; count++) {
        gActors[count].flags = 0;
    }
    func_8008310C();
    func_80083454();
    Text_InitActorGraphic(actor_index + 0x25, 0, 0, 0x28, 1);
    gActors[actor_index + 0x25].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK28;
    Text_InitActorGraphic(actor_index + 0x24, 0, 0, 0xFFE1, 1);
    gActors[actor_index + 0x24].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;
    Text_InitActorGraphic(actor_index + 0x2A, 0x2D0, 0, 0x28, 0xFFFF);
    gActors[actor_index + 0x2A].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0x2A].colorR = 0x40;
    gActors[actor_index + 0x2A].colorG = 0x40;
    gActors[actor_index + 0x2A].colorB = 0x40;
    gActors[actor_index + 0x2A].colorA = 0x80;
    gActors[actor_index + 0x2A].scaleX = 18.0f;
    gActors[actor_index + 0x2A].scaleY = 4.0f;
    Text_PrintString(actor_index + 0x42, D_800C5230, 0xFFD0, 0x58, 0);
    Text_InitActorGList(actor_index + 0x8, D_800E13FC, 0xFF80, 0x2B, 0);
    Text_PrintStringRGB(actor_index + 0xC, D_800C5024, 0xFF9C, 0x2B, 0, 0, 0, 0);
    for (index = 0, count = 0; index < ARRAYLENGTH(gDefaultFileName); index++) {
        if (gDefaultFileName[index] != gFileNames[SAVE_SLOT_0][index]) {
            count++;
        }
    }
    if (count != 0) {
        gActors[0xBC].unk_0A0 = 1;
        func_80083358(3, 0, gFileNames[SAVE_SLOT_0], 0);
        if (gFileSexes[SAVE_SLOT_0] != 0) {
            var_v0 = 0xED;
        }
        else {
            var_v0 = 0xF4;
        }
        func_800831D0(3, 1, var_v0, 1);
        func_80083358(4, 1, D_800C52F8, 1);
        func_80083358(4, 2, D_800C502C, 2);
        func_80083358(7, 2, D_800C5038, 2);
        func_80083358(10, 2, D_800C5044, 2);
        func_80083358(13, 2, D_800C5050, 2);
        Text_Print2Digits(actor_index + 0xA2, gFileAges[SAVE_SLOT_0], 0xFFE6, 0x29, 0, gTextPalettes[6]);
        func_80005860(actor_index + 0x4C, 8, 0x29, (uintptr_t)gPaletteGemRed);
        func_800058E0(actor_index + 0x50, 0x18, 0x29, 0, gTextPalettes[4]);
        func_80005860(actor_index + 0x4E, 0x50, 0x29, (uintptr_t)gPaletteGemYellow);
        Text_Print2Digits(actor_index + 0x26, gFileYellowGems[SAVE_SLOT_0], 0x60, 0x29, 0, gTextPalettes[6]);
        func_800059A4(actor_index + 0x60, 0xFFB7, 0x15, 0);
    }
    else {
        gActors[0xBC].unk_0A0 = 0;
        func_80083358(3, 1, gFileNames[SAVE_SLOT_0], 3);
    }
    count = 0;
    Text_InitActorGList(actor_index + 0x09, D_800E13FC, 0xFF80, 0xFFE0, 0);
    Text_PrintStringRGB(actor_index + 0x12, D_800C5028, 0xFF9C, 0xFFE0, 0, 0, 0, 0);
    for (index = 0; index < ARRAYLENGTH(gDefaultFileName); index++) {
        if (gDefaultFileName[index] != gFileNames[SAVE_SLOT_1][index]) {
            count++;
        }
    }
    if (count != 0) {
        gActors[0xBD].unk_0A0 = 1;
        func_800836A0(3, 0, gFileNames[SAVE_SLOT_1], 0);
        if (gFileSexes[SAVE_SLOT_1] != 0) {
            var_v0 = 0xED;
        }
        else {
            var_v0 = 0xF4;
        }
        func_80083518(3, 1, var_v0, 1);
        func_800836A0(4, 1, D_800C52F8, 1);
        func_800836A0(4, 2, D_800C502C, 2);
        func_800836A0(7, 2, D_800C5038, 2);
        func_800836A0(10, 2, D_800C5044, 2);
        func_800836A0(13, 2, D_800C5050, 2);
        Text_Print2Digits(actor_index + 0xA4, gFileAges[SAVE_SLOT_1], 0xFFE6, 0xFFE2, 0, gTextPalettes[6]);
        func_80005860(actor_index + 0x4D, 8, 0xFFE2, (uintptr_t)gPaletteGemRed);
        func_800058E0(actor_index + 0x54, 0x18, 0xFFE2, 1, gTextPalettes[4]);
        func_80005860(actor_index + 0x4F, 0x50, 0xFFE2, (uintptr_t)gPaletteGemYellow);
        Text_Print2Digits(actor_index + 0x28, gFileYellowGems[SAVE_SLOT_1], 0x60, 0xFFE2, 0, gTextPalettes[6]);
        func_800059A4(actor_index + 0x70, 0xFFB7, 0xFFCE, 1);
    }
    else {
        gActors[0xBD].unk_0A0 = 0;
        func_800836A0(3, 1, gFileNames[SAVE_SLOT_1], 3);
    }
    Text_InitActorGraphic(actor_index + 0xAA, 0x1A8, 0xFF80, 0xFFAE, 0);
    gActors[actor_index + 0xAA].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0xAA].palette_18C = D_800D8548;
    gActors[actor_index + 0xAA].scaleX = gActors[actor_index + 0xAA].scaleY = 0.6f;
    Text_PrintStringRGB(actor_index + 0x99, D_800C505C, 0xFF96, 0xFFAE, 0, 0, 0, 0);
}

void func_80006B1C(u16 actor_index) {
    u16 index;

    for (index = actor_index + 0xAB; index < actor_index + 0xBD; index++) {
        gActors[index].flags = 0;
    }
    func_80006360(actor_index);
    gCurrentSaveSlot = 0;
    gGameStateSubState = 1;
}

u16 func_80006B9C(u16 actor_index) {
    Text_InitActorGraphic(actor_index, 0xCA, 0xFF80, 0x30, 0);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].colorA = 0x80;
    gActors[actor_index].scaleX = 0.4f;
    gActors[actor_index].scaleY = 0.8f;
    gActors[actor_index].rotateZ = 315.0f;
    actor_index++;
    Text_InitActorGraphic(actor_index, 0xCA, 0xFF80, 0x30, 0);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].colorA = 0x80;
    gActors[actor_index].scaleX = 0.4f;
    gActors[actor_index].scaleY = 0.8f;
    gActors[actor_index].rotateZ = 45.0f;
    actor_index++;
    return actor_index;
}

void func_80006CC8(u16 actor_index, u16 pos_x) {
    if ((gButtonPress & gButton_DLeft) && (gActors[0xBA].unk_0A0 == 0)) {
        Sound_PlaySfx2(SFX_MENU_BLIP);
        gActors[0xBA].unk_0A0 = 1;
        gActors[actor_index + 0].posX.whole = gActors[actor_index + 1].posX.whole = pos_x;
    }
    if ((gButtonPress & gButton_DRight) && (gActors[0xBA].unk_0A0 == 1)) {
        Sound_PlaySfx2(SFX_MENU_BLIP);
        gActors[0xBA].unk_0A0 = 0;
        gActors[actor_index + 0].posX.whole = gActors[actor_index + 1].posX.whole = pos_x + 0x2A;
    }
}

void func_80006DF4(u16 actor_index) {
    gActors[actor_index + 0].rotateX += 8.0f;
    gActors[actor_index + 0].rotateY += 8.0f;
    gActors[actor_index + 1].rotateX -= 8.0f;
    gActors[actor_index + 1].rotateY -= 8.0f;
}

void func_80006E60(void) {
    gCurrentStage = gWorldProgress;
    gCurrentScene = gStageScenes[gCurrentStage];
    D_800D28E4 = gStageIds[gCurrentStage];
    func_80043918();
    gIsPauseExit = 1;
    gGameState = 0xC;
    gGameStateSubState = 0;
}

void func_80006EDC(u16 actor_index) {
    if (gActors[2].var_158 & 1) {
        gActors[2].var_158 -= 0x10;
        if (gActors[2].var_158 == 0xFF) {
            gActors[2].var_158 = 0;
        }
    }
    else {
        gActors[2].var_158 += 0x10;
        if (gActors[2].var_158 == 0x80) {
            gActors[2].var_158 = 0x7F;
        }
    }

    if (gCurrentSaveSlot != gPreviousSaveSlot) {
        switch (gPreviousSaveSlot) {
        case 0:
            Text_PrintStringRGB(actor_index + 0xC, D_800C5024, 0xFF9C, 0x2B, 0, 0, 0, 0);
            Text_InitActorGraphic(actor_index + 0x8, 0xF4, 0xFF80, 0x2B, 0);
            break;
        case 1:
            Text_PrintStringRGB(actor_index + 0x12, D_800C5028, 0xFF9C, 0xFFE0, 0, 0, 0, 0);
            Text_InitActorGraphic(actor_index + 0x9, 0xF4, 0xFF80, 0xFFE0, 0);
            break;
        case 2:
            Text_PrintStringRGB(actor_index + 0x99, D_800C505C, 0xFF96, 0xFFAE, 0, 0, 0, 0);
            break;
        }

        switch (gCurrentSaveSlot) {
        case 0:
            gActors[actor_index + 0x2A].posY.whole = 40;
            gActors[actor_index + 0x2A].scaleY = 4.0f;
            Text_InitActorGList(actor_index + 8, D_800E13FC, 0xFF80, 0x2B, 0);
            break;
        case 1:
            gActors[actor_index + 0x2A].posY.whole = -31;
            gActors[actor_index + 0x2A].scaleY = 4.0f;
            Text_InitActorGList(actor_index + 0x9, D_800E13FC, 0xFF80, 0xFFE0, 0);
            break;
        case 2:
            gActors[actor_index + 0x2A].posY.whole = -82;
            gActors[actor_index + 0x2A].scaleY = 1.3f;
            break;
        }
    }

    switch (gCurrentSaveSlot) {
    case 0:
        Text_PrintStringRGB(actor_index + 0xC, D_800C5024, 0xFF9C, 0x2B, 0, gActors[2].var_158, gActors[2].var_158, 0);
        break;
    case 1:
        Text_PrintStringRGB(actor_index + 0x12, D_800C5028, 0xFF9C, 0xFFE0, 0, gActors[2].var_158, gActors[2].var_158, 0);
        break;
    case 2:
        Text_PrintStringRGB(actor_index + 0x99, D_800C505C, 0xFF96, 0xFFAE, 0, gActors[2].var_158, gActors[2].var_158, 0);
        break;
    }
}

void func_800072A4(void) {
    u16 index;
    u16 count;

    for (count = 0, index = 0; index < 10; index++) {
        if (gNameEntrySpace[index] != 0) {
            count++;
        }
    }
    if (count != 0) {
        gActors[gActors[0xB7].unk_0A0 - 1].flags &= ~ACTOR_FLAG_DRAW;
        Text_PrintString(gActors[0xB7].unk_0A0 + 0xA, D_800C526C, 0xFFA0, 0xFFB0, 0);
        gActors[1].posX.whole = gActors[2].posX.whole = 46;
        gActors[1].posY.whole = gActors[2].posY.whole = -80;
        gActors[0xBA].unk_0A0 = 1;
        Sound_PlaySfx(SFX_MENU_DING);
        gGameStateSubState++;
    }
    else {
        Sound_PlaySfx(SFX_WRONG_0134);
    }
}

u16 NameEntry_PrintKeyboardHIRA(u16 actor_index) {
    u16 index;

    Text_InitActorGraphic(actor_index++, 0x11E, 0x80, 0x44, 0);
    gActors[actor_index++].flags = 0;
    index = Text_PrintStringRGB(actor_index, D_800C52B0, 0x40, 0x44, 0, 0x80, 0, 0);
    gActors[index++].flags = 0;
    gActors[index++].flags = 0;
    gActors[index++].flags = 0;
    gActors[index++].flags = 0;
    index = Text_PrintString(index, gNameEntryRow0HIRA, 0xFF80,   0x30, 0);
    index = Text_PrintString(index, gNameEntryRow1HIRA, 0xFF80,   0x20, 0);
    index = Text_PrintString(index, gNameEntryRow2HIRA, 0xFF80,   0x10, 0);
    index = Text_PrintString(index, gNameEntryRow3HIRA, 0xFF80,    0x0, 0);
    index = Text_PrintString(index, gNameEntryRow4HIRA, 0xFF80, 0xFFF0, 0);
    gActors[index].flags = 0;
    return (index + 1);
}

void func_80007578(void) {
    Sound_PlaySfx2(SFX_MENU_BLIP);
    NAME_ENTRY_CHARSET = CHARSET_HIRAGANA;
    NameEntry_PrintKeyboardHIRA(0xC);
}

void NameEntry_PrintKeyboardKATA(void) {
    u16 actor_index;

    Sound_PlaySfx2(SFX_MENU_BLIP);
    NAME_ENTRY_CHARSET = CHARSET_KATAKANA;
    actor_index = 0xC;
    Text_InitActorGraphic(actor_index++, 0x11A, 0xFF80, 0x44, 0);
    Text_InitActorGraphic(actor_index++, 0x11E, 0x80, 0x44, 0);
    actor_index = Text_PrintStringRGB(actor_index, D_800C52A4, 0xFF90, 0x44, 0, 0x80, 0, 0);
    actor_index = Text_PrintStringRGB(actor_index, D_800C52BC, 0x40, 0x44, 0, 0x80, 0, 0);
    actor_index = Text_PrintString(actor_index, gNameEntryRow0KATA, 0xFF80, 0x30, 0);
    actor_index = Text_PrintString(actor_index, gNameEntryRow1KATA, 0xFF80, 0x20, 0);
    actor_index = Text_PrintString(actor_index, gNameEntryRow2KATA, 0xFF80, 0x10, 0);
    actor_index = Text_PrintString(actor_index, gNameEntryRow3KATA, 0xFF80, 0, 0);
    Text_PrintString(actor_index, gNameEntryRow4KATA, 0xFF80, 0xFFF0, 0);
}

void NameEntry_PrintKeyboardENG(void) {
    u16 actor_index;

    Sound_PlaySfx2(SFX_MENU_BLIP);
    NAME_ENTRY_CHARSET = CHARSET_LATIN;
    actor_index = 0xC;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow0ENG, 0xFF80,   0x30, 0, 0, 0, 0, 1.0f, 1.0f);
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow1ENG, 0xFF80,   0x20, 0, 0, 0, 0, 1.0f, 1.0f);
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow2ENG, 0xFF80,   0x10, 0, 0, 0, 0, 1.0f, 1.0f);
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow3ENG, 0xFF80,    0x0, 0, 0, 0, 0, 1.0f, 1.0f);
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow4ENG, 0xFF80, 0xFFF0, 0, 0, 0, 0, 1.0f, 1.0f);
    gActors[actor_index++].flags = 0;
    gActors[actor_index].flags = 0;
}


void func_800078A4(u16 arg0) {
    u16 actor_index;
    u16 index;

    func_800230B8();
    actor_index = func_80006B9C(arg0);
    Text_InitActorGList(actor_index++, D_800E13FC, 0xFFC4, 0x58, 0);
    actor_index = Text_PrintStringRGB(actor_index, D_800C5078, 0xFFDC, 0x58, 0, 0x80, 0, 0x80);
    actor_index += 3;
    actor_index = NameEntry_PrintKeyboardHIRA(actor_index);
    actor_index = Text_PrintStringRGB(actor_index, D_800C5138, 0x38, 0xFFE0, 0, 0x80, 0, 0);
    actor_index = Text_PrintStringRGB(actor_index, D_800C513C, 0x58, 0xFFE0, 0, 0x80, 0, 0);
    actor_index = Text_PrintStringRGB(actor_index, D_800C5140, 0x78, 0xFFE0, 0, 0x80, 0, 0);
    actor_index = Text_PrintStringRGBScale(actor_index, D_800C5144, 0xFFB8, 0xFFC4, 0, 0, 0x60, 0, 1.0f, 1.0f);
    Text_InitActorGraphicRGB(actor_index++, 0x464, 0xFFB8, 0xFFBC, 0, 0x60, 0xC0, 0);
    gActors[0xB7].unk_0A0 = actor_index;
    NAME_ENTRY_CHARSET = CHAR_SELECT_ROW = CHAR_SELECT_COLUMN = 0;
    NameEntry_PrintKeyboardENG();
    NAME_ENTRY_CHARSET = CHARSET_LATIN;

    for (index = 0; index < 10; index++) { gNameEntrySpace[index] = 0; }

    if (actor_index) {} // fakematch
    NAME_ENTRY_POSITION = 0;
}

void func_80007A90(void) {
    if (NAME_ENTRY_POSITION == SAVE_SLOT_NAME_LENGTH) {
        CHAR_SELECT_COLUMN = 2;
        CHAR_SELECT_ROW = 5;
    }
}

void func_80007ABC(void) {
    Text_InitActorGraphicRGB(
        gActors[0xB7].unk_0A0 + NAME_ENTRY_POSITION,
        (gNameEntrySpace[NAME_ENTRY_POSITION++] * 2) + 0x2D2,
        (CHAR_SELECT_COLUMN * 16) - 128,
        (-CHAR_SELECT_ROW * 16) + 48,
        0x00, 0x40, 0x20, 0xFF);
    gActors[gActors[0xB7].unk_0A0 + NAME_ENTRY_POSITION].state = 0;
    func_80007A90();
}

void func_80007BC0(u16* hira, u16* kata, u16* eng) {
    if (NAME_ENTRY_POSITION < SAVE_SLOT_NAME_LENGTH) {
        switch (NAME_ENTRY_CHARSET) {
        case CHARSET_HIRAGANA:
            gNameEntrySpace[NAME_ENTRY_POSITION] = hira[CHAR_SELECT_COLUMN];
            break;
        case CHARSET_KATAKANA:
            gNameEntrySpace[NAME_ENTRY_POSITION] = kata[CHAR_SELECT_COLUMN];
            break;
        case CHARSET_LATIN:
            gNameEntrySpace[NAME_ENTRY_POSITION] = eng[CHAR_SELECT_COLUMN];
            break;
        }
        Sound_PlaySfx(SFX_MENU_DING);
        Sound_PlaySfx(SFX_SPEECHSTART);
        func_80007ABC();
    }
}

void GameState_FileSelect(void) {
    u16 count;
    u16 actor_index;
    u16 index_1;
    u16 index_0;

    switch (gGameStateSubState) {
    case 0:
        func_80005188();
        func_80006360(1);
        D_801376BC[1] = 0;
        D_801376B8[1] = 1;
        D_801376A8[1] = 0x60;
        D_801376AC[1] = 0x60;
        D_801376B0[1] = 0x60;
        D_801376B4[1] = 0xFF;
        gCurrentSaveSlot = 0;
        gActors[2].var_158 = 0;
        gGameStateSubState++;
        break;
    case 1:
    case 7:
        gPreviousSaveSlot = gCurrentSaveSlot;
        if (gButtonPress & gButton_DUp) {
            if (gCurrentSaveSlot > 0) {
                gCurrentSaveSlot--;
            }
        }
        if (gGameStateSubState == 1) {
            if (gButtonPress & gButton_DDown) {
                if (gCurrentSaveSlot < 2) {
                    gCurrentSaveSlot++;
                }
            }
        }
        else if (gButtonPress & gButton_DDown) {
            if (gCurrentSaveSlot < 1) {
                gCurrentSaveSlot++;
            }
        }
        if (gCurrentSaveSlot != gPreviousSaveSlot) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
        }
        func_80006EDC(1);
        if ((gButtonPress & gButton_B) && (gGameStateSubState == 7)) {
            Text_PrintStringRGB(0x43, D_800C5230, 0xFFD0, 0x58, 0, 0x80, 0, 0x80);
            gGameStateSubState = 1;
        }
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (gGameStateSubState == 7) {
                for (index_0 = 0, count = 0; index_0 < ARRAYLENGTH(gDefaultFileName); index_0++) {
                    if (gDefaultFileName[index_0] != gFileNames[gCurrentSaveSlot][index_0]) {
                        count++;
                    }
                }
                if (count != 0) {
                    Text_FreeString(0x43, D_800C5230);
                    actor_index = func_80006B9C(0xAC);
                    gActors[actor_index - 2].posX.whole = 0x28;
                    gActors[actor_index - 1].posX.whole = gActors[actor_index - 2].posX.whole;
                    gActors[actor_index - 2].posY.whole = 0x58;
                    gActors[actor_index - 1].posY.whole = gActors[actor_index - 2].posY.whole;
                    switch (gCurrentSaveSlot) {
                    case 0:
                        actor_index = Text_PrintStringRGB(actor_index, D_800C5024, 0xFFE0, 0x58, 0, 0, 0xFF, 0xFF);
                        break;
                    case 1:
                        actor_index = Text_PrintStringRGB(actor_index, D_800C5028, 0xFFE0, 0x58, 0, 0, 0xFF, 0xFF);
                        break;
                    }
                    actor_index = Text_PrintStringRGB(actor_index, D_800C5240, 0xFFAC, 0x58, 0, 0, 0xFF, 0xFF);
                    Text_PrintStringRGB(actor_index, D_800C5294, 0x1E, 0x58, 0, 0, 0xFF, 0xFF);
                    gActors[0xBA].unk_0A0 = 1;
                    gGameStateSubState++;
                }
                else {
                    func_80006B1C(1);
                }
            }
            else {
                if (gCurrentSaveSlot == 2) {
                    Text_PrintStringRGBScale(0x9A, D_800C505C, 0xFF96, 0xFFAE, 0, 0, 0, 0, 0.5f, 1.0f);
                    Text_PrintStringRGB(0x43, D_800C5068, 0xFFD0, 0x58, 0, 0, 0xFF, 0xFF);
                    gCurrentSaveSlot = 0;
                    func_80006EDC(1);
                    gGameStateSubState = 7;
                }
                else {
                    for (index_0 = 0, count = 0; index_0 < ARRAYLENGTH(gDefaultFileName); index_0++) {
                        if (gFileNames[gCurrentSaveSlot][index_0] != gDefaultFileName[index_0]) {
                            count++;
                        }
                    }
                    if (count != 0) {
                        D_80171B22 = 0x3A;
                        gGameStateSubState = 0x1E;
                    }
                    else {
                        func_800078A4(1);
                        gGameStateSubState += 1;
                    }
                }
            }
        }
        break;
    case 8:
        func_80006DF4(0xAC);
        func_80006CC8(0xAC, 0x28);
        func_80006EDC(1);
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (gActors[0xBA].unk_0A0 != 0) {
                actor_index = Text_PrintStringRGB(0xAE, D_800C5250, 0xFFAC, 0x58, 0, 0, 0xFF, 0xFF);
                Text_PrintStringRGB(actor_index, D_800C5294, 0x1E, 0x58, 0, 0, 0xFF, 0xFF);
                gActors[0xBA].unk_0A0 = 1;
                gGameStateSubState++;
            }
            else {
                func_80006B1C(1);
            }
        }
        break;
    case 9:
        func_80006DF4(0xAC);
        func_80006CC8(0xAC, 0x28);
        func_80006EDC(1);
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (gActors[0xBA].unk_0A0 != 0) {
                actor_index = Text_PrintStringRGB(0xAE, D_800C5260, 0xFFAC, 0x58, 0, 0, 0xFF, 0xFF);
                Text_PrintStringRGB(actor_index, D_800C5294, 0x1E, 0x58, 0, 0, 0xFF, 0xFF);
                gActors[0xBA].unk_0A0 = 1;
                gGameStateSubState++;
            }
            else {
                func_80006B1C(1);
            }
        }
        break;
    case 10:
        func_80006DF4(0xAC);
        func_80006CC8(0xAC, 0x28);
        func_80006EDC(1);
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            if (gActors[0xBA].unk_0A0 == 0) {
                Sound_PlaySfx(SFX_MENU_DING);
                D_80171B22 = 0x3A;
                gGameStateSubState += 1;
            }
            else {
                Sound_PlaySfx(SFX_MENU_DING);
                func_80006B1C(1);
            }
        }
        break;
    case 11:
        func_80006DF4(0xAC);
        func_80006CC8(0xAC, 0x28);
        func_80006EDC(1);
        if ((D_80171B22 & 3) == 2) {
            gActors[0x2B].flags ^= ACTOR_FLAG_DRAW;
        }
        if (D_80171B22-- == 0) {
            func_80005828();
            func_80006B1C(1);
        }
        break;
    case 2:
        if (NAME_ENTRY_POSITION == 0xA) {
            if ((CHAR_SELECT_COLUMN == 1) && (gButtonPress & gButton_DRight)) {
                Sound_PlaySfx2(SFX_MENU_BLIP);
                CHAR_SELECT_COLUMN = 2;
            }
            else if ((CHAR_SELECT_COLUMN == 2) && (gButtonPress & gButton_DLeft)) {
                Sound_PlaySfx2(SFX_MENU_BLIP);
                CHAR_SELECT_COLUMN = 1;
            }
        }
        else if (Input_CheckButtonRepeat2(gButton_DLeft, &gActors[0xB5].unk_0A0) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            CHAR_SELECT_COLUMN--;
            if (func_80005B68(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW) != 0) {
                CHAR_SELECT_COLUMN--;
            }
            if (CHAR_SELECT_ROW != 5) {
                if (CHAR_SELECT_COLUMN == 0xFF) {
                    CHAR_SELECT_COLUMN = 0x10;
                }
            }
            else {
                if (CHAR_SELECT_COLUMN == 0xFF) {
                    CHAR_SELECT_COLUMN = 2;
                }
            }
            if (func_80005B68(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW) != 0) {
                CHAR_SELECT_COLUMN = CHAR_SELECT_COLUMN - 1;
            }
        }
        else if (Input_CheckButtonRepeat2(gButton_DRight, &gActors[0xB6].unk_0A0) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            CHAR_SELECT_COLUMN++;
            if (func_80005B68(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW) != 0) {
                CHAR_SELECT_COLUMN++;
            }
            if (CHAR_SELECT_ROW != 5) {
                if (CHAR_SELECT_COLUMN == 0x11) {
                    CHAR_SELECT_COLUMN = 0;
                }
            }
            else if (CHAR_SELECT_COLUMN == 3) {
                CHAR_SELECT_COLUMN = 0;
            }
        }
        else if (Input_CheckButtonRepeat2(gButton_DUp, &gActors[0xB3].unk_0A0) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            CHAR_SELECT_ROW--;
            if (func_80005B68(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW) != 0) {
                CHAR_SELECT_ROW--;
            }
            if (CHAR_SELECT_ROW == 4) {
                switch (CHAR_SELECT_COLUMN) {
                case 0:
                    CHAR_SELECT_COLUMN = 0xC;
                break;
                case 1:
                    CHAR_SELECT_COLUMN = 0xE;
                break;
                case 2:
                    CHAR_SELECT_COLUMN = 0x10;
                break;
                }
            }
            else if (CHAR_SELECT_ROW == 0xFF) {
                if (CHAR_SELECT_COLUMN < 0xA) {
                    CHAR_SELECT_ROW = 4;
                }
                else {
                    CHAR_SELECT_ROW = 5;
                    if (CHAR_SELECT_COLUMN < 0xD) {
                        CHAR_SELECT_COLUMN = 0;
                    }
                    else if (CHAR_SELECT_COLUMN < 0xF) {
                        CHAR_SELECT_COLUMN = 1;
                    }
                    else {
                        CHAR_SELECT_COLUMN = 2;
                    }
                }
            }
        }
        else if (Input_CheckButtonRepeat2(gButton_DDown, &gActors[0xB4].unk_0A0)) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            CHAR_SELECT_ROW++;
            if (func_80005B68(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW) != 0) {
                CHAR_SELECT_ROW++;
            }
            if (CHAR_SELECT_ROW == 6) {
                CHAR_SELECT_ROW = 0;
            }
            if (CHAR_SELECT_ROW == 0) {
                switch (CHAR_SELECT_COLUMN) {
                case 0:
                    CHAR_SELECT_COLUMN = 0xC;
                    break;
                case 1:
                    CHAR_SELECT_COLUMN = 0xE;
                    break;
                case 2:
                    CHAR_SELECT_COLUMN = 0x10;
                    break;
                }
            }
            else if (CHAR_SELECT_ROW == 5) {
                if (CHAR_SELECT_COLUMN < 0xA) {
                    CHAR_SELECT_ROW = 0;
                }
                else {
                    CHAR_SELECT_ROW = 5;
                    if (CHAR_SELECT_COLUMN < 0xD) {
                        CHAR_SELECT_COLUMN = 0;
                    }
                    else if (CHAR_SELECT_COLUMN < 0xF) {
                        CHAR_SELECT_COLUMN = 1;
                    }
                    else {
                        CHAR_SELECT_COLUMN = 2;
                    }
                }
            }
        }
        func_80006DF4(1);
        gActors[gActors[0xB7].unk_0A0 - 1].flags ^= ACTOR_FLAG_DRAW;
        actor_index = 1;
        if (CHAR_SELECT_ROW != 5) {
            gActors[actor_index].posX.whole = (CHAR_SELECT_COLUMN * 0x10) - 128;
            gActors[actor_index].posY.whole = (-CHAR_SELECT_ROW * 0x10) + 48;
        }
        else {
            gActors[actor_index].posX.whole = (CHAR_SELECT_COLUMN * 0x20) + 56;
            gActors[actor_index].posY.whole = -32;
        }
        actor_index++;
        if (CHAR_SELECT_ROW != 5) {
            gActors[actor_index].posX.whole = (CHAR_SELECT_COLUMN * 0x10) - 128;
            gActors[actor_index].posY.whole = (-CHAR_SELECT_ROW * 0x10) + 48;
        }
        else {
            gActors[actor_index].posX.whole = (CHAR_SELECT_COLUMN * 0x20) + 56;
            gActors[actor_index].posY.whole = -32;
        }
        if (gButtonPress & gButton_A) {
            switch (CHAR_SELECT_ROW) {
            // sameline needed to match
            case 0: func_80007BC0(gNameEntryRow0HIRA, gNameEntryRow0KATA, gNameEntryRow0ENG); break;
            case 1: func_80007BC0(gNameEntryRow1HIRA, gNameEntryRow1KATA, gNameEntryRow1ENG); break;
            case 2: func_80007BC0(gNameEntryRow2HIRA, gNameEntryRow2KATA, gNameEntryRow2ENG); break;
            case 3: func_80007BC0(gNameEntryRow3HIRA, gNameEntryRow3KATA, gNameEntryRow3ENG); break;
            case 4: func_80007BC0(gNameEntryRow4HIRA, gNameEntryRow4KATA, gNameEntryRow4ENG); break;
            case 5:
                switch (CHAR_SELECT_COLUMN) {
                case 0:
                    if (NAME_ENTRY_POSITION < SAVE_SLOT_NAME_LENGTH) {
                        gNameEntrySpace[NAME_ENTRY_POSITION] = 0;
                        NAME_ENTRY_POSITION++;
                        func_80007A90();
                        Sound_PlaySfx(SFX_TXTGRUNT_MARINA);
                    }
                    else {
                        Sound_PlaySfx(SFX_WRONG_0134);
                    }
                    break;
                case 1:
                    if (NAME_ENTRY_POSITION > 0) {
                        gNameEntrySpace[--NAME_ENTRY_POSITION] = 0;
                        gActors[gActors[0xB7].unk_0A0 + NAME_ENTRY_POSITION].flags = 0;
                        Sound_PlaySfx(SFX_TXTGRUNT_MARINA);
                    }
                    else {
                        Sound_PlaySfx(SFX_WRONG_0134);
                    }
                    break;
                case 2:
                    func_800072A4();
                    break;
                }
                break;
            }
        }
        if (gButtonPress & gButton_B) {
            if (NAME_ENTRY_POSITION > 0) {
                gNameEntrySpace[--NAME_ENTRY_POSITION] = 0;
                gActors[gActors[0xB7].unk_0A0 + NAME_ENTRY_POSITION].flags = 0;
                Sound_PlaySfx(SFX_TXTGRUNT_MARINA);
            }
            else {
                Sound_PlaySfx(SFX_WRONG_0134);
            }
        }
        if (gButtonPress & gButton_Start) {
            func_800072A4();
        }
        gActors[gActors[0xB7].unk_0A0 - 1].posX.whole = (NAME_ENTRY_POSITION * 0x10) - 0x48;
        for (index_1 = gActors[0xB7].unk_0A0; index_1 < gActors[0xB7].unk_0A0 + 0xA; index_1++) {
            func_80005C3C(index_1);
        }
        break;
    case 3:
        func_80006DF4(1);
        func_80006CC8(1, 0x2E);
        for (index_1 = gActors[0xB7].unk_0A0; index_1 < gActors[0xB7].unk_0A0 + 0xA; index_1++) {
            func_80005C3C(index_1);
        }
        if ((gButtonPress & gButton_A) || (gButtonPress & gButton_Start)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (gActors[0xBA].unk_0A0 != 0) {
                for (index_1 = 4; index_1 < gActors[0xB7].unk_0A0 + 0x1A; index_1++) {
                    gActors[index_1].flags = 0;
                }
                gSelectedSex = 0;
                gNameEntrySpace[NAME_ENTRY_POSITION] = ALPHA_NULL;
                gSelectedAge = 0;
                func_8000607C(1);
                gGameStateSubState++;
            }
            else {
                for (index_1 = gActors[0xB7].unk_0A0 + 0xA; index_1 < gActors[0xB7].unk_0A0 + 0x1A; index_1++) {
                    gActors[index_1].flags = 0;
                }
                gGameStateSubState--;
            }
        }
        break;
    case 4:
        func_80006DF4(1);
        if ((gButtonPress & gButton_DLeft) && (gSelectedSex == 1)) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            gSelectedSex = 0;
        }
        if ((gButtonPress & gButton_DRight) && (gSelectedSex == 0)) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            gSelectedSex = 1;
        }
        actor_index = 1; // could be `0` with different offset below
        if (gSelectedSex != 0) {
            gActors[actor_index + 0].posX.whole = gActors[actor_index + 1].posX.whole = 0;
        }
        else {
            gActors[actor_index + 0].posX.whole = gActors[actor_index + 1].posX.whole = -32;
        }
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (gSelectedSex != 0) {
                gActors[gActors[0xB7].unk_0A0 - 4].posX.whole = -32;
                gActors[gActors[0xB7].unk_0A0 - 5].flags = 0;
            }
            else {
                gActors[gActors[0xB7].unk_0A0 - 5].posX.whole = -32;
                gActors[gActors[0xB7].unk_0A0 - 4].flags = 0;
            }
            gActors[0xBB].unk_0A0 = 0; // 0x10000 + unk2AA8
            gActors[actor_index + 1].posX.whole = gActors[actor_index + 0].posX.whole = -44;
            gActors[actor_index + 1].posY.whole = gActors[actor_index + 0].posY.whole = -16;
            Text_PrintStringRGB(4, D_800C5220, 0xFFD0, 0x58, 0, 0x80, 0, 0x80);
            gGameStateSubState++;
        }
        break;
    case 5:
        func_80006DF4(1);
        if ((gButtonPress & gButton_DLeft) || (gButtonPress & gButton_DRight)) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            gActors[0xBB].unk_0A0 ^= 1;
        }
        if (Input_CheckButtonRepeat2(gButton_DDown, &gActors[0xB4].unk_0A0) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            if (gActors[0xBB].unk_0A0 != 0) {
                if ((gSelectedAge % 10) == 0) {
                    gSelectedAge += 9;
                }
                else {
                    gSelectedAge -= 1;
                }
            }
            else if ((gSelectedAge / 10) == 0) {
                gSelectedAge += 90;
            }
            else {
                gSelectedAge -= 10;
            }
        }
        if (Input_CheckButtonRepeat2(gButton_DUp, &gActors[0xB3].unk_0A0) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            if (gActors[0xBB].unk_0A0 != 0) {
                if ((gSelectedAge % 10) == 9) {
                    gSelectedAge -= 9;
                }
                else {
                    gSelectedAge += 1;
                }
            }
            else if ((gSelectedAge / 10) == 9) {
                gSelectedAge -= 90;
            }
            else {
                gSelectedAge += 10;
            }
        }
        Text_Print2Digits(gActors[0xB7].unk_0A0, gSelectedAge, 0xFFE0, 0xFFF0, 0, gTextPalettes[3]);
        if (gActors[0xBB].unk_0A0 != 0) {
            gActors[gActors[0xB7].unk_0A0 + 0].flags |= ACTOR_FLAG_DRAW;
            if (gFramesInScene % 2) {
                gActors[gActors[0xB7].unk_0A0 + 1].flags &= ~ACTOR_FLAG_DRAW;
            }
        }
        else {
            if (gFramesInScene % 2) { gActors[gActors[0xB7].unk_0A0 + 0].flags &= ~ACTOR_FLAG_DRAW; }
            gActors[gActors[0xB7].unk_0A0 + 1].flags |= ACTOR_FLAG_DRAW;
        }
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            gActors[gActors[0xB7].unk_0A0 + 0].flags |= ACTOR_FLAG_DRAW;
            gActors[gActors[0xB7].unk_0A0 + 1].flags |= ACTOR_FLAG_DRAW;
            gActors[1].flags |= ACTOR_FLAG_DRAW;
            gActors[2].flags |= ACTOR_FLAG_DRAW;
            gActors[1].posY.whole = gActors[2].posY.whole = -80;
            gActors[0xBA].unk_0A0 = 1;
            actor_index = gActors[0xB7].unk_0A0 + gActors[0xBA].unk_0A0 * 0;
            gActors[1].posX.whole = gActors[2].posX.whole = 46;
            Text_PrintString(actor_index + 4, D_800C526C, 0xFFA0, 0xFFB0, 0);
            gGameStateSubState++;
        }
        break;
    case 6:
        func_80006DF4(1);
        func_80006CC8(1, 0x2E);
        if ((gButtonPress & gButton_A) || (gButtonPress & gButton_Start)) {
            if (gActors[0xBA].unk_0A0 != 0) {
                Sound_PlaySfx(SFX_MENU_DING);
                gActors[1].flags = gActors[2].flags = 0;
                D_80171B22 = 0x3A;
                gGameStateSubState = 0x14;
            }
            else {
                func_8000607C(1);
                gGameStateSubState -= 2;
            }
        }
        break;
    case 20:
        if (!(D_80171B22 & 3)) {
            for (count = D_80171B1A; count < D_80171B1C; count++) {
                gActors[count].flags ^= ACTOR_FLAG_DRAW;
            }
            if (gSelectedSex != 0) {
                gActors[D_80171B1E + 1].flags ^= ACTOR_FLAG_DRAW;
            }
            else {
                gActors[D_80171B1E + 0].flags ^= ACTOR_FLAG_DRAW;
            }
            gActors[D_80171B20 + 0].flags ^= ACTOR_FLAG_DRAW;
            gActors[D_80171B20 + 1].flags ^= ACTOR_FLAG_DRAW;
        }
        if ((D_80171B22-- ^ 2)) {
            break;
        }
        for (index_0 = 0; index_0 < ARRAYLENGTH(gNameEntrySpace); index_0++) {
            gFileNames[gCurrentSaveSlot][index_0] = gNameEntrySpace[index_0];
        }
        gFileAges[gCurrentSaveSlot] = gSelectedAge;
        gFileSexes[gCurrentSaveSlot] = gSelectedSex;
        gFileRedGems[gCurrentSaveSlot] = 0x1E;
        gFileYellowGems[gCurrentSaveSlot] = 0;
        gFilePlayTimes[gCurrentSaveSlot] = 0;
        func_800050B4();
        gRedGems = 0x1E;
        gFramesInPlayTime = 0;
        func_80005770();
        func_80006E60();
        break;
    case 30:
        if (!(D_80171B22 & 3)) {
            gActors[0x2B].flags ^= ACTOR_FLAG_DRAW;
        }
        if (D_80171B22-- != 2) {
            break;
        }
        func_8000565C();
        gRedGems = gFileRedGems[gCurrentSaveSlot];
        gFramesInPlayTime = gFilePlayTimes[gCurrentSaveSlot];
        func_80006E60();
        break;
    default:
        break;
    }
}
