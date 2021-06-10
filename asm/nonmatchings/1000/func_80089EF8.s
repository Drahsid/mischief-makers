glabel func_80089EF8
/* 8AAF8 80089EF8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8AAFC 80089EFC 000E7880 */  sll        $t7, $t6, 2
/* 8AB00 80089F00 01EE7823 */  subu       $t7, $t7, $t6
/* 8AB04 80089F04 000F7880 */  sll        $t7, $t7, 2
/* 8AB08 80089F08 01EE7821 */  addu       $t7, $t7, $t6
/* 8AB0C 80089F0C 000F7880 */  sll        $t7, $t7, 2
/* 8AB10 80089F10 01EE7823 */  subu       $t7, $t7, $t6
/* 8AB14 80089F14 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8AB18 80089F18 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8AB1C 80089F1C 000F78C0 */  sll        $t7, $t7, 3
/* 8AB20 80089F20 01F81821 */  addu       $v1, $t7, $t8
/* 8AB24 80089F24 8C62017C */  lw         $v0, 0x17c($v1)
/* 8AB28 80089F28 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8AB2C 80089F2C 240100FF */  addiu      $at, $zero, 0xff
/* 8AB30 80089F30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8AB34 80089F34 14410003 */  bne        $v0, $at, .L80089F44
/* 8AB38 80089F38 AFA40028 */   sw        $a0, 0x28($sp)
/* 8AB3C 80089F3C 10000069 */  b          .L8008A0E4
/* 8AB40 80089F40 00001025 */   or        $v0, $zero, $zero
.L80089F44:
/* 8AB44 80089F44 8C640190 */  lw         $a0, 0x190($v1)
/* 8AB48 80089F48 00024880 */  sll        $t1, $v0, 2
/* 8AB4C 80089F4C 10800003 */  beqz       $a0, .L80089F5C
/* 8AB50 80089F50 01224823 */   subu      $t1, $t1, $v0
/* 8AB54 80089F54 10000007 */  b          .L80089F74
/* 8AB58 80089F58 00803025 */   or        $a2, $a0, $zero
.L80089F5C:
/* 8AB5C 80089F5C 947900D8 */  lhu        $t9, 0xd8($v1)
/* 8AB60 80089F60 3C06800E */  lui        $a2, %hi(D_800E44C0)
/* 8AB64 80089F64 00194080 */  sll        $t0, $t9, 2
/* 8AB68 80089F68 00C83021 */  addu       $a2, $a2, $t0
/* 8AB6C 80089F6C 8CC644C0 */  lw         $a2, %lo(D_800E44C0)($a2)
/* 8AB70 80089F70 00000000 */  nop
.L80089F74:
/* 8AB74 80089F74 8C6A0174 */  lw         $t2, 0x174($v1)
/* 8AB78 80089F78 8C6D0178 */  lw         $t5, 0x178($v1)
/* 8AB7C 80089F7C 254B0001 */  addiu      $t3, $t2, 1
/* 8AB80 80089F80 000948C0 */  sll        $t1, $t1, 3
/* 8AB84 80089F84 016D082A */  slt        $at, $t3, $t5
/* 8AB88 80089F88 00C93021 */  addu       $a2, $a2, $t1
/* 8AB8C 80089F8C 14200054 */  bnez       $at, .L8008A0E0
/* 8AB90 80089F90 AC6B0174 */   sw        $t3, 0x174($v1)
/* 8AB94 80089F94 24040030 */  addiu      $a0, $zero, 0x30
/* 8AB98 80089F98 24050090 */  addiu      $a1, $zero, 0x90
/* 8AB9C 80089F9C AFA3001C */  sw         $v1, 0x1c($sp)
/* 8ABA0 80089FA0 0C00A12E */  jal        func_800284B8
/* 8ABA4 80089FA4 AFA60024 */   sw        $a2, 0x24($sp)
/* 8ABA8 80089FA8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8ABAC 80089FAC 8FA60024 */  lw         $a2, 0x24($sp)
/* 8ABB0 80089FB0 1040002D */  beqz       $v0, .L8008A068
/* 8ABB4 80089FB4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 8ABB8 80089FB8 00047080 */  sll        $t6, $a0, 2
/* 8ABBC 80089FBC 01C47023 */  subu       $t6, $t6, $a0
/* 8ABC0 80089FC0 000E7080 */  sll        $t6, $t6, 2
/* 8ABC4 80089FC4 01C47021 */  addu       $t6, $t6, $a0
/* 8ABC8 80089FC8 8CD80000 */  lw         $t8, ($a2)
/* 8ABCC 80089FCC 000E7080 */  sll        $t6, $t6, 2
/* 8ABD0 80089FD0 01C47023 */  subu       $t6, $t6, $a0
/* 8ABD4 80089FD4 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 8ABD8 80089FD8 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 8ABDC 80089FDC 000E70C0 */  sll        $t6, $t6, 3
/* 8ABE0 80089FE0 01CF1021 */  addu       $v0, $t6, $t7
/* 8ABE4 80089FE4 AFA20018 */  sw         $v0, 0x18($sp)
/* 8ABE8 80089FE8 AFA60024 */  sw         $a2, 0x24($sp)
/* 8ABEC 80089FEC AFA3001C */  sw         $v1, 0x1c($sp)
/* 8ABF0 80089FF0 0C0078B4 */  jal        func_8001E2D0
/* 8ABF4 80089FF4 A45800D2 */   sh        $t8, 0xd2($v0)
/* 8ABF8 80089FF8 8FA60024 */  lw         $a2, 0x24($sp)
/* 8ABFC 80089FFC 8FA20018 */  lw         $v0, 0x18($sp)
/* 8AC00 8008A000 8CD90004 */  lw         $t9, 4($a2)
/* 8AC04 8008A004 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8AC08 8008A008 44992000 */  mtc1       $t9, $f4
/* 8AC0C 8008A00C 00000000 */  nop
/* 8AC10 8008A010 468021A0 */  cvt.s.w    $f6, $f4
/* 8AC14 8008A014 E4460110 */  swc1       $f6, 0x110($v0)
/* 8AC18 8008A018 8CC80008 */  lw         $t0, 8($a2)
/* 8AC1C 8008A01C 00000000 */  nop
/* 8AC20 8008A020 A44800D8 */  sh         $t0, 0xd8($v0)
/* 8AC24 8008A024 8CC9000C */  lw         $t1, 0xc($a2)
/* 8AC28 8008A028 00000000 */  nop
/* 8AC2C 8008A02C AC4900EC */  sw         $t1, 0xec($v0)
/* 8AC30 8008A030 8CCA0010 */  lw         $t2, 0x10($a2)
/* 8AC34 8008A034 00000000 */  nop
/* 8AC38 8008A038 AC4A00F0 */  sw         $t2, 0xf0($v0)
/* 8AC3C 8008A03C 846B0088 */  lh         $t3, 0x88($v1)
/* 8AC40 8008A040 00000000 */  nop
/* 8AC44 8008A044 A44B0088 */  sh         $t3, 0x88($v0)
/* 8AC48 8008A048 846C008C */  lh         $t4, 0x8c($v1)
/* 8AC4C 8008A04C 00000000 */  nop
/* 8AC50 8008A050 258D0030 */  addiu      $t5, $t4, 0x30
/* 8AC54 8008A054 A44D008C */  sh         $t5, 0x8c($v0)
/* 8AC58 8008A058 846E0090 */  lh         $t6, 0x90($v1)
/* 8AC5C 8008A05C 00000000 */  nop
/* 8AC60 8008A060 25CF0001 */  addiu      $t7, $t6, 1
/* 8AC64 8008A064 A44F0090 */  sh         $t7, 0x90($v0)
.L8008A068:
/* 8AC68 8008A068 AC600174 */  sw         $zero, 0x174($v1)
/* 8AC6C 8008A06C 8CD80014 */  lw         $t8, 0x14($a2)
/* 8AC70 8008A070 8C79016C */  lw         $t9, 0x16c($v1)
/* 8AC74 8008A074 24080001 */  addiu      $t0, $zero, 1
/* 8AC78 8008A078 17200002 */  bnez       $t9, .L8008A084
/* 8AC7C 8008A07C AC780178 */   sw        $t8, 0x178($v1)
/* 8AC80 8008A080 AC68016C */  sw         $t0, 0x16c($v1)
.L8008A084:
/* 8AC84 8008A084 8CC20018 */  lw         $v0, 0x18($a2)
/* 8AC88 8008A088 24C60018 */  addiu      $a2, $a2, 0x18
/* 8AC8C 8008A08C 04410009 */  bgez       $v0, .L8008A0B4
/* 8AC90 8008A090 24010006 */   addiu     $at, $zero, 6
/* 8AC94 8008A094 0041001A */  div        $zero, $v0, $at
/* 8AC98 8008A098 8C69017C */  lw         $t1, 0x17c($v1)
/* 8AC9C 8008A09C 24020001 */  addiu      $v0, $zero, 1
/* 8ACA0 8008A0A0 00005012 */  mflo       $t2
/* 8ACA4 8008A0A4 012A5821 */  addu       $t3, $t1, $t2
/* 8ACA8 8008A0A8 256C0001 */  addiu      $t4, $t3, 1
/* 8ACAC 8008A0AC 1000000D */  b          .L8008A0E4
/* 8ACB0 8008A0B0 AC6C017C */   sw        $t4, 0x17c($v1)
.L8008A0B4:
/* 8ACB4 8008A0B4 14400004 */  bnez       $v0, .L8008A0C8
/* 8ACB8 8008A0B8 240D00FF */   addiu     $t5, $zero, 0xff
/* 8ACBC 8008A0BC AC6D017C */  sw         $t5, 0x17c($v1)
/* 8ACC0 8008A0C0 10000008 */  b          .L8008A0E4
/* 8ACC4 8008A0C4 24020001 */   addiu     $v0, $zero, 1
.L8008A0C8:
/* 8ACC8 8008A0C8 8C6E017C */  lw         $t6, 0x17c($v1)
/* 8ACCC 8008A0CC 00000000 */  nop
/* 8ACD0 8008A0D0 25CF0001 */  addiu      $t7, $t6, 1
/* 8ACD4 8008A0D4 AC6F017C */  sw         $t7, 0x17c($v1)
/* 8ACD8 8008A0D8 10000002 */  b          .L8008A0E4
/* 8ACDC 8008A0DC 24020001 */   addiu     $v0, $zero, 1
.L8008A0E0:
/* 8ACE0 8008A0E0 00001025 */  or         $v0, $zero, $zero
.L8008A0E4:
/* 8ACE4 8008A0E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8ACE8 8008A0E8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8ACEC 8008A0EC 03E00008 */  jr         $ra
/* 8ACF0 8008A0F0 00000000 */   nop
