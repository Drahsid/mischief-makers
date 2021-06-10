glabel func_800930AC
/* 93CAC 800930AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93CB0 800930B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 93CB4 800930B4 AFA40018 */  sw         $a0, 0x18($sp)
/* 93CB8 800930B8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 93CBC 800930BC 0C024BF5 */  jal        func_80092FD4
/* 93CC0 800930C0 01C02025 */   or        $a0, $t6, $zero
/* 93CC4 800930C4 10400004 */  beqz       $v0, .L800930D8
/* 93CC8 800930C8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 93CCC 800930CC 0C0177F2 */  jal        func_8005DFC8
/* 93CD0 800930D0 00002025 */   or        $a0, $zero, $zero
/* 93CD4 800930D4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800930D8:
/* 93CD8 800930D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 93CDC 800930DC 03E00008 */  jr         $ra
/* 93CE0 800930E0 00000000 */   nop
