glabel func_8008EBF0
/* 8F7F0 8008EBF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F7F4 8008EBF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F7F8 8008EBF8 AFA40018 */  sw         $a0, 0x18($sp)
/* 8F7FC 8008EBFC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F800 8008EC00 01C02025 */  or         $a0, $t6, $zero
/* 8F804 8008EC04 0C023AD1 */  jal        func_8008EB44
/* 8F808 8008EC08 A7AE001A */   sh        $t6, 0x1a($sp)
/* 8F80C 8008EC0C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8F810 8008EC10 0C00A880 */  jal        func_8002A200
/* 8F814 8008EC14 3C050002 */   lui       $a1, 2
/* 8F818 8008EC18 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8F81C 8008EC1C 3C03800F */  lui        $v1, 0x800f
/* 8F820 8008EC20 00047880 */  sll        $t7, $a0, 2
/* 8F824 8008EC24 01E47823 */  subu       $t7, $t7, $a0
/* 8F828 8008EC28 000F7880 */  sll        $t7, $t7, 2
/* 8F82C 8008EC2C 01E47821 */  addu       $t7, $t7, $a0
/* 8F830 8008EC30 000F7880 */  sll        $t7, $t7, 2
/* 8F834 8008EC34 01E47823 */  subu       $t7, $t7, $a0
/* 8F838 8008EC38 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 8F83C 8008EC3C 000F78C0 */  sll        $t7, $t7, 3
/* 8F840 8008EC40 006F1021 */  addu       $v0, $v1, $t7
/* 8F844 8008EC44 8C580080 */  lw         $t8, 0x80($v0)
/* 8F848 8008EC48 240D01E0 */  addiu      $t5, $zero, 0x1e0
/* 8F84C 8008EC4C 0018CB80 */  sll        $t9, $t8, 0xe
/* 8F850 8008EC50 07210012 */  bgez       $t9, .L8008EC9C
/* 8F854 8008EC54 3C0E800F */   lui       $t6, 0x800f
/* 8F858 8008EC58 00045880 */  sll        $t3, $a0, 2
/* 8F85C 8008EC5C 01645823 */  subu       $t3, $t3, $a0
/* 8F860 8008EC60 000B5880 */  sll        $t3, $t3, 2
/* 8F864 8008EC64 01645821 */  addu       $t3, $t3, $a0
/* 8F868 8008EC68 000B5880 */  sll        $t3, $t3, 2
/* 8F86C 8008EC6C 3C090001 */  lui        $t1, 1
/* 8F870 8008EC70 01645823 */  subu       $t3, $t3, $a0
/* 8F874 8008EC74 240801F0 */  addiu      $t0, $zero, 0x1f0
/* 8F878 8008EC78 35298000 */  ori        $t1, $t1, 0x8000
/* 8F87C 8008EC7C 000B58C0 */  sll        $t3, $t3, 3
/* 8F880 8008EC80 3C0A800F */  lui        $t2, %hi(D_800E8D8C)
/* 8F884 8008EC84 A44800D0 */  sh         $t0, 0xd0($v0)
/* 8F888 8008EC88 AC4900FC */  sw         $t1, 0xfc($v0)
/* 8F88C 8008EC8C 254A8D8C */  addiu      $t2, $t2, %lo(D_800E8D8C)
/* 8F890 8008EC90 006B6021 */  addu       $t4, $v1, $t3
/* 8F894 8008EC94 1000000D */  b          .L8008ECCC
/* 8F898 8008EC98 AD8A0978 */   sw        $t2, 0x978($t4)
.L8008EC9C:
/* 8F89C 8008EC9C 00047880 */  sll        $t7, $a0, 2
/* 8F8A0 8008ECA0 01E47823 */  subu       $t7, $t7, $a0
/* 8F8A4 8008ECA4 000F7880 */  sll        $t7, $t7, 2
/* 8F8A8 8008ECA8 01E47821 */  addu       $t7, $t7, $a0
/* 8F8AC 8008ECAC 000F7880 */  sll        $t7, $t7, 2
/* 8F8B0 8008ECB0 01E47823 */  subu       $t7, $t7, $a0
/* 8F8B4 8008ECB4 000F78C0 */  sll        $t7, $t7, 3
/* 8F8B8 8008ECB8 A44D00D0 */  sh         $t5, 0xd0($v0)
/* 8F8BC 8008ECBC AC4000FC */  sw         $zero, 0xfc($v0)
/* 8F8C0 8008ECC0 006FC021 */  addu       $t8, $v1, $t7
/* 8F8C4 8008ECC4 25CE8D8C */  addiu      $t6, $t6, -0x7274
/* 8F8C8 8008ECC8 AF0E0978 */  sw         $t6, 0x978($t8)
.L8008ECCC:
/* 8F8CC 8008ECCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F8D0 8008ECD0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F8D4 8008ECD4 03E00008 */  jr         $ra
/* 8F8D8 8008ECD8 00000000 */   nop
