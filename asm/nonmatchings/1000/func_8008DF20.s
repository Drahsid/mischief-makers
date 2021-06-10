glabel func_8008DF20
/* 8EB20 8008DF20 3086FFFF */  andi       $a2, $a0, 0xffff
/* 8EB24 8008DF24 00067080 */  sll        $t6, $a2, 2
/* 8EB28 8008DF28 01C67023 */  subu       $t6, $t6, $a2
/* 8EB2C 8008DF2C 000E7080 */  sll        $t6, $t6, 2
/* 8EB30 8008DF30 01C67021 */  addu       $t6, $t6, $a2
/* 8EB34 8008DF34 000E7080 */  sll        $t6, $t6, 2
/* 8EB38 8008DF38 3C05800F */  lui        $a1, %hi(D_800EF510)
/* 8EB3C 8008DF3C 01C67023 */  subu       $t6, $t6, $a2
/* 8EB40 8008DF40 24A5F510 */  addiu      $a1, $a1, %lo(D_800EF510)
/* 8EB44 8008DF44 000E70C0 */  sll        $t6, $t6, 3
/* 8EB48 8008DF48 00AE1021 */  addu       $v0, $a1, $t6
/* 8EB4C 8008DF4C 944300D0 */  lhu        $v1, 0xd0($v0)
/* 8EB50 8008DF50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8EB54 8008DF54 28610061 */  slti       $at, $v1, 0x61
/* 8EB58 8008DF58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EB5C 8008DF5C 1420000B */  bnez       $at, .L8008DF8C
/* 8EB60 8008DF60 AFA40020 */   sw        $a0, 0x20($sp)
/* 8EB64 8008DF64 8C4F0098 */  lw         $t7, 0x98($v0)
/* 8EB68 8008DF68 00000000 */  nop
/* 8EB6C 8008DF6C 31F80002 */  andi       $t8, $t7, 2
/* 8EB70 8008DF70 13000006 */  beqz       $t8, .L8008DF8C
/* 8EB74 8008DF74 00000000 */   nop
/* 8EB78 8008DF78 845900E0 */  lh         $t9, 0xe0($v0)
/* 8EB7C 8008DF7C 0C023300 */  jal        func_8008CC00
/* 8EB80 8008DF80 A4B900E0 */   sh        $t9, 0xe0($a1)
/* 8EB84 8008DF84 10000083 */  b          .L8008E194
/* 8EB88 8008DF88 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008DF8C:
/* 8EB8C 8008DF8C 3C19800E */  lui        $t9, 0x800e
/* 8EB90 8008DF90 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 8EB94 8008DF94 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8EB98 8008DF98 A7A60022 */  sh         $a2, 0x22($sp)
/* 8EB9C 8008DF9C 04610003 */  bgez       $v1, .L8008DFAC
/* 8EBA0 8008DFA0 00034103 */   sra       $t0, $v1, 4
/* 8EBA4 8008DFA4 2461000F */  addiu      $at, $v1, 0xf
/* 8EBA8 8008DFA8 00014103 */  sra        $t0, $at, 4
.L8008DFAC:
/* 8EBAC 8008DFAC 00084880 */  sll        $t1, $t0, 2
/* 8EBB0 8008DFB0 0329C821 */  addu       $t9, $t9, $t1
/* 8EBB4 8008DFB4 8F395A80 */  lw         $t9, 0x5a80($t9)
/* 8EBB8 8008DFB8 00000000 */  nop
/* 8EBBC 8008DFBC 0320F809 */  jalr       $t9
/* 8EBC0 8008DFC0 00000000 */   nop
/* 8EBC4 8008DFC4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8EBC8 8008DFC8 3C05800F */  lui        $a1, %hi(D_800EF510)
/* 8EBCC 8008DFCC 944A00D0 */  lhu        $t2, 0xd0($v0)
/* 8EBD0 8008DFD0 97A60022 */  lhu        $a2, 0x22($sp)
/* 8EBD4 8008DFD4 29410061 */  slti       $at, $t2, 0x61
/* 8EBD8 8008DFD8 14200025 */  bnez       $at, .L8008E070
/* 8EBDC 8008DFDC 24A5F510 */   addiu     $a1, $a1, %lo(D_800EF510)
/* 8EBE0 8008DFE0 8C430184 */  lw         $v1, 0x184($v0)
/* 8EBE4 8008DFE4 3C070008 */  lui        $a3, 8
/* 8EBE8 8008DFE8 0067082A */  slt        $at, $v1, $a3
/* 8EBEC 8008DFEC 14200007 */  bnez       $at, .L8008E00C
/* 8EBF0 8008DFF0 3C04FFF8 */   lui       $a0, 0xfff8
/* 8EBF4 8008DFF4 3C0B0007 */  lui        $t3, 7
/* 8EBF8 8008DFF8 356BFFFF */  ori        $t3, $t3, 0xffff
/* 8EBFC 8008DFFC 3C04FFF8 */  lui        $a0, 0xfff8
/* 8EC00 8008E000 34840001 */  ori        $a0, $a0, 1
/* 8EC04 8008E004 10000008 */  b          .L8008E028
/* 8EC08 8008E008 AC4B00EC */   sw        $t3, 0xec($v0)
.L8008E00C:
/* 8EC0C 8008E00C 34840001 */  ori        $a0, $a0, 1
/* 8EC10 8008E010 0064082A */  slt        $at, $v1, $a0
/* 8EC14 8008E014 10200003 */  beqz       $at, .L8008E024
/* 8EC18 8008E018 00000000 */   nop
/* 8EC1C 8008E01C 10000002 */  b          .L8008E028
/* 8EC20 8008E020 AC4400EC */   sw        $a0, 0xec($v0)
.L8008E024:
/* 8EC24 8008E024 AC4300EC */  sw         $v1, 0xec($v0)
.L8008E028:
/* 8EC28 8008E028 8C430188 */  lw         $v1, 0x188($v0)
/* 8EC2C 8008E02C 3C0C0007 */  lui        $t4, 7
/* 8EC30 8008E030 0067082A */  slt        $at, $v1, $a3
/* 8EC34 8008E034 14200003 */  bnez       $at, .L8008E044
/* 8EC38 8008E038 358CFFFF */   ori       $t4, $t4, 0xffff
/* 8EC3C 8008E03C 10000007 */  b          .L8008E05C
/* 8EC40 8008E040 AC4C00F0 */   sw        $t4, 0xf0($v0)
.L8008E044:
/* 8EC44 8008E044 0064082A */  slt        $at, $v1, $a0
/* 8EC48 8008E048 10200003 */  beqz       $at, .L8008E058
/* 8EC4C 8008E04C 00000000 */   nop
/* 8EC50 8008E050 10000002 */  b          .L8008E05C
/* 8EC54 8008E054 AC4400F0 */   sw        $a0, 0xf0($v0)
.L8008E058:
/* 8EC58 8008E058 AC4300F0 */  sw         $v1, 0xf0($v0)
.L8008E05C:
/* 8EC5C 8008E05C 944300D4 */  lhu        $v1, 0xd4($v0)
/* 8EC60 8008E060 00000000 */  nop
/* 8EC64 8008E064 18600002 */  blez       $v1, .L8008E070
/* 8EC68 8008E068 246DFFFF */   addiu     $t5, $v1, -1
/* 8EC6C 8008E06C A44D00D4 */  sh         $t5, 0xd4($v0)
.L8008E070:
/* 8EC70 8008E070 944E00D0 */  lhu        $t6, 0xd0($v0)
/* 8EC74 8008E074 24180001 */  addiu      $t8, $zero, 1
/* 8EC78 8008E078 29C10021 */  slti       $at, $t6, 0x21
/* 8EC7C 8008E07C 1420003C */  bnez       $at, .L8008E170
/* 8EC80 8008E080 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 8EC84 8008E084 444FF800 */  cfc1       $t7, $31
/* 8EC88 8008E088 44D8F800 */  ctc1       $t8, $31
/* 8EC8C 8008E08C C4440110 */  lwc1       $f4, 0x110($v0)
/* 8EC90 8008E090 3C014F00 */  lui        $at, 0x4f00
/* 8EC94 8008E094 460021A4 */  cvt.w.s    $f6, $f4
/* 8EC98 8008E098 4458F800 */  cfc1       $t8, $31
/* 8EC9C 8008E09C 00000000 */  nop
/* 8ECA0 8008E0A0 33180078 */  andi       $t8, $t8, 0x78
/* 8ECA4 8008E0A4 13000012 */  beqz       $t8, .L8008E0F0
/* 8ECA8 8008E0A8 00000000 */   nop
/* 8ECAC 8008E0AC 44813000 */  mtc1       $at, $f6
/* 8ECB0 8008E0B0 24180001 */  addiu      $t8, $zero, 1
/* 8ECB4 8008E0B4 46062181 */  sub.s      $f6, $f4, $f6
/* 8ECB8 8008E0B8 3C018000 */  lui        $at, 0x8000
/* 8ECBC 8008E0BC 44D8F800 */  ctc1       $t8, $31
/* 8ECC0 8008E0C0 00000000 */  nop
/* 8ECC4 8008E0C4 460031A4 */  cvt.w.s    $f6, $f6
/* 8ECC8 8008E0C8 4458F800 */  cfc1       $t8, $31
/* 8ECCC 8008E0CC 00000000 */  nop
/* 8ECD0 8008E0D0 33180078 */  andi       $t8, $t8, 0x78
/* 8ECD4 8008E0D4 17000004 */  bnez       $t8, .L8008E0E8
/* 8ECD8 8008E0D8 00000000 */   nop
/* 8ECDC 8008E0DC 44183000 */  mfc1       $t8, $f6
/* 8ECE0 8008E0E0 10000007 */  b          .L8008E100
/* 8ECE4 8008E0E4 0301C025 */   or        $t8, $t8, $at
.L8008E0E8:
/* 8ECE8 8008E0E8 10000005 */  b          .L8008E100
/* 8ECEC 8008E0EC 2418FFFF */   addiu     $t8, $zero, -1
.L8008E0F0:
/* 8ECF0 8008E0F0 44183000 */  mfc1       $t8, $f6
/* 8ECF4 8008E0F4 00000000 */  nop
/* 8ECF8 8008E0F8 0700FFFB */  bltz       $t8, .L8008E0E8
/* 8ECFC 8008E0FC 00000000 */   nop
.L8008E100:
/* 8ED00 8008E100 44CFF800 */  ctc1       $t7, $31
/* 8ED04 8008E104 33098000 */  andi       $t1, $t8, 0x8000
/* 8ED08 8008E108 11200019 */  beqz       $t1, .L8008E170
/* 8ED0C 8008E10C 00000000 */   nop
/* 8ED10 8008E110 8CB90080 */  lw         $t9, 0x80($a1)
/* 8ED14 8008E114 2401FFDF */  addiu      $at, $zero, -0x21
/* 8ED18 8008E118 03215024 */  and        $t2, $t9, $at
/* 8ED1C 8008E11C ACAA0080 */  sw         $t2, 0x80($a1)
/* 8ED20 8008E120 8C4C0080 */  lw         $t4, 0x80($v0)
/* 8ED24 8008E124 3C08800C */  lui        $t0, 0x800c
/* 8ED28 8008E128 318D0020 */  andi       $t5, $t4, 0x20
/* 8ED2C 8008E12C 014D7025 */  or         $t6, $t2, $t5
/* 8ED30 8008E130 ACAE0080 */  sw         $t6, 0x80($a1)
/* 8ED34 8008E134 8C4F0088 */  lw         $t7, 0x88($v0)
/* 8ED38 8008E138 3C01800C */  lui        $at, 0x800c
/* 8ED3C 8008E13C ACAF0088 */  sw         $t7, 0x88($a1)
/* 8ED40 8008E140 8C58008C */  lw         $t8, 0x8c($v0)
/* 8ED44 8008E144 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 8ED48 8008E148 ACB8008C */  sw         $t8, 0x8c($a1)
/* 8ED4C 8008E14C 84490088 */  lh         $t1, 0x88($v0)
/* 8ED50 8008E150 8508E558 */  lh         $t0, -0x1aa8($t0)
/* 8ED54 8008E154 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 8ED58 8008E158 0109C821 */  addu       $t9, $t0, $t1
/* 8ED5C 8008E15C A439E5D8 */  sh         $t9, -0x1a28($at)
/* 8ED60 8008E160 844C008C */  lh         $t4, 0x8c($v0)
/* 8ED64 8008E164 3C01800C */  lui        $at, %hi(D_800BE5DC)
/* 8ED68 8008E168 014C5821 */  addu       $t3, $t2, $t4
/* 8ED6C 8008E16C A42BE5DC */  sh         $t3, %lo(D_800BE5DC)($at)
.L8008E170:
/* 8ED70 8008E170 0C023324 */  jal        func_8008CC90
/* 8ED74 8008E174 AFA2001C */   sw        $v0, 0x1c($sp)
/* 8ED78 8008E178 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8ED7C 8008E17C 3C01FFDF */  lui        $at, 0xffdf
/* 8ED80 8008E180 8C4D0098 */  lw         $t5, 0x98($v0)
/* 8ED84 8008E184 3421F9FF */  ori        $at, $at, 0xf9ff
/* 8ED88 8008E188 01A17024 */  and        $t6, $t5, $at
/* 8ED8C 8008E18C AC4E0098 */  sw         $t6, 0x98($v0)
/* 8ED90 8008E190 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008E194:
/* 8ED94 8008E194 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8ED98 8008E198 03E00008 */  jr         $ra
/* 8ED9C 8008E19C 00000000 */   nop
