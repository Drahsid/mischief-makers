glabel func_800848A0
/* 854A0 800848A0 3085FFFF */  andi       $a1, $a0, 0xffff
/* 854A4 800848A4 00057080 */  sll        $t6, $a1, 2
/* 854A8 800848A8 01C57023 */  subu       $t6, $t6, $a1
/* 854AC 800848AC 000E7080 */  sll        $t6, $t6, 2
/* 854B0 800848B0 01C57021 */  addu       $t6, $t6, $a1
/* 854B4 800848B4 000E7080 */  sll        $t6, $t6, 2
/* 854B8 800848B8 01C57023 */  subu       $t6, $t6, $a1
/* 854BC 800848BC 3C0F800F */  lui        $t7, %hi(gActors)
/* 854C0 800848C0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 854C4 800848C4 000E70C0 */  sll        $t6, $t6, 3
/* 854C8 800848C8 01CF1021 */  addu       $v0, $t6, $t7
/* 854CC 800848CC 8C580098 */  lw         $t8, 0x98($v0)
/* 854D0 800848D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 854D4 800848D4 33190200 */  andi       $t9, $t8, 0x200
/* 854D8 800848D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 854DC 800848DC 1320000C */  beqz       $t9, .L80084910
/* 854E0 800848E0 AFA40018 */   sw        $a0, 0x18($sp)
/* 854E4 800848E4 3C090002 */  lui        $t1, 2
/* 854E8 800848E8 24080002 */  addiu      $t0, $zero, 2
/* 854EC 800848EC 35290003 */  ori        $t1, $t1, 3
/* 854F0 800848F0 A44800D0 */  sh         $t0, 0xd0($v0)
/* 854F4 800848F4 AC490080 */  sw         $t1, 0x80($v0)
/* 854F8 800848F8 AC4000EC */  sw         $zero, 0xec($v0)
/* 854FC 800848FC AC4000F0 */  sw         $zero, 0xf0($v0)
/* 85500 80084900 0C000DB2 */  jal        func_800036C8
/* 85504 80084904 2404002F */   addiu     $a0, $zero, 0x2f
/* 85508 80084908 10000002 */  b          .L80084914
/* 8550C 8008490C 24020001 */   addiu     $v0, $zero, 1
.L80084910:
/* 85510 80084910 00001025 */  or         $v0, $zero, $zero
.L80084914:
/* 85514 80084914 8FBF0014 */  lw         $ra, 0x14($sp)
/* 85518 80084918 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8551C 8008491C 03E00008 */  jr         $ra
/* 85520 80084920 00000000 */   nop
