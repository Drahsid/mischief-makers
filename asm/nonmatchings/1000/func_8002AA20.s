glabel func_8002AA20
/* 2B620 8002AA20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B624 8002AA24 3C06800E */  lui        $a2, %hi(D_800E3584)
/* 2B628 8002AA28 24C63584 */  addiu      $a2, $a2, %lo(D_800E3584)
/* 2B62C 8002AA2C AFA5001C */  sw         $a1, 0x1c($sp)
/* 2B630 8002AA30 ACC00000 */  sw         $zero, ($a2)
/* 2B634 8002AA34 3C05800E */  lui        $a1, %hi(D_800E3580)
/* 2B638 8002AA38 94A53580 */  lhu        $a1, %lo(D_800E3580)($a1)
/* 2B63C 8002AA3C AFA40018 */  sw         $a0, 0x18($sp)
/* 2B640 8002AA40 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2B644 8002AA44 01C02025 */  or         $a0, $t6, $zero
/* 2B648 8002AA48 11C50062 */  beq        $t6, $a1, .L8002ABD4
/* 2B64C 8002AA4C AFBF0014 */   sw        $ra, 0x14($sp)
/* 2B650 8002AA50 0C00AA40 */  jal        func_8002A900
/* 2B654 8002AA54 A7AE001A */   sh        $t6, 0x1a($sp)
/* 2B658 8002AA58 3C05800E */  lui        $a1, %hi(D_800E3580)
/* 2B65C 8002AA5C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 2B660 8002AA60 3C01800E */  lui        $at, %hi(D_800E3578)
/* 2B664 8002AA64 94A53580 */  lhu        $a1, %lo(D_800E3580)($a1)
/* 2B668 8002AA68 0C00AA64 */  jal        func_8002A990
/* 2B66C 8002AA6C AC223578 */   sw        $v0, %lo(D_800E3578)($at)
/* 2B670 8002AA70 3C0F800E */  lui        $t7, %hi(D_800E3578)
/* 2B674 8002AA74 8DEF3578 */  lw         $t7, %lo(D_800E3578)($t7)
/* 2B678 8002AA78 97A4001A */  lhu        $a0, 0x1a($sp)
/* 2B67C 8002AA7C 3C06800E */  lui        $a2, 0x800e
/* 2B680 8002AA80 3C07800E */  lui        $a3, %hi(D_800E3580)
/* 2B684 8002AA84 3C01800E */  lui        $at, %hi(D_800E357C)
/* 2B688 8002AA88 AC22357C */  sw         $v0, %lo(D_800E357C)($at)
/* 2B68C 8002AA8C 24E73580 */  addiu      $a3, $a3, %lo(D_800E3580)
/* 2B690 8002AA90 05E1001D */  bgez       $t7, .L8002AB08
/* 2B694 8002AA94 24C63584 */   addiu     $a2, $a2, 0x3584
/* 2B698 8002AA98 24050198 */  addiu      $a1, $zero, 0x198
/* 2B69C 8002AA9C 00850019 */  multu      $a0, $a1
/* 2B6A0 8002AAA0 3C02800F */  lui        $v0, %hi(D_800EF510)
/* 2B6A4 8002AAA4 2442F510 */  addiu      $v0, $v0, %lo(D_800EF510)
/* 2B6A8 8002AAA8 00001825 */  or         $v1, $zero, $zero
/* 2B6AC 8002AAAC 0000C012 */  mflo       $t8
/* 2B6B0 8002AAB0 0058C821 */  addu       $t9, $v0, $t8
/* 2B6B4 8002AAB4 8F280080 */  lw         $t0, 0x80($t9)
/* 2B6B8 8002AAB8 00000000 */  nop
/* 2B6BC 8002AABC 31090020 */  andi       $t1, $t0, 0x20
/* 2B6C0 8002AAC0 11200003 */  beqz       $t1, .L8002AAD0
/* 2B6C4 8002AAC4 00000000 */   nop
/* 2B6C8 8002AAC8 10000001 */  b          .L8002AAD0
/* 2B6CC 8002AACC 24030001 */   addiu     $v1, $zero, 1
.L8002AAD0:
/* 2B6D0 8002AAD0 94EA0000 */  lhu        $t2, ($a3)
/* 2B6D4 8002AAD4 00000000 */  nop
/* 2B6D8 8002AAD8 01450019 */  multu      $t2, $a1
/* 2B6DC 8002AADC 00005812 */  mflo       $t3
/* 2B6E0 8002AAE0 004B6021 */  addu       $t4, $v0, $t3
/* 2B6E4 8002AAE4 8D8D0080 */  lw         $t5, 0x80($t4)
/* 2B6E8 8002AAE8 00000000 */  nop
/* 2B6EC 8002AAEC 31AE0020 */  andi       $t6, $t5, 0x20
/* 2B6F0 8002AAF0 11C00003 */  beqz       $t6, .L8002AB00
/* 2B6F4 8002AAF4 00000000 */   nop
/* 2B6F8 8002AAF8 1000001D */  b          .L8002AB70
/* 2B6FC 8002AAFC 24020001 */   addiu     $v0, $zero, 1
.L8002AB00:
/* 2B700 8002AB00 1000001B */  b          .L8002AB70
/* 2B704 8002AB04 00001025 */   or        $v0, $zero, $zero
.L8002AB08:
/* 2B708 8002AB08 24050198 */  addiu      $a1, $zero, 0x198
/* 2B70C 8002AB0C 00850019 */  multu      $a0, $a1
/* 2B710 8002AB10 3C02800F */  lui        $v0, %hi(D_800EF510)
/* 2B714 8002AB14 2442F510 */  addiu      $v0, $v0, %lo(D_800EF510)
/* 2B718 8002AB18 24030001 */  addiu      $v1, $zero, 1
/* 2B71C 8002AB1C 00007812 */  mflo       $t7
/* 2B720 8002AB20 004FC021 */  addu       $t8, $v0, $t7
/* 2B724 8002AB24 8F190080 */  lw         $t9, 0x80($t8)
/* 2B728 8002AB28 00000000 */  nop
/* 2B72C 8002AB2C 33280020 */  andi       $t0, $t9, 0x20
/* 2B730 8002AB30 11000003 */  beqz       $t0, .L8002AB40
/* 2B734 8002AB34 00000000 */   nop
/* 2B738 8002AB38 10000001 */  b          .L8002AB40
/* 2B73C 8002AB3C 00001825 */   or        $v1, $zero, $zero
.L8002AB40:
/* 2B740 8002AB40 94E90000 */  lhu        $t1, ($a3)
/* 2B744 8002AB44 00000000 */  nop
/* 2B748 8002AB48 01250019 */  multu      $t1, $a1
/* 2B74C 8002AB4C 00005012 */  mflo       $t2
/* 2B750 8002AB50 004A5821 */  addu       $t3, $v0, $t2
/* 2B754 8002AB54 8D6C0080 */  lw         $t4, 0x80($t3)
/* 2B758 8002AB58 24020001 */  addiu      $v0, $zero, 1
/* 2B75C 8002AB5C 318D0020 */  andi       $t5, $t4, 0x20
/* 2B760 8002AB60 11A00003 */  beqz       $t5, .L8002AB70
/* 2B764 8002AB64 00000000 */   nop
/* 2B768 8002AB68 10000001 */  b          .L8002AB70
/* 2B76C 8002AB6C 00001025 */   or        $v0, $zero, $zero
.L8002AB70:
/* 2B770 8002AB70 1060000D */  beqz       $v1, .L8002ABA8
/* 2B774 8002AB74 00000000 */   nop
/* 2B778 8002AB78 10400006 */  beqz       $v0, .L8002AB94
/* 2B77C 8002AB7C 00000000 */   nop
/* 2B780 8002AB80 8CCE0000 */  lw         $t6, ($a2)
/* 2B784 8002AB84 3C010002 */  lui        $at, 2
/* 2B788 8002AB88 01C17825 */  or         $t7, $t6, $at
/* 2B78C 8002AB8C 10000011 */  b          .L8002ABD4
/* 2B790 8002AB90 ACCF0000 */   sw        $t7, ($a2)
.L8002AB94:
/* 2B794 8002AB94 8CD80000 */  lw         $t8, ($a2)
/* 2B798 8002AB98 3C010001 */  lui        $at, 1
/* 2B79C 8002AB9C 0301C825 */  or         $t9, $t8, $at
/* 2B7A0 8002ABA0 1000000C */  b          .L8002ABD4
/* 2B7A4 8002ABA4 ACD90000 */   sw        $t9, ($a2)
.L8002ABA8:
/* 2B7A8 8002ABA8 10400006 */  beqz       $v0, .L8002ABC4
/* 2B7AC 8002ABAC 00000000 */   nop
/* 2B7B0 8002ABB0 8CC80000 */  lw         $t0, ($a2)
/* 2B7B4 8002ABB4 3C010008 */  lui        $at, 8
/* 2B7B8 8002ABB8 01014825 */  or         $t1, $t0, $at
/* 2B7BC 8002ABBC 10000005 */  b          .L8002ABD4
/* 2B7C0 8002ABC0 ACC90000 */   sw        $t1, ($a2)
.L8002ABC4:
/* 2B7C4 8002ABC4 8CCA0000 */  lw         $t2, ($a2)
/* 2B7C8 8002ABC8 3C010004 */  lui        $at, 4
/* 2B7CC 8002ABCC 01415825 */  or         $t3, $t2, $at
/* 2B7D0 8002ABD0 ACCB0000 */  sw         $t3, ($a2)
.L8002ABD4:
/* 2B7D4 8002ABD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2B7D8 8002ABD8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2B7DC 8002ABDC 03E00008 */  jr         $ra
/* 2B7E0 8002ABE0 00000000 */   nop
