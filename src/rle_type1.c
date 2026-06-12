#include "common.h"

// how many windows/rows back the copy source sits
static s32 sRleWindowMultipliers[] = {
    1, 1, 1, 1, 1, 2, 2, 2,
};

// the byte adjustment added to distance
static s32 sRleWindowOffsets[] = {
    -2, -1, 0, 1, 2, -1, 0, 1,
};

s32 Trouble_RLE_Type1(u8* src, u8* dst) {
    u8 current_command;
    s32 window_size;
    s32 dst_pos;
    s32 index;
    s32 count;
    s32 copy_pos;
    u8 value;
    u8* input;

    window_size = 4;
    dst_pos = 0;
    input = src; loop_start: { // wtf
        current_command = *input;

        while (current_command < 0x80) {
            count = (current_command & 0xF) + 1;
            index = (current_command >> 4) & 7;
            copy_pos = dst_pos - (window_size * sRleWindowMultipliers[index]) - sRleWindowOffsets[index];

            for (index = 0; index < count; index++) {
                dst[dst_pos++] = dst[copy_pos++];
            }

            input++;
            current_command = *input;
        }

        if (current_command == 0x80) {
            window_size = (input[1] << 8) + input[2];
            input += 3;
            goto loop_start;
        }
        else if (current_command < 0xA0) {
            copy_pos = dst_pos - input[1];
            count = (current_command & 0x1F) + 1;

            for (index = 0; index < count; index++) {
                dst[dst_pos++] = dst[copy_pos++];
            }

            input += 2;
            goto loop_start;
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

            goto loop_start;
        }
        else if (current_command < 0xD0) {
            count = current_command;
            count = (count & 0xF) + 2;
            value = input[1];

            for (index = 0; index < count; index++) {
                dst[dst_pos++] = value;
            }

            input += 2;
            goto loop_start;
        }
        else if (current_command < 0xE0) {
            count = current_command & 0xF;
            count++;

            if (count == 0x10) {
                if (current_command && current_command) {
                }
                dst[dst_pos + 0] = dst[dst_pos + 1] = dst[dst_pos + 2] = dst[dst_pos + 3]
                    = dst[dst_pos + 4] = dst[dst_pos + 5] = dst[dst_pos + 6] = dst[dst_pos + 7]
                    = dst[dst_pos + 8] = dst[dst_pos + 9] = dst[dst_pos + 10] = dst[dst_pos + 11]
                    = dst[dst_pos + 12] = dst[dst_pos + 13] = dst[dst_pos + 14] = dst[dst_pos + 15] = 0;
                dst_pos += 0x10;
            }
            else {
                for (index = 0; index < count; index++) {
                    dst[dst_pos++] = 0;
                }
            }

            input++;
            goto loop_start;
        }
        else if (current_command < 0xF0) {
            count = current_command & 0xF;
            count++;
            value = dst[dst_pos - 1];

            for (index = 0; index < count; index++) {
                dst[dst_pos + 0] = dst[dst_pos + 1] = dst[dst_pos + 2] = dst[dst_pos + 3]
                    = dst[dst_pos + 4] = dst[dst_pos + 5] = dst[dst_pos + 6] = dst[dst_pos + 7]
                    = dst[dst_pos + 8] = dst[dst_pos + 9] = dst[dst_pos + 10] = dst[dst_pos + 11]
                    = dst[dst_pos + 12] = dst[dst_pos + 13] = dst[dst_pos + 14] = dst[dst_pos + 15] = value;
                dst_pos += 0x10;
            }

            input++;
            goto loop_start;
        }
        else if (current_command < 0xFF) {
            count = current_command & 0xF;
            count++;
            value = dst[dst_pos - 1];

            for (index = 0; index < count; index++) {
                dst[dst_pos++] = value;
            }

            input++;
            goto loop_start;
        }

        if (current_command != 0xFF) {
            goto loop_start;
        }
    }
    
    return dst_pos;
}