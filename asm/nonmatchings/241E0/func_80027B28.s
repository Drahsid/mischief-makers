glabel func_80027B28
/* 28728 80027B28 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2872C 80027B2C AFBF0034 */  sw         $ra, 0x34($sp)
/* 28730 80027B30 AFB70030 */  sw         $s7, 0x30($sp)
/* 28734 80027B34 AFB6002C */  sw         $s6, 0x2c($sp)
/* 28738 80027B38 AFB50028 */  sw         $s5, 0x28($sp)
/* 2873C 80027B3C AFB40024 */  sw         $s4, 0x24($sp)
/* 28740 80027B40 AFB30020 */  sw         $s3, 0x20($sp)
/* 28744 80027B44 AFB2001C */  sw         $s2, 0x1c($sp)
/* 28748 80027B48 AFB10018 */  sw         $s1, 0x18($sp)
/* 2874C 80027B4C AFB00014 */  sw         $s0, 0x14($sp)
/* 28750 80027B50 AFA40038 */  sw         $a0, 0x38($sp)
/* 28754 80027B54 AFA60040 */  sw         $a2, 0x40($sp)
/* 28758 80027B58 AFA70044 */  sw         $a3, 0x44($sp)
/* 2875C 80027B5C 94A20000 */  lhu        $v0, ($a1)
/* 28760 80027B60 34158FFF */  ori        $s5, $zero, 0x8fff
/* 28764 80027B64 00A08025 */  or         $s0, $a1, $zero
/* 28768 80027B68 30D1FFFF */  andi       $s1, $a2, 0xffff
/* 2876C 80027B6C 3092FFFF */  andi       $s2, $a0, 0xffff
/* 28770 80027B70 12A20027 */  beq        $s5, $v0, .L80027C10
/* 28774 80027B74 30F3FFFF */   andi      $s3, $a3, 0xffff
/* 28778 80027B78 3C16800F */  lui        $s6, %hi(gActors)
/* 2877C 80027B7C 97B4004A */  lhu        $s4, 0x4a($sp)
/* 28780 80027B80 26D6F510 */  addiu      $s6, $s6, %lo(gActors)
/* 28784 80027B84 24170198 */  addiu      $s7, $zero, 0x198
.L80027B88:
/* 28788 80027B88 1040001A */  beqz       $v0, .L80027BF4
/* 2878C 80027B8C 3244FFFF */   andi      $a0, $s2, 0xffff
/* 28790 80027B90 3225FFFF */  andi       $a1, $s1, 0xffff
/* 28794 80027B94 3266FFFF */  andi       $a2, $s3, 0xffff
/* 28798 80027B98 0C009CDC */  jal        func_80027370
/* 2879C 80027B9C 3287FFFF */   andi      $a3, $s4, 0xffff
/* 287A0 80027BA0 02570019 */  multu      $s2, $s7
/* 287A4 80027BA4 26520001 */  addiu      $s2, $s2, 1
/* 287A8 80027BA8 324AFFFF */  andi       $t2, $s2, 0xffff
/* 287AC 80027BAC 01409025 */  or         $s2, $t2, $zero
/* 287B0 80027BB0 02002025 */  or         $a0, $s0, $zero
/* 287B4 80027BB4 00007012 */  mflo       $t6
/* 287B8 80027BB8 02CE1021 */  addu       $v0, $s6, $t6
/* 287BC 80027BBC 8C4F0080 */  lw         $t7, 0x80($v0)
/* 287C0 80027BC0 00000000 */  nop
/* 287C4 80027BC4 35F80008 */  ori        $t8, $t7, 8
/* 287C8 80027BC8 AC580080 */  sw         $t8, 0x80($v0)
/* 287CC 80027BCC 96190000 */  lhu        $t9, ($s0)
/* 287D0 80027BD0 00000000 */  nop
/* 287D4 80027BD4 00194040 */  sll        $t0, $t9, 1
/* 287D8 80027BD8 250902D2 */  addiu      $t1, $t0, 0x2d2
/* 287DC 80027BDC 0C009EA2 */  jal        func_80027A88
/* 287E0 80027BE0 A4490084 */   sh        $t1, 0x84($v0)
/* 287E4 80027BE4 02228821 */  addu       $s1, $s1, $v0
/* 287E8 80027BE8 322BFFFF */  andi       $t3, $s1, 0xffff
/* 287EC 80027BEC 10000004 */  b          .L80027C00
/* 287F0 80027BF0 01608825 */   or        $s1, $t3, $zero
.L80027BF4:
/* 287F4 80027BF4 2631000E */  addiu      $s1, $s1, 0xe
/* 287F8 80027BF8 322CFFFF */  andi       $t4, $s1, 0xffff
/* 287FC 80027BFC 01808825 */  or         $s1, $t4, $zero
.L80027C00:
/* 28800 80027C00 96020002 */  lhu        $v0, 2($s0)
/* 28804 80027C04 26100002 */  addiu      $s0, $s0, 2
/* 28808 80027C08 16A2FFDF */  bne        $s5, $v0, .L80027B88
/* 2880C 80027C0C 00000000 */   nop
.L80027C10:
/* 28810 80027C10 8FBF0034 */  lw         $ra, 0x34($sp)
/* 28814 80027C14 02401025 */  or         $v0, $s2, $zero
/* 28818 80027C18 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2881C 80027C1C 8FB00014 */  lw         $s0, 0x14($sp)
/* 28820 80027C20 8FB10018 */  lw         $s1, 0x18($sp)
/* 28824 80027C24 8FB30020 */  lw         $s3, 0x20($sp)
/* 28828 80027C28 8FB40024 */  lw         $s4, 0x24($sp)
/* 2882C 80027C2C 8FB50028 */  lw         $s5, 0x28($sp)
/* 28830 80027C30 8FB6002C */  lw         $s6, 0x2c($sp)
/* 28834 80027C34 8FB70030 */  lw         $s7, 0x30($sp)
/* 28838 80027C38 03E00008 */  jr         $ra
/* 2883C 80027C3C 27BD0038 */   addiu     $sp, $sp, 0x38