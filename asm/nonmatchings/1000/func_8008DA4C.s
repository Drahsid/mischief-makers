glabel func_8008DA4C
/* 8E64C 8008DA4C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8E650 8008DA50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E654 8008DA54 AFA40028 */  sw         $a0, 0x28($sp)
/* 8E658 8008DA58 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E65C 8008DA5C 01C02025 */  or         $a0, $t6, $zero
/* 8E660 8008DA60 0C0234E7 */  jal        func_8008D39C
/* 8E664 8008DA64 A7AE002A */   sh        $t6, 0x2a($sp)
/* 8E668 8008DA68 3C02800C */  lui        $v0, %hi(D_800BE4F8)
/* 8E66C 8008DA6C 3C0F800C */  lui        $t7, %hi(D_800BE510)
/* 8E670 8008DA70 95EFE510 */  lhu        $t7, %lo(D_800BE510)($t7)
/* 8E674 8008DA74 9442E4F8 */  lhu        $v0, %lo(D_800BE4F8)($v0)
/* 8E678 8008DA78 97A4002A */  lhu        $a0, 0x2a($sp)
/* 8E67C 8008DA7C 004FC024 */  and        $t8, $v0, $t7
/* 8E680 8008DA80 13000014 */  beqz       $t8, .L8008DAD4
/* 8E684 8008DA84 0004C880 */   sll       $t9, $a0, 2
/* 8E688 8008DA88 0324C823 */  subu       $t9, $t9, $a0
/* 8E68C 8008DA8C 0019C880 */  sll        $t9, $t9, 2
/* 8E690 8008DA90 0324C821 */  addu       $t9, $t9, $a0
/* 8E694 8008DA94 0019C880 */  sll        $t9, $t9, 2
/* 8E698 8008DA98 0324C823 */  subu       $t9, $t9, $a0
/* 8E69C 8008DA9C 3C08800F */  lui        $t0, %hi(gActors)
/* 8E6A0 8008DAA0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 8E6A4 8008DAA4 0019C8C0 */  sll        $t9, $t9, 3
/* 8E6A8 8008DAA8 03281821 */  addu       $v1, $t9, $t0
/* 8E6AC 8008DAAC 8C6900EC */  lw         $t1, 0xec($v1)
/* 8E6B0 8008DAB0 3C050001 */  lui        $a1, 1
/* 8E6B4 8008DAB4 05210007 */  bgez       $t1, .L8008DAD4
/* 8E6B8 8008DAB8 24062000 */   addiu     $a2, $zero, 0x2000
/* 8E6BC 8008DABC 8C640184 */  lw         $a0, 0x184($v1)
/* 8E6C0 8008DAC0 0C00A607 */  jal        func_8002981C
/* 8E6C4 8008DAC4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 8E6C8 8008DAC8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8E6CC 8008DACC 10000019 */  b          .L8008DB34
/* 8E6D0 8008DAD0 AC620184 */   sw        $v0, 0x184($v1)
.L8008DAD4:
/* 8E6D4 8008DAD4 00045080 */  sll        $t2, $a0, 2
/* 8E6D8 8008DAD8 01445023 */  subu       $t2, $t2, $a0
/* 8E6DC 8008DADC 000A5080 */  sll        $t2, $t2, 2
/* 8E6E0 8008DAE0 01445021 */  addu       $t2, $t2, $a0
/* 8E6E4 8008DAE4 3C0C800C */  lui        $t4, %hi(D_800BE50C)
/* 8E6E8 8008DAE8 958CE50C */  lhu        $t4, %lo(D_800BE50C)($t4)
/* 8E6EC 8008DAEC 000A5080 */  sll        $t2, $t2, 2
/* 8E6F0 8008DAF0 01445023 */  subu       $t2, $t2, $a0
/* 8E6F4 8008DAF4 3C0B800F */  lui        $t3, %hi(gActors)
/* 8E6F8 8008DAF8 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 8E6FC 8008DAFC 000A50C0 */  sll        $t2, $t2, 3
/* 8E700 8008DB00 004C6824 */  and        $t5, $v0, $t4
/* 8E704 8008DB04 11A0000B */  beqz       $t5, .L8008DB34
/* 8E708 8008DB08 014B1821 */   addu      $v1, $t2, $t3
/* 8E70C 8008DB0C 8C6E00EC */  lw         $t6, 0xec($v1)
/* 8E710 8008DB10 3C05FFFF */  lui        $a1, 0xffff
/* 8E714 8008DB14 19C00007 */  blez       $t6, .L8008DB34
/* 8E718 8008DB18 24062000 */   addiu     $a2, $zero, 0x2000
/* 8E71C 8008DB1C 8C640184 */  lw         $a0, 0x184($v1)
/* 8E720 8008DB20 0C00A607 */  jal        func_8002981C
/* 8E724 8008DB24 AFA3001C */   sw        $v1, 0x1c($sp)
/* 8E728 8008DB28 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8E72C 8008DB2C 00000000 */  nop
/* 8E730 8008DB30 AC620184 */  sw         $v0, 0x184($v1)
.L8008DB34:
/* 8E734 8008DB34 8C6F0188 */  lw         $t7, 0x188($v1)
/* 8E738 8008DB38 00000000 */  nop
/* 8E73C 8008DB3C 05E10011 */  bgez       $t7, .L8008DB84
/* 8E740 8008DB40 00000000 */   nop
/* 8E744 8008DB44 8C780098 */  lw         $t8, 0x98($v1)
/* 8E748 8008DB48 00000000 */  nop
/* 8E74C 8008DB4C 33190020 */  andi       $t9, $t8, 0x20
/* 8E750 8008DB50 1320000C */  beqz       $t9, .L8008DB84
/* 8E754 8008DB54 00000000 */   nop
/* 8E758 8008DB58 8C620080 */  lw         $v0, 0x80($v1)
/* 8E75C 8008DB5C 3C050001 */  lui        $a1, 1
/* 8E760 8008DB60 00024380 */  sll        $t0, $v0, 0xe
/* 8E764 8008DB64 05010007 */  bgez       $t0, .L8008DB84
/* 8E768 8008DB68 00454825 */   or        $t1, $v0, $a1
/* 8E76C 8008DB6C 3C01FFFD */  lui        $at, 0xfffd
/* 8E770 8008DB70 3421FFFF */  ori        $at, $at, 0xffff
/* 8E774 8008DB74 AC690080 */  sw         $t1, 0x80($v1)
/* 8E778 8008DB78 01215824 */  and        $t3, $t1, $at
/* 8E77C 8008DB7C AC600188 */  sw         $zero, 0x188($v1)
/* 8E780 8008DB80 AC6B0080 */  sw         $t3, 0x80($v1)
.L8008DB84:
/* 8E784 8008DB84 946400D0 */  lhu        $a0, 0xd0($v1)
/* 8E788 8008DB88 240100A0 */  addiu      $at, $zero, 0xa0
/* 8E78C 8008DB8C 3C050001 */  lui        $a1, 1
/* 8E790 8008DB90 10810008 */  beq        $a0, $at, .L8008DBB4
/* 8E794 8008DB94 00801025 */   or        $v0, $a0, $zero
/* 8E798 8008DB98 240100A1 */  addiu      $at, $zero, 0xa1
/* 8E79C 8008DB9C 10410012 */  beq        $v0, $at, .L8008DBE8
/* 8E7A0 8008DBA0 240100A2 */   addiu     $at, $zero, 0xa2
/* 8E7A4 8008DBA4 10410027 */  beq        $v0, $at, .L8008DC44
/* 8E7A8 8008DBA8 00000000 */   nop
/* 8E7AC 8008DBAC 1000002D */  b          .L8008DC64
/* 8E7B0 8008DBB0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008DBB4:
/* 8E7B4 8008DBB4 44802000 */  mtc1       $zero, $f4
/* 8E7B8 8008DBB8 C4660118 */  lwc1       $f6, 0x118($v1)
/* 8E7BC 8008DBBC 3C0D800D */  lui        $t5, %hi(D_800D4AA4)
/* 8E7C0 8008DBC0 46062032 */  c.eq.s     $f4, $f6
/* 8E7C4 8008DBC4 248C0001 */  addiu      $t4, $a0, 1
/* 8E7C8 8008DBC8 45000025 */  bc1f       .L8008DC60
/* 8E7CC 8008DBCC 25AD4AA4 */   addiu     $t5, $t5, %lo(D_800D4AA4)
/* 8E7D0 8008DBD0 3C013F80 */  lui        $at, 0x3f80
/* 8E7D4 8008DBD4 44814000 */  mtc1       $at, $f8
/* 8E7D8 8008DBD8 A46C00D0 */  sh         $t4, 0xd0($v1)
/* 8E7DC 8008DBDC AC6D018C */  sw         $t5, 0x18c($v1)
/* 8E7E0 8008DBE0 1000001F */  b          .L8008DC60
/* 8E7E4 8008DBE4 E4680118 */   swc1      $f8, 0x118($v1)
.L8008DBE8:
/* 8E7E8 8008DBE8 44805000 */  mtc1       $zero, $f10
/* 8E7EC 8008DBEC C4700118 */  lwc1       $f16, 0x118($v1)
/* 8E7F0 8008DBF0 00000000 */  nop
/* 8E7F4 8008DBF4 46105032 */  c.eq.s     $f10, $f16
/* 8E7F8 8008DBF8 00000000 */  nop
/* 8E7FC 8008DBFC 45000019 */  bc1f       .L8008DC64
/* 8E800 8008DC00 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E804 8008DC04 8C6E0080 */  lw         $t6, 0x80($v1)
/* 8E808 8008DC08 24980001 */  addiu      $t8, $a0, 1
/* 8E80C 8008DC0C 01C57824 */  and        $t7, $t6, $a1
/* 8E810 8008DC10 11E00005 */  beqz       $t7, .L8008DC28
/* 8E814 8008DC14 3C19800D */   lui       $t9, 0x800d
/* 8E818 8008DC18 0C023300 */  jal        func_8008CC00
/* 8E81C 8008DC1C 00000000 */   nop
/* 8E820 8008DC20 10000010 */  b          .L8008DC64
/* 8E824 8008DC24 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008DC28:
/* 8E828 8008DC28 3C013F80 */  lui        $at, 0x3f80
/* 8E82C 8008DC2C 44819000 */  mtc1       $at, $f18
/* 8E830 8008DC30 273944A8 */  addiu      $t9, $t9, 0x44a8
/* 8E834 8008DC34 A47800D0 */  sh         $t8, 0xd0($v1)
/* 8E838 8008DC38 AC79018C */  sw         $t9, 0x18c($v1)
/* 8E83C 8008DC3C 10000008 */  b          .L8008DC60
/* 8E840 8008DC40 E4720118 */   swc1      $f18, 0x118($v1)
.L8008DC44:
/* 8E844 8008DC44 8C680080 */  lw         $t0, 0x80($v1)
/* 8E848 8008DC48 00000000 */  nop
/* 8E84C 8008DC4C 01054824 */  and        $t1, $t0, $a1
/* 8E850 8008DC50 11200004 */  beqz       $t1, .L8008DC64
/* 8E854 8008DC54 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E858 8008DC58 0C023300 */  jal        func_8008CC00
/* 8E85C 8008DC5C 00000000 */   nop
.L8008DC60:
/* 8E860 8008DC60 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008DC64:
/* 8E864 8008DC64 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8E868 8008DC68 03E00008 */  jr         $ra
/* 8E86C 8008DC6C 00000000 */   nop
