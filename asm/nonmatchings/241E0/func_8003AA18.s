glabel func_8003AA18
/* 3B618 8003AA18 3085FFFF */  andi       $a1, $a0, 0xffff
/* 3B61C 8003AA1C 24070198 */  addiu      $a3, $zero, 0x198
/* 3B620 8003AA20 00A70019 */  multu      $a1, $a3
/* 3B624 8003AA24 3C06800F */  lui        $a2, %hi(gActors)
/* 3B628 8003AA28 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 3B62C 8003AA2C 444FF800 */  cfc1       $t7, $31
/* 3B630 8003AA30 24180001 */  addiu      $t8, $zero, 1
/* 3B634 8003AA34 44D8F800 */  ctc1       $t8, $31
/* 3B638 8003AA38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3B63C 8003AA3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3B640 8003AA40 AFA40018 */  sw         $a0, 0x18($sp)
/* 3B644 8003AA44 3C014F00 */  lui        $at, 0x4f00
/* 3B648 8003AA48 00007012 */  mflo       $t6
/* 3B64C 8003AA4C 00CE1821 */  addu       $v1, $a2, $t6
/* 3B650 8003AA50 C4640110 */  lwc1       $f4, 0x110($v1)
/* 3B654 8003AA54 00000000 */  nop
/* 3B658 8003AA58 460021A4 */  cvt.w.s    $f6, $f4
/* 3B65C 8003AA5C 4458F800 */  cfc1       $t8, $31
/* 3B660 8003AA60 00000000 */  nop
/* 3B664 8003AA64 33180078 */  andi       $t8, $t8, 0x78
/* 3B668 8003AA68 13000012 */  beqz       $t8, .L8003AAB4
/* 3B66C 8003AA6C 00000000 */   nop
/* 3B670 8003AA70 44813000 */  mtc1       $at, $f6
/* 3B674 8003AA74 24180001 */  addiu      $t8, $zero, 1
/* 3B678 8003AA78 46062181 */  sub.s      $f6, $f4, $f6
/* 3B67C 8003AA7C 3C018000 */  lui        $at, 0x8000
/* 3B680 8003AA80 44D8F800 */  ctc1       $t8, $31
/* 3B684 8003AA84 00000000 */  nop
/* 3B688 8003AA88 460031A4 */  cvt.w.s    $f6, $f6
/* 3B68C 8003AA8C 4458F800 */  cfc1       $t8, $31
/* 3B690 8003AA90 00000000 */  nop
/* 3B694 8003AA94 33180078 */  andi       $t8, $t8, 0x78
/* 3B698 8003AA98 17000004 */  bnez       $t8, .L8003AAAC
/* 3B69C 8003AA9C 00000000 */   nop
/* 3B6A0 8003AAA0 44183000 */  mfc1       $t8, $f6
/* 3B6A4 8003AAA4 10000007 */  b          .L8003AAC4
/* 3B6A8 8003AAA8 0301C025 */   or        $t8, $t8, $at
.L8003AAAC:
/* 3B6AC 8003AAAC 10000005 */  b          .L8003AAC4
/* 3B6B0 8003AAB0 2418FFFF */   addiu     $t8, $zero, -1
.L8003AAB4:
/* 3B6B4 8003AAB4 44183000 */  mfc1       $t8, $f6
/* 3B6B8 8003AAB8 00000000 */  nop
/* 3B6BC 8003AABC 0700FFFB */  bltz       $t8, .L8003AAAC
/* 3B6C0 8003AAC0 00000000 */   nop
.L8003AAC4:
/* 3B6C4 8003AAC4 44CFF800 */  ctc1       $t7, $31
/* 3B6C8 8003AAC8 33084000 */  andi       $t0, $t8, 0x4000
/* 3B6CC 8003AACC 1500000F */  bnez       $t0, .L8003AB0C
/* 3B6D0 8003AAD0 00000000 */   nop
/* 3B6D4 8003AAD4 9469015A */  lhu        $t1, 0x15a($v1)
/* 3B6D8 8003AAD8 3C014200 */  lui        $at, 0x4200
/* 3B6DC 8003AADC 01270019 */  multu      $t1, $a3
/* 3B6E0 8003AAE0 44815000 */  mtc1       $at, $f10
/* 3B6E4 8003AAE4 24040114 */  addiu      $a0, $zero, 0x114
/* 3B6E8 8003AAE8 00005012 */  mflo       $t2
/* 3B6EC 8003AAEC 00CA1021 */  addu       $v0, $a2, $t2
/* 3B6F0 8003AAF0 C4480138 */  lwc1       $f8, 0x138($v0)
/* 3B6F4 8003AAF4 00000000 */  nop
/* 3B6F8 8003AAF8 460A4400 */  add.s      $f16, $f8, $f10
/* 3B6FC 8003AAFC 0C000DB2 */  jal        func_800036C8
/* 3B700 8003AB00 E4500138 */   swc1      $f16, 0x138($v0)
/* 3B704 8003AB04 10000004 */  b          .L8003AB18
/* 3B708 8003AB08 8FBF0014 */   lw        $ra, 0x14($sp)
.L8003AB0C:
/* 3B70C 8003AB0C 0C000DB2 */  jal        func_800036C8
/* 3B710 8003AB10 24040115 */   addiu     $a0, $zero, 0x115
/* 3B714 8003AB14 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003AB18:
/* 3B718 8003AB18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3B71C 8003AB1C 03E00008 */  jr         $ra
/* 3B720 8003AB20 00000000 */   nop
