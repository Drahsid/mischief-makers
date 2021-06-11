glabel func_8007D290
/* 7DE90 8007D290 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DE94 8007D294 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DE98 8007D298 0C00A14A */  jal        func_80028528
/* 7DE9C 8007D29C AFA40020 */   sw        $a0, 0x20($sp)
/* 7DEA0 8007D2A0 10400034 */  beqz       $v0, .L8007D374
/* 7DEA4 8007D2A4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7DEA8 8007D2A8 00047080 */  sll        $t6, $a0, 2
/* 7DEAC 8007D2AC 01C47023 */  subu       $t6, $t6, $a0
/* 7DEB0 8007D2B0 000E7080 */  sll        $t6, $t6, 2
/* 7DEB4 8007D2B4 01C47021 */  addu       $t6, $t6, $a0
/* 7DEB8 8007D2B8 000E7080 */  sll        $t6, $t6, 2
/* 7DEBC 8007D2BC 01C47023 */  subu       $t6, $t6, $a0
/* 7DEC0 8007D2C0 3C0F800F */  lui        $t7, %hi(gActors)
/* 7DEC4 8007D2C4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7DEC8 8007D2C8 000E70C0 */  sll        $t6, $t6, 3
/* 7DECC 8007D2CC 01CF1021 */  addu       $v0, $t6, $t7
/* 7DED0 8007D2D0 24180034 */  addiu      $t8, $zero, 0x34
/* 7DED4 8007D2D4 A45800D2 */  sh         $t8, 0xd2($v0)
/* 7DED8 8007D2D8 AFA20018 */  sw         $v0, 0x18($sp)
/* 7DEDC 8007D2DC 0C0078B4 */  jal        func_8001E2D0
/* 7DEE0 8007D2E0 A7A4001E */   sh        $a0, 0x1e($sp)
/* 7DEE4 8007D2E4 97A50022 */  lhu        $a1, 0x22($sp)
/* 7DEE8 8007D2E8 3C08800F */  lui        $t0, 0x800f
/* 7DEEC 8007D2EC 0005C880 */  sll        $t9, $a1, 2
/* 7DEF0 8007D2F0 0325C823 */  subu       $t9, $t9, $a1
/* 7DEF4 8007D2F4 0019C880 */  sll        $t9, $t9, 2
/* 7DEF8 8007D2F8 0325C821 */  addu       $t9, $t9, $a1
/* 7DEFC 8007D2FC 0019C880 */  sll        $t9, $t9, 2
/* 7DF00 8007D300 0325C823 */  subu       $t9, $t9, $a1
/* 7DF04 8007D304 0019C8C0 */  sll        $t9, $t9, 3
/* 7DF08 8007D308 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 7DF0C 8007D30C 03281821 */  addu       $v1, $t9, $t0
/* 7DF10 8007D310 8C69018C */  lw         $t1, 0x18c($v1)
/* 7DF14 8007D314 8FA20018 */  lw         $v0, 0x18($sp)
/* 7DF18 8007D318 97A4001E */  lhu        $a0, 0x1e($sp)
/* 7DF1C 8007D31C 11200004 */  beqz       $t1, .L8007D330
/* 7DF20 8007D320 240C0003 */   addiu     $t4, $zero, 3
/* 7DF24 8007D324 240A0A00 */  addiu      $t2, $zero, 0xa00
/* 7DF28 8007D328 10000003 */  b          .L8007D338
/* 7DF2C 8007D32C A44A0094 */   sh        $t2, 0x94($v0)
.L8007D330:
/* 7DF30 8007D330 240B0800 */  addiu      $t3, $zero, 0x800
/* 7DF34 8007D334 A44B0094 */  sh         $t3, 0x94($v0)
.L8007D338:
/* 7DF38 8007D338 AC4C0080 */  sw         $t4, 0x80($v0)
/* 7DF3C 8007D33C 8C6D0090 */  lw         $t5, 0x90($v1)
/* 7DF40 8007D340 0085082A */  slt        $at, $a0, $a1
/* 7DF44 8007D344 25AE0001 */  addiu      $t6, $t5, 1
/* 7DF48 8007D348 AC4E0090 */  sw         $t6, 0x90($v0)
/* 7DF4C 8007D34C 8C6F018C */  lw         $t7, 0x18c($v1)
/* 7DF50 8007D350 10200004 */  beqz       $at, .L8007D364
/* 7DF54 8007D354 AC4F018C */   sw        $t7, 0x18c($v0)
/* 7DF58 8007D358 44802000 */  mtc1       $zero, $f4
/* 7DF5C 8007D35C 10000005 */  b          .L8007D374
/* 7DF60 8007D360 E4440148 */   swc1      $f4, 0x148($v0)
.L8007D364:
/* 7DF64 8007D364 3C013F80 */  lui        $at, 0x3f80
/* 7DF68 8007D368 44813000 */  mtc1       $at, $f6
/* 7DF6C 8007D36C 00000000 */  nop
/* 7DF70 8007D370 E4460148 */  swc1       $f6, 0x148($v0)
.L8007D374:
/* 7DF74 8007D374 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DF78 8007D378 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DF7C 8007D37C 03E00008 */  jr         $ra
/* 7DF80 8007D380 00801025 */   or        $v0, $a0, $zero
