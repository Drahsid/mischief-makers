glabel func_8006BEF4
/* 6CAF4 8006BEF4 3086FFFF */  andi       $a2, $a0, 0xffff
/* 6CAF8 8006BEF8 24080198 */  addiu      $t0, $zero, 0x198
/* 6CAFC 8006BEFC 00C80019 */  multu      $a2, $t0
/* 6CB00 8006BF00 3C07800F */  lui        $a3, %hi(gActors)
/* 6CB04 8006BF04 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 6CB08 8006BF08 444FF800 */  cfc1       $t7, $31
/* 6CB0C 8006BF0C 24050001 */  addiu      $a1, $zero, 1
/* 6CB10 8006BF10 44C5F800 */  ctc1       $a1, $31
/* 6CB14 8006BF14 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6CB18 8006BF18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6CB1C 8006BF1C AFA40028 */  sw         $a0, 0x28($sp)
/* 6CB20 8006BF20 3C014F00 */  lui        $at, 0x4f00
/* 6CB24 8006BF24 240D0001 */  addiu      $t5, $zero, 1
/* 6CB28 8006BF28 00007012 */  mflo       $t6
/* 6CB2C 8006BF2C 00EE1821 */  addu       $v1, $a3, $t6
/* 6CB30 8006BF30 C464011C */  lwc1       $f4, 0x11c($v1)
/* 6CB34 8006BF34 00000000 */  nop
/* 6CB38 8006BF38 460021A4 */  cvt.w.s    $f6, $f4
/* 6CB3C 8006BF3C 4445F800 */  cfc1       $a1, $31
/* 6CB40 8006BF40 00000000 */  nop
/* 6CB44 8006BF44 30A50078 */  andi       $a1, $a1, 0x78
/* 6CB48 8006BF48 10A00012 */  beqz       $a1, .L8006BF94
/* 6CB4C 8006BF4C 00000000 */   nop
/* 6CB50 8006BF50 44813000 */  mtc1       $at, $f6
/* 6CB54 8006BF54 24050001 */  addiu      $a1, $zero, 1
/* 6CB58 8006BF58 46062181 */  sub.s      $f6, $f4, $f6
/* 6CB5C 8006BF5C 3C018000 */  lui        $at, 0x8000
/* 6CB60 8006BF60 44C5F800 */  ctc1       $a1, $31
/* 6CB64 8006BF64 00000000 */  nop
/* 6CB68 8006BF68 460031A4 */  cvt.w.s    $f6, $f6
/* 6CB6C 8006BF6C 4445F800 */  cfc1       $a1, $31
/* 6CB70 8006BF70 00000000 */  nop
/* 6CB74 8006BF74 30A50078 */  andi       $a1, $a1, 0x78
/* 6CB78 8006BF78 14A00004 */  bnez       $a1, .L8006BF8C
/* 6CB7C 8006BF7C 00000000 */   nop
/* 6CB80 8006BF80 44053000 */  mfc1       $a1, $f6
/* 6CB84 8006BF84 10000007 */  b          .L8006BFA4
/* 6CB88 8006BF88 00A12825 */   or        $a1, $a1, $at
.L8006BF8C:
/* 6CB8C 8006BF8C 10000005 */  b          .L8006BFA4
/* 6CB90 8006BF90 2405FFFF */   addiu     $a1, $zero, -1
.L8006BF94:
/* 6CB94 8006BF94 44053000 */  mfc1       $a1, $f6
/* 6CB98 8006BF98 00000000 */  nop
/* 6CB9C 8006BF9C 04A0FFFB */  bltz       $a1, .L8006BF8C
/* 6CBA0 8006BFA0 00000000 */   nop
.L8006BFA4:
/* 6CBA4 8006BFA4 30B8FFFF */  andi       $t8, $a1, 0xffff
/* 6CBA8 8006BFA8 03080019 */  multu      $t8, $t0
/* 6CBAC 8006BFAC 44CFF800 */  ctc1       $t7, $31
/* 6CBB0 8006BFB0 03002825 */  or         $a1, $t8, $zero
/* 6CBB4 8006BFB4 240F0060 */  addiu      $t7, $zero, 0x60
/* 6CBB8 8006BFB8 0000C812 */  mflo       $t9
/* 6CBBC 8006BFBC 00F91021 */  addu       $v0, $a3, $t9
/* 6CBC0 8006BFC0 8C490080 */  lw         $t1, 0x80($v0)
/* 6CBC4 8006BFC4 00000000 */  nop
/* 6CBC8 8006BFC8 312A0002 */  andi       $t2, $t1, 2
/* 6CBCC 8006BFCC 11400025 */  beqz       $t2, .L8006C064
/* 6CBD0 8006BFD0 00000000 */   nop
/* 6CBD4 8006BFD4 444CF800 */  cfc1       $t4, $31
/* 6CBD8 8006BFD8 44CDF800 */  ctc1       $t5, $31
/* 6CBDC 8006BFDC C4680120 */  lwc1       $f8, 0x120($v1)
/* 6CBE0 8006BFE0 944B00D2 */  lhu        $t3, 0xd2($v0)
/* 6CBE4 8006BFE4 460042A4 */  cvt.w.s    $f10, $f8
/* 6CBE8 8006BFE8 3C014F00 */  lui        $at, 0x4f00
/* 6CBEC 8006BFEC 444DF800 */  cfc1       $t5, $31
/* 6CBF0 8006BFF0 00000000 */  nop
/* 6CBF4 8006BFF4 31AD0078 */  andi       $t5, $t5, 0x78
/* 6CBF8 8006BFF8 11A00012 */  beqz       $t5, .L8006C044
/* 6CBFC 8006BFFC 00000000 */   nop
/* 6CC00 8006C000 44815000 */  mtc1       $at, $f10
/* 6CC04 8006C004 240D0001 */  addiu      $t5, $zero, 1
/* 6CC08 8006C008 460A4281 */  sub.s      $f10, $f8, $f10
/* 6CC0C 8006C00C 3C018000 */  lui        $at, 0x8000
/* 6CC10 8006C010 44CDF800 */  ctc1       $t5, $31
/* 6CC14 8006C014 00000000 */  nop
/* 6CC18 8006C018 460052A4 */  cvt.w.s    $f10, $f10
/* 6CC1C 8006C01C 444DF800 */  cfc1       $t5, $31
/* 6CC20 8006C020 00000000 */  nop
/* 6CC24 8006C024 31AD0078 */  andi       $t5, $t5, 0x78
/* 6CC28 8006C028 15A00004 */  bnez       $t5, .L8006C03C
/* 6CC2C 8006C02C 00000000 */   nop
/* 6CC30 8006C030 440D5000 */  mfc1       $t5, $f10
/* 6CC34 8006C034 10000007 */  b          .L8006C054
/* 6CC38 8006C038 01A16825 */   or        $t5, $t5, $at
.L8006C03C:
/* 6CC3C 8006C03C 10000005 */  b          .L8006C054
/* 6CC40 8006C040 240DFFFF */   addiu     $t5, $zero, -1
.L8006C044:
/* 6CC44 8006C044 440D5000 */  mfc1       $t5, $f10
/* 6CC48 8006C048 00000000 */  nop
/* 6CC4C 8006C04C 05A0FFFB */  bltz       $t5, .L8006C03C
/* 6CC50 8006C050 00000000 */   nop
.L8006C054:
/* 6CC54 8006C054 44CCF800 */  ctc1       $t4, $31
/* 6CC58 8006C058 31AEFFFF */  andi       $t6, $t5, 0xffff
/* 6CC5C 8006C05C 116E0004 */  beq        $t3, $t6, .L8006C070
/* 6CC60 8006C060 00000000 */   nop
.L8006C064:
/* 6CC64 8006C064 A46F00D0 */  sh         $t7, 0xd0($v1)
/* 6CC68 8006C068 1000001E */  b          .L8006C0E4
/* 6CC6C 8006C06C 24020001 */   addiu     $v0, $zero, 1
.L8006C070:
/* 6CC70 8006C070 847800E6 */  lh         $t8, 0xe6($v1)
/* 6CC74 8006C074 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 6CC78 8006C078 17000017 */  bnez       $t8, .L8006C0D8
/* 6CC7C 8006C07C 00000000 */   nop
/* 6CC80 8006C080 AFA2001C */  sw         $v0, 0x1c($sp)
/* 6CC84 8006C084 AFA30020 */  sw         $v1, 0x20($sp)
/* 6CC88 8006C088 0C0198BC */  jal        func_800662F0
/* 6CC8C 8006C08C A7A6002A */   sh        $a2, 0x2a($sp)
/* 6CC90 8006C090 8FA30020 */  lw         $v1, 0x20($sp)
/* 6CC94 8006C094 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6CC98 8006C098 947900D0 */  lhu        $t9, 0xd0($v1)
/* 6CC9C 8006C09C 97A5002A */  lhu        $a1, 0x2a($sp)
/* 6CCA0 8006C0A0 27290001 */  addiu      $t1, $t9, 1
/* 6CCA4 8006C0A4 A46900D0 */  sh         $t1, 0xd0($v1)
/* 6CCA8 8006C0A8 8C4A0098 */  lw         $t2, 0x98($v0)
/* 6CCAC 8006C0AC 2404002A */  addiu      $a0, $zero, 0x2a
/* 6CCB0 8006C0B0 354C0400 */  ori        $t4, $t2, 0x400
/* 6CCB4 8006C0B4 AC4C0098 */  sw         $t4, 0x98($v0)
/* 6CCB8 8006C0B8 8C6D0158 */  lw         $t5, 0x158($v1)
/* 6CCBC 8006C0BC 00000000 */  nop
/* 6CCC0 8006C0C0 AC4D00F8 */  sw         $t5, 0xf8($v0)
/* 6CCC4 8006C0C4 8C6B015C */  lw         $t3, 0x15c($v1)
/* 6CCC8 8006C0C8 0C000DB2 */  jal        func_800036C8
/* 6CCCC 8006C0CC AC4B00FC */   sw        $t3, 0xfc($v0)
/* 6CCD0 8006C0D0 10000004 */  b          .L8006C0E4
/* 6CCD4 8006C0D4 24020001 */   addiu     $v0, $zero, 1
.L8006C0D8:
/* 6CCD8 8006C0D8 0C01AF24 */  jal        func_8006BC90
/* 6CCDC 8006C0DC 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 6CCE0 8006C0E0 00001025 */  or         $v0, $zero, $zero
.L8006C0E4:
/* 6CCE4 8006C0E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6CCE8 8006C0E8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6CCEC 8006C0EC 03E00008 */  jr         $ra
/* 6CCF0 8006C0F0 00000000 */   nop
