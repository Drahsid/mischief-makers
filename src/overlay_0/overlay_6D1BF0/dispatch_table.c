#include "common.h"
#include "actor.h"

void ClancerCommanderMech_Update(u16 actor_index);
void func_80192C00_6D2700(u16 actor_index);

ActorFunc D_80192000_6D1BF0[] = {
    ClancerCommanderMech_Update,
    func_80192C00_6D2700,
    NULL,
    NULL,
};
