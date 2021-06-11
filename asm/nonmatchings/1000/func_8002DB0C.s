glabel func_8002DB0C
/* 2E70C 8002DB0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E710 8002DB10 AFB10018 */  sw         $s1, 0x18($sp)
/* 2E714 8002DB14 3091FFFF */  andi       $s1, $a0, 0xffff
/* 2E718 8002DB18 00117080 */  sll        $t6, $s1, 2
/* 2E71C 8002DB1C 01D17023 */  subu       $t6, $t6, $s1
/* 2E720 8002DB20 000E7080 */  sll        $t6, $t6, 2
/* 2E724 8002DB24 01D17021 */  addu       $t6, $t6, $s1
/* 2E728 8002DB28 000E7080 */  sll        $t6, $t6, 2
/* 2E72C 8002DB2C 01D17023 */  subu       $t6, $t6, $s1
/* 2E730 8002DB30 3C0F800F */  lui        $t7, %hi(gActors)
/* 2E734 8002DB34 AFB00014 */  sw         $s0, 0x14($sp)
/* 2E738 8002DB38 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 2E73C 8002DB3C 000E70C0 */  sll        $t6, $t6, 3
/* 2E740 8002DB40 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E744 8002DB44 AFA40020 */  sw         $a0, 0x20($sp)
/* 2E748 8002DB48 01CF8021 */  addu       $s0, $t6, $t7
/* 2E74C 8002DB4C 24180022 */  addiu      $t8, $zero, 0x22
/* 2E750 8002DB50 AFA50024 */  sw         $a1, 0x24($sp)
/* 2E754 8002DB54 AFA60028 */  sw         $a2, 0x28($sp)
/* 2E758 8002DB58 AFA7002C */  sw         $a3, 0x2c($sp)
/* 2E75C 8002DB5C A61800D2 */  sh         $t8, 0xd2($s0)
/* 2E760 8002DB60 0C0078B4 */  jal        func_8001E2D0
/* 2E764 8002DB64 3224FFFF */   andi      $a0, $s1, 0xffff
/* 2E768 8002DB68 24190009 */  addiu      $t9, $zero, 9
/* 2E76C 8002DB6C 24080407 */  addiu      $t0, $zero, 0x407
/* 2E770 8002DB70 240900D8 */  addiu      $t1, $zero, 0xd8
/* 2E774 8002DB74 240A0060 */  addiu      $t2, $zero, 0x60
/* 2E778 8002DB78 A6190094 */  sh         $t9, 0x94($s0)
/* 2E77C 8002DB7C AE080080 */  sw         $t0, 0x80($s0)
/* 2E780 8002DB80 A6090084 */  sh         $t1, 0x84($s0)
/* 2E784 8002DB84 A20A009F */  sb         $t2, 0x9f($s0)
/* 2E788 8002DB88 3224FFFF */  andi       $a0, $s1, 0xffff
/* 2E78C 8002DB8C 0C00AB0C */  jal        func_8002AC30
/* 2E790 8002DB90 24050008 */   addiu     $a1, $zero, 8
/* 2E794 8002DB94 3C013F80 */  lui        $at, 0x3f80
/* 2E798 8002DB98 44812000 */  mtc1       $at, $f4
/* 2E79C 8002DB9C 3C01800F */  lui        $at, %hi(D_800EB878)
/* 2E7A0 8002DBA0 E60400B4 */  swc1       $f4, 0xb4($s0)
/* 2E7A4 8002DBA4 C426B878 */  lwc1       $f6, %lo(D_800EB878)($at)
/* 2E7A8 8002DBA8 3C0E0002 */  lui        $t6, 2
/* 2E7AC 8002DBAC 3C0F0003 */  lui        $t7, 3
/* 2E7B0 8002DBB0 240B0020 */  addiu      $t3, $zero, 0x20
/* 2E7B4 8002DBB4 240C0004 */  addiu      $t4, $zero, 4
/* 2E7B8 8002DBB8 35EF4000 */  ori        $t7, $t7, 0x4000
/* 2E7BC 8002DBBC 35CE8000 */  ori        $t6, $t6, 0x8000
/* 2E7C0 8002DBC0 240D000D */  addiu      $t5, $zero, 0xd
/* 2E7C4 8002DBC4 24180032 */  addiu      $t8, $zero, 0x32
/* 2E7C8 8002DBC8 A20B00DF */  sb         $t3, 0xdf($s0)
/* 2E7CC 8002DBCC A20C00DA */  sb         $t4, 0xda($s0)
/* 2E7D0 8002DBD0 A20D00DB */  sb         $t5, 0xdb($s0)
/* 2E7D4 8002DBD4 AE0E00F8 */  sw         $t6, 0xf8($s0)
/* 2E7D8 8002DBD8 AE0F00FC */  sw         $t7, 0xfc($s0)
/* 2E7DC 8002DBDC A61800E4 */  sh         $t8, 0xe4($s0)
/* 2E7E0 8002DBE0 3224FFFF */  andi       $a0, $s1, 0xffff
/* 2E7E4 8002DBE4 24050004 */  addiu      $a1, $zero, 4
/* 2E7E8 8002DBE8 0C00AAF9 */  jal        func_8002ABE4
/* 2E7EC 8002DBEC E60600B8 */   swc1      $f6, 0xb8($s0)
/* 2E7F0 8002DBF0 8FA90034 */  lw         $t1, 0x34($sp)
/* 2E7F4 8002DBF4 8FB9002C */  lw         $t9, 0x2c($sp)
/* 2E7F8 8002DBF8 8FA80030 */  lw         $t0, 0x30($sp)
/* 2E7FC 8002DBFC 3C010002 */  lui        $at, 2
/* 2E800 8002DC00 8FA50028 */  lw         $a1, 0x28($sp)
/* 2E804 8002DC04 01215021 */  addu       $t2, $t1, $at
/* 2E808 8002DC08 AE0A0090 */  sw         $t2, 0x90($s0)
/* 2E80C 8002DC0C 3224FFFF */  andi       $a0, $s1, 0xffff
/* 2E810 8002DC10 AE190088 */  sw         $t9, 0x88($s0)
/* 2E814 8002DC14 0C00B641 */  jal        func_8002D904
/* 2E818 8002DC18 AE08008C */   sw        $t0, 0x8c($s0)
/* 2E81C 8002DC1C 3C01800F */  lui        $at, %hi(D_800EB87C)
/* 2E820 8002DC20 C428B87C */  lwc1       $f8, %lo(D_800EB87C)($at)
/* 2E824 8002DC24 97AB0026 */  lhu        $t3, 0x26($sp)
/* 2E828 8002DC28 3C014100 */  lui        $at, 0x4100
/* 2E82C 8002DC2C 44815000 */  mtc1       $at, $f10
/* 2E830 8002DC30 316C0001 */  andi       $t4, $t3, 1
/* 2E834 8002DC34 E6080114 */  swc1       $f8, 0x114($s0)
/* 2E838 8002DC38 11800004 */  beqz       $t4, .L8002DC4C
/* 2E83C 8002DC3C E60A0118 */   swc1      $f10, 0x118($s0)
/* 2E840 8002DC40 240D0080 */  addiu      $t5, $zero, 0x80
/* 2E844 8002DC44 10000003 */  b          .L8002DC54
/* 2E848 8002DC48 AE0D015C */   sw        $t5, 0x15c($s0)
.L8002DC4C:
/* 2E84C 8002DC4C 240E0200 */  addiu      $t6, $zero, 0x200
/* 2E850 8002DC50 AE0E015C */  sw         $t6, 0x15c($s0)
.L8002DC54:
/* 2E854 8002DC54 24040046 */  addiu      $a0, $zero, 0x46
/* 2E858 8002DC58 0C000DB2 */  jal        func_800036C8
/* 2E85C 8002DC5C 3225FFFF */   andi      $a1, $s1, 0xffff
/* 2E860 8002DC60 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2E864 8002DC64 8FB00014 */  lw         $s0, 0x14($sp)
/* 2E868 8002DC68 8FB10018 */  lw         $s1, 0x18($sp)
/* 2E86C 8002DC6C 03E00008 */  jr         $ra
/* 2E870 8002DC70 27BD0020 */   addiu     $sp, $sp, 0x20
