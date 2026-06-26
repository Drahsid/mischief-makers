#include "common.h"
#include "actor.h"

void func_8019F538_7414C8(u16 actor_index);
void func_8019B660_73D5F0(u16 actor_index);
void func_801A08D8_742868(u16 actor_index);
void func_8019BACC_73DA5C(u16 actor_index);
void func_8019B21C_73D1AC(u16 actor_index);
void func_8019B204_73D194(u16 actor_index);
void func_801A08D0_742860(u16 actor_index);

// "Overlay 1" dispatch table for "Wormin' Up"
ActorFunc D_8019B000_73D070[] = {
    func_8019F538_7414C8,
    func_8019B660_73D5F0,
    func_801A08D8_742868,
    func_8019BACC_73DA5C,
    func_8019B21C_73D1AC,
    func_8019B204_73D194,
    func_801A08D0_742860,
    NULL,
};
