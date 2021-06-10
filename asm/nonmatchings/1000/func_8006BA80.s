glabel func_8006BA80
/* 6C680 8006BA80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6C684 8006BA84 AFA5001C */  sw         $a1, 0x1c($sp)
/* 6C688 8006BA88 97AE001E */  lhu        $t6, 0x1e($sp)
/* 6C68C 8006BA8C 24080198 */  addiu      $t0, $zero, 0x198
/* 6C690 8006BA90 01C80019 */  multu      $t6, $t0
/* 6C694 8006BA94 3C03800F */  lui        $v1, %hi(D_800EF510)
/* 6C698 8006BA98 2463F510 */  addiu      $v1, $v1, %lo(D_800EF510)
/* 6C69C 8006BA9C 24182601 */  addiu      $t8, $zero, 0x2601
/* 6C6A0 8006BAA0 3C190004 */  lui        $t9, 4
/* 6C6A4 8006BAA4 3C09800E */  lui        $t1, 0x800e
/* 6C6A8 8006BAA8 AFA40018 */  sw         $a0, 0x18($sp)
/* 6C6AC 8006BAAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C6B0 8006BAB0 97A4001E */  lhu        $a0, 0x1e($sp)
/* 6C6B4 8006BAB4 24052000 */  addiu      $a1, $zero, 0x2000
/* 6C6B8 8006BAB8 3C070003 */  lui        $a3, 3
/* 6C6BC 8006BABC 00007812 */  mflo       $t7
/* 6C6C0 8006BAC0 006F1021 */  addu       $v0, $v1, $t7
/* 6C6C4 8006BAC4 A45800D2 */  sh         $t8, 0xd2($v0)
/* 6C6C8 8006BAC8 AC5900F0 */  sw         $t9, 0xf0($v0)
/* 6C6CC 8006BACC 95293580 */  lhu        $t1, 0x3580($t1)
/* 6C6D0 8006BAD0 00000000 */  nop
/* 6C6D4 8006BAD4 01280019 */  multu      $t1, $t0
/* 6C6D8 8006BAD8 00005012 */  mflo       $t2
/* 6C6DC 8006BADC 006A5821 */  addu       $t3, $v1, $t2
/* 6C6E0 8006BAE0 8D660088 */  lw         $a2, 0x88($t3)
/* 6C6E4 8006BAE4 0C00A95F */  jal        func_8002A57C
/* 6C6E8 8006BAE8 00000000 */   nop
/* 6C6EC 8006BAEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6C6F0 8006BAF0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6C6F4 8006BAF4 03E00008 */  jr         $ra
/* 6C6F8 8006BAF8 00000000 */   nop
