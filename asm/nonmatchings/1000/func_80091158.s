glabel func_80091158
/* 91D58 80091158 3087FFFF */  andi       $a3, $a0, 0xffff
/* 91D5C 8009115C 00077080 */  sll        $t6, $a3, 2
/* 91D60 80091160 01C77023 */  subu       $t6, $t6, $a3
/* 91D64 80091164 000E7080 */  sll        $t6, $t6, 2
/* 91D68 80091168 01C77021 */  addu       $t6, $t6, $a3
/* 91D6C 8009116C 000E7080 */  sll        $t6, $t6, 2
/* 91D70 80091170 01C77023 */  subu       $t6, $t6, $a3
/* 91D74 80091174 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 91D78 80091178 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91D7C 8009117C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 91D80 80091180 000E70C0 */  sll        $t6, $t6, 3
/* 91D84 80091184 AFA40020 */  sw         $a0, 0x20($sp)
/* 91D88 80091188 01CF1821 */  addu       $v1, $t6, $t7
/* 91D8C 8009118C AFBF0014 */  sw         $ra, 0x14($sp)
/* 91D90 80091190 8C6400EC */  lw         $a0, 0xec($v1)
/* 91D94 80091194 AFA3001C */  sw         $v1, 0x1c($sp)
/* 91D98 80091198 00002825 */  or         $a1, $zero, $zero
/* 91D9C 8009119C 0C00A607 */  jal        func_8002981C
/* 91DA0 800911A0 24060800 */   addiu     $a2, $zero, 0x800
/* 91DA4 800911A4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 91DA8 800911A8 3C01FFF9 */  lui        $at, 0xfff9
/* 91DAC 800911AC 8C6400F0 */  lw         $a0, 0xf0($v1)
/* 91DB0 800911B0 34218001 */  ori        $at, $at, 0x8001
/* 91DB4 800911B4 0081082A */  slt        $at, $a0, $at
/* 91DB8 800911B8 14200003 */  bnez       $at, .L800911C8
/* 91DBC 800911BC AC6200EC */   sw        $v0, 0xec($v1)
/* 91DC0 800911C0 2498BC00 */  addiu      $t8, $a0, -0x4400
/* 91DC4 800911C4 AC7800F0 */  sw         $t8, 0xf0($v1)
.L800911C8:
/* 91DC8 800911C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 91DCC 800911CC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 91DD0 800911D0 03E00008 */  jr         $ra
/* 91DD4 800911D4 00000000 */   nop
