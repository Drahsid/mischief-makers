glabel func_80072F54
/* 73B54 80072F54 308EFFFF */  andi       $t6, $a0, 0xffff
/* 73B58 80072F58 000E7880 */  sll        $t7, $t6, 2
/* 73B5C 80072F5C 01EE7823 */  subu       $t7, $t7, $t6
/* 73B60 80072F60 000F7880 */  sll        $t7, $t7, 2
/* 73B64 80072F64 01EE7821 */  addu       $t7, $t7, $t6
/* 73B68 80072F68 000F7880 */  sll        $t7, $t7, 2
/* 73B6C 80072F6C 01EE7823 */  subu       $t7, $t7, $t6
/* 73B70 80072F70 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 73B74 80072F74 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 73B78 80072F78 000F78C0 */  sll        $t7, $t7, 3
/* 73B7C 80072F7C 01F81021 */  addu       $v0, $t7, $t8
/* 73B80 80072F80 945900D0 */  lhu        $t9, 0xd0($v0)
/* 73B84 80072F84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73B88 80072F88 AFA40018 */  sw         $a0, 0x18($sp)
/* 73B8C 80072F8C 24010040 */  addiu      $at, $zero, 0x40
/* 73B90 80072F90 01C02025 */  or         $a0, $t6, $zero
/* 73B94 80072F94 1721000D */  bne        $t9, $at, .L80072FCC
/* 73B98 80072F98 AFBF0014 */   sw        $ra, 0x14($sp)
/* 73B9C 80072F9C 8C480150 */  lw         $t0, 0x150($v0)
/* 73BA0 80072FA0 3C01F7FF */  lui        $at, 0xf7ff
/* 73BA4 80072FA4 44802000 */  mtc1       $zero, $f4
/* 73BA8 80072FA8 3421FFFF */  ori        $at, $at, 0xffff
/* 73BAC 80072FAC 240A0002 */  addiu      $t2, $zero, 2
/* 73BB0 80072FB0 01014824 */  and        $t1, $t0, $at
/* 73BB4 80072FB4 AC490150 */  sw         $t1, 0x150($v0)
/* 73BB8 80072FB8 AC4A0080 */  sw         $t2, 0x80($v0)
/* 73BBC 80072FBC AC4000EC */  sw         $zero, 0xec($v0)
/* 73BC0 80072FC0 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 73BC4 80072FC4 10000003 */  b          .L80072FD4
/* 73BC8 80072FC8 E44400C4 */   swc1      $f4, 0xc4($v0)
.L80072FCC:
/* 73BCC 80072FCC 0C01CB95 */  jal        func_80072E54
/* 73BD0 80072FD0 00000000 */   nop
.L80072FD4:
/* 73BD4 80072FD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 73BD8 80072FD8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 73BDC 80072FDC 03E00008 */  jr         $ra
/* 73BE0 80072FE0 00000000 */   nop
