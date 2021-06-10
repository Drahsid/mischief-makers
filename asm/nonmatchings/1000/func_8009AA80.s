glabel func_8009AA80
/* 9B680 8009AA80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B684 8009AA84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B688 8009AA88 AFA40020 */  sw         $a0, 0x20($sp)
/* 9B68C 8009AA8C AFA0001C */  sw         $zero, 0x1c($sp)
/* 9B690 8009AA90 0C02AA26 */  jal        func_800AA898
/* 9B694 8009AA94 00000000 */   nop
/* 9B698 8009AA98 3C0E8018 */  lui        $t6, %hi(D_80185670)
/* 9B69C 8009AA9C 91CE5670 */  lbu        $t6, %lo(D_80185670)($t6)
/* 9B6A0 8009AAA0 24010001 */  addiu      $at, $zero, 1
/* 9B6A4 8009AAA4 11C1000C */  beq        $t6, $at, .L8009AAD8
/* 9B6A8 8009AAA8 00000000 */   nop
/* 9B6AC 8009AAAC 0C026B05 */  jal        func_8009AC14
/* 9B6B0 8009AAB0 00000000 */   nop
/* 9B6B4 8009AAB4 3C058018 */  lui        $a1, %hi(D_80185630)
/* 9B6B8 8009AAB8 24A55630 */  addiu      $a1, $a1, %lo(D_80185630)
/* 9B6BC 8009AABC 0C02AA48 */  jal        func_800AA920
/* 9B6C0 8009AAC0 24040001 */   addiu     $a0, $zero, 1
/* 9B6C4 8009AAC4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9B6C8 8009AAC8 8FA40020 */  lw         $a0, 0x20($sp)
/* 9B6CC 8009AACC 00002825 */  or         $a1, $zero, $zero
/* 9B6D0 8009AAD0 0C026B44 */  jal        func_8009AD10
/* 9B6D4 8009AAD4 24060001 */   addiu     $a2, $zero, 1
.L8009AAD8:
/* 9B6D8 8009AAD8 AFA00018 */  sw         $zero, 0x18($sp)
.L8009AADC:
/* 9B6DC 8009AADC 8FB80018 */  lw         $t8, 0x18($sp)
/* 9B6E0 8009AAE0 3C018018 */  lui        $at, %hi(D_80185630)
/* 9B6E4 8009AAE4 240F00FF */  addiu      $t7, $zero, 0xff
/* 9B6E8 8009AAE8 0018C880 */  sll        $t9, $t8, 2
/* 9B6EC 8009AAEC 00390821 */  addu       $at, $at, $t9
/* 9B6F0 8009AAF0 AC2F5630 */  sw         $t7, %lo(D_80185630)($at)
/* 9B6F4 8009AAF4 8FA80018 */  lw         $t0, 0x18($sp)
/* 9B6F8 8009AAF8 25090001 */  addiu      $t1, $t0, 1
/* 9B6FC 8009AAFC 29210010 */  slti       $at, $t1, 0x10
/* 9B700 8009AB00 1420FFF6 */  bnez       $at, .L8009AADC
/* 9B704 8009AB04 AFA90018 */   sw        $t1, 0x18($sp)
/* 9B708 8009AB08 3C018018 */  lui        $at, %hi(D_8018566C)
/* 9B70C 8009AB0C AC20566C */  sw         $zero, %lo(D_8018566C)($at)
/* 9B710 8009AB10 3C058018 */  lui        $a1, %hi(D_80185630)
/* 9B714 8009AB14 24A55630 */  addiu      $a1, $a1, %lo(D_80185630)
/* 9B718 8009AB18 0C02AA48 */  jal        func_800AA920
/* 9B71C 8009AB1C 00002025 */   or        $a0, $zero, $zero
/* 9B720 8009AB20 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9B724 8009AB24 240A0001 */  addiu      $t2, $zero, 1
/* 9B728 8009AB28 3C018018 */  lui        $at, %hi(D_80185670)
/* 9B72C 8009AB2C A02A5670 */  sb         $t2, %lo(D_80185670)($at)
/* 9B730 8009AB30 0C02AA39 */  jal        func_800AA8E4
/* 9B734 8009AB34 00000000 */   nop
/* 9B738 8009AB38 10000003 */  b          .L8009AB48
/* 9B73C 8009AB3C 8FA2001C */   lw        $v0, 0x1c($sp)
/* 9B740 8009AB40 10000001 */  b          .L8009AB48
/* 9B744 8009AB44 00000000 */   nop
.L8009AB48:
/* 9B748 8009AB48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B74C 8009AB4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9B750 8009AB50 03E00008 */  jr         $ra
/* 9B754 8009AB54 00000000 */   nop
