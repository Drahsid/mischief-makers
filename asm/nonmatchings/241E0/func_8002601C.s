glabel func_8002601C
/* 26C1C 8002601C 308FFFFF */  andi       $t7, $a0, 0xffff
/* 26C20 80026020 3C19800D */  lui        $t9, %hi(D_800CDB8C)
/* 26C24 80026024 2739DB8C */  addiu      $t9, $t9, %lo(D_800CDB8C)
/* 26C28 80026028 000FC100 */  sll        $t8, $t7, 4
/* 26C2C 8002602C 03191021 */  addu       $v0, $t8, $t9
/* 26C30 80026030 8C470000 */  lw         $a3, ($v0)
/* 26C34 80026034 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 26C38 80026038 AFBF0014 */  sw         $ra, 0x14($sp)
/* 26C3C 8002603C 10E0001E */  beqz       $a3, .L800260B8
/* 26C40 80026040 AFA40028 */   sw        $a0, 0x28($sp)
/* 26C44 80026044 8C480004 */  lw         $t0, 4($v0)
/* 26C48 80026048 3C09801A */  lui        $t1, 0x801a
/* 26C4C 8002604C 3C038013 */  lui        $v1, %hi(D_8013773C)
/* 26C50 80026050 35296800 */  ori        $t1, $t1, 0x6800
/* 26C54 80026054 2463773C */  addiu      $v1, $v1, %lo(D_8013773C)
/* 26C58 80026058 01073023 */  subu       $a2, $t0, $a3
/* 26C5C 8002605C AC690000 */  sw         $t1, ($v1)
/* 26C60 80026060 00C95021 */  addu       $t2, $a2, $t1
/* 26C64 80026064 3C018013 */  lui        $at, %hi(D_80137740)
/* 26C68 80026068 AC2A7740 */  sw         $t2, %lo(D_80137740)($at)
/* 26C6C 8002606C 8C650000 */  lw         $a1, ($v1)
/* 26C70 80026070 00E02025 */  or         $a0, $a3, $zero
/* 26C74 80026074 0C00047C */  jal        func_800011F0
/* 26C78 80026078 AFA2001C */   sw        $v0, 0x1c($sp)
/* 26C7C 8002607C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 26C80 80026080 3C0C801A */  lui        $t4, 0x801a
/* 26C84 80026084 8C440008 */  lw         $a0, 8($v0)
/* 26C88 80026088 8C4B000C */  lw         $t3, 0xc($v0)
/* 26C8C 8002608C 3C038013 */  lui        $v1, %hi(D_8013773C)
/* 26C90 80026090 358C6900 */  ori        $t4, $t4, 0x6900
/* 26C94 80026094 2463773C */  addiu      $v1, $v1, %lo(D_8013773C)
/* 26C98 80026098 01643023 */  subu       $a2, $t3, $a0
/* 26C9C 8002609C AC6C0000 */  sw         $t4, ($v1)
/* 26CA0 800260A0 00CC6821 */  addu       $t5, $a2, $t4
/* 26CA4 800260A4 3C018013 */  lui        $at, %hi(D_80137740)
/* 26CA8 800260A8 AC2D7740 */  sw         $t5, %lo(D_80137740)($at)
/* 26CAC 800260AC 8C650000 */  lw         $a1, ($v1)
/* 26CB0 800260B0 0C00047C */  jal        func_800011F0
/* 26CB4 800260B4 00000000 */   nop
.L800260B8:
/* 26CB8 800260B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26CBC 800260BC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 26CC0 800260C0 03E00008 */  jr         $ra
/* 26CC4 800260C4 00000000 */   nop