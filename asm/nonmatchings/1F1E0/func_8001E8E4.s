glabel func_8001E8E4
/* 1F4E4 8001E8E4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1F4E8 8001E8E8 24070198 */  addiu      $a3, $zero, 0x198
/* 1F4EC 8001E8EC 01C70019 */  multu      $t6, $a3
/* 1F4F0 8001E8F0 3C06800F */  lui        $a2, %hi(gActors)
/* 1F4F4 8001E8F4 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 1F4F8 8001E8F8 AFA50004 */  sw         $a1, 4($sp)
/* 1F4FC 8001E8FC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 1F500 8001E900 01E02825 */  or         $a1, $t7, $zero
/* 1F504 8001E904 AFA40000 */  sw         $a0, ($sp)
/* 1F508 8001E908 0000C012 */  mflo       $t8
/* 1F50C 8001E90C 00D81021 */  addu       $v0, $a2, $t8
/* 1F510 8001E910 8C590080 */  lw         $t9, 0x80($v0)
/* 1F514 8001E914 00000000 */  nop
/* 1F518 8001E918 33280020 */  andi       $t0, $t9, 0x20
/* 1F51C 8001E91C 15000007 */  bnez       $t0, .L8001E93C
/* 1F520 8001E920 00000000 */   nop
/* 1F524 8001E924 01E70019 */  multu      $t7, $a3
/* 1F528 8001E928 8C4A00F8 */  lw         $t2, 0xf8($v0)
/* 1F52C 8001E92C 00004812 */  mflo       $t1
/* 1F530 8001E930 00C91821 */  addu       $v1, $a2, $t1
/* 1F534 8001E934 10000008 */  b          .L8001E958
/* 1F538 8001E938 AC6A00F8 */   sw        $t2, 0xf8($v1)
.L8001E93C:
/* 1F53C 8001E93C 00A70019 */  multu      $a1, $a3
/* 1F540 8001E940 8C4C00F8 */  lw         $t4, 0xf8($v0)
/* 1F544 8001E944 00000000 */  nop
/* 1F548 8001E948 000C6823 */  negu       $t5, $t4
/* 1F54C 8001E94C 00005812 */  mflo       $t3
/* 1F550 8001E950 00CB1821 */  addu       $v1, $a2, $t3
/* 1F554 8001E954 AC6D00F8 */  sw         $t5, 0xf8($v1)
.L8001E958:
/* 1F558 8001E958 8C4E00FC */  lw         $t6, 0xfc($v0)
/* 1F55C 8001E95C 03E00008 */  jr         $ra
/* 1F560 8001E960 AC6E00FC */   sw        $t6, 0xfc($v1)
