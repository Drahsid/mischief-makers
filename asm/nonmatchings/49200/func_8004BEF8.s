glabel func_8004BEF8
/* 4CAF8 8004BEF8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4CAFC 8004BEFC AFA40030 */  sw         $a0, 0x30($sp)
/* 4CB00 8004BF00 97AE0032 */  lhu        $t6, 0x32($sp)
/* 4CB04 8004BF04 3C18800F */  lui        $t8, 0x800f
/* 4CB08 8004BF08 000E7880 */  sll        $t7, $t6, 2
/* 4CB0C 8004BF0C 01EE7823 */  subu       $t7, $t7, $t6
/* 4CB10 8004BF10 000F7880 */  sll        $t7, $t7, 2
/* 4CB14 8004BF14 01EE7821 */  addu       $t7, $t7, $t6
/* 4CB18 8004BF18 000F7880 */  sll        $t7, $t7, 2
/* 4CB1C 8004BF1C 01EE7823 */  subu       $t7, $t7, $t6
/* 4CB20 8004BF20 AFB00018 */  sw         $s0, 0x18($sp)
/* 4CB24 8004BF24 000F78C0 */  sll        $t7, $t7, 3
/* 4CB28 8004BF28 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 4CB2C 8004BF2C 01F88021 */  addu       $s0, $t7, $t8
/* 4CB30 8004BF30 9619012C */  lhu        $t9, 0x12c($s0)
/* 4CB34 8004BF34 920200D0 */  lbu        $v0, 0xd0($s0)
/* 4CB38 8004BF38 37280002 */  ori        $t0, $t9, 2
/* 4CB3C 8004BF3C AFBF001C */  sw         $ra, 0x1c($sp)
/* 4CB40 8004BF40 1440000B */  bnez       $v0, .L8004BF70
/* 4CB44 8004BF44 A608012C */   sh        $t0, 0x12c($s0)
/* 4CB48 8004BF48 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 4CB4C 8004BF4C 246373E0 */  addiu      $v1, $v1, %lo(D_801373E0)
/* 4CB50 8004BF50 806A0010 */  lb         $t2, 0x10($v1)
/* 4CB54 8004BF54 240B0001 */  addiu      $t3, $zero, 1
/* 4CB58 8004BF58 24090003 */  addiu      $t1, $zero, 3
/* 4CB5C 8004BF5C AE09017C */  sw         $t1, 0x17c($s0)
/* 4CB60 8004BF60 AE0000EC */  sw         $zero, 0xec($s0)
/* 4CB64 8004BF64 A20B00D0 */  sb         $t3, 0xd0($s0)
/* 4CB68 8004BF68 316200FF */  andi       $v0, $t3, 0xff
/* 4CB6C 8004BF6C AE0A015C */  sw         $t2, 0x15c($s0)
.L8004BF70:
/* 4CB70 8004BF70 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 4CB74 8004BF74 24010002 */  addiu      $at, $zero, 2
/* 4CB78 8004BF78 14410071 */  bne        $v0, $at, .L8004C140
/* 4CB7C 8004BF7C 246373E0 */   addiu     $v1, $v1, %lo(D_801373E0)
/* 4CB80 8004BF80 8E0C0150 */  lw         $t4, 0x150($s0)
/* 4CB84 8004BF84 00000000 */  nop
/* 4CB88 8004BF88 29810009 */  slti       $at, $t4, 9
/* 4CB8C 8004BF8C 14200011 */  bnez       $at, .L8004BFD4
/* 4CB90 8004BF90 00000000 */   nop
/* 4CB94 8004BF94 806D0012 */  lb         $t5, 0x12($v1)
/* 4CB98 8004BF98 00000000 */  nop
/* 4CB9C 8004BF9C 15A0000D */  bnez       $t5, .L8004BFD4
/* 4CBA0 8004BFA0 00000000 */   nop
/* 4CBA4 8004BFA4 80620010 */  lb         $v0, 0x10($v1)
/* 4CBA8 8004BFA8 00000000 */  nop
/* 4CBAC 8004BFAC 28410005 */  slti       $at, $v0, 5
/* 4CBB0 8004BFB0 14200008 */  bnez       $at, .L8004BFD4
/* 4CBB4 8004BFB4 2841000C */   slti      $at, $v0, 0xc
/* 4CBB8 8004BFB8 10200006 */  beqz       $at, .L8004BFD4
/* 4CBBC 8004BFBC 240E0001 */   addiu     $t6, $zero, 1
/* 4CBC0 8004BFC0 24010008 */  addiu      $at, $zero, 8
/* 4CBC4 8004BFC4 10410002 */  beq        $v0, $at, .L8004BFD0
/* 4CBC8 8004BFC8 00000000 */   nop
/* 4CBCC 8004BFCC AE02015C */  sw         $v0, 0x15c($s0)
.L8004BFD0:
/* 4CBD0 8004BFD0 A20E00D0 */  sb         $t6, 0xd0($s0)
.L8004BFD4:
/* 4CBD4 8004BFD4 920F00A0 */  lbu        $t7, 0xa0($s0)
/* 4CBD8 8004BFD8 00000000 */  nop
/* 4CBDC 8004BFDC 31F80006 */  andi       $t8, $t7, 6
/* 4CBE0 8004BFE0 17000057 */  bnez       $t8, .L8004C140
/* 4CBE4 8004BFE4 00000000 */   nop
/* 4CBE8 8004BFE8 8E0300EC */  lw         $v1, 0xec($s0)
/* 4CBEC 8004BFEC 00000000 */  nop
/* 4CBF0 8004BFF0 18600029 */  blez       $v1, .L8004C098
/* 4CBF4 8004BFF4 00000000 */   nop
/* 4CBF8 8004BFF8 0C012325 */  jal        func_80048C94
/* 4CBFC 8004BFFC 2404000B */   addiu     $a0, $zero, 0xb
/* 4CC00 8004C000 AFA20020 */  sw         $v0, 0x20($sp)
/* 4CC04 8004C004 0C012325 */  jal        func_80048C94
/* 4CC08 8004C008 2404000B */   addiu     $a0, $zero, 0xb
/* 4CC0C 8004C00C 8FB90020 */  lw         $t9, 0x20($sp)
/* 4CC10 8004C010 3C013FE0 */  lui        $at, 0x3fe0
/* 4CC14 8004C014 44992000 */  mtc1       $t9, $f4
/* 4CC18 8004C018 44814800 */  mtc1       $at, $f9
/* 4CC1C 8004C01C 468021A1 */  cvt.d.w    $f6, $f4
/* 4CC20 8004C020 44804000 */  mtc1       $zero, $f8
/* 4CC24 8004C024 44829000 */  mtc1       $v0, $f18
/* 4CC28 8004C028 46283282 */  mul.d      $f10, $f6, $f8
/* 4CC2C 8004C02C 8E0400EC */  lw         $a0, 0xec($s0)
/* 4CC30 8004C030 4448F800 */  cfc1       $t0, $31
/* 4CC34 8004C034 00000000 */  nop
/* 4CC38 8004C038 35010003 */  ori        $at, $t0, 3
/* 4CC3C 8004C03C 38210002 */  xori       $at, $at, 2
/* 4CC40 8004C040 44C1F800 */  ctc1       $at, $31
/* 4CC44 8004C044 3C01800F */  lui        $at, %hi(D_800EBD68)
/* 4CC48 8004C048 46205424 */  cvt.w.d    $f16, $f10
/* 4CC4C 8004C04C C427BD68 */  lwc1       $f7, %lo(D_800EBD68)($at)
/* 4CC50 8004C050 44C8F800 */  ctc1       $t0, $31
/* 4CC54 8004C054 C426BD6C */  lwc1       $f6, -0x4294($at)
/* 4CC58 8004C058 46809121 */  cvt.d.w    $f4, $f18
/* 4CC5C 8004C05C 44058000 */  mfc1       $a1, $f16
/* 4CC60 8004C060 46262202 */  mul.d      $f8, $f4, $f6
/* 4CC64 8004C064 4449F800 */  cfc1       $t1, $31
/* 4CC68 8004C068 00000000 */  nop
/* 4CC6C 8004C06C 35210003 */  ori        $at, $t1, 3
/* 4CC70 8004C070 38210002 */  xori       $at, $at, 2
/* 4CC74 8004C074 44C1F800 */  ctc1       $at, $31
/* 4CC78 8004C078 00000000 */  nop
/* 4CC7C 8004C07C 462042A4 */  cvt.w.d    $f10, $f8
/* 4CC80 8004C080 44065000 */  mfc1       $a2, $f10
/* 4CC84 8004C084 44C9F800 */  ctc1       $t1, $31
/* 4CC88 8004C088 0C00A607 */  jal        func_8002981C
/* 4CC8C 8004C08C 00000000 */   nop
/* 4CC90 8004C090 AE0200EC */  sw         $v0, 0xec($s0)
/* 4CC94 8004C094 00401825 */  or         $v1, $v0, $zero
.L8004C098:
/* 4CC98 8004C098 04610029 */  bgez       $v1, .L8004C140
/* 4CC9C 8004C09C 00000000 */   nop
/* 4CCA0 8004C0A0 0C012325 */  jal        func_80048C94
/* 4CCA4 8004C0A4 2404000B */   addiu     $a0, $zero, 0xb
/* 4CCA8 8004C0A8 AFA20020 */  sw         $v0, 0x20($sp)
/* 4CCAC 8004C0AC 0C012325 */  jal        func_80048C94
/* 4CCB0 8004C0B0 2404000B */   addiu     $a0, $zero, 0xb
/* 4CCB4 8004C0B4 8FAA0020 */  lw         $t2, 0x20($sp)
/* 4CCB8 8004C0B8 3C013FE0 */  lui        $at, 0x3fe0
/* 4CCBC 8004C0BC 000A5823 */  negu       $t3, $t2
/* 4CCC0 8004C0C0 448B8000 */  mtc1       $t3, $f16
/* 4CCC4 8004C0C4 44812800 */  mtc1       $at, $f5
/* 4CCC8 8004C0C8 468084A1 */  cvt.d.w    $f18, $f16
/* 4CCCC 8004C0CC 44802000 */  mtc1       $zero, $f4
/* 4CCD0 8004C0D0 44825000 */  mtc1       $v0, $f10
/* 4CCD4 8004C0D4 46249182 */  mul.d      $f6, $f18, $f4
/* 4CCD8 8004C0D8 8E0400EC */  lw         $a0, 0xec($s0)
/* 4CCDC 8004C0DC 444CF800 */  cfc1       $t4, $31
/* 4CCE0 8004C0E0 00000000 */  nop
/* 4CCE4 8004C0E4 35810003 */  ori        $at, $t4, 3
/* 4CCE8 8004C0E8 38210002 */  xori       $at, $at, 2
/* 4CCEC 8004C0EC 44C1F800 */  ctc1       $at, $31
/* 4CCF0 8004C0F0 3C01800F */  lui        $at, %hi(D_800EBD70)
/* 4CCF4 8004C0F4 46203224 */  cvt.w.d    $f8, $f6
/* 4CCF8 8004C0F8 C433BD70 */  lwc1       $f19, %lo(D_800EBD70)($at)
/* 4CCFC 8004C0FC 44CCF800 */  ctc1       $t4, $31
/* 4CD00 8004C100 C432BD74 */  lwc1       $f18, -0x428c($at)
/* 4CD04 8004C104 46805421 */  cvt.d.w    $f16, $f10
/* 4CD08 8004C108 44054000 */  mfc1       $a1, $f8
/* 4CD0C 8004C10C 46328102 */  mul.d      $f4, $f16, $f18
/* 4CD10 8004C110 444DF800 */  cfc1       $t5, $31
/* 4CD14 8004C114 00000000 */  nop
/* 4CD18 8004C118 35A10003 */  ori        $at, $t5, 3
/* 4CD1C 8004C11C 38210002 */  xori       $at, $at, 2
/* 4CD20 8004C120 44C1F800 */  ctc1       $at, $31
/* 4CD24 8004C124 00000000 */  nop
/* 4CD28 8004C128 462021A4 */  cvt.w.d    $f6, $f4
/* 4CD2C 8004C12C 44063000 */  mfc1       $a2, $f6
/* 4CD30 8004C130 44CDF800 */  ctc1       $t5, $31
/* 4CD34 8004C134 0C00A607 */  jal        func_8002981C
/* 4CD38 8004C138 00000000 */   nop
/* 4CD3C 8004C13C AE0200EC */  sw         $v0, 0xec($s0)
.L8004C140:
/* 4CD40 8004C140 920E00D0 */  lbu        $t6, 0xd0($s0)
/* 4CD44 8004C144 24010001 */  addiu      $at, $zero, 1
/* 4CD48 8004C148 15C10110 */  bne        $t6, $at, .L8004C58C
/* 4CD4C 8004C14C 240F0063 */   addiu     $t7, $zero, 0x63
/* 4CD50 8004C150 8E03015C */  lw         $v1, 0x15c($s0)
/* 4CD54 8004C154 920200A0 */  lbu        $v0, 0xa0($s0)
/* 4CD58 8004C158 24010006 */  addiu      $at, $zero, 6
/* 4CD5C 8004C15C AFAF002C */  sw         $t7, 0x2c($sp)
/* 4CD60 8004C160 14610007 */  bne        $v1, $at, .L8004C180
/* 4CD64 8004C164 30440006 */   andi      $a0, $v0, 6
/* 4CD68 8004C168 8E180080 */  lw         $t8, 0x80($s0)
/* 4CD6C 8004C16C 24080064 */  addiu      $t0, $zero, 0x64
/* 4CD70 8004C170 33190020 */  andi       $t9, $t8, 0x20
/* 4CD74 8004C174 13200003 */  beqz       $t9, .L8004C184
/* 4CD78 8004C178 2401000A */   addiu     $at, $zero, 0xa
/* 4CD7C 8004C17C AFA8002C */  sw         $t0, 0x2c($sp)
.L8004C180:
/* 4CD80 8004C180 2401000A */  addiu      $at, $zero, 0xa
.L8004C184:
/* 4CD84 8004C184 14610007 */  bne        $v1, $at, .L8004C1A4
/* 4CD88 8004C188 00000000 */   nop
/* 4CD8C 8004C18C 8E090080 */  lw         $t1, 0x80($s0)
/* 4CD90 8004C190 240B0064 */  addiu      $t3, $zero, 0x64
/* 4CD94 8004C194 312A0020 */  andi       $t2, $t1, 0x20
/* 4CD98 8004C198 15400002 */  bnez       $t2, .L8004C1A4
/* 4CD9C 8004C19C 00000000 */   nop
/* 4CDA0 8004C1A0 AFAB002C */  sw         $t3, 0x2c($sp)
.L8004C1A4:
/* 4CDA4 8004C1A4 108000C3 */  beqz       $a0, .L8004C4B4
/* 4CDA8 8004C1A8 00000000 */   nop
/* 4CDAC 8004C1AC 8FAC002C */  lw         $t4, 0x2c($sp)
/* 4CDB0 8004C1B0 24010063 */  addiu      $at, $zero, 0x63
/* 4CDB4 8004C1B4 158100BF */  bne        $t4, $at, .L8004C4B4
/* 4CDB8 8004C1B8 00000000 */   nop
/* 4CDBC 8004C1BC 8E0D0080 */  lw         $t5, 0x80($s0)
/* 4CDC0 8004C1C0 304F0008 */  andi       $t7, $v0, 8
/* 4CDC4 8004C1C4 31AE0020 */  andi       $t6, $t5, 0x20
/* 4CDC8 8004C1C8 15C0005D */  bnez       $t6, .L8004C340
/* 4CDCC 8004C1CC 304E0008 */   andi      $t6, $v0, 8
/* 4CDD0 8004C1D0 11E00032 */  beqz       $t7, .L8004C29C
/* 4CDD4 8004C1D4 304B0002 */   andi      $t3, $v0, 2
/* 4CDD8 8004C1D8 30580002 */  andi       $t8, $v0, 2
/* 4CDDC 8004C1DC 13000018 */  beqz       $t8, .L8004C240
/* 4CDE0 8004C1E0 00000000 */   nop
/* 4CDE4 8004C1E4 0C012325 */  jal        func_80048C94
/* 4CDE8 8004C1E8 2404000B */   addiu     $a0, $zero, 0xb
/* 4CDEC 8004C1EC 44824000 */  mtc1       $v0, $f8
/* 4CDF0 8004C1F0 3C01800F */  lui        $at, %hi(D_800EBD78)
/* 4CDF4 8004C1F4 468042A1 */  cvt.d.w    $f10, $f8
/* 4CDF8 8004C1F8 C431BD78 */  lwc1       $f17, %lo(D_800EBD78)($at)
/* 4CDFC 8004C1FC C430BD7C */  lwc1       $f16, -0x4284($at)
/* 4CE00 8004C200 8E1900EC */  lw         $t9, 0xec($s0)
/* 4CE04 8004C204 46305482 */  mul.d      $f18, $f10, $f16
/* 4CE08 8004C208 44992000 */  mtc1       $t9, $f4
/* 4CE0C 8004C20C 00000000 */  nop
/* 4CE10 8004C210 468021A1 */  cvt.d.w    $f6, $f4
/* 4CE14 8004C214 46323200 */  add.d      $f8, $f6, $f18
/* 4CE18 8004C218 4448F800 */  cfc1       $t0, $31
/* 4CE1C 8004C21C 00000000 */  nop
/* 4CE20 8004C220 35010003 */  ori        $at, $t0, 3
/* 4CE24 8004C224 38210002 */  xori       $at, $at, 2
/* 4CE28 8004C228 44C1F800 */  ctc1       $at, $31
/* 4CE2C 8004C22C 00000000 */  nop
/* 4CE30 8004C230 462042A4 */  cvt.w.d    $f10, $f8
/* 4CE34 8004C234 44C8F800 */  ctc1       $t0, $31
/* 4CE38 8004C238 100000CB */  b          .L8004C568
/* 4CE3C 8004C23C E60A00EC */   swc1      $f10, 0xec($s0)
.L8004C240:
/* 4CE40 8004C240 0C012325 */  jal        func_80048C94
/* 4CE44 8004C244 2404000B */   addiu     $a0, $zero, 0xb
/* 4CE48 8004C248 44828000 */  mtc1       $v0, $f16
/* 4CE4C 8004C24C 3C01800F */  lui        $at, %hi(D_800EBD80)
/* 4CE50 8004C250 46808121 */  cvt.d.w    $f4, $f16
/* 4CE54 8004C254 C427BD80 */  lwc1       $f7, %lo(D_800EBD80)($at)
/* 4CE58 8004C258 C426BD84 */  lwc1       $f6, -0x427c($at)
/* 4CE5C 8004C25C 8E0900EC */  lw         $t1, 0xec($s0)
/* 4CE60 8004C260 46262482 */  mul.d      $f18, $f4, $f6
/* 4CE64 8004C264 44894000 */  mtc1       $t1, $f8
/* 4CE68 8004C268 00000000 */  nop
/* 4CE6C 8004C26C 468042A1 */  cvt.d.w    $f10, $f8
/* 4CE70 8004C270 46325400 */  add.d      $f16, $f10, $f18
/* 4CE74 8004C274 444AF800 */  cfc1       $t2, $31
/* 4CE78 8004C278 00000000 */  nop
/* 4CE7C 8004C27C 35410003 */  ori        $at, $t2, 3
/* 4CE80 8004C280 38210002 */  xori       $at, $at, 2
/* 4CE84 8004C284 44C1F800 */  ctc1       $at, $31
/* 4CE88 8004C288 00000000 */  nop
/* 4CE8C 8004C28C 46208124 */  cvt.w.d    $f4, $f16
/* 4CE90 8004C290 44CAF800 */  ctc1       $t2, $31
/* 4CE94 8004C294 100000B4 */  b          .L8004C568
/* 4CE98 8004C298 E60400EC */   swc1      $f4, 0xec($s0)
.L8004C29C:
/* 4CE9C 8004C29C 11600014 */  beqz       $t3, .L8004C2F0
/* 4CEA0 8004C2A0 00000000 */   nop
/* 4CEA4 8004C2A4 0C012325 */  jal        func_80048C94
/* 4CEA8 8004C2A8 2404000B */   addiu     $a0, $zero, 0xb
/* 4CEAC 8004C2AC 44823000 */  mtc1       $v0, $f6
/* 4CEB0 8004C2B0 3C013FD0 */  lui        $at, 0x3fd0
/* 4CEB4 8004C2B4 46803221 */  cvt.d.w    $f8, $f6
/* 4CEB8 8004C2B8 44815800 */  mtc1       $at, $f11
/* 4CEBC 8004C2BC 44805000 */  mtc1       $zero, $f10
/* 4CEC0 8004C2C0 00000000 */  nop
/* 4CEC4 8004C2C4 462A4482 */  mul.d      $f18, $f8, $f10
/* 4CEC8 8004C2C8 444CF800 */  cfc1       $t4, $31
/* 4CECC 8004C2CC 00000000 */  nop
/* 4CED0 8004C2D0 35810003 */  ori        $at, $t4, 3
/* 4CED4 8004C2D4 38210002 */  xori       $at, $at, 2
/* 4CED8 8004C2D8 44C1F800 */  ctc1       $at, $31
/* 4CEDC 8004C2DC 00000000 */  nop
/* 4CEE0 8004C2E0 46209424 */  cvt.w.d    $f16, $f18
/* 4CEE4 8004C2E4 44CCF800 */  ctc1       $t4, $31
/* 4CEE8 8004C2E8 1000009F */  b          .L8004C568
/* 4CEEC 8004C2EC E61000EC */   swc1      $f16, 0xec($s0)
.L8004C2F0:
/* 4CEF0 8004C2F0 0C012325 */  jal        func_80048C94
/* 4CEF4 8004C2F4 2404000B */   addiu     $a0, $zero, 0xb
/* 4CEF8 8004C2F8 44822000 */  mtc1       $v0, $f4
/* 4CEFC 8004C2FC 3C013FC0 */  lui        $at, 0x3fc0
/* 4CF00 8004C300 468021A1 */  cvt.d.w    $f6, $f4
/* 4CF04 8004C304 44814800 */  mtc1       $at, $f9
/* 4CF08 8004C308 44804000 */  mtc1       $zero, $f8
/* 4CF0C 8004C30C 00000000 */  nop
/* 4CF10 8004C310 46283282 */  mul.d      $f10, $f6, $f8
/* 4CF14 8004C314 444DF800 */  cfc1       $t5, $31
/* 4CF18 8004C318 00000000 */  nop
/* 4CF1C 8004C31C 35A10003 */  ori        $at, $t5, 3
/* 4CF20 8004C320 38210002 */  xori       $at, $at, 2
/* 4CF24 8004C324 44C1F800 */  ctc1       $at, $31
/* 4CF28 8004C328 00000000 */  nop
/* 4CF2C 8004C32C 462054A4 */  cvt.w.d    $f18, $f10
/* 4CF30 8004C330 44CDF800 */  ctc1       $t5, $31
/* 4CF34 8004C334 1000008C */  b          .L8004C568
/* 4CF38 8004C338 E61200EC */   swc1      $f18, 0xec($s0)
/* 4CF3C 8004C33C 304E0008 */  andi       $t6, $v0, 8
.L8004C340:
/* 4CF40 8004C340 11C0002C */  beqz       $t6, .L8004C3F4
/* 4CF44 8004C344 304A0002 */   andi      $t2, $v0, 2
/* 4CF48 8004C348 304F0002 */  andi       $t7, $v0, 2
/* 4CF4C 8004C34C 11E00015 */  beqz       $t7, .L8004C3A4
/* 4CF50 8004C350 00000000 */   nop
/* 4CF54 8004C354 0C012325 */  jal        func_80048C94
/* 4CF58 8004C358 2404000B */   addiu     $a0, $zero, 0xb
/* 4CF5C 8004C35C 0002C023 */  negu       $t8, $v0
/* 4CF60 8004C360 44988000 */  mtc1       $t8, $f16
/* 4CF64 8004C364 3C013FD0 */  lui        $at, 0x3fd0
/* 4CF68 8004C368 46808121 */  cvt.d.w    $f4, $f16
/* 4CF6C 8004C36C 44813800 */  mtc1       $at, $f7
/* 4CF70 8004C370 44803000 */  mtc1       $zero, $f6
/* 4CF74 8004C374 00000000 */  nop
/* 4CF78 8004C378 46262202 */  mul.d      $f8, $f4, $f6
/* 4CF7C 8004C37C 4459F800 */  cfc1       $t9, $31
/* 4CF80 8004C380 00000000 */  nop
/* 4CF84 8004C384 37210003 */  ori        $at, $t9, 3
/* 4CF88 8004C388 38210002 */  xori       $at, $at, 2
/* 4CF8C 8004C38C 44C1F800 */  ctc1       $at, $31
/* 4CF90 8004C390 00000000 */  nop
/* 4CF94 8004C394 462042A4 */  cvt.w.d    $f10, $f8
/* 4CF98 8004C398 44D9F800 */  ctc1       $t9, $31
/* 4CF9C 8004C39C 10000072 */  b          .L8004C568
/* 4CFA0 8004C3A0 E60A00EC */   swc1      $f10, 0xec($s0)
.L8004C3A4:
/* 4CFA4 8004C3A4 0C012325 */  jal        func_80048C94
/* 4CFA8 8004C3A8 2404000B */   addiu     $a0, $zero, 0xb
/* 4CFAC 8004C3AC 00024023 */  negu       $t0, $v0
/* 4CFB0 8004C3B0 44889000 */  mtc1       $t0, $f18
/* 4CFB4 8004C3B4 3C013FC0 */  lui        $at, 0x3fc0
/* 4CFB8 8004C3B8 46809421 */  cvt.d.w    $f16, $f18
/* 4CFBC 8004C3BC 44812800 */  mtc1       $at, $f5
/* 4CFC0 8004C3C0 44802000 */  mtc1       $zero, $f4
/* 4CFC4 8004C3C4 00000000 */  nop
/* 4CFC8 8004C3C8 46248182 */  mul.d      $f6, $f16, $f4
/* 4CFCC 8004C3CC 4449F800 */  cfc1       $t1, $31
/* 4CFD0 8004C3D0 00000000 */  nop
/* 4CFD4 8004C3D4 35210003 */  ori        $at, $t1, 3
/* 4CFD8 8004C3D8 38210002 */  xori       $at, $at, 2
/* 4CFDC 8004C3DC 44C1F800 */  ctc1       $at, $31
/* 4CFE0 8004C3E0 00000000 */  nop
/* 4CFE4 8004C3E4 46203224 */  cvt.w.d    $f8, $f6
/* 4CFE8 8004C3E8 44C9F800 */  ctc1       $t1, $31
/* 4CFEC 8004C3EC 1000005E */  b          .L8004C568
/* 4CFF0 8004C3F0 E60800EC */   swc1      $f8, 0xec($s0)
.L8004C3F4:
/* 4CFF4 8004C3F4 11400018 */  beqz       $t2, .L8004C458
/* 4CFF8 8004C3F8 00000000 */   nop
/* 4CFFC 8004C3FC 0C012325 */  jal        func_80048C94
/* 4D000 8004C400 2404000B */   addiu     $a0, $zero, 0xb
/* 4D004 8004C404 44825000 */  mtc1       $v0, $f10
/* 4D008 8004C408 3C01800F */  lui        $at, %hi(D_800EBD88)
/* 4D00C 8004C40C 468054A1 */  cvt.d.w    $f18, $f10
/* 4D010 8004C410 C431BD88 */  lwc1       $f17, %lo(D_800EBD88)($at)
/* 4D014 8004C414 C430BD8C */  lwc1       $f16, -0x4274($at)
/* 4D018 8004C418 8E0B00EC */  lw         $t3, 0xec($s0)
/* 4D01C 8004C41C 46309102 */  mul.d      $f4, $f18, $f16
/* 4D020 8004C420 448B3000 */  mtc1       $t3, $f6
/* 4D024 8004C424 00000000 */  nop
/* 4D028 8004C428 46803221 */  cvt.d.w    $f8, $f6
/* 4D02C 8004C42C 46244281 */  sub.d      $f10, $f8, $f4
/* 4D030 8004C430 444CF800 */  cfc1       $t4, $31
/* 4D034 8004C434 00000000 */  nop
/* 4D038 8004C438 35810003 */  ori        $at, $t4, 3
/* 4D03C 8004C43C 38210002 */  xori       $at, $at, 2
/* 4D040 8004C440 44C1F800 */  ctc1       $at, $31
/* 4D044 8004C444 00000000 */  nop
/* 4D048 8004C448 462054A4 */  cvt.w.d    $f18, $f10
/* 4D04C 8004C44C 44CCF800 */  ctc1       $t4, $31
/* 4D050 8004C450 10000045 */  b          .L8004C568
/* 4D054 8004C454 E61200EC */   swc1      $f18, 0xec($s0)
.L8004C458:
/* 4D058 8004C458 0C012325 */  jal        func_80048C94
/* 4D05C 8004C45C 2404000B */   addiu     $a0, $zero, 0xb
/* 4D060 8004C460 44828000 */  mtc1       $v0, $f16
/* 4D064 8004C464 3C01800F */  lui        $at, %hi(D_800EBD90)
/* 4D068 8004C468 468081A1 */  cvt.d.w    $f6, $f16
/* 4D06C 8004C46C C429BD90 */  lwc1       $f9, %lo(D_800EBD90)($at)
/* 4D070 8004C470 C428BD94 */  lwc1       $f8, -0x426c($at)
/* 4D074 8004C474 8E0D00EC */  lw         $t5, 0xec($s0)
/* 4D078 8004C478 46283102 */  mul.d      $f4, $f6, $f8
/* 4D07C 8004C47C 448D5000 */  mtc1       $t5, $f10
/* 4D080 8004C480 00000000 */  nop
/* 4D084 8004C484 468054A1 */  cvt.d.w    $f18, $f10
/* 4D088 8004C488 46249401 */  sub.d      $f16, $f18, $f4
/* 4D08C 8004C48C 444EF800 */  cfc1       $t6, $31
/* 4D090 8004C490 00000000 */  nop
/* 4D094 8004C494 35C10003 */  ori        $at, $t6, 3
/* 4D098 8004C498 38210002 */  xori       $at, $at, 2
/* 4D09C 8004C49C 44C1F800 */  ctc1       $at, $31
/* 4D0A0 8004C4A0 00000000 */  nop
/* 4D0A4 8004C4A4 462081A4 */  cvt.w.d    $f6, $f16
/* 4D0A8 8004C4A8 44CEF800 */  ctc1       $t6, $31
/* 4D0AC 8004C4AC 1000002E */  b          .L8004C568
/* 4D0B0 8004C4B0 E60600EC */   swc1      $f6, 0xec($s0)
.L8004C4B4:
/* 4D0B4 8004C4B4 8E0F00EC */  lw         $t7, 0xec($s0)
/* 4D0B8 8004C4B8 8FB8002C */  lw         $t8, 0x2c($sp)
/* 4D0BC 8004C4BC 11E0000A */  beqz       $t7, .L8004C4E8
/* 4D0C0 8004C4C0 24010064 */   addiu     $at, $zero, 0x64
/* 4D0C4 8004C4C4 13010008 */  beq        $t8, $at, .L8004C4E8
/* 4D0C8 8004C4C8 00000000 */   nop
/* 4D0CC 8004C4CC 97A40032 */  lhu        $a0, 0x32($sp)
/* 4D0D0 8004C4D0 0C0174CE */  jal        func_8005D338
/* 4D0D4 8004C4D4 00000000 */   nop
/* 4D0D8 8004C4D8 8FB9002C */  lw         $t9, 0x2c($sp)
/* 4D0DC 8004C4DC 00000000 */  nop
/* 4D0E0 8004C4E0 13220022 */  beq        $t9, $v0, .L8004C56C
/* 4D0E4 8004C4E4 97A40032 */   lhu       $a0, 0x32($sp)
.L8004C4E8:
/* 4D0E8 8004C4E8 0C012325 */  jal        func_80048C94
/* 4D0EC 8004C4EC 2404000B */   addiu     $a0, $zero, 0xb
/* 4D0F0 8004C4F0 44824000 */  mtc1       $v0, $f8
/* 4D0F4 8004C4F4 3C013FE0 */  lui        $at, 0x3fe0
/* 4D0F8 8004C4F8 468042A1 */  cvt.d.w    $f10, $f8
/* 4D0FC 8004C4FC 44819800 */  mtc1       $at, $f19
/* 4D100 8004C500 44809000 */  mtc1       $zero, $f18
/* 4D104 8004C504 8E090080 */  lw         $t1, 0x80($s0)
/* 4D108 8004C508 46325102 */  mul.d      $f4, $f10, $f18
/* 4D10C 8004C50C 312A0020 */  andi       $t2, $t1, 0x20
/* 4D110 8004C510 4448F800 */  cfc1       $t0, $31
/* 4D114 8004C514 00000000 */  nop
/* 4D118 8004C518 35010003 */  ori        $at, $t0, 3
/* 4D11C 8004C51C 38210002 */  xori       $at, $at, 2
/* 4D120 8004C520 44C1F800 */  ctc1       $at, $31
/* 4D124 8004C524 00000000 */  nop
/* 4D128 8004C528 46202424 */  cvt.w.d    $f16, $f4
/* 4D12C 8004C52C 44C8F800 */  ctc1       $t0, $31
/* 4D130 8004C530 11400005 */  beqz       $t2, .L8004C548
/* 4D134 8004C534 E61000EC */   swc1      $f16, 0xec($s0)
/* 4D138 8004C538 8E0B00EC */  lw         $t3, 0xec($s0)
/* 4D13C 8004C53C 00000000 */  nop
/* 4D140 8004C540 000B6023 */  negu       $t4, $t3
/* 4D144 8004C544 AE0C00EC */  sw         $t4, 0xec($s0)
.L8004C548:
/* 4D148 8004C548 8FAD002C */  lw         $t5, 0x2c($sp)
/* 4D14C 8004C54C 24010064 */  addiu      $at, $zero, 0x64
/* 4D150 8004C550 15A10006 */  bne        $t5, $at, .L8004C56C
/* 4D154 8004C554 97A40032 */   lhu       $a0, 0x32($sp)
/* 4D158 8004C558 8E0E00EC */  lw         $t6, 0xec($s0)
/* 4D15C 8004C55C 00000000 */  nop
/* 4D160 8004C560 000E7823 */  negu       $t7, $t6
/* 4D164 8004C564 AE0F00EC */  sw         $t7, 0xec($s0)
.L8004C568:
/* 4D168 8004C568 97A40032 */  lhu        $a0, 0x32($sp)
.L8004C56C:
/* 4D16C 8004C56C 97A5002E */  lhu        $a1, 0x2e($sp)
/* 4D170 8004C570 0C0174DC */  jal        func_8005D370
/* 4D174 8004C574 00000000 */   nop
/* 4D178 8004C578 AE000150 */  sw         $zero, 0x150($s0)
/* 4D17C 8004C57C 0C000CD3 */  jal        SFX_Play_1
/* 4D180 8004C580 24040087 */   addiu     $a0, $zero, 0x87
/* 4D184 8004C584 24180002 */  addiu      $t8, $zero, 2
/* 4D188 8004C588 A21800D0 */  sb         $t8, 0xd0($s0)
.L8004C58C:
/* 4D18C 8004C58C 8E020150 */  lw         $v0, 0x150($s0)
/* 4D190 8004C590 00000000 */  nop
/* 4D194 8004C594 2841000D */  slti       $at, $v0, 0xd
/* 4D198 8004C598 14200006 */  bnez       $at, .L8004C5B4
/* 4D19C 8004C59C 24490001 */   addiu     $t1, $v0, 1
/* 4D1A0 8004C5A0 9619012C */  lhu        $t9, 0x12c($s0)
/* 4D1A4 8004C5A4 8E020150 */  lw         $v0, 0x150($s0)
/* 4D1A8 8004C5A8 37280004 */  ori        $t0, $t9, 4
/* 4D1AC 8004C5AC A608012C */  sh         $t0, 0x12c($s0)
/* 4D1B0 8004C5B0 24490001 */  addiu      $t1, $v0, 1
.L8004C5B4:
/* 4D1B4 8004C5B4 29210014 */  slti       $at, $t1, 0x14
/* 4D1B8 8004C5B8 1420000C */  bnez       $at, .L8004C5EC
/* 4D1BC 8004C5BC AE090150 */   sw        $t1, 0x150($s0)
/* 4D1C0 8004C5C0 8E0B0098 */  lw         $t3, 0x98($s0)
/* 4D1C4 8004C5C4 240E0001 */  addiu      $t6, $zero, 1
/* 4D1C8 8004C5C8 316C0010 */  andi       $t4, $t3, 0x10
/* 4D1CC 8004C5CC 11800004 */  beqz       $t4, .L8004C5E0
/* 4D1D0 8004C5D0 240F0003 */   addiu     $t7, $zero, 3
/* 4D1D4 8004C5D4 240D000F */  addiu      $t5, $zero, 0xf
/* 4D1D8 8004C5D8 10000004 */  b          .L8004C5EC
/* 4D1DC 8004C5DC A60D00D0 */   sh        $t5, 0xd0($s0)
.L8004C5E0:
/* 4D1E0 8004C5E0 AE00017C */  sw         $zero, 0x17c($s0)
/* 4D1E4 8004C5E4 A20E017D */  sb         $t6, 0x17d($s0)
/* 4D1E8 8004C5E8 A60F00D0 */  sh         $t7, 0xd0($s0)
.L8004C5EC:
/* 4D1EC 8004C5EC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4D1F0 8004C5F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 4D1F4 8004C5F4 03E00008 */  jr         $ra
/* 4D1F8 8004C5F8 27BD0030 */   addiu     $sp, $sp, 0x30
