glabel func_8006DDF0
/* 6E9F0 8006DDF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6E9F4 8006DDF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E9F8 8006DDF8 AFA40020 */  sw         $a0, 0x20($sp)
/* 6E9FC 8006DDFC 00803825 */  or         $a3, $a0, $zero
/* 6EA00 8006DE00 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 6EA04 8006DE04 0C01B242 */  jal        func_8006C908
/* 6EA08 8006DE08 A7A70022 */   sh        $a3, 0x22($sp)
/* 6EA0C 8006DE0C 97A70022 */  lhu        $a3, 0x22($sp)
/* 6EA10 8006DE10 14400041 */  bnez       $v0, .L8006DF18
/* 6EA14 8006DE14 00077080 */   sll       $t6, $a3, 2
/* 6EA18 8006DE18 01C77023 */  subu       $t6, $t6, $a3
/* 6EA1C 8006DE1C 000E7080 */  sll        $t6, $t6, 2
/* 6EA20 8006DE20 01C77021 */  addu       $t6, $t6, $a3
/* 6EA24 8006DE24 000E7080 */  sll        $t6, $t6, 2
/* 6EA28 8006DE28 01C77023 */  subu       $t6, $t6, $a3
/* 6EA2C 8006DE2C 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 6EA30 8006DE30 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 6EA34 8006DE34 000E70C0 */  sll        $t6, $t6, 3
/* 6EA38 8006DE38 01CF1821 */  addu       $v1, $t6, $t7
/* 6EA3C 8006DE3C 946200D0 */  lhu        $v0, 0xd0($v1)
/* 6EA40 8006DE40 24010100 */  addiu      $at, $zero, 0x100
/* 6EA44 8006DE44 14410017 */  bne        $v0, $at, .L8006DEA4
/* 6EA48 8006DE48 00002825 */   or        $a1, $zero, $zero
/* 6EA4C 8006DE4C 8C790080 */  lw         $t9, 0x80($v1)
/* 6EA50 8006DE50 3C010002 */  lui        $at, 2
/* 6EA54 8006DE54 03214025 */  or         $t0, $t9, $at
/* 6EA58 8006DE58 3C01FFFE */  lui        $at, 0xfffe
/* 6EA5C 8006DE5C 3421FFFF */  ori        $at, $at, 0xffff
/* 6EA60 8006DE60 8C6B0098 */  lw         $t3, 0x98($v1)
/* 6EA64 8006DE64 01015024 */  and        $t2, $t0, $at
/* 6EA68 8006DE68 2401FFDF */  addiu      $at, $zero, -0x21
/* 6EA6C 8006DE6C 01616024 */  and        $t4, $t3, $at
/* 6EA70 8006DE70 3C014100 */  lui        $at, 0x4100
/* 6EA74 8006DE74 44812000 */  mtc1       $at, $f4
/* 6EA78 8006DE78 3C0D800E */  lui        $t5, %hi(D_800E1C1C)
/* 6EA7C 8006DE7C 24580001 */  addiu      $t8, $v0, 1
/* 6EA80 8006DE80 AC680080 */  sw         $t0, 0x80($v1)
/* 6EA84 8006DE84 25AD1C1C */  addiu      $t5, $t5, %lo(D_800E1C1C)
/* 6EA88 8006DE88 240E0001 */  addiu      $t6, $zero, 1
/* 6EA8C 8006DE8C A47800D0 */  sh         $t8, 0xd0($v1)
/* 6EA90 8006DE90 AC6A0080 */  sw         $t2, 0x80($v1)
/* 6EA94 8006DE94 AC6C0098 */  sw         $t4, 0x98($v1)
/* 6EA98 8006DE98 A46E00E6 */  sh         $t6, 0xe6($v1)
/* 6EA9C 8006DE9C AC6D00E8 */  sw         $t5, 0xe8($v1)
/* 6EAA0 8006DEA0 E4640144 */  swc1       $f4, 0x144($v1)
.L8006DEA4:
/* 6EAA4 8006DEA4 846F00E6 */  lh         $t7, 0xe6($v1)
/* 6EAA8 8006DEA8 3C18800E */  lui        $t8, %hi(D_800E1C1C)
/* 6EAAC 8006DEAC 15E00005 */  bnez       $t7, .L8006DEC4
/* 6EAB0 8006DEB0 24061000 */   addiu     $a2, $zero, 0x1000
/* 6EAB4 8006DEB4 27181C1C */  addiu      $t8, $t8, %lo(D_800E1C1C)
/* 6EAB8 8006DEB8 24190001 */  addiu      $t9, $zero, 1
/* 6EABC 8006DEBC A47900E6 */  sh         $t9, 0xe6($v1)
/* 6EAC0 8006DEC0 AC7800E8 */  sw         $t8, 0xe8($v1)
.L8006DEC4:
/* 6EAC4 8006DEC4 8C6400EC */  lw         $a0, 0xec($v1)
/* 6EAC8 8006DEC8 AFA3001C */  sw         $v1, 0x1c($sp)
/* 6EACC 8006DECC 0C00A607 */  jal        func_8002981C
/* 6EAD0 8006DED0 A7A70022 */   sh        $a3, 0x22($sp)
/* 6EAD4 8006DED4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6EAD8 8006DED8 3C01FFFD */  lui        $at, 0xfffd
/* 6EADC 8006DEDC 8C6800F0 */  lw         $t0, 0xf0($v1)
/* 6EAE0 8006DEE0 97A70022 */  lhu        $a3, 0x22($sp)
/* 6EAE4 8006DEE4 0101082A */  slt        $at, $t0, $at
/* 6EAE8 8006DEE8 10200007 */  beqz       $at, .L8006DF08
/* 6EAEC 8006DEEC AC6200EC */   sw        $v0, 0xec($v1)
/* 6EAF0 8006DEF0 3C05800E */  lui        $a1, %hi(D_800E1C2C)
/* 6EAF4 8006DEF4 24A51C2C */  addiu      $a1, $a1, %lo(D_800E1C2C)
/* 6EAF8 8006DEF8 0C01AAFB */  jal        func_8006ABEC
/* 6EAFC 8006DEFC 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 6EB00 8006DF00 10000006 */  b          .L8006DF1C
/* 6EB04 8006DF04 8FBF0014 */   lw        $ra, 0x14($sp)
.L8006DF08:
/* 6EB08 8006DF08 3C05800E */  lui        $a1, %hi(D_800E1C78)
/* 6EB0C 8006DF0C 24A51C78 */  addiu      $a1, $a1, %lo(D_800E1C78)
/* 6EB10 8006DF10 0C01AAFB */  jal        func_8006ABEC
/* 6EB14 8006DF14 30E4FFFF */   andi      $a0, $a3, 0xffff
.L8006DF18:
/* 6EB18 8006DF18 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006DF1C:
/* 6EB1C 8006DF1C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6EB20 8006DF20 03E00008 */  jr         $ra
/* 6EB24 8006DF24 00000000 */   nop
