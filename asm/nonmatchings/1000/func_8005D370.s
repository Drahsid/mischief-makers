glabel func_8005D370
/* 5DF70 8005D370 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DF74 8005D374 AFA40018 */  sw         $a0, 0x18($sp)
/* 5DF78 8005D378 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DF7C 8005D37C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 5DF80 8005D380 0C0174CE */  jal        func_8005D338
/* 5DF84 8005D384 AFA5001C */   sw        $a1, 0x1c($sp)
/* 5DF88 8005D388 97A3001E */  lhu        $v1, 0x1e($sp)
/* 5DF8C 8005D38C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 5DF90 8005D390 14620003 */  bne        $v1, $v0, .L8005D3A0
/* 5DF94 8005D394 000E7880 */   sll       $t7, $t6, 2
/* 5DF98 8005D398 1000000B */  b          .L8005D3C8
/* 5DF9C 8005D39C 00001025 */   or        $v0, $zero, $zero
.L8005D3A0:
/* 5DFA0 8005D3A0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DFA4 8005D3A4 000F7880 */  sll        $t7, $t7, 2
/* 5DFA8 8005D3A8 01EE7821 */  addu       $t7, $t7, $t6
/* 5DFAC 8005D3AC 000F7880 */  sll        $t7, $t7, 2
/* 5DFB0 8005D3B0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DFB4 8005D3B4 000F78C0 */  sll        $t7, $t7, 3
/* 5DFB8 8005D3B8 3C01800F */  lui        $at, %hi(D_800EF680)
/* 5DFBC 8005D3BC 002F0821 */  addu       $at, $at, $t7
/* 5DFC0 8005D3C0 AC23F680 */  sw         $v1, %lo(D_800EF680)($at)
/* 5DFC4 8005D3C4 24020001 */  addiu      $v0, $zero, 1
.L8005D3C8:
/* 5DFC8 8005D3C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DFCC 8005D3CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5DFD0 8005D3D0 03E00008 */  jr         $ra
/* 5DFD4 8005D3D4 00000000 */   nop
