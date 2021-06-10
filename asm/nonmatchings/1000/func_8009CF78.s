glabel func_8009CF78
/* 9DB78 8009CF78 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9DB7C 8009CF7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9DB80 8009CF80 AFA40028 */  sw         $a0, 0x28($sp)
/* 9DB84 8009CF84 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9DB88 8009CF88 00000000 */  nop
/* 9DB8C 8009CF8C 8DCF0018 */  lw         $t7, 0x18($t6)
/* 9DB90 8009CF90 00000000 */  nop
/* 9DB94 8009CF94 15E00003 */  bnez       $t7, .L8009CFA4
/* 9DB98 8009CF98 00000000 */   nop
/* 9DB9C 8009CF9C 10000039 */  b          .L8009D084
/* 9DBA0 8009CFA0 00000000 */   nop
.L8009CFA4:
/* 9DBA4 8009CFA4 8FB80028 */  lw         $t8, 0x28($sp)
/* 9DBA8 8009CFA8 27A50018 */  addiu      $a1, $sp, 0x18
/* 9DBAC 8009CFAC 8F040018 */  lw         $a0, 0x18($t8)
/* 9DBB0 8009CFB0 0C027C07 */  jal        func_8009F01C
/* 9DBB4 8009CFB4 00000000 */   nop
/* 9DBB8 8009CFB8 87B90018 */  lh         $t9, 0x18($sp)
/* 9DBBC 8009CFBC 00000000 */  nop
/* 9DBC0 8009CFC0 2728FFFF */  addiu      $t0, $t9, -1
/* 9DBC4 8009CFC4 2D010014 */  sltiu      $at, $t0, 0x14
/* 9DBC8 8009CFC8 1020002A */  beqz       $at, .L8009D074
/* 9DBCC 8009CFCC 00000000 */   nop
/* 9DBD0 8009CFD0 00084080 */  sll        $t0, $t0, 2
/* 9DBD4 8009CFD4 3C01800F */  lui        $at, %hi(D_800ED750)
/* 9DBD8 8009CFD8 00280821 */  addu       $at, $at, $t0
/* 9DBDC 8009CFDC 8C28D750 */  lw         $t0, %lo(D_800ED750)($at)
/* 9DBE0 8009CFE0 00000000 */  nop
/* 9DBE4 8009CFE4 01000008 */  jr         $t0
/* 9DBE8 8009CFE8 00000000 */   nop
/* 9DBEC 8009CFEC 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DBF0 8009CFF0 0C027425 */  jal        func_8009D094
/* 9DBF4 8009CFF4 27A50018 */   addiu     $a1, $sp, 0x18
/* 9DBF8 8009CFF8 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DBFC 8009CFFC 0C0273B6 */  jal        func_8009CED8
/* 9DC00 8009D000 00000000 */   nop
/* 9DC04 8009D004 1000001D */  b          .L8009D07C
/* 9DC08 8009D008 00000000 */   nop
/* 9DC0C 8009D00C 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DC10 8009D010 0C027790 */  jal        func_8009DE40
/* 9DC14 8009D014 27A50018 */   addiu     $a1, $sp, 0x18
/* 9DC18 8009D018 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DC1C 8009D01C 0C0273B6 */  jal        func_8009CED8
/* 9DC20 8009D020 00000000 */   nop
/* 9DC24 8009D024 10000015 */  b          .L8009D07C
/* 9DC28 8009D028 00000000 */   nop
/* 9DC2C 8009D02C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9DC30 8009D030 24090002 */  addiu      $t1, $zero, 2
/* 9DC34 8009D034 AD49002C */  sw         $t1, 0x2c($t2)
/* 9DC38 8009D038 240B0010 */  addiu      $t3, $zero, 0x10
/* 9DC3C 8009D03C A7AB0018 */  sh         $t3, 0x18($sp)
/* 9DC40 8009D040 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DC44 8009D044 3C067FFF */  lui        $a2, 0x7fff
/* 9DC48 8009D048 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 9DC4C 8009D04C 27A50018 */  addiu      $a1, $sp, 0x18
/* 9DC50 8009D050 0C02B620 */  jal        func_800AD880
/* 9DC54 8009D054 24840048 */   addiu     $a0, $a0, 0x48
/* 9DC58 8009D058 10000008 */  b          .L8009D07C
/* 9DC5C 8009D05C 00000000 */   nop
/* 9DC60 8009D060 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DC64 8009D064 0C0273B6 */  jal        func_8009CED8
/* 9DC68 8009D068 00000000 */   nop
/* 9DC6C 8009D06C 10000003 */  b          .L8009D07C
/* 9DC70 8009D070 00000000 */   nop
.L8009D074:
/* 9DC74 8009D074 10000001 */  b          .L8009D07C
/* 9DC78 8009D078 00000000 */   nop
.L8009D07C:
/* 9DC7C 8009D07C 10000001 */  b          .L8009D084
/* 9DC80 8009D080 00000000 */   nop
.L8009D084:
/* 9DC84 8009D084 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9DC88 8009D088 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9DC8C 8009D08C 03E00008 */  jr         $ra
/* 9DC90 8009D090 00000000 */   nop
