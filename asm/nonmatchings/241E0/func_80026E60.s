glabel func_80026E60
/* 27A60 80026E60 3083FFFF */  andi       $v1, $a0, 0xffff
/* 27A64 80026E64 3C098013 */  lui        $t1, %hi(D_801376F0)
/* 27A68 80026E68 0003C880 */  sll        $t9, $v1, 2
/* 27A6C 80026E6C 252976F0 */  addiu      $t1, $t1, %lo(D_801376F0)
/* 27A70 80026E70 3C0F802E */  lui        $t7, 0x802e
/* 27A74 80026E74 0323C823 */  subu       $t9, $t9, $v1
/* 27A78 80026E78 3C0B800D */  lui        $t3, %hi(D_800CFE04)
/* 27A7C 80026E7C AD2F0000 */  sw         $t7, ($t1)
/* 27A80 80026E80 3C018013 */  lui        $at, %hi(D_801376EC)
/* 27A84 80026E84 256BFE04 */  addiu      $t3, $t3, %lo(D_800CFE04)
/* 27A88 80026E88 00195100 */  sll        $t2, $t9, 4
/* 27A8C 80026E8C AC2F76EC */  sw         $t7, %lo(D_801376EC)($at)
/* 27A90 80026E90 014B3821 */  addu       $a3, $t2, $t3
/* 27A94 80026E94 8CE80008 */  lw         $t0, 8($a3)
/* 27A98 80026E98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 27A9C 80026E9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 27AA0 80026EA0 1100001E */  beqz       $t0, .L80026F1C
/* 27AA4 80026EA4 AFA40028 */   sw        $a0, 0x28($sp)
/* 27AA8 80026EA8 3C0C0100 */  lui        $t4, 0x100
/* 27AAC 80026EAC 8CEF000C */  lw         $t7, 0xc($a3)
/* 27AB0 80026EB0 258C0000 */  addiu      $t4, $t4, 0
/* 27AB4 80026EB4 3C0E0025 */  lui        $t6, 0x25
/* 27AB8 80026EB8 25CE8F40 */  addiu      $t6, $t6, -0x70c0
/* 27ABC 80026EBC 010C6823 */  subu       $t5, $t0, $t4
/* 27AC0 80026EC0 3C05801C */  lui        $a1, 0x801c
/* 27AC4 80026EC4 01AE2021 */  addu       $a0, $t5, $t6
/* 27AC8 80026EC8 34A54400 */  ori        $a1, $a1, 0x4400
/* 27ACC 80026ECC AFA3001C */  sw         $v1, 0x1c($sp)
/* 27AD0 80026ED0 0C00047C */  jal        func_800011F0
/* 27AD4 80026ED4 01E83023 */   subu      $a2, $t7, $t0
/* 27AD8 80026ED8 3C04801C */  lui        $a0, 0x801c
/* 27ADC 80026EDC 34844400 */  ori        $a0, $a0, 0x4400
/* 27AE0 80026EE0 0C001244 */  jal        func_80004910
/* 27AE4 80026EE4 3C05802E */   lui       $a1, 0x802e
/* 27AE8 80026EE8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 27AEC 80026EEC 3C01802E */  lui        $at, 0x802e
/* 27AF0 80026EF0 0003C880 */  sll        $t9, $v1, 2
/* 27AF4 80026EF4 0323C823 */  subu       $t9, $t9, $v1
/* 27AF8 80026EF8 0041C021 */  addu       $t8, $v0, $at
/* 27AFC 80026EFC 001950C0 */  sll        $t2, $t9, 3
/* 27B00 80026F00 3C0B800D */  lui        $t3, %hi(D_800D0E88)
/* 27B04 80026F04 3C018013 */  lui        $at, %hi(D_801376F0)
/* 27B08 80026F08 016A5821 */  addu       $t3, $t3, $t2
/* 27B0C 80026F0C 8D6B0E88 */  lw         $t3, %lo(D_800D0E88)($t3)
/* 27B10 80026F10 AC3876F0 */  sw         $t8, %lo(D_801376F0)($at)
/* 27B14 80026F14 3C018013 */  lui        $at, %hi(D_801376C0)
/* 27B18 80026F18 AC2B76C0 */  sw         $t3, %lo(D_801376C0)($at)
.L80026F1C:
/* 27B1C 80026F1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 27B20 80026F20 27BD0028 */  addiu      $sp, $sp, 0x28
/* 27B24 80026F24 03E00008 */  jr         $ra
/* 27B28 80026F28 00000000 */   nop
