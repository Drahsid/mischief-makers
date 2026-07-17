#include "common.h"
#include "actor.h"

void func_801AB18C_789D5C(u16 actor_index);
void func_801A75F4_7861C4(u16 actor_index);
void func_801A89C0_787590(u16 actor_index);
void func_801AAB64_789734(u16 actor_index);
void func_801A9814_7883E4(u16 actor_index);
void func_801A8CC4_787894(u16 actor_index);
void func_801AB184_789D54(u16 actor_index);

ActorFunc D_801A6800_7854B0[] = {
    func_801AB18C_789D5C,
    func_801A75F4_7861C4, // ostrich in "CounterAttack"
    func_801A89C0_787590, // Bee in "Bee's The One"
    func_801AAB64_789734, // Commander in "CounterAttack"
    func_801A9814_7883E4, // Beam attack in "CounterAttack"
    func_801A8CC4_787894, // Bombs in "CounterAttack"
    func_801AB184_789D54,
    NULL,
};
