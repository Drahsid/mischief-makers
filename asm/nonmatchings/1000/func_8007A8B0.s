glabel func_8007A8B0
/* 7B4B0 8007A8B0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7B4B4 8007A8B4 000E7880 */  sll        $t7, $t6, 2
/* 7B4B8 8007A8B8 01EE7823 */  subu       $t7, $t7, $t6
/* 7B4BC 8007A8BC 000F7880 */  sll        $t7, $t7, 2
/* 7B4C0 8007A8C0 01EE7821 */  addu       $t7, $t7, $t6
/* 7B4C4 8007A8C4 000F7880 */  sll        $t7, $t7, 2
/* 7B4C8 8007A8C8 01EE7823 */  subu       $t7, $t7, $t6
/* 7B4CC 8007A8CC 3C18800F */  lui        $t8, %hi(gActors)
/* 7B4D0 8007A8D0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7B4D4 8007A8D4 000F78C0 */  sll        $t7, $t7, 3
/* 7B4D8 8007A8D8 01F81021 */  addu       $v0, $t7, $t8
/* 7B4DC 8007A8DC 8C590098 */  lw         $t9, 0x98($v0)
/* 7B4E0 8007A8E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7B4E4 8007A8E4 AFA40020 */  sw         $a0, 0x20($sp)
/* 7B4E8 8007A8E8 33280002 */  andi       $t0, $t9, 2
/* 7B4EC 8007A8EC 01C02025 */  or         $a0, $t6, $zero
/* 7B4F0 8007A8F0 11000090 */  beqz       $t0, .L8007AB34
/* 7B4F4 8007A8F4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 7B4F8 8007A8F8 8C430150 */  lw         $v1, 0x150($v0)
/* 7B4FC 8007A8FC 00000000 */  nop
/* 7B500 8007A900 00034AC0 */  sll        $t1, $v1, 0xb
/* 7B504 8007A904 0520008B */  bltz       $t1, .L8007AB34
/* 7B508 8007A908 00035280 */   sll       $t2, $v1, 0xa
/* 7B50C 8007A90C 0540008A */  bltz       $t2, .L8007AB38
/* 7B510 8007A910 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7B514 8007A914 8C4B0080 */  lw         $t3, 0x80($v0)
/* 7B518 8007A918 00000000 */  nop
/* 7B51C 8007A91C 316C8000 */  andi       $t4, $t3, 0x8000
/* 7B520 8007A920 15800085 */  bnez       $t4, .L8007AB38
/* 7B524 8007A924 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7B528 8007A928 904F00DD */  lbu        $t7, 0xdd($v0)
/* 7B52C 8007A92C 944D0094 */  lhu        $t5, 0x94($v0)
/* 7B530 8007A930 25F8FFFE */  addiu      $t8, $t7, -2
/* 7B534 8007A934 944300D6 */  lhu        $v1, 0xd6($v0)
/* 7B538 8007A938 2F010016 */  sltiu      $at, $t8, 0x16
/* 7B53C 8007A93C 31AEFFF7 */  andi       $t6, $t5, 0xfff7
/* 7B540 8007A940 1020001C */  beqz       $at, .L8007A9B4
/* 7B544 8007A944 A44E0094 */   sh        $t6, 0x94($v0)
/* 7B548 8007A948 0018C080 */  sll        $t8, $t8, 2
/* 7B54C 8007A94C 3C01800F */  lui        $at, %hi(D_800ECD38)
/* 7B550 8007A950 00380821 */  addu       $at, $at, $t8
/* 7B554 8007A954 8C38CD38 */  lw         $t8, %lo(D_800ECD38)($at)
/* 7B558 8007A958 00000000 */  nop
/* 7B55C 8007A95C 03000008 */  jr         $t8
/* 7B560 8007A960 00000000 */   nop
/* 7B564 8007A964 AFA20018 */  sw         $v0, 0x18($sp)
/* 7B568 8007A968 A7A3001E */  sh         $v1, 0x1e($sp)
/* 7B56C 8007A96C 0C00A2E4 */  jal        func_80028B90
/* 7B570 8007A970 A7A40022 */   sh        $a0, 0x22($sp)
/* 7B574 8007A974 8FA20018 */  lw         $v0, 0x18($sp)
/* 7B578 8007A978 97A3001E */  lhu        $v1, 0x1e($sp)
/* 7B57C 8007A97C 97A40022 */  lhu        $a0, 0x22($sp)
/* 7B580 8007A980 00000000 */  nop
/* 7B584 8007A984 0003C880 */  sll        $t9, $v1, 2
/* 7B588 8007A988 0323C823 */  subu       $t9, $t9, $v1
/* 7B58C 8007A98C 0019C880 */  sll        $t9, $t9, 2
/* 7B590 8007A990 0323C821 */  addu       $t9, $t9, $v1
/* 7B594 8007A994 0019C880 */  sll        $t9, $t9, 2
/* 7B598 8007A998 0323C823 */  subu       $t9, $t9, $v1
/* 7B59C 8007A99C 0019C8C0 */  sll        $t9, $t9, 3
/* 7B5A0 8007A9A0 3C08800F */  lui        $t0, %hi(D_800EF60C)
/* 7B5A4 8007A9A4 01194021 */  addu       $t0, $t0, $t9
/* 7B5A8 8007A9A8 8D08F60C */  lw         $t0, %lo(D_800EF60C)($t0)
/* 7B5AC 8007A9AC 00000000 */  nop
/* 7B5B0 8007A9B0 AC4800FC */  sw         $t0, 0xfc($v0)
.L8007A9B4:
/* 7B5B4 8007A9B4 44802000 */  mtc1       $zero, $f4
/* 7B5B8 8007A9B8 0C01EA13 */  jal        func_8007A84C
/* 7B5BC 8007A9BC E4440114 */   swc1      $f4, 0x114($v0)
/* 7B5C0 8007A9C0 1000005D */  b          .L8007AB38
/* 7B5C4 8007A9C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7B5C8 8007A9C8 AFA20018 */  sw         $v0, 0x18($sp)
/* 7B5CC 8007A9CC A7A3001E */  sh         $v1, 0x1e($sp)
/* 7B5D0 8007A9D0 0C00A2E4 */  jal        func_80028B90
/* 7B5D4 8007A9D4 A7A40022 */   sh        $a0, 0x22($sp)
/* 7B5D8 8007A9D8 8FA20018 */  lw         $v0, 0x18($sp)
/* 7B5DC 8007A9DC 97A3001E */  lhu        $v1, 0x1e($sp)
/* 7B5E0 8007A9E0 97A40022 */  lhu        $a0, 0x22($sp)
/* 7B5E4 8007A9E4 00000000 */  nop
/* 7B5E8 8007A9E8 00034880 */  sll        $t1, $v1, 2
/* 7B5EC 8007A9EC 01234823 */  subu       $t1, $t1, $v1
/* 7B5F0 8007A9F0 00094880 */  sll        $t1, $t1, 2
/* 7B5F4 8007A9F4 01234821 */  addu       $t1, $t1, $v1
/* 7B5F8 8007A9F8 00094880 */  sll        $t1, $t1, 2
/* 7B5FC 8007A9FC 01234823 */  subu       $t1, $t1, $v1
/* 7B600 8007AA00 000948C0 */  sll        $t1, $t1, 3
/* 7B604 8007AA04 3C0A800F */  lui        $t2, %hi(D_800EF60C)
/* 7B608 8007AA08 01495021 */  addu       $t2, $t2, $t1
/* 7B60C 8007AA0C 8D4AF60C */  lw         $t2, %lo(D_800EF60C)($t2)
/* 7B610 8007AA10 00000000 */  nop
/* 7B614 8007AA14 AC4A00FC */  sw         $t2, 0xfc($v0)
/* 7B618 8007AA18 3C013F80 */  lui        $at, 0x3f80
/* 7B61C 8007AA1C 44813000 */  mtc1       $at, $f6
/* 7B620 8007AA20 0C01EA13 */  jal        func_8007A84C
/* 7B624 8007AA24 E4460114 */   swc1      $f6, 0x114($v0)
/* 7B628 8007AA28 0C000CD3 */  jal        func_8000334C
/* 7B62C 8007AA2C 2404009D */   addiu     $a0, $zero, 0x9d
/* 7B630 8007AA30 10000041 */  b          .L8007AB38
/* 7B634 8007AA34 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7B638 8007AA38 AFA20018 */  sw         $v0, 0x18($sp)
/* 7B63C 8007AA3C A7A3001E */  sh         $v1, 0x1e($sp)
/* 7B640 8007AA40 0C00A2E4 */  jal        func_80028B90
/* 7B644 8007AA44 A7A40022 */   sh        $a0, 0x22($sp)
/* 7B648 8007AA48 8FA20018 */  lw         $v0, 0x18($sp)
/* 7B64C 8007AA4C 97A3001E */  lhu        $v1, 0x1e($sp)
/* 7B650 8007AA50 97A40022 */  lhu        $a0, 0x22($sp)
/* 7B654 8007AA54 00000000 */  nop
/* 7B658 8007AA58 00035880 */  sll        $t3, $v1, 2
/* 7B65C 8007AA5C 01635823 */  subu       $t3, $t3, $v1
/* 7B660 8007AA60 000B5880 */  sll        $t3, $t3, 2
/* 7B664 8007AA64 01635821 */  addu       $t3, $t3, $v1
/* 7B668 8007AA68 000B5880 */  sll        $t3, $t3, 2
/* 7B66C 8007AA6C 01635823 */  subu       $t3, $t3, $v1
/* 7B670 8007AA70 000B58C0 */  sll        $t3, $t3, 3
/* 7B674 8007AA74 3C0C800F */  lui        $t4, %hi(D_800EF60C)
/* 7B678 8007AA78 018B6021 */  addu       $t4, $t4, $t3
/* 7B67C 8007AA7C 8D8CF60C */  lw         $t4, %lo(D_800EF60C)($t4)
/* 7B680 8007AA80 00000000 */  nop
/* 7B684 8007AA84 AC4C00FC */  sw         $t4, 0xfc($v0)
/* 7B688 8007AA88 3C013F80 */  lui        $at, 0x3f80
/* 7B68C 8007AA8C 44814000 */  mtc1       $at, $f8
/* 7B690 8007AA90 0C01EA13 */  jal        func_8007A84C
/* 7B694 8007AA94 E4480114 */   swc1      $f8, 0x114($v0)
/* 7B698 8007AA98 0C000CD3 */  jal        func_8000334C
/* 7B69C 8007AA9C 2404009D */   addiu     $a0, $zero, 0x9d
/* 7B6A0 8007AAA0 10000025 */  b          .L8007AB38
/* 7B6A4 8007AAA4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7B6A8 8007AAA8 AFA20018 */  sw         $v0, 0x18($sp)
/* 7B6AC 8007AAAC A7A3001E */  sh         $v1, 0x1e($sp)
/* 7B6B0 8007AAB0 0C00A2E4 */  jal        func_80028B90
/* 7B6B4 8007AAB4 A7A40022 */   sh        $a0, 0x22($sp)
/* 7B6B8 8007AAB8 8FA20018 */  lw         $v0, 0x18($sp)
/* 7B6BC 8007AABC 97A3001E */  lhu        $v1, 0x1e($sp)
/* 7B6C0 8007AAC0 97A40022 */  lhu        $a0, 0x22($sp)
/* 7B6C4 8007AAC4 00000000 */  nop
/* 7B6C8 8007AAC8 00036880 */  sll        $t5, $v1, 2
/* 7B6CC 8007AACC 01A36823 */  subu       $t5, $t5, $v1
/* 7B6D0 8007AAD0 000D6880 */  sll        $t5, $t5, 2
/* 7B6D4 8007AAD4 01A36821 */  addu       $t5, $t5, $v1
/* 7B6D8 8007AAD8 000D6880 */  sll        $t5, $t5, 2
/* 7B6DC 8007AADC 01A36823 */  subu       $t5, $t5, $v1
/* 7B6E0 8007AAE0 000D68C0 */  sll        $t5, $t5, 3
/* 7B6E4 8007AAE4 3C0E800F */  lui        $t6, %hi(D_800EF60C)
/* 7B6E8 8007AAE8 01CD7021 */  addu       $t6, $t6, $t5
/* 7B6EC 8007AAEC 8DCEF60C */  lw         $t6, %lo(D_800EF60C)($t6)
/* 7B6F0 8007AAF0 00000000 */  nop
/* 7B6F4 8007AAF4 AC4E00FC */  sw         $t6, 0xfc($v0)
/* 7B6F8 8007AAF8 3C013F80 */  lui        $at, 0x3f80
/* 7B6FC 8007AAFC 44815000 */  mtc1       $at, $f10
/* 7B700 8007AB00 0C01EA13 */  jal        func_8007A84C
/* 7B704 8007AB04 E44A0114 */   swc1      $f10, 0x114($v0)
/* 7B708 8007AB08 0C000CD3 */  jal        func_8000334C
/* 7B70C 8007AB0C 2404009D */   addiu     $a0, $zero, 0x9d
/* 7B710 8007AB10 10000009 */  b          .L8007AB38
/* 7B714 8007AB14 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7B718 8007AB18 2404009D */  addiu      $a0, $zero, 0x9d
/* 7B71C 8007AB1C 0C000CD3 */  jal        func_8000334C
/* 7B720 8007AB20 AFA20018 */   sw        $v0, 0x18($sp)
/* 7B724 8007AB24 8FA20018 */  lw         $v0, 0x18($sp)
/* 7B728 8007AB28 00000000 */  nop
/* 7B72C 8007AB2C AC400080 */  sw         $zero, 0x80($v0)
/* 7B730 8007AB30 A44000E0 */  sh         $zero, 0xe0($v0)
.L8007AB34:
/* 7B734 8007AB34 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007AB38:
/* 7B738 8007AB38 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7B73C 8007AB3C 03E00008 */  jr         $ra
/* 7B740 8007AB40 00000000 */   nop
