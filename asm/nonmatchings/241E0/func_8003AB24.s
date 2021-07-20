glabel func_8003AB24
/* 3B724 8003AB24 3085FFFF */  andi       $a1, $a0, 0xffff
/* 3B728 8003AB28 24070198 */  addiu      $a3, $zero, 0x198
/* 3B72C 8003AB2C 00A70019 */  multu      $a1, $a3
/* 3B730 8003AB30 3C06800F */  lui        $a2, %hi(gActors)
/* 3B734 8003AB34 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 3B738 8003AB38 444FF800 */  cfc1       $t7, $31
/* 3B73C 8003AB3C 24180001 */  addiu      $t8, $zero, 1
/* 3B740 8003AB40 44D8F800 */  ctc1       $t8, $31
/* 3B744 8003AB44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3B748 8003AB48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3B74C 8003AB4C AFA40018 */  sw         $a0, 0x18($sp)
/* 3B750 8003AB50 3C014F00 */  lui        $at, 0x4f00
/* 3B754 8003AB54 00007012 */  mflo       $t6
/* 3B758 8003AB58 00CE1821 */  addu       $v1, $a2, $t6
/* 3B75C 8003AB5C C4640110 */  lwc1       $f4, 0x110($v1)
/* 3B760 8003AB60 00000000 */  nop
/* 3B764 8003AB64 460021A4 */  cvt.w.s    $f6, $f4
/* 3B768 8003AB68 4458F800 */  cfc1       $t8, $31
/* 3B76C 8003AB6C 00000000 */  nop
/* 3B770 8003AB70 33180078 */  andi       $t8, $t8, 0x78
/* 3B774 8003AB74 13000012 */  beqz       $t8, .L8003ABC0
/* 3B778 8003AB78 00000000 */   nop
/* 3B77C 8003AB7C 44813000 */  mtc1       $at, $f6
/* 3B780 8003AB80 24180001 */  addiu      $t8, $zero, 1
/* 3B784 8003AB84 46062181 */  sub.s      $f6, $f4, $f6
/* 3B788 8003AB88 3C018000 */  lui        $at, 0x8000
/* 3B78C 8003AB8C 44D8F800 */  ctc1       $t8, $31
/* 3B790 8003AB90 00000000 */  nop
/* 3B794 8003AB94 460031A4 */  cvt.w.s    $f6, $f6
/* 3B798 8003AB98 4458F800 */  cfc1       $t8, $31
/* 3B79C 8003AB9C 00000000 */  nop
/* 3B7A0 8003ABA0 33180078 */  andi       $t8, $t8, 0x78
/* 3B7A4 8003ABA4 17000004 */  bnez       $t8, .L8003ABB8
/* 3B7A8 8003ABA8 00000000 */   nop
/* 3B7AC 8003ABAC 44183000 */  mfc1       $t8, $f6
/* 3B7B0 8003ABB0 10000007 */  b          .L8003ABD0
/* 3B7B4 8003ABB4 0301C025 */   or        $t8, $t8, $at
.L8003ABB8:
/* 3B7B8 8003ABB8 10000005 */  b          .L8003ABD0
/* 3B7BC 8003ABBC 2418FFFF */   addiu     $t8, $zero, -1
.L8003ABC0:
/* 3B7C0 8003ABC0 44183000 */  mfc1       $t8, $f6
/* 3B7C4 8003ABC4 00000000 */  nop
/* 3B7C8 8003ABC8 0700FFFB */  bltz       $t8, .L8003ABB8
/* 3B7CC 8003ABCC 00000000 */   nop
.L8003ABD0:
/* 3B7D0 8003ABD0 44CFF800 */  ctc1       $t7, $31
/* 3B7D4 8003ABD4 33084000 */  andi       $t0, $t8, 0x4000
/* 3B7D8 8003ABD8 1500000F */  bnez       $t0, .L8003AC18
/* 3B7DC 8003ABDC 00000000 */   nop
/* 3B7E0 8003ABE0 9469015A */  lhu        $t1, 0x15a($v1)
/* 3B7E4 8003ABE4 3C014200 */  lui        $at, 0x4200
/* 3B7E8 8003ABE8 01270019 */  multu      $t1, $a3
/* 3B7EC 8003ABEC 44815000 */  mtc1       $at, $f10
/* 3B7F0 8003ABF0 24040114 */  addiu      $a0, $zero, 0x114
/* 3B7F4 8003ABF4 00005012 */  mflo       $t2
/* 3B7F8 8003ABF8 00CA1021 */  addu       $v0, $a2, $t2
/* 3B7FC 8003ABFC C4480138 */  lwc1       $f8, 0x138($v0)
/* 3B800 8003AC00 00000000 */  nop
/* 3B804 8003AC04 460A4401 */  sub.s      $f16, $f8, $f10
/* 3B808 8003AC08 0C000DB2 */  jal        func_800036C8
/* 3B80C 8003AC0C E4500138 */   swc1      $f16, 0x138($v0)
/* 3B810 8003AC10 10000004 */  b          .L8003AC24
/* 3B814 8003AC14 8FBF0014 */   lw        $ra, 0x14($sp)
.L8003AC18:
/* 3B818 8003AC18 0C000DB2 */  jal        func_800036C8
/* 3B81C 8003AC1C 24040115 */   addiu     $a0, $zero, 0x115
/* 3B820 8003AC20 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003AC24:
/* 3B824 8003AC24 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3B828 8003AC28 03E00008 */  jr         $ra
/* 3B82C 8003AC2C 00000000 */   nop
