glabel func_8004B878
/* 4C478 8004B878 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4C47C 8004B87C AFA40020 */  sw         $a0, 0x20($sp)
/* 4C480 8004B880 97AE0022 */  lhu        $t6, 0x22($sp)
/* 4C484 8004B884 3C18800F */  lui        $t8, 0x800f
/* 4C488 8004B888 000E7880 */  sll        $t7, $t6, 2
/* 4C48C 8004B88C 01EE7823 */  subu       $t7, $t7, $t6
/* 4C490 8004B890 000F7880 */  sll        $t7, $t7, 2
/* 4C494 8004B894 01EE7821 */  addu       $t7, $t7, $t6
/* 4C498 8004B898 000F7880 */  sll        $t7, $t7, 2
/* 4C49C 8004B89C 01EE7823 */  subu       $t7, $t7, $t6
/* 4C4A0 8004B8A0 000F78C0 */  sll        $t7, $t7, 3
/* 4C4A4 8004B8A4 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 4C4A8 8004B8A8 01F81821 */  addu       $v1, $t7, $t8
/* 4C4AC 8004B8AC 9079012E */  lbu        $t9, 0x12e($v1)
/* 4C4B0 8004B8B0 8C690080 */  lw         $t1, 0x80($v1)
/* 4C4B4 8004B8B4 37280040 */  ori        $t0, $t9, 0x40
/* 4C4B8 8004B8B8 00095180 */  sll        $t2, $t1, 6
/* 4C4BC 8004B8BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 4C4C0 8004B8C0 05410006 */  bgez       $t2, .L8004B8DC
/* 4C4C4 8004B8C4 A068012E */   sb        $t0, 0x12e($v1)
/* 4C4C8 8004B8C8 97A40022 */  lhu        $a0, 0x22($sp)
/* 4C4CC 8004B8CC 0C013DF6 */  jal        func_8004F7D8
/* 4C4D0 8004B8D0 AFA30018 */   sw        $v1, 0x18($sp)
/* 4C4D4 8004B8D4 8FA30018 */  lw         $v1, 0x18($sp)
/* 4C4D8 8004B8D8 00000000 */  nop
.L8004B8DC:
/* 4C4DC 8004B8DC 906B00D0 */  lbu        $t3, 0xd0($v1)
/* 4C4E0 8004B8E0 24040013 */  addiu      $a0, $zero, 0x13
/* 4C4E4 8004B8E4 15600054 */  bnez       $t3, .L8004BA38
/* 4C4E8 8004B8E8 00000000 */   nop
/* 4C4EC 8004B8EC 8C6C00F8 */  lw         $t4, 0xf8($v1)
/* 4C4F0 8004B8F0 240400A9 */  addiu      $a0, $zero, 0xa9
/* 4C4F4 8004B8F4 AFA30018 */  sw         $v1, 0x18($sp)
/* 4C4F8 8004B8F8 0C000CD3 */  jal        func_8000334C
/* 4C4FC 8004B8FC AC6C00EC */   sw        $t4, 0xec($v1)
/* 4C500 8004B900 8FA30018 */  lw         $v1, 0x18($sp)
/* 4C504 8004B904 00000000 */  nop
/* 4C508 8004B908 8C640080 */  lw         $a0, 0x80($v1)
/* 4C50C 8004B90C 00000000 */  nop
/* 4C510 8004B910 00046980 */  sll        $t5, $a0, 6
/* 4C514 8004B914 05A10009 */  bgez       $t5, .L8004B93C
/* 4C518 8004B918 30990020 */   andi      $t9, $a0, 0x20
/* 4C51C 8004B91C 906E0140 */  lbu        $t6, 0x140($v1)
/* 4C520 8004B920 240F0026 */  addiu      $t7, $zero, 0x26
/* 4C524 8004B924 15C00003 */  bnez       $t6, .L8004B934
/* 4C528 8004B928 24180025 */   addiu     $t8, $zero, 0x25
/* 4C52C 8004B92C 10000014 */  b          .L8004B980
/* 4C530 8004B930 AC6F0170 */   sw        $t7, 0x170($v1)
.L8004B934:
/* 4C534 8004B934 10000012 */  b          .L8004B980
/* 4C538 8004B938 AC780170 */   sw        $t8, 0x170($v1)
.L8004B93C:
/* 4C53C 8004B93C 17200009 */  bnez       $t9, .L8004B964
/* 4C540 8004B940 00000000 */   nop
/* 4C544 8004B944 8C6800EC */  lw         $t0, 0xec($v1)
/* 4C548 8004B948 24090061 */  addiu      $t1, $zero, 0x61
/* 4C54C 8004B94C 19000003 */  blez       $t0, .L8004B95C
/* 4C550 8004B950 240A0062 */   addiu     $t2, $zero, 0x62
/* 4C554 8004B954 1000000A */  b          .L8004B980
/* 4C558 8004B958 AC690170 */   sw        $t1, 0x170($v1)
.L8004B95C:
/* 4C55C 8004B95C 10000008 */  b          .L8004B980
/* 4C560 8004B960 AC6A0170 */   sw        $t2, 0x170($v1)
.L8004B964:
/* 4C564 8004B964 8C6B00EC */  lw         $t3, 0xec($v1)
/* 4C568 8004B968 240C0061 */  addiu      $t4, $zero, 0x61
/* 4C56C 8004B96C 05610003 */  bgez       $t3, .L8004B97C
/* 4C570 8004B970 240D0062 */   addiu     $t5, $zero, 0x62
/* 4C574 8004B974 10000002 */  b          .L8004B980
/* 4C578 8004B978 AC6C0170 */   sw        $t4, 0x170($v1)
.L8004B97C:
/* 4C57C 8004B97C AC6D0170 */  sw         $t5, 0x170($v1)
.L8004B980:
/* 4C580 8004B980 906400D1 */  lbu        $a0, 0xd1($v1)
/* 4C584 8004B984 2401002A */  addiu      $at, $zero, 0x2a
/* 4C588 8004B988 14810008 */  bne        $a0, $at, .L8004B9AC
/* 4C58C 8004B98C AC60017C */   sw        $zero, 0x17c($v1)
/* 4C590 8004B990 8C6400EC */  lw         $a0, 0xec($v1)
/* 4C594 8004B994 0C0171B4 */  jal        func_8005C6D0
/* 4C598 8004B998 AFA30018 */   sw        $v1, 0x18($sp)
/* 4C59C 8004B99C 8FA30018 */  lw         $v1, 0x18($sp)
/* 4C5A0 8004B9A0 00000000 */  nop
/* 4C5A4 8004B9A4 906400D1 */  lbu        $a0, 0xd1($v1)
/* 4C5A8 8004B9A8 AC6200F0 */  sw         $v0, 0xf0($v1)
.L8004B9AC:
/* 4C5AC 8004B9AC 2401002B */  addiu      $at, $zero, 0x2b
/* 4C5B0 8004B9B0 14810004 */  bne        $a0, $at, .L8004B9C4
/* 4C5B4 8004B9B4 00000000 */   nop
/* 4C5B8 8004B9B8 8C6E00FC */  lw         $t6, 0xfc($v1)
/* 4C5BC 8004B9BC 00000000 */  nop
/* 4C5C0 8004B9C0 AC6E00F0 */  sw         $t6, 0xf0($v1)
.L8004B9C4:
/* 4C5C4 8004B9C4 8C7800EC */  lw         $t8, 0xec($v1)
/* 4C5C8 8004B9C8 3C013FE0 */  lui        $at, 0x3fe0
/* 4C5CC 8004B9CC 0018C823 */  negu       $t9, $t8
/* 4C5D0 8004B9D0 44992000 */  mtc1       $t9, $f4
/* 4C5D4 8004B9D4 44814800 */  mtc1       $at, $f9
/* 4C5D8 8004B9D8 468021A1 */  cvt.d.w    $f6, $f4
/* 4C5DC 8004B9DC 44804000 */  mtc1       $zero, $f8
/* 4C5E0 8004B9E0 8C690080 */  lw         $t1, 0x80($v1)
/* 4C5E4 8004B9E4 46283282 */  mul.d      $f10, $f6, $f8
/* 4C5E8 8004B9E8 846F00F0 */  lh         $t7, 0xf0($v1)
/* 4C5EC 8004B9EC 240D0001 */  addiu      $t5, $zero, 1
/* 4C5F0 8004B9F0 AC600158 */  sw         $zero, 0x158($v1)
/* 4C5F4 8004B9F4 A06D00D0 */  sb         $t5, 0xd0($v1)
/* 4C5F8 8004B9F8 4448F800 */  cfc1       $t0, $31
/* 4C5FC 8004B9FC AC6F015C */  sw         $t7, 0x15c($v1)
/* 4C600 8004BA00 35010003 */  ori        $at, $t0, 3
/* 4C604 8004BA04 38210002 */  xori       $at, $at, 2
/* 4C608 8004BA08 44C1F800 */  ctc1       $at, $31
/* 4C60C 8004BA0C 3C01FF3C */  lui        $at, 0xff3c
/* 4C610 8004BA10 3421FFFF */  ori        $at, $at, 0xffff
/* 4C614 8004BA14 01215024 */  and        $t2, $t1, $at
/* 4C618 8004BA18 46205424 */  cvt.w.d    $f16, $f10
/* 4C61C 8004BA1C 3C010002 */  lui        $at, 2
/* 4C620 8004BA20 01416025 */  or         $t4, $t2, $at
/* 4C624 8004BA24 AC6A0080 */  sw         $t2, 0x80($v1)
/* 4C628 8004BA28 44C8F800 */  ctc1       $t0, $31
/* 4C62C 8004BA2C E47000EC */  swc1       $f16, 0xec($v1)
/* 4C630 8004BA30 10000031 */  b          .L8004BAF8
/* 4C634 8004BA34 AC6C0080 */   sw        $t4, 0x80($v1)
.L8004BA38:
/* 4C638 8004BA38 0C012325 */  jal        func_80048C94
/* 4C63C 8004BA3C AFA30018 */   sw        $v1, 0x18($sp)
/* 4C640 8004BA40 8FA30018 */  lw         $v1, 0x18($sp)
/* 4C644 8004BA44 3C05FFFA */  lui        $a1, 0xfffa
/* 4C648 8004BA48 8C6400F0 */  lw         $a0, 0xf0($v1)
/* 4C64C 8004BA4C 0C00A607 */  jal        func_8002981C
/* 4C650 8004BA50 00403025 */   or        $a2, $v0, $zero
/* 4C654 8004BA54 8FA30018 */  lw         $v1, 0x18($sp)
/* 4C658 8004BA58 00002825 */  or         $a1, $zero, $zero
/* 4C65C 8004BA5C 8C64015C */  lw         $a0, 0x15c($v1)
/* 4C660 8004BA60 2406FFF2 */  addiu      $a2, $zero, -0xe
/* 4C664 8004BA64 28810004 */  slti       $at, $a0, 4
/* 4C668 8004BA68 10200005 */  beqz       $at, .L8004BA80
/* 4C66C 8004BA6C AC6200F0 */   sw        $v0, 0xf0($v1)
/* 4C670 8004BA70 8C6E0158 */  lw         $t6, 0x158($v1)
/* 4C674 8004BA74 8C64015C */  lw         $a0, 0x15c($v1)
/* 4C678 8004BA78 25CF0001 */  addiu      $t7, $t6, 1
/* 4C67C 8004BA7C AC6F0158 */  sw         $t7, 0x158($v1)
.L8004BA80:
/* 4C680 8004BA80 8C780158 */  lw         $t8, 0x158($v1)
/* 4C684 8004BA84 00000000 */  nop
/* 4C688 8004BA88 0304082A */  slt        $at, $t8, $a0
/* 4C68C 8004BA8C 14200006 */  bnez       $at, .L8004BAA8
/* 4C690 8004BA90 97A40022 */   lhu       $a0, 0x22($sp)
/* 4C694 8004BA94 80790170 */  lb         $t9, 0x170($v1)
/* 4C698 8004BA98 00000000 */  nop
/* 4C69C 8004BA9C 27280001 */  addiu      $t0, $t9, 1
/* 4C6A0 8004BAA0 A0680170 */  sb         $t0, 0x170($v1)
/* 4C6A4 8004BAA4 97A40022 */  lhu        $a0, 0x22($sp)
.L8004BAA8:
/* 4C6A8 8004BAA8 0C01246E */  jal        func_800491B8
/* 4C6AC 8004BAAC AFA30018 */   sw        $v1, 0x18($sp)
/* 4C6B0 8004BAB0 8FA30018 */  lw         $v1, 0x18($sp)
/* 4C6B4 8004BAB4 1040000A */  beqz       $v0, .L8004BAE0
/* 4C6B8 8004BAB8 3C01FFFA */   lui       $at, 0xfffa
/* 4C6BC 8004BABC 8C690080 */  lw         $t1, 0x80($v1)
/* 4C6C0 8004BAC0 240B0006 */  addiu      $t3, $zero, 6
/* 4C6C4 8004BAC4 00095180 */  sll        $t2, $t1, 6
/* 4C6C8 8004BAC8 05410003 */  bgez       $t2, .L8004BAD8
/* 4C6CC 8004BACC 240C0005 */   addiu     $t4, $zero, 5
/* 4C6D0 8004BAD0 10000009 */  b          .L8004BAF8
/* 4C6D4 8004BAD4 A46B00D0 */   sh        $t3, 0xd0($v1)
.L8004BAD8:
/* 4C6D8 8004BAD8 10000007 */  b          .L8004BAF8
/* 4C6DC 8004BADC A46C00D0 */   sh        $t4, 0xd0($v1)
.L8004BAE0:
/* 4C6E0 8004BAE0 8C6D00F0 */  lw         $t5, 0xf0($v1)
/* 4C6E4 8004BAE4 34210001 */  ori        $at, $at, 1
/* 4C6E8 8004BAE8 01A1082A */  slt        $at, $t5, $at
/* 4C6EC 8004BAEC 10200002 */  beqz       $at, .L8004BAF8
/* 4C6F0 8004BAF0 240E0016 */   addiu     $t6, $zero, 0x16
/* 4C6F4 8004BAF4 A46E00D0 */  sh         $t6, 0xd0($v1)
.L8004BAF8:
/* 4C6F8 8004BAF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4C6FC 8004BAFC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4C700 8004BB00 03E00008 */  jr         $ra
/* 4C704 8004BB04 00000000 */   nop
