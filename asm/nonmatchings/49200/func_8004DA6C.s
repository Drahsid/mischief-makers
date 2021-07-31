glabel func_8004DA6C
/* 4E66C 8004DA6C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4E670 8004DA70 000E7880 */  sll        $t7, $t6, 2
/* 4E674 8004DA74 01EE7823 */  subu       $t7, $t7, $t6
/* 4E678 8004DA78 000F7880 */  sll        $t7, $t7, 2
/* 4E67C 8004DA7C 01EE7821 */  addu       $t7, $t7, $t6
/* 4E680 8004DA80 000F7880 */  sll        $t7, $t7, 2
/* 4E684 8004DA84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4E688 8004DA88 01EE7823 */  subu       $t7, $t7, $t6
/* 4E68C 8004DA8C 3C18800F */  lui        $t8, %hi(gActors)
/* 4E690 8004DA90 AFB00018 */  sw         $s0, 0x18($sp)
/* 4E694 8004DA94 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 4E698 8004DA98 000F78C0 */  sll        $t7, $t7, 3
/* 4E69C 8004DA9C 01F88021 */  addu       $s0, $t7, $t8
/* 4E6A0 8004DAA0 9219012E */  lbu        $t9, 0x12e($s0)
/* 4E6A4 8004DAA4 920200D0 */  lbu        $v0, 0xd0($s0)
/* 4E6A8 8004DAA8 AFA40020 */  sw         $a0, 0x20($sp)
/* 4E6AC 8004DAAC 37280041 */  ori        $t0, $t9, 0x41
/* 4E6B0 8004DAB0 01C02025 */  or         $a0, $t6, $zero
/* 4E6B4 8004DAB4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4E6B8 8004DAB8 10400006 */  beqz       $v0, .L8004DAD4
/* 4E6BC 8004DABC A208012E */   sb        $t0, 0x12e($s0)
/* 4E6C0 8004DAC0 24010001 */  addiu      $at, $zero, 1
/* 4E6C4 8004DAC4 1041001B */  beq        $v0, $at, .L8004DB34
/* 4E6C8 8004DAC8 00000000 */   nop
/* 4E6CC 8004DACC 1000005A */  b          .L8004DC38
/* 4E6D0 8004DAD0 8FBF001C */   lw        $ra, 0x1c($sp)
.L8004DAD4:
/* 4E6D4 8004DAD4 0C000CD3 */  jal        SFX_Play_1
/* 4E6D8 8004DAD8 240400CB */   addiu     $a0, $zero, 0xcb
/* 4E6DC 8004DADC 8E0B00EC */  lw         $t3, 0xec($s0)
/* 4E6E0 8004DAE0 8E0C00F8 */  lw         $t4, 0xf8($s0)
/* 4E6E4 8004DAE4 8E0E0080 */  lw         $t6, 0x80($s0)
/* 4E6E8 8004DAE8 3C010081 */  lui        $at, 0x81
/* 4E6EC 8004DAEC 24090004 */  addiu      $t1, $zero, 4
/* 4E6F0 8004DAF0 240A0086 */  addiu      $t2, $zero, 0x86
/* 4E6F4 8004DAF4 016C6821 */  addu       $t5, $t3, $t4
/* 4E6F8 8004DAF8 01C17824 */  and        $t7, $t6, $at
/* 4E6FC 8004DAFC A2090140 */  sb         $t1, 0x140($s0)
/* 4E700 8004DB00 AE0A0170 */  sw         $t2, 0x170($s0)
/* 4E704 8004DB04 15E00006 */  bnez       $t7, .L8004DB20
/* 4E708 8004DB08 AE0D00EC */   sw        $t5, 0xec($s0)
/* 4E70C 8004DB0C 8E1800F0 */  lw         $t8, 0xf0($s0)
/* 4E710 8004DB10 8E1900FC */  lw         $t9, 0xfc($s0)
/* 4E714 8004DB14 00000000 */  nop
/* 4E718 8004DB18 03194021 */  addu       $t0, $t8, $t9
/* 4E71C 8004DB1C AE0800F0 */  sw         $t0, 0xf0($s0)
.L8004DB20:
/* 4E720 8004DB20 2409000A */  addiu      $t1, $zero, 0xa
/* 4E724 8004DB24 240A0001 */  addiu      $t2, $zero, 1
/* 4E728 8004DB28 AE090150 */  sw         $t1, 0x150($s0)
/* 4E72C 8004DB2C 10000041 */  b          .L8004DC34
/* 4E730 8004DB30 A20A00D0 */   sb        $t2, 0xd0($s0)
.L8004DB34:
/* 4E734 8004DB34 0C017154 */  jal        func_8005C550
/* 4E738 8004DB38 24050001 */   addiu     $a1, $zero, 1
/* 4E73C 8004DB3C 8E0B0080 */  lw         $t3, 0x80($s0)
/* 4E740 8004DB40 00002025 */  or         $a0, $zero, $zero
/* 4E744 8004DB44 356C0080 */  ori        $t4, $t3, 0x80
/* 4E748 8004DB48 0C012325 */  jal        func_80048C94
/* 4E74C 8004DB4C AE0C0080 */   sw        $t4, 0x80($s0)
/* 4E750 8004DB50 44822000 */  mtc1       $v0, $f4
/* 4E754 8004DB54 3C013FF8 */  lui        $at, 0x3ff8
/* 4E758 8004DB58 468021A1 */  cvt.d.w    $f6, $f4
/* 4E75C 8004DB5C 44814800 */  mtc1       $at, $f9
/* 4E760 8004DB60 44804000 */  mtc1       $zero, $f8
/* 4E764 8004DB64 8E0400EC */  lw         $a0, 0xec($s0)
/* 4E768 8004DB68 46283282 */  mul.d      $f10, $f6, $f8
/* 4E76C 8004DB6C 00002825 */  or         $a1, $zero, $zero
/* 4E770 8004DB70 444DF800 */  cfc1       $t5, $31
/* 4E774 8004DB74 00000000 */  nop
/* 4E778 8004DB78 35A10003 */  ori        $at, $t5, 3
/* 4E77C 8004DB7C 38210002 */  xori       $at, $at, 2
/* 4E780 8004DB80 44C1F800 */  ctc1       $at, $31
/* 4E784 8004DB84 00000000 */  nop
/* 4E788 8004DB88 46205424 */  cvt.w.d    $f16, $f10
/* 4E78C 8004DB8C 44068000 */  mfc1       $a2, $f16
/* 4E790 8004DB90 44CDF800 */  ctc1       $t5, $31
/* 4E794 8004DB94 0C00A607 */  jal        func_8002981C
/* 4E798 8004DB98 00000000 */   nop
/* 4E79C 8004DB9C AE0200EC */  sw         $v0, 0xec($s0)
/* 4E7A0 8004DBA0 0C012325 */  jal        func_80048C94
/* 4E7A4 8004DBA4 00002025 */   or        $a0, $zero, $zero
/* 4E7A8 8004DBA8 44829000 */  mtc1       $v0, $f18
/* 4E7AC 8004DBAC 3C013FF8 */  lui        $at, 0x3ff8
/* 4E7B0 8004DBB0 46809121 */  cvt.d.w    $f4, $f18
/* 4E7B4 8004DBB4 44813800 */  mtc1       $at, $f7
/* 4E7B8 8004DBB8 44803000 */  mtc1       $zero, $f6
/* 4E7BC 8004DBBC 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4E7C0 8004DBC0 46262202 */  mul.d      $f8, $f4, $f6
/* 4E7C4 8004DBC4 00002825 */  or         $a1, $zero, $zero
/* 4E7C8 8004DBC8 444EF800 */  cfc1       $t6, $31
/* 4E7CC 8004DBCC 00000000 */  nop
/* 4E7D0 8004DBD0 35C10003 */  ori        $at, $t6, 3
/* 4E7D4 8004DBD4 38210002 */  xori       $at, $at, 2
/* 4E7D8 8004DBD8 44C1F800 */  ctc1       $at, $31
/* 4E7DC 8004DBDC 00000000 */  nop
/* 4E7E0 8004DBE0 462042A4 */  cvt.w.d    $f10, $f8
/* 4E7E4 8004DBE4 44065000 */  mfc1       $a2, $f10
/* 4E7E8 8004DBE8 44CEF800 */  ctc1       $t6, $31
/* 4E7EC 8004DBEC 0C00A607 */  jal        func_8002981C
/* 4E7F0 8004DBF0 00000000 */   nop
/* 4E7F4 8004DBF4 8E0F0150 */  lw         $t7, 0x150($s0)
/* 4E7F8 8004DBF8 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 4E7FC 8004DBFC 25F8FFFF */  addiu      $t8, $t7, -1
/* 4E800 8004DC00 1700000C */  bnez       $t8, .L8004DC34
/* 4E804 8004DC04 AE180150 */   sw        $t8, 0x150($s0)
/* 4E808 8004DC08 8E080080 */  lw         $t0, 0x80($s0)
/* 4E80C 8004DC0C 3C010081 */  lui        $at, 0x81
/* 4E810 8004DC10 35090040 */  ori        $t1, $t0, 0x40
/* 4E814 8004DC14 01215824 */  and        $t3, $t1, $at
/* 4E818 8004DC18 11600004 */  beqz       $t3, .L8004DC2C
/* 4E81C 8004DC1C AE090080 */   sw        $t1, 0x80($s0)
/* 4E820 8004DC20 240C0003 */  addiu      $t4, $zero, 3
/* 4E824 8004DC24 10000003 */  b          .L8004DC34
/* 4E828 8004DC28 A60C00D0 */   sh        $t4, 0xd0($s0)
.L8004DC2C:
/* 4E82C 8004DC2C 240D0016 */  addiu      $t5, $zero, 0x16
/* 4E830 8004DC30 A60D00D0 */  sh         $t5, 0xd0($s0)
.L8004DC34:
/* 4E834 8004DC34 8FBF001C */  lw         $ra, 0x1c($sp)
.L8004DC38:
/* 4E838 8004DC38 8FB00018 */  lw         $s0, 0x18($sp)
/* 4E83C 8004DC3C 03E00008 */  jr         $ra
/* 4E840 8004DC40 27BD0020 */   addiu     $sp, $sp, 0x20
