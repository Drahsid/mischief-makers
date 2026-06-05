#include "common.h"
#include "boot.h"
#include "input.h"

void Input_Update(void);
u32 Input_GetFirstController(void);

void Input_Update(void) {
    osContGetReadData(gContpadArrayB);

    if (!gContpadArrayA[gPlayerControllerIndex].errno) {
    }

    osContGetReadData(gContpadArrayA);

    if (gContpadArrayA[gPlayerControllerIndex].errno == 0) {
        gButtonCurrent = gContpadArrayA[gPlayerControllerIndex].button;
        gJoyX = gContpadArrayA[gPlayerControllerIndex].stick_x;
        gJoyY = gContpadArrayA[gPlayerControllerIndex].stick_y;
    }
    else {
        gButtonCurrent = 0;
    }

    gButtonPress = (gButtonCurrent ^ gButtonLast) & gButtonCurrent;
    gButtonHold = gButtonCurrent;
    gButtonLast = gButtonCurrent;
}

u32 Input_GetFirstController(void) {
    s32 index;
    u8 controller_bits;

    osCreateMesgQueue(&gControllerInitMessageQueue, &gControllerInitMessageBuffer, 1);
    osSetEventMesg(OS_EVENT_SI, &gControllerInitMessageQueue, (OSMesg)1);
    osContInit(&gControllerInitMessageQueue, &controller_bits, gContStatus);

    osCreateMesgQueue(&gSerialInterfaceMessageQueue, &gSerialInterfaceMessageBuffer, 1);
    osSetEventMesg(OS_EVENT_SI, &gSerialInterfaceMessageQueue, (OSMesg)NULL);

    osCreateMesgQueue(&gControllerReadMessageQueue, &gControllerReadMessageBuffer, 2);
    osSetEventMesg(OS_EVENT_SI, &gControllerReadMessageQueue, (OSMesg)2);

    for (index = 0; index < 4; index++) {
        if (controller_bits & (1 << index)) {
            if (!(gContStatus[index].errno & CONT_NO_RESPONSE_ERROR)) {
                return index;
            }
        }
    }

    return -1;
}
