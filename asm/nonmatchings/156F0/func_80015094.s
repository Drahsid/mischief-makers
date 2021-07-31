glabel func_80015094
/* 15C94 80015094 308EFFFF */  andi       $t6, $a0, 0xffff
/* 15C98 80015098 000E7880 */  sll        $t7, $t6, 2
/* 15C9C 8001509C 01EE7823 */  subu       $t7, $t7, $t6
/* 15CA0 800150A0 000F7880 */  sll        $t7, $t7, 2
/* 15CA4 800150A4 01EE7821 */  addu       $t7, $t7, $t6
/* 15CA8 800150A8 000F7880 */  sll        $t7, $t7, 2
/* 15CAC 800150AC 01EE7823 */  subu       $t7, $t7, $t6
/* 15CB0 800150B0 000F78C0 */  sll        $t7, $t7, 3
/* 15CB4 800150B4 3C02800F */  lui        $v0, %hi(gActors+0xA0)
/* 15CB8 800150B8 004F1021 */  addu       $v0, $v0, $t7
/* 15CBC 800150BC 9042F5B0 */  lbu        $v0, %lo(gActors+0xA0)($v0)
/* 15CC0 800150C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15CC4 800150C4 AFA40018 */  sw         $a0, 0x18($sp)
/* 15CC8 800150C8 3058000F */  andi       $t8, $v0, 0xf
/* 15CCC 800150CC 01C02025 */  or         $a0, $t6, $zero
/* 15CD0 800150D0 17000006 */  bnez       $t8, .L800150EC
/* 15CD4 800150D4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 15CD8 800150D8 305900C0 */  andi       $t9, $v0, 0xc0
/* 15CDC 800150DC 13200004 */  beqz       $t9, .L800150F0
/* 15CE0 800150E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 15CE4 800150E4 0C0053F4 */  jal        func_80014FD0
/* 15CE8 800150E8 24050010 */   addiu     $a1, $zero, 0x10
.L800150EC:
/* 15CEC 800150EC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800150F0:
/* 15CF0 800150F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15CF4 800150F4 03E00008 */  jr         $ra
/* 15CF8 800150F8 00000000 */   nop
