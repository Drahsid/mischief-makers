glabel func_8008DC70
/* 8E870 8008DC70 3C03800C */  lui        $v1, %hi(gGameState)
/* 8E874 8008DC74 2463E4F0 */  addiu      $v1, $v1, %lo(gGameState)
/* 8E878 8008DC78 946F0000 */  lhu        $t7, ($v1)
/* 8E87C 8008DC7C 24010006 */  addiu      $at, $zero, 6
/* 8E880 8008DC80 AFA40000 */  sw         $a0, ($sp)
/* 8E884 8008DC84 15E10014 */  bne        $t7, $at, .L8008DCD8
/* 8E888 8008DC88 308EFFFF */   andi      $t6, $a0, 0xffff
/* 8E88C 8008DC8C 000EC080 */  sll        $t8, $t6, 2
/* 8E890 8008DC90 030EC023 */  subu       $t8, $t8, $t6
/* 8E894 8008DC94 0018C080 */  sll        $t8, $t8, 2
/* 8E898 8008DC98 030EC021 */  addu       $t8, $t8, $t6
/* 8E89C 8008DC9C 0018C080 */  sll        $t8, $t8, 2
/* 8E8A0 8008DCA0 030EC023 */  subu       $t8, $t8, $t6
/* 8E8A4 8008DCA4 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 8E8A8 8008DCA8 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 8E8AC 8008DCAC 0018C0C0 */  sll        $t8, $t8, 3
/* 8E8B0 8008DCB0 03191021 */  addu       $v0, $t8, $t9
/* 8E8B4 8008DCB4 24080007 */  addiu      $t0, $zero, 7
/* 8E8B8 8008DCB8 AC400080 */  sw         $zero, 0x80($v0)
/* 8E8BC 8008DCBC A44000D0 */  sh         $zero, 0xd0($v0)
/* 8E8C0 8008DCC0 A4680000 */  sh         $t0, ($v1)
/* 8E8C4 8008DCC4 3C01800C */  lui        $at, %hi(D_800BE4F4)
/* 8E8C8 8008DCC8 A420E4F4 */  sh         $zero, %lo(D_800BE4F4)($at)
/* 8E8CC 8008DCCC AC4000EC */  sw         $zero, 0xec($v0)
/* 8E8D0 8008DCD0 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 8E8D4 8008DCD4 AC4000F4 */  sw         $zero, 0xf4($v0)
.L8008DCD8:
/* 8E8D8 8008DCD8 03E00008 */  jr         $ra
/* 8E8DC 8008DCDC 00000000 */   nop
