glabel func_8008ECDC
/* 8F8DC 8008ECDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8F8E0 8008ECE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F8E4 8008ECE4 AFA40020 */  sw         $a0, 0x20($sp)
/* 8F8E8 8008ECE8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F8EC 8008ECEC 01C02025 */  or         $a0, $t6, $zero
/* 8F8F0 8008ECF0 0C023AD1 */  jal        func_8008EB44
/* 8F8F4 8008ECF4 A7AE0022 */   sh        $t6, 0x22($sp)
/* 8F8F8 8008ECF8 97A40022 */  lhu        $a0, 0x22($sp)
/* 8F8FC 8008ECFC 3C03800F */  lui        $v1, 0x800f
/* 8F900 8008ED00 00047880 */  sll        $t7, $a0, 2
/* 8F904 8008ED04 01E47823 */  subu       $t7, $t7, $a0
/* 8F908 8008ED08 00044080 */  sll        $t0, $a0, 2
/* 8F90C 8008ED0C 000F7880 */  sll        $t7, $t7, 2
/* 8F910 8008ED10 01044023 */  subu       $t0, $t0, $a0
/* 8F914 8008ED14 00084080 */  sll        $t0, $t0, 2
/* 8F918 8008ED18 01E47821 */  addu       $t7, $t7, $a0
/* 8F91C 8008ED1C 000F7880 */  sll        $t7, $t7, 2
/* 8F920 8008ED20 01044021 */  addu       $t0, $t0, $a0
/* 8F924 8008ED24 00084080 */  sll        $t0, $t0, 2
/* 8F928 8008ED28 01E47823 */  subu       $t7, $t7, $a0
/* 8F92C 8008ED2C 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 8F930 8008ED30 000F78C0 */  sll        $t7, $t7, 3
/* 8F934 8008ED34 01044023 */  subu       $t0, $t0, $a0
/* 8F938 8008ED38 006F1021 */  addu       $v0, $v1, $t7
/* 8F93C 8008ED3C 24180200 */  addiu      $t8, $zero, 0x200
/* 8F940 8008ED40 000840C0 */  sll        $t0, $t0, 3
/* 8F944 8008ED44 3C19800F */  lui        $t9, %hi(D_800E8D8C)
/* 8F948 8008ED48 A45800D0 */  sh         $t8, 0xd0($v0)
/* 8F94C 8008ED4C 27398D8C */  addiu      $t9, $t9, %lo(D_800E8D8C)
/* 8F950 8008ED50 00684821 */  addu       $t1, $v1, $t0
/* 8F954 8008ED54 AD390978 */  sw         $t9, 0x978($t1)
/* 8F958 8008ED58 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8F95C 8008ED5C 0C00A880 */  jal        func_8002A200
/* 8F960 8008ED60 3C050004 */   lui       $a1, 4
/* 8F964 8008ED64 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8F968 8008ED68 3C010002 */  lui        $at, 2
/* 8F96C 8008ED6C 8C4B0080 */  lw         $t3, 0x80($v0)
/* 8F970 8008ED70 8C4F0098 */  lw         $t7, 0x98($v0)
/* 8F974 8008ED74 01616025 */  or         $t4, $t3, $at
/* 8F978 8008ED78 3C01FFFE */  lui        $at, 0xfffe
/* 8F97C 8008ED7C 3421FFFF */  ori        $at, $at, 0xffff
/* 8F980 8008ED80 01817024 */  and        $t6, $t4, $at
/* 8F984 8008ED84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F988 8008ED88 3C0A0002 */  lui        $t2, 2
/* 8F98C 8008ED8C 2401FFDF */  addiu      $at, $zero, -0x21
/* 8F990 8008ED90 354A8000 */  ori        $t2, $t2, 0x8000
/* 8F994 8008ED94 AC4C0080 */  sw         $t4, 0x80($v0)
/* 8F998 8008ED98 01E1C024 */  and        $t8, $t7, $at
/* 8F99C 8008ED9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8F9A0 8008EDA0 AC4A00FC */  sw         $t2, 0xfc($v0)
/* 8F9A4 8008EDA4 AC580098 */  sw         $t8, 0x98($v0)
/* 8F9A8 8008EDA8 03E00008 */  jr         $ra
/* 8F9AC 8008EDAC AC4E0080 */   sw        $t6, 0x80($v0)
