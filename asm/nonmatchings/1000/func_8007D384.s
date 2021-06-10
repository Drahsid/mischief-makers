glabel func_8007D384
/* 7DF84 8007D384 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7DF88 8007D388 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7DF8C 8007D38C AFA40028 */  sw         $a0, 0x28($sp)
/* 7DF90 8007D390 0C00A14A */  jal        func_80028528
/* 7DF94 8007D394 AFA5002C */   sw        $a1, 0x2c($sp)
/* 7DF98 8007D398 10400010 */  beqz       $v0, .L8007D3DC
/* 7DF9C 8007D39C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7DFA0 8007D3A0 97AF002E */  lhu        $t7, 0x2e($sp)
/* 7DFA4 8007D3A4 3C08800E */  lui        $t0, %hi(D_800E0F08)
/* 7DFA8 8007D3A8 31F87FFF */  andi       $t8, $t7, 0x7fff
/* 7DFAC 8007D3AC 0018C840 */  sll        $t9, $t8, 1
/* 7DFB0 8007D3B0 25080F08 */  addiu      $t0, $t0, %lo(D_800E0F08)
/* 7DFB4 8007D3B4 03281021 */  addu       $v0, $t9, $t0
/* 7DFB8 8007D3B8 84460008 */  lh         $a2, 8($v0)
/* 7DFBC 8007D3BC 8447000A */  lh         $a3, 0xa($v0)
/* 7DFC0 8007D3C0 97A5002A */  lhu        $a1, 0x2a($sp)
/* 7DFC4 8007D3C4 240900F0 */  addiu      $t1, $zero, 0xf0
/* 7DFC8 8007D3C8 240A0001 */  addiu      $t2, $zero, 1
/* 7DFCC 8007D3CC AFAA0018 */  sw         $t2, 0x18($sp)
/* 7DFD0 8007D3D0 AFA90014 */  sw         $t1, 0x14($sp)
/* 7DFD4 8007D3D4 0C01F3F8 */  jal        func_8007CFE0
/* 7DFD8 8007D3D8 AFA00010 */   sw        $zero, 0x10($sp)
.L8007D3DC:
/* 7DFDC 8007D3DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7DFE0 8007D3E0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7DFE4 8007D3E4 03E00008 */  jr         $ra
/* 7DFE8 8007D3E8 00000000 */   nop
