glabel func_8008EB44
/* 8F744 8008EB44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F748 8008EB48 AFA40018 */  sw         $a0, 0x18($sp)
/* 8F74C 8008EB4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F750 8008EB50 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8F754 8008EB54 0C023A93 */  jal        func_8008EA4C
/* 8F758 8008EB58 00000000 */   nop
/* 8F75C 8008EB5C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8F760 8008EB60 3C18800F */  lui        $t8, 0x800f
/* 8F764 8008EB64 000E7880 */  sll        $t7, $t6, 2
/* 8F768 8008EB68 01EE7823 */  subu       $t7, $t7, $t6
/* 8F76C 8008EB6C 000F7880 */  sll        $t7, $t7, 2
/* 8F770 8008EB70 01EE7821 */  addu       $t7, $t7, $t6
/* 8F774 8008EB74 000F7880 */  sll        $t7, $t7, 2
/* 8F778 8008EB78 01EE7823 */  subu       $t7, $t7, $t6
/* 8F77C 8008EB7C 000F78C0 */  sll        $t7, $t7, 3
/* 8F780 8008EB80 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8F784 8008EB84 01F81021 */  addu       $v0, $t7, $t8
/* 8F788 8008EB88 8C480080 */  lw         $t0, 0x80($v0)
/* 8F78C 8008EB8C 3C01FFFF */  lui        $at, 0xffff
/* 8F790 8008EB90 8C4400F8 */  lw         $a0, 0xf8($v0)
/* 8F794 8008EB94 3421747F */  ori        $at, $at, 0x747f
/* 8F798 8008EB98 24190007 */  addiu      $t9, $zero, 7
/* 8F79C 8008EB9C 01014824 */  and        $t1, $t0, $at
/* 8F7A0 8008EBA0 AC400170 */  sw         $zero, 0x170($v0)
/* 8F7A4 8008EBA4 A45900D4 */  sh         $t9, 0xd4($v0)
/* 8F7A8 8008EBA8 AC490080 */  sw         $t1, 0x80($v0)
/* 8F7AC 8008EBAC AC4000EC */  sw         $zero, 0xec($v0)
/* 8F7B0 8008EBB0 1080000B */  beqz       $a0, .L8008EBE0
/* 8F7B4 8008EBB4 AC4000F0 */   sw        $zero, 0xf0($v0)
/* 8F7B8 8008EBB8 31230020 */  andi       $v1, $t1, 0x20
/* 8F7BC 8008EBBC 14600003 */  bnez       $v1, .L8008EBCC
/* 8F7C0 8008EBC0 01202825 */   or        $a1, $t1, $zero
/* 8F7C4 8008EBC4 1C800005 */  bgtz       $a0, .L8008EBDC
/* 8F7C8 8008EBC8 38AA0020 */   xori      $t2, $a1, 0x20
.L8008EBCC:
/* 8F7CC 8008EBCC 10600005 */  beqz       $v1, .L8008EBE4
/* 8F7D0 8008EBD0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8F7D4 8008EBD4 04810002 */  bgez       $a0, .L8008EBE0
/* 8F7D8 8008EBD8 38AA0020 */   xori      $t2, $a1, 0x20
.L8008EBDC:
/* 8F7DC 8008EBDC AC4A0080 */  sw         $t2, 0x80($v0)
.L8008EBE0:
/* 8F7E0 8008EBE0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008EBE4:
/* 8F7E4 8008EBE4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F7E8 8008EBE8 03E00008 */  jr         $ra
/* 8F7EC 8008EBEC 00000000 */   nop
