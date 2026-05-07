#include "common.h"

extern s32 D_800C4EE0[];
extern s32 D_800C4F00[];

// https://decomp.me/scratch/cMY8E
#ifdef NON_MATCHING
s32 Trouble_RLE_Type1(u8* src, u8* dst) {
    s32 command;
    s32 current_command;
    s32 window_size;
    s32 dst_pos;
    s32 index;
    s32 count;
    s32 copy_pos;
    u8 value;
    u8* input;

    command = src[0];
    window_size = 4;
    dst_pos = 0;
    input = src;

    do {
        current_command = command;

        if (current_command < 0x80) {
            do {
                index = (current_command >> 4) & 7;
                copy_pos = dst_pos - (window_size * D_800C4EE0[index]) - D_800C4F00[index];
                count = (current_command & 0xF) + 1;

                for (index = 0; index < count; index++) {
                    dst[dst_pos++] = dst[copy_pos++];
                }

                input++;
                command = input[0];
                current_command = command;
            } while (current_command < 0x80);
        }

        if (current_command == 0x80) {
            input++;
            window_size = (input[0] << 8) + input[1];
            command = input[2];
            input += 2;
        }
        else if (current_command < 0xA0) {
            copy_pos = dst_pos - input[1];
            count = (current_command & 0x1F) + 1;

            for (index = 0; index < count; index++) {
                dst[dst_pos++] = dst[copy_pos++];
            }

            input++;

            command = (input++)[1];
        }
        else if (current_command < 0xC0) {
            count = (current_command & 0x1F) + 1;
            input++;

            if (count >= 0x10) {
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                count -= 0x10;
            }

            if (count >= 8) {
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                count -= 8;
            }

            if (count >= 4) {
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                dst[dst_pos++] = *input++;
                count -= 4;
            }

            for (index = 0; index < count; index++) {
                dst[dst_pos++] = *input++;
            }

            command = *input;
        }
        else if ((current_command + 1) <= 0xD0) {
            count = (current_command & 0xF) + 2;
            value = input[1];

            for (index = 0; index < count; index++) {
                dst[dst_pos++] = value;
            }

            command = input[2];
            input += 2;
        }
        else if (current_command < 0xE0) {
            count = current_command & 0xF;
            count++;

            command = count == 0x10;
            if (command) {
                dst[dst_pos + 15] = 0;
                dst[dst_pos + 14] = 0;
                dst[dst_pos + 13] = 0;
                dst[dst_pos + 12] = 0;
                dst[dst_pos + 11] = 0;
                dst[dst_pos + 10] = 0;
                dst[dst_pos + 9] = 0;
                dst[dst_pos + 8] = 0;
                dst[dst_pos + 7] = 0;
                dst[dst_pos + 6] = 0;
                dst[dst_pos + 5] = 0;
                dst[dst_pos + 4] = 0;
                dst[dst_pos + 3] = 0;
                dst[dst_pos + 2] = 0;
                dst[dst_pos + 1] = 0;
                dst[dst_pos + 0] = current_command * 0;
                dst_pos += 0x10;
            }
            else {
                for (index = 0; index < count; index++) {
                    dst[dst_pos++] = 0;
                }
            }

            command = input[1];
            input++;
        }
        else if (current_command < 0xF0) {
            count = current_command & 0xF;
            count++;
            value = dst[dst_pos - 1];

            for (index = 0; index < count; index++) {
                dst[dst_pos + 15] = value;
                dst[dst_pos + 14] = value;
                dst[dst_pos + 13] = value;
                dst[dst_pos + 12] = value;
                dst[dst_pos + 11] = value;
                dst[dst_pos + 10] = value;
                dst[dst_pos + 9] = value;
                dst[dst_pos + 8] = value;
                dst[dst_pos + 7] = value;
                dst[dst_pos + 6] = value;
                dst[dst_pos + 5] = value;
                dst[dst_pos + 4] = value;
                dst[dst_pos + 3] = value;
                dst[dst_pos + 2] = value;
                dst[dst_pos + 1] = value;
                dst[dst_pos + 0] = value;
                dst_pos += 0x10;
            }

            command = input[1];
            input++;
        }
        else if (current_command < 0xFF) {
            count = current_command & 0xF;
            count++;
            value = dst[dst_pos - 1];

            for (index = 0; index < count; index++) {
                dst[dst_pos++] = value;
            }

            command = input[1];
            input++;
        }
    } while (command != 0xFF);

    return dst_pos;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/rle_type1/Trouble_RLE_Type1.s")
#endif
