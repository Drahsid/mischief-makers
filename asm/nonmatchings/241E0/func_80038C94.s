glabel func_80038C94
/* 39894 80038C94 3085FFFF */  andi       $a1, $a0, 0xffff
/* 39898 80038C98 00057080 */  sll        $t6, $a1, 2
/* 3989C 80038C9C 01C57023 */  subu       $t6, $t6, $a1
/* 398A0 80038CA0 000E7080 */  sll        $t6, $t6, 2
/* 398A4 80038CA4 01C57021 */  addu       $t6, $t6, $a1
/* 398A8 80038CA8 000E7080 */  sll        $t6, $t6, 2
/* 398AC 80038CAC 01C57023 */  subu       $t6, $t6, $a1
/* 398B0 80038CB0 3C0F800F */  lui        $t7, %hi(gActors)
/* 398B4 80038CB4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 398B8 80038CB8 000E70C0 */  sll        $t6, $t6, 3
/* 398BC 80038CBC 01CF1021 */  addu       $v0, $t6, $t7
/* 398C0 80038CC0 AC400190 */  sw         $zero, 0x190($v0)
/* 398C4 80038CC4 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 398C8 80038CC8 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 398CC 80038CCC 84580088 */  lh         $t8, 0x88($v0)
/* 398D0 80038CD0 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 398D4 80038CD4 03194021 */  addu       $t0, $t8, $t9
/* 398D8 80038CD8 AC480180 */  sw         $t0, 0x180($v0)
/* 398DC 80038CDC 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 398E0 80038CE0 8449008C */  lh         $t1, 0x8c($v0)
/* 398E4 80038CE4 8C4C0098 */  lw         $t4, 0x98($v0)
/* 398E8 80038CE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 398EC 80038CEC 012A5821 */  addu       $t3, $t1, $t2
/* 398F0 80038CF0 000C6BC0 */  sll        $t5, $t4, 0xf
/* 398F4 80038CF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 398F8 80038CF8 AFA40018 */  sw         $a0, 0x18($sp)
/* 398FC 80038CFC 05A10003 */  bgez       $t5, .L80038D0C
/* 39900 80038D00 AC4B0184 */   sw        $t3, 0x184($v0)
/* 39904 80038D04 0C000DB2 */  jal        func_800036C8
/* 39908 80038D08 2404006E */   addiu     $a0, $zero, 0x6e
.L80038D0C:
/* 3990C 80038D0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 39910 80038D10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 39914 80038D14 03E00008 */  jr         $ra
/* 39918 80038D18 00000000 */   nop
