glabel func_8001CD30
/* 1D930 8001CD30 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1D934 8001CD34 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D938 8001CD38 AFB00014 */  sw         $s0, 0x14($sp)
/* 1D93C 8001CD3C 3090FFFF */  andi       $s0, $a0, 0xffff
/* 1D940 8001CD40 AFB50028 */  sw         $s5, 0x28($sp)
/* 1D944 8001CD44 AFB40024 */  sw         $s4, 0x24($sp)
/* 1D948 8001CD48 AFB30020 */  sw         $s3, 0x20($sp)
/* 1D94C 8001CD4C AFB2001C */  sw         $s2, 0x1c($sp)
/* 1D950 8001CD50 AFB10018 */  sw         $s1, 0x18($sp)
/* 1D954 8001CD54 0C00730D */  jal        func_8001CC34
/* 1D958 8001CD58 AFA40040 */   sw        $a0, 0x40($sp)
/* 1D95C 8001CD5C 3052FFFF */  andi       $s2, $v0, 0xffff
/* 1D960 8001CD60 00008825 */  or         $s1, $zero, $zero
/* 1D964 8001CD64 27B50038 */  addiu      $s5, $sp, 0x38
/* 1D968 8001CD68 27B4003A */  addiu      $s4, $sp, 0x3a
/* 1D96C 8001CD6C 27B3003C */  addiu      $s3, $sp, 0x3c
.L8001CD70:
/* 1D970 8001CD70 0212082A */  slt        $at, $s0, $s2
/* 1D974 8001CD74 1020001A */  beqz       $at, .L8001CDE0
/* 1D978 8001CD78 3204FFFF */   andi      $a0, $s0, 0xffff
/* 1D97C 8001CD7C 02602825 */  or         $a1, $s3, $zero
/* 1D980 8001CD80 02803025 */  or         $a2, $s4, $zero
/* 1D984 8001CD84 0C006C1E */  jal        func_8001B078
/* 1D988 8001CD88 02A03825 */   or        $a3, $s5, $zero
/* 1D98C 8001CD8C 97AE003C */  lhu        $t6, 0x3c($sp)
/* 1D990 8001CD90 3224FFFF */  andi       $a0, $s1, 0xffff
/* 1D994 8001CD94 29C10006 */  slti       $at, $t6, 6
/* 1D998 8001CD98 14200004 */  bnez       $at, .L8001CDAC
/* 1D99C 8001CD9C 00000000 */   nop
/* 1D9A0 8001CDA0 26100001 */  addiu      $s0, $s0, 1
/* 1D9A4 8001CDA4 320FFFFF */  andi       $t7, $s0, 0xffff
/* 1D9A8 8001CDA8 01E08025 */  or         $s0, $t7, $zero
.L8001CDAC:
/* 1D9AC 8001CDAC 0C00722C */  jal        func_8001C8B0
/* 1D9B0 8001CDB0 3205FFFF */   andi      $a1, $s0, 0xffff
/* 1D9B4 8001CDB4 3224FFFF */  andi       $a0, $s1, 0xffff
/* 1D9B8 8001CDB8 0C00725F */  jal        func_8001C97C
/* 1D9BC 8001CDBC 3205FFFF */   andi      $a1, $s0, 0xffff
/* 1D9C0 8001CDC0 26310001 */  addiu      $s1, $s1, 1
/* 1D9C4 8001CDC4 3239FFFF */  andi       $t9, $s1, 0xffff
/* 1D9C8 8001CDC8 26100001 */  addiu      $s0, $s0, 1
/* 1D9CC 8001CDCC 2B210006 */  slti       $at, $t9, 6
/* 1D9D0 8001CDD0 3218FFFF */  andi       $t8, $s0, 0xffff
/* 1D9D4 8001CDD4 03208825 */  or         $s1, $t9, $zero
/* 1D9D8 8001CDD8 1420FFE5 */  bnez       $at, .L8001CD70
/* 1D9DC 8001CDDC 03008025 */   or        $s0, $t8, $zero
.L8001CDE0:
/* 1D9E0 8001CDE0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D9E4 8001CDE4 8FB00014 */  lw         $s0, 0x14($sp)
/* 1D9E8 8001CDE8 8FB10018 */  lw         $s1, 0x18($sp)
/* 1D9EC 8001CDEC 8FB2001C */  lw         $s2, 0x1c($sp)
/* 1D9F0 8001CDF0 8FB30020 */  lw         $s3, 0x20($sp)
/* 1D9F4 8001CDF4 8FB40024 */  lw         $s4, 0x24($sp)
/* 1D9F8 8001CDF8 8FB50028 */  lw         $s5, 0x28($sp)
/* 1D9FC 8001CDFC 03E00008 */  jr         $ra
/* 1DA00 8001CE00 27BD0040 */   addiu     $sp, $sp, 0x40
