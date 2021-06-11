glabel func_8003EC0C
/* 3F80C 8003EC0C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F810 8003EC10 87A9003A */  lh         $t1, 0x3a($sp)
/* 3F814 8003EC14 AFA5002C */  sw         $a1, 0x2c($sp)
/* 3F818 8003EC18 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3F81C 8003EC1C AFA40028 */  sw         $a0, 0x28($sp)
/* 3F820 8003EC20 AFA60030 */  sw         $a2, 0x30($sp)
/* 3F824 8003EC24 AFA70034 */  sw         $a3, 0x34($sp)
/* 3F828 8003EC28 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3F82C 8003EC2C 00067C00 */  sll        $t7, $a2, 0x10
/* 3F830 8003EC30 0007CC00 */  sll        $t9, $a3, 0x10
/* 3F834 8003EC34 3C05800E */  lui        $a1, %hi(D_800E1380)
/* 3F838 8003EC38 00193C03 */  sra        $a3, $t9, 0x10
/* 3F83C 8003EC3C 000F3403 */  sra        $a2, $t7, 0x10
/* 3F840 8003EC40 01C02025 */  or         $a0, $t6, $zero
/* 3F844 8003EC44 24A51380 */  addiu      $a1, $a1, %lo(D_800E1380)
/* 3F848 8003EC48 0C00F546 */  jal        func_8003D518
/* 3F84C 8003EC4C AFA90010 */   sw        $t1, 0x10($sp)
/* 3F850 8003EC50 10400039 */  beqz       $v0, .L8003ED38
/* 3F854 8003EC54 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3F858 8003EC58 00045080 */  sll        $t2, $a0, 2
/* 3F85C 8003EC5C 01445023 */  subu       $t2, $t2, $a0
/* 3F860 8003EC60 000A5080 */  sll        $t2, $t2, 2
/* 3F864 8003EC64 01445021 */  addu       $t2, $t2, $a0
/* 3F868 8003EC68 000A5080 */  sll        $t2, $t2, 2
/* 3F86C 8003EC6C 01445023 */  subu       $t2, $t2, $a0
/* 3F870 8003EC70 3C0B800F */  lui        $t3, %hi(gActors)
/* 3F874 8003EC74 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 3F878 8003EC78 000A50C0 */  sll        $t2, $t2, 3
/* 3F87C 8003EC7C 014B1821 */  addu       $v1, $t2, $t3
/* 3F880 8003EC80 8C6D0080 */  lw         $t5, 0x80($v1)
/* 3F884 8003EC84 240C0209 */  addiu      $t4, $zero, 0x209
/* 3F888 8003EC88 240F01D6 */  addiu      $t7, $zero, 0x1d6
/* 3F88C 8003EC8C 35AE8000 */  ori        $t6, $t5, 0x8000
/* 3F890 8003EC90 A46C0094 */  sh         $t4, 0x94($v1)
/* 3F894 8003EC94 AC6E0080 */  sw         $t6, 0x80($v1)
/* 3F898 8003EC98 A46F0084 */  sh         $t7, 0x84($v1)
/* 3F89C 8003EC9C 0C0005E3 */  jal        func_8000178C
/* 3F8A0 8003ECA0 AFA30020 */   sw        $v1, 0x20($sp)
/* 3F8A4 8003ECA4 8FA30020 */  lw         $v1, 0x20($sp)
/* 3F8A8 8003ECA8 30580001 */  andi       $t8, $v0, 1
/* 3F8AC 8003ECAC 13000005 */  beqz       $t8, .L8003ECC4
/* 3F8B0 8003ECB0 3C014000 */   lui       $at, 0x4000
/* 3F8B4 8003ECB4 3C19800E */  lui        $t9, %hi(D_800D8528)
/* 3F8B8 8003ECB8 27398528 */  addiu      $t9, $t9, %lo(D_800D8528)
/* 3F8BC 8003ECBC 10000004 */  b          .L8003ECD0
/* 3F8C0 8003ECC0 AC79018C */   sw        $t9, 0x18c($v1)
.L8003ECC4:
/* 3F8C4 8003ECC4 3C08800E */  lui        $t0, %hi(D_800D8608)
/* 3F8C8 8003ECC8 25088608 */  addiu      $t0, $t0, %lo(D_800D8608)
/* 3F8CC 8003ECCC AC68018C */  sw         $t0, 0x18c($v1)
.L8003ECD0:
/* 3F8D0 8003ECD0 44811000 */  mtc1       $at, $f2
/* 3F8D4 8003ECD4 3C014140 */  lui        $at, 0x4140
/* 3F8D8 8003ECD8 44800000 */  mtc1       $zero, $f0
/* 3F8DC 8003ECDC 44812000 */  mtc1       $at, $f4
/* 3F8E0 8003ECE0 3C09800C */  lui        $t1, %hi(D_800BE4E0)
/* 3F8E4 8003ECE4 E46200B4 */  swc1       $f2, 0xb4($v1)
/* 3F8E8 8003ECE8 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 3F8EC 8003ECEC E4600144 */  swc1       $f0, 0x144($v1)
/* 3F8F0 8003ECF0 E4640140 */  swc1       $f4, 0x140($v1)
/* 3F8F4 8003ECF4 9529E4E0 */  lhu        $t1, %lo(D_800BE4E0)($t1)
/* 3F8F8 8003ECF8 97AC002E */  lhu        $t4, 0x2e($sp)
/* 3F8FC 8003ECFC 312A000F */  andi       $t2, $t1, 0xf
/* 3F900 8003ED00 000A5D80 */  sll        $t3, $t2, 0x16
/* 3F904 8003ED04 3C0E800D */  lui        $t6, %hi(D_800D282C)
/* 3F908 8003ED08 000C6840 */  sll        $t5, $t4, 1
/* 3F90C 8003ED0C AC6B0160 */  sw         $t3, 0x160($v1)
/* 3F910 8003ED10 01CD7021 */  addu       $t6, $t6, $t5
/* 3F914 8003ED14 95CE282C */  lhu        $t6, %lo(D_800D282C)($t6)
/* 3F918 8003ED18 3C01FFFC */  lui        $at, 0xfffc
/* 3F91C 8003ED1C 000E7C00 */  sll        $t7, $t6, 0x10
/* 3F920 8003ED20 01E1C021 */  addu       $t8, $t7, $at
/* 3F924 8003ED24 2419FFC0 */  addiu      $t9, $zero, -0x40
/* 3F928 8003ED28 AC780150 */  sw         $t8, 0x150($v1)
/* 3F92C 8003ED2C AC790154 */  sw         $t9, 0x154($v1)
/* 3F930 8003ED30 E4600110 */  swc1       $f0, 0x110($v1)
/* 3F934 8003ED34 E4600114 */  swc1       $f0, 0x114($v1)
.L8003ED38:
/* 3F938 8003ED38 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3F93C 8003ED3C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3F940 8003ED40 03E00008 */  jr         $ra
/* 3F944 8003ED44 00000000 */   nop
