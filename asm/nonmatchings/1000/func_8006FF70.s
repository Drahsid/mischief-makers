glabel func_8006FF70
/* 70B70 8006FF70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 70B74 8006FF74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70B78 8006FF78 AFA40018 */  sw         $a0, 0x18($sp)
/* 70B7C 8006FF7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 70B80 8006FF80 01C02025 */  or         $a0, $t6, $zero
/* 70B84 8006FF84 0C01B283 */  jal        func_8006CA0C
/* 70B88 8006FF88 A7AE001A */   sh        $t6, 0x1a($sp)
/* 70B8C 8006FF8C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 70B90 8006FF90 14400017 */  bnez       $v0, .L8006FFF0
/* 70B94 8006FF94 00047880 */   sll       $t7, $a0, 2
/* 70B98 8006FF98 01E47823 */  subu       $t7, $t7, $a0
/* 70B9C 8006FF9C 000F7880 */  sll        $t7, $t7, 2
/* 70BA0 8006FFA0 01E47821 */  addu       $t7, $t7, $a0
/* 70BA4 8006FFA4 000F7880 */  sll        $t7, $t7, 2
/* 70BA8 8006FFA8 01E47823 */  subu       $t7, $t7, $a0
/* 70BAC 8006FFAC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 70BB0 8006FFB0 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 70BB4 8006FFB4 000F78C0 */  sll        $t7, $t7, 3
/* 70BB8 8006FFB8 01F81021 */  addu       $v0, $t7, $t8
/* 70BBC 8006FFBC 944300D0 */  lhu        $v1, 0xd0($v0)
/* 70BC0 8006FFC0 24010240 */  addiu      $at, $zero, 0x240
/* 70BC4 8006FFC4 14610008 */  bne        $v1, $at, .L8006FFE8
/* 70BC8 8006FFC8 24790001 */   addiu     $t9, $v1, 1
/* 70BCC 8006FFCC 3C013F80 */  lui        $at, 0x3f80
/* 70BD0 8006FFD0 44812000 */  mtc1       $at, $f4
/* 70BD4 8006FFD4 44803000 */  mtc1       $zero, $f6
/* 70BD8 8006FFD8 A45900D0 */  sh         $t9, 0xd0($v0)
/* 70BDC 8006FFDC A44000E6 */  sh         $zero, 0xe6($v0)
/* 70BE0 8006FFE0 E4440118 */  swc1       $f4, 0x118($v0)
/* 70BE4 8006FFE4 E446011C */  swc1       $f6, 0x11c($v0)
.L8006FFE8:
/* 70BE8 8006FFE8 0C01A8E1 */  jal        func_8006A384
/* 70BEC 8006FFEC 00000000 */   nop
.L8006FFF0:
/* 70BF0 8006FFF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70BF4 8006FFF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 70BF8 8006FFF8 03E00008 */  jr         $ra
/* 70BFC 8006FFFC 00000000 */   nop
