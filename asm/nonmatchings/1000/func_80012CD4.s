glabel func_80012CD4
/* 138D4 80012CD4 3C04800F */  lui        $a0, %hi(gActors)
/* 138D8 80012CD8 2484F510 */  addiu      $a0, $a0, %lo(gActors)
/* 138DC 80012CDC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 138E0 80012CE0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 138E4 80012CE4 AC805030 */  sw         $zero, 0x5030($a0)
/* 138E8 80012CE8 AC804E98 */  sw         $zero, 0x4e98($a0)
/* 138EC 80012CEC 24020041 */  addiu      $v0, $zero, 0x41
/* 138F0 80012CF0 24030198 */  addiu      $v1, $zero, 0x198
.L80012CF4:
/* 138F4 80012CF4 00430019 */  multu      $v0, $v1
/* 138F8 80012CF8 24420001 */  addiu      $v0, $v0, 1
/* 138FC 80012CFC 3059FFFF */  andi       $t9, $v0, 0xffff
/* 13900 80012D00 2B210062 */  slti       $at, $t9, 0x62
/* 13904 80012D04 03201025 */  or         $v0, $t9, $zero
/* 13908 80012D08 00007812 */  mflo       $t7
/* 1390C 80012D0C 008FC021 */  addu       $t8, $a0, $t7
/* 13910 80012D10 1420FFF8 */  bnez       $at, .L80012CF4
/* 13914 80012D14 AF000080 */   sw        $zero, 0x80($t8)
/* 13918 80012D18 3C013F80 */  lui        $at, 0x3f80
/* 1391C 80012D1C 44810000 */  mtc1       $at, $f0
/* 13920 80012D20 3C05800C */  lui        $a1, 0x800c
/* 13924 80012D24 24080403 */  addiu      $t0, $zero, 0x403
/* 13928 80012D28 24090040 */  addiu      $t1, $zero, 0x40
/* 1392C 80012D2C 240A0040 */  addiu      $t2, $zero, 0x40
/* 13930 80012D30 AFAA001C */  sw         $t2, 0x1c($sp)
/* 13934 80012D34 AFA90018 */  sw         $t1, 0x18($sp)
/* 13938 80012D38 AFA80010 */  sw         $t0, 0x10($sp)
/* 1393C 80012D3C 24A57E14 */  addiu      $a1, $a1, 0x7e14
/* 13940 80012D40 24040033 */  addiu      $a0, $zero, 0x33
/* 13944 80012D44 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 13948 80012D48 24070050 */  addiu      $a3, $zero, 0x50
/* 1394C 80012D4C AFA00014 */  sw         $zero, 0x14($sp)
/* 13950 80012D50 E7A00020 */  swc1       $f0, 0x20($sp)
/* 13954 80012D54 0C009F65 */  jal        func_80027D94
/* 13958 80012D58 E7A00024 */   swc1      $f0, 0x24($sp)
/* 1395C 80012D5C 240B0402 */  addiu      $t3, $zero, 0x402
/* 13960 80012D60 AFAB0010 */  sw         $t3, 0x10($sp)
/* 13964 80012D64 24040030 */  addiu      $a0, $zero, 0x30
/* 13968 80012D68 24050262 */  addiu      $a1, $zero, 0x262
/* 1396C 80012D6C 3406FFFE */  ori        $a2, $zero, 0xfffe
/* 13970 80012D70 0C009CFF */  jal        func_800273FC
/* 13974 80012D74 24070003 */   addiu     $a3, $zero, 3
/* 13978 80012D78 3C0C800F */  lui        $t4, %hi(D_800F4224)
/* 1397C 80012D7C 958C4224 */  lhu        $t4, %lo(D_800F4224)($t4)
/* 13980 80012D80 3C0140C0 */  lui        $at, 0x40c0
/* 13984 80012D84 44810000 */  mtc1       $at, $f0
/* 13988 80012D88 3C01800F */  lui        $at, %hi(D_800F4224)
/* 1398C 80012D8C 358D100F */  ori        $t5, $t4, 0x100f
/* 13990 80012D90 A42D4224 */  sh         $t5, %lo(D_800F4224)($at)
/* 13994 80012D94 3C01800F */  lui        $at, %hi(D_800F4244)
/* 13998 80012D98 E4204244 */  swc1       $f0, %lo(D_800F4244)($at)
/* 1399C 80012D9C 3C01800F */  lui        $at, %hi(D_800F42BC)
/* 139A0 80012DA0 E42042BC */  swc1       $f0, %lo(D_800F42BC)($at)
/* 139A4 80012DA4 3C0142B4 */  lui        $at, 0x42b4
/* 139A8 80012DA8 44812000 */  mtc1       $at, $f4
/* 139AC 80012DAC 3C01800F */  lui        $at, %hi(D_800F424C)
/* 139B0 80012DB0 E424424C */  swc1       $f4, %lo(D_800F424C)($at)
/* 139B4 80012DB4 3C01800F */  lui        $at, %hi(D_800F422F)
/* 139B8 80012DB8 A020422F */  sb         $zero, %lo(D_800F422F)($at)
/* 139BC 80012DBC 0C000AD4 */  jal        func_80002B50
/* 139C0 80012DC0 24040019 */   addiu     $a0, $zero, 0x19
/* 139C4 80012DC4 3C02800C */  lui        $v0, %hi(D_800BE4F4)
/* 139C8 80012DC8 240E02C0 */  addiu      $t6, $zero, 0x2c0
/* 139CC 80012DCC 3C018018 */  lui        $at, %hi(D_80178130)
/* 139D0 80012DD0 2442E4F4 */  addiu      $v0, $v0, %lo(D_800BE4F4)
/* 139D4 80012DD4 A42E8130 */  sh         $t6, %lo(D_80178130)($at)
/* 139D8 80012DD8 944F0000 */  lhu        $t7, ($v0)
/* 139DC 80012DDC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 139E0 80012DE0 25F80001 */  addiu      $t8, $t7, 1
/* 139E4 80012DE4 A4580000 */  sh         $t8, ($v0)
/* 139E8 80012DE8 03E00008 */  jr         $ra
/* 139EC 80012DEC 27BD0030 */   addiu     $sp, $sp, 0x30
