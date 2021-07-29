glabel func_8003BE3C
/* 3CA3C 8003BE3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3CA40 8003BE40 AFA40028 */  sw         $a0, 0x28($sp)
/* 3CA44 8003BE44 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3CA48 8003BE48 97A4002A */  lhu        $a0, 0x2a($sp)
/* 3CA4C 8003BE4C 0C00A1DF */  jal        func_8002877C
/* 3CA50 8003BE50 AFB00020 */   sw        $s0, 0x20($sp)
/* 3CA54 8003BE54 97A4002A */  lhu        $a0, 0x2a($sp)
/* 3CA58 8003BE58 0C00E591 */  jal        func_80039644
/* 3CA5C 8003BE5C 00000000 */   nop
/* 3CA60 8003BE60 97AE002A */  lhu        $t6, 0x2a($sp)
/* 3CA64 8003BE64 3C18800F */  lui        $t8, 0x800f
/* 3CA68 8003BE68 000E7880 */  sll        $t7, $t6, 2
/* 3CA6C 8003BE6C 01EE7823 */  subu       $t7, $t7, $t6
/* 3CA70 8003BE70 000F7880 */  sll        $t7, $t7, 2
/* 3CA74 8003BE74 01EE7821 */  addu       $t7, $t7, $t6
/* 3CA78 8003BE78 000F7880 */  sll        $t7, $t7, 2
/* 3CA7C 8003BE7C 01EE7823 */  subu       $t7, $t7, $t6
/* 3CA80 8003BE80 000F78C0 */  sll        $t7, $t7, 3
/* 3CA84 8003BE84 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 3CA88 8003BE88 01F88021 */  addu       $s0, $t7, $t8
/* 3CA8C 8003BE8C 960400D0 */  lhu        $a0, 0xd0($s0)
/* 3CA90 8003BE90 24010001 */  addiu      $at, $zero, 1
/* 3CA94 8003BE94 1080000B */  beqz       $a0, .L8003BEC4
/* 3CA98 8003BE98 00801825 */   or        $v1, $a0, $zero
/* 3CA9C 8003BE9C 10810020 */  beq        $a0, $at, .L8003BF20
/* 3CAA0 8003BEA0 24050001 */   addiu     $a1, $zero, 1
/* 3CAA4 8003BEA4 24010002 */  addiu      $at, $zero, 2
/* 3CAA8 8003BEA8 108100F1 */  beq        $a0, $at, .L8003C270
/* 3CAAC 8003BEAC 3C060002 */   lui       $a2, 2
/* 3CAB0 8003BEB0 24010003 */  addiu      $at, $zero, 3
/* 3CAB4 8003BEB4 106100F1 */  beq        $v1, $at, .L8003C27C
/* 3CAB8 8003BEB8 3C090002 */   lui       $t1, 2
/* 3CABC 8003BEBC 100000FB */  b          .L8003C2AC
/* 3CAC0 8003BEC0 00000000 */   nop
.L8003BEC4:
/* 3CAC4 8003BEC4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 3CAC8 8003BEC8 0C00E5C9 */  jal        func_80039724
/* 3CACC 8003BECC 00000000 */   nop
/* 3CAD0 8003BED0 8E190080 */  lw         $t9, 0x80($s0)
/* 3CAD4 8003BED4 3C010002 */  lui        $at, 2
/* 3CAD8 8003BED8 24020001 */  addiu      $v0, $zero, 1
/* 3CADC 8003BEDC 24090009 */  addiu      $t1, $zero, 9
/* 3CAE0 8003BEE0 240A0040 */  addiu      $t2, $zero, 0x40
/* 3CAE4 8003BEE4 240B0007 */  addiu      $t3, $zero, 7
/* 3CAE8 8003BEE8 97A4002A */  lhu        $a0, 0x2a($sp)
/* 3CAEC 8003BEEC 03214025 */  or         $t0, $t9, $at
/* 3CAF0 8003BEF0 A6020094 */  sh         $v0, 0x94($s0)
/* 3CAF4 8003BEF4 AE080080 */  sw         $t0, 0x80($s0)
/* 3CAF8 8003BEF8 A60900CE */  sh         $t1, 0xce($s0)
/* 3CAFC 8003BEFC A20A00DF */  sb         $t2, 0xdf($s0)
/* 3CB00 8003BF00 A20200DE */  sb         $v0, 0xde($s0)
/* 3CB04 8003BF04 A20B00DB */  sb         $t3, 0xdb($s0)
/* 3CB08 8003BF08 0C00AAF9 */  jal        func_8002ABE4
/* 3CB0C 8003BF0C 2405000C */   addiu     $a1, $zero, 0xc
/* 3CB10 8003BF10 97A4002A */  lhu        $a0, 0x2a($sp)
/* 3CB14 8003BF14 0C00AB0C */  jal        func_8002AC30
/* 3CB18 8003BF18 24050008 */   addiu     $a1, $zero, 8
/* 3CB1C 8003BF1C AE000170 */  sw         $zero, 0x170($s0)
.L8003BF20:
/* 3CB20 8003BF20 8E020098 */  lw         $v0, 0x98($s0)
/* 3CB24 8003BF24 3C0F0002 */  lui        $t7, 2
/* 3CB28 8003BF28 304C0200 */  andi       $t4, $v0, 0x200
/* 3CB2C 8003BF2C 11800008 */  beqz       $t4, .L8003BF50
/* 3CB30 8003BF30 35EF0003 */   ori       $t7, $t7, 3
/* 3CB34 8003BF34 960D00D0 */  lhu        $t5, 0xd0($s0)
/* 3CB38 8003BF38 AE0F0080 */  sw         $t7, 0x80($s0)
/* 3CB3C 8003BF3C 25AE0001 */  addiu      $t6, $t5, 1
/* 3CB40 8003BF40 A60E00D0 */  sh         $t6, 0xd0($s0)
/* 3CB44 8003BF44 AE0000EC */  sw         $zero, 0xec($s0)
/* 3CB48 8003BF48 100000D8 */  b          .L8003C2AC
/* 3CB4C 8003BF4C AE0000F0 */   sw        $zero, 0xf0($s0)
.L8003BF50:
/* 3CB50 8003BF50 8E030170 */  lw         $v1, 0x170($s0)
/* 3CB54 8003BF54 3C01FFF8 */  lui        $at, 0xfff8
/* 3CB58 8003BF58 10600004 */  beqz       $v1, .L8003BF6C
/* 3CB5C 8003BF5C 2478FFFF */   addiu     $t8, $v1, -1
/* 3CB60 8003BF60 8E020098 */  lw         $v0, 0x98($s0)
/* 3CB64 8003BF64 10000008 */  b          .L8003BF88
/* 3CB68 8003BF68 AE180170 */   sw        $t8, 0x170($s0)
.L8003BF6C:
/* 3CB6C 8003BF6C 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 3CB70 8003BF70 34214001 */  ori        $at, $at, 0x4001
/* 3CB74 8003BF74 0061082A */  slt        $at, $v1, $at
/* 3CB78 8003BF78 14200003 */  bnez       $at, .L8003BF88
/* 3CB7C 8003BF7C 2479C000 */   addiu     $t9, $v1, -0x4000
/* 3CB80 8003BF80 8E020098 */  lw         $v0, 0x98($s0)
/* 3CB84 8003BF84 AE1900F0 */  sw         $t9, 0xf0($s0)
.L8003BF88:
/* 3CB88 8003BF88 30480001 */  andi       $t0, $v0, 1
/* 3CB8C 8003BF8C 11000013 */  beqz       $t0, .L8003BFDC
/* 3CB90 8003BF90 3C090002 */   lui       $t1, 2
/* 3CB94 8003BF94 8E0A00EC */  lw         $t2, 0xec($s0)
/* 3CB98 8003BF98 8E0D00F0 */  lw         $t5, 0xf0($s0)
/* 3CB9C 8003BF9C 000A5823 */  negu       $t3, $t2
/* 3CBA0 8003BFA0 000D7023 */  negu       $t6, $t5
/* 3CBA4 8003BFA4 35291003 */  ori        $t1, $t1, 0x1003
/* 3CBA8 8003BFA8 8E020098 */  lw         $v0, 0x98($s0)
/* 3CBAC 8003BFAC AE090080 */  sw         $t1, 0x80($s0)
/* 3CBB0 8003BFB0 AE000170 */  sw         $zero, 0x170($s0)
/* 3CBB4 8003BFB4 05610003 */  bgez       $t3, .L8003BFC4
/* 3CBB8 8003BFB8 000B6043 */   sra       $t4, $t3, 1
/* 3CBBC 8003BFBC 25610001 */  addiu      $at, $t3, 1
/* 3CBC0 8003BFC0 00016043 */  sra        $t4, $at, 1
.L8003BFC4:
/* 3CBC4 8003BFC4 AE0C00EC */  sw         $t4, 0xec($s0)
/* 3CBC8 8003BFC8 05C10003 */  bgez       $t6, .L8003BFD8
/* 3CBCC 8003BFCC 000E7843 */   sra       $t7, $t6, 1
/* 3CBD0 8003BFD0 25C10001 */  addiu      $at, $t6, 1
/* 3CBD4 8003BFD4 00017843 */  sra        $t7, $at, 1
.L8003BFD8:
/* 3CBD8 8003BFD8 AE0F00F0 */  sw         $t7, 0xf0($s0)
.L8003BFDC:
/* 3CBDC 8003BFDC 30580002 */  andi       $t8, $v0, 2
/* 3CBE0 8003BFE0 13000008 */  beqz       $t8, .L8003C004
/* 3CBE4 8003BFE4 3C190002 */   lui       $t9, 2
/* 3CBE8 8003BFE8 8E0800F8 */  lw         $t0, 0xf8($s0)
/* 3CBEC 8003BFEC 8E0900FC */  lw         $t1, 0xfc($s0)
/* 3CBF0 8003BFF0 37391003 */  ori        $t9, $t9, 0x1003
/* 3CBF4 8003BFF4 AE190080 */  sw         $t9, 0x80($s0)
/* 3CBF8 8003BFF8 AE000170 */  sw         $zero, 0x170($s0)
/* 3CBFC 8003BFFC AE0800EC */  sw         $t0, 0xec($s0)
/* 3CC00 8003C000 AE0900F0 */  sw         $t1, 0xf0($s0)
.L8003C004:
/* 3CC04 8003C004 8E0200EC */  lw         $v0, 0xec($s0)
/* 3CC08 8003C008 00000000 */  nop
/* 3CC0C 8003C00C 18400006 */  blez       $v0, .L8003C028
/* 3CC10 8003C010 00000000 */   nop
/* 3CC14 8003C014 8E0A0098 */  lw         $t2, 0x98($s0)
/* 3CC18 8003C018 00000000 */  nop
/* 3CC1C 8003C01C 314B0008 */  andi       $t3, $t2, 8
/* 3CC20 8003C020 15600008 */  bnez       $t3, .L8003C044
/* 3CC24 8003C024 00000000 */   nop
.L8003C028:
/* 3CC28 8003C028 04410011 */  bgez       $v0, .L8003C070
/* 3CC2C 8003C02C 00000000 */   nop
/* 3CC30 8003C030 8E0C0098 */  lw         $t4, 0x98($s0)
/* 3CC34 8003C034 00000000 */  nop
/* 3CC38 8003C038 318D0004 */  andi       $t5, $t4, 4
/* 3CC3C 8003C03C 11A0000C */  beqz       $t5, .L8003C070
/* 3CC40 8003C040 00000000 */   nop
.L8003C044:
/* 3CC44 8003C044 8E0E0080 */  lw         $t6, 0x80($s0)
/* 3CC48 8003C048 2401FF7F */  addiu      $at, $zero, -0x81
/* 3CC4C 8003C04C 01C17824 */  and        $t7, $t6, $at
/* 3CC50 8003C050 0002C023 */  negu       $t8, $v0
/* 3CC54 8003C054 AE0F0080 */  sw         $t7, 0x80($s0)
/* 3CC58 8003C058 07010003 */  bgez       $t8, .L8003C068
/* 3CC5C 8003C05C 0018C843 */   sra       $t9, $t8, 1
/* 3CC60 8003C060 27010001 */  addiu      $at, $t8, 1
/* 3CC64 8003C064 0001C843 */  sra        $t9, $at, 1
.L8003C068:
/* 3CC68 8003C068 AE1900EC */  sw         $t9, 0xec($s0)
/* 3CC6C 8003C06C AE000170 */  sw         $zero, 0x170($s0)
.L8003C070:
/* 3CC70 8003C070 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 3CC74 8003C074 00000000 */  nop
/* 3CC78 8003C078 04610006 */  bgez       $v1, .L8003C094
/* 3CC7C 8003C07C 00000000 */   nop
/* 3CC80 8003C080 8E080098 */  lw         $t0, 0x98($s0)
/* 3CC84 8003C084 00000000 */  nop
/* 3CC88 8003C088 31090020 */  andi       $t1, $t0, 0x20
/* 3CC8C 8003C08C 15200009 */  bnez       $t1, .L8003C0B4
/* 3CC90 8003C090 97A5002A */   lhu       $a1, 0x2a($sp)
.L8003C094:
/* 3CC94 8003C094 18600085 */  blez       $v1, .L8003C2AC
/* 3CC98 8003C098 00000000 */   nop
/* 3CC9C 8003C09C 8E0A0098 */  lw         $t2, 0x98($s0)
/* 3CCA0 8003C0A0 00000000 */  nop
/* 3CCA4 8003C0A4 314B0010 */  andi       $t3, $t2, 0x10
/* 3CCA8 8003C0A8 11600080 */  beqz       $t3, .L8003C2AC
/* 3CCAC 8003C0AC 00000000 */   nop
/* 3CCB0 8003C0B0 97A5002A */  lhu        $a1, 0x2a($sp)
.L8003C0B4:
/* 3CCB4 8003C0B4 0C000DB2 */  jal        func_800036C8
/* 3CCB8 8003C0B8 24040082 */   addiu     $a0, $zero, 0x82
/* 3CCBC 8003C0BC 8E0E00EC */  lw         $t6, 0xec($s0)
/* 3CCC0 8003C0C0 3C01800F */  lui        $at, %hi(D_800EBB60)
/* 3CCC4 8003C0C4 448E2000 */  mtc1       $t6, $f4
/* 3CCC8 8003C0C8 C421BB60 */  lwc1       $f1, %lo(D_800EBB60)($at)
/* 3CCCC 8003C0CC 468021A0 */  cvt.s.w    $f6, $f4
/* 3CCD0 8003C0D0 C420BB64 */  lwc1       $f0, -0x449c($at)
/* 3CCD4 8003C0D4 8E0C0080 */  lw         $t4, 0x80($s0)
/* 3CCD8 8003C0D8 46003221 */  cvt.d.s    $f8, $f6
/* 3CCDC 8003C0DC 46204282 */  mul.d      $f10, $f8, $f0
/* 3CCE0 8003C0E0 2401FF7F */  addiu      $at, $zero, -0x81
/* 3CCE4 8003C0E4 01816824 */  and        $t5, $t4, $at
/* 3CCE8 8003C0E8 8E1800F0 */  lw         $t8, 0xf0($s0)
/* 3CCEC 8003C0EC 8E090098 */  lw         $t1, 0x98($s0)
/* 3CCF0 8003C0F0 444FF800 */  cfc1       $t7, $31
/* 3CCF4 8003C0F4 0018C823 */  negu       $t9, $t8
/* 3CCF8 8003C0F8 35E10003 */  ori        $at, $t7, 3
/* 3CCFC 8003C0FC 38210002 */  xori       $at, $at, 2
/* 3CD00 8003C100 44C1F800 */  ctc1       $at, $31
/* 3CD04 8003C104 44999000 */  mtc1       $t9, $f18
/* 3CD08 8003C108 46205424 */  cvt.w.d    $f16, $f10
/* 3CD0C 8003C10C 312A0020 */  andi       $t2, $t1, 0x20
/* 3CD10 8003C110 44CFF800 */  ctc1       $t7, $31
/* 3CD14 8003C114 AE0D0080 */  sw         $t5, 0x80($s0)
/* 3CD18 8003C118 46809120 */  cvt.s.w    $f4, $f18
/* 3CD1C 8003C11C E61000EC */  swc1       $f16, 0xec($s0)
/* 3CD20 8003C120 AE000170 */  sw         $zero, 0x170($s0)
/* 3CD24 8003C124 460021A1 */  cvt.d.s    $f6, $f4
/* 3CD28 8003C128 46203202 */  mul.d      $f8, $f6, $f0
/* 3CD2C 8003C12C 3C0B800F */  lui        $t3, 0x800f
/* 3CD30 8003C130 4448F800 */  cfc1       $t0, $31
/* 3CD34 8003C134 00000000 */  nop
/* 3CD38 8003C138 35010003 */  ori        $at, $t0, 3
/* 3CD3C 8003C13C 38210002 */  xori       $at, $at, 2
/* 3CD40 8003C140 44C1F800 */  ctc1       $at, $31
/* 3CD44 8003C144 00000000 */  nop
/* 3CD48 8003C148 462042A4 */  cvt.w.d    $f10, $f8
/* 3CD4C 8003C14C 44C8F800 */  ctc1       $t0, $31
/* 3CD50 8003C150 11400056 */  beqz       $t2, .L8003C2AC
/* 3CD54 8003C154 E60A00F0 */   swc1      $f10, 0xf0($s0)
/* 3CD58 8003C158 856BF59C */  lh         $t3, -0xa64($t3)
/* 3CD5C 8003C15C 860C008C */  lh         $t4, 0x8c($s0)
/* 3CD60 8003C160 44809000 */  mtc1       $zero, $f18
/* 3CD64 8003C164 016C6823 */  subu       $t5, $t3, $t4
/* 3CD68 8003C168 000D7100 */  sll        $t6, $t5, 4
/* 3CD6C 8003C16C 448E8000 */  mtc1       $t6, $f16
/* 3CD70 8003C170 3C0F0003 */  lui        $t7, 3
/* 3CD74 8003C174 46808020 */  cvt.s.w    $f0, $f16
/* 3CD78 8003C178 3C014200 */  lui        $at, 0x4200
/* 3CD7C 8003C17C 4612003C */  c.lt.s     $f0, $f18
/* 3CD80 8003C180 00000000 */  nop
/* 3CD84 8003C184 45000003 */  bc1f       .L8003C194
/* 3CD88 8003C188 00000000 */   nop
/* 3CD8C 8003C18C 1000001C */  b          .L8003C200
/* 3CD90 8003C190 AE0F00F0 */   sw        $t7, 0xf0($s0)
.L8003C194:
/* 3CD94 8003C194 44812000 */  mtc1       $at, $f4
/* 3CD98 8003C198 3C014180 */  lui        $at, 0x4180
/* 3CD9C 8003C19C 46002182 */  mul.s      $f6, $f4, $f0
/* 3CDA0 8003C1A0 44814000 */  mtc1       $at, $f8
/* 3CDA4 8003C1A4 0C0295C4 */  jal        sqrtf
/* 3CDA8 8003C1A8 46083300 */   add.s     $f12, $f6, $f8
/* 3CDAC 8003C1AC 3C014080 */  lui        $at, 0x4080
/* 3CDB0 8003C1B0 44815000 */  mtc1       $at, $f10
/* 3CDB4 8003C1B4 3C014100 */  lui        $at, 0x4100
/* 3CDB8 8003C1B8 44819000 */  mtc1       $at, $f18
/* 3CDBC 8003C1BC 460A0401 */  sub.s      $f16, $f0, $f10
/* 3CDC0 8003C1C0 3C014690 */  lui        $at, 0x4690
/* 3CDC4 8003C1C4 46128103 */  div.s      $f4, $f16, $f18
/* 3CDC8 8003C1C8 44813000 */  mtc1       $at, $f6
/* 3CDCC 8003C1CC 00000000 */  nop
/* 3CDD0 8003C1D0 46062202 */  mul.s      $f8, $f4, $f6
/* 3CDD4 8003C1D4 4458F800 */  cfc1       $t8, $31
/* 3CDD8 8003C1D8 00000000 */  nop
/* 3CDDC 8003C1DC 37010003 */  ori        $at, $t8, 3
/* 3CDE0 8003C1E0 38210002 */  xori       $at, $at, 2
/* 3CDE4 8003C1E4 44C1F800 */  ctc1       $at, $31
/* 3CDE8 8003C1E8 00000000 */  nop
/* 3CDEC 8003C1EC 460042A4 */  cvt.w.s    $f10, $f8
/* 3CDF0 8003C1F0 44195000 */  mfc1       $t9, $f10
/* 3CDF4 8003C1F4 44D8F800 */  ctc1       $t8, $31
/* 3CDF8 8003C1F8 AE1900F0 */  sw         $t9, 0xf0($s0)
/* 3CDFC 8003C1FC 00000000 */  nop
.L8003C200:
/* 3CE00 8003C200 3C02800F */  lui        $v0, %hi(FB_BGCOLOR)
/* 3CE04 8003C204 8442F598 */  lh         $v0, %lo(FB_BGCOLOR)($v0)
/* 3CE08 8003C208 86030088 */  lh         $v1, 0x88($s0)
/* 3CE0C 8003C20C 3C060001 */  lui        $a2, 1
/* 3CE10 8003C210 00433823 */  subu       $a3, $v0, $v1
/* 3CE14 8003C214 28E10041 */  slti       $at, $a3, 0x41
/* 3CE18 8003C218 10200004 */  beqz       $at, .L8003C22C
/* 3CE1C 8003C21C 34C64000 */   ori       $a2, $a2, 0x4000
/* 3CE20 8003C220 28E1FFC0 */  slti       $at, $a3, -0x40
/* 3CE24 8003C224 10200004 */  beqz       $at, .L8003C238
/* 3CE28 8003C228 24074000 */   addiu     $a3, $zero, 0x4000
.L8003C22C:
/* 3CE2C 8003C22C 3C070001 */  lui        $a3, 1
/* 3CE30 8003C230 10000002 */  b          .L8003C23C
/* 3CE34 8003C234 34E7FF00 */   ori       $a3, $a3, 0xff00
.L8003C238:
/* 3CE38 8003C238 24063000 */  addiu      $a2, $zero, 0x3000
.L8003C23C:
/* 3CE3C 8003C23C 0062082A */  slt        $at, $v1, $v0
/* 3CE40 8003C240 10200006 */  beqz       $at, .L8003C25C
/* 3CE44 8003C244 00000000 */   nop
/* 3CE48 8003C248 8E0400EC */  lw         $a0, 0xec($s0)
/* 3CE4C 8003C24C 0C00A607 */  jal        func_8002981C
/* 3CE50 8003C250 00E02825 */   or        $a1, $a3, $zero
/* 3CE54 8003C254 10000015 */  b          .L8003C2AC
/* 3CE58 8003C258 AE0200EC */   sw        $v0, 0xec($s0)
.L8003C25C:
/* 3CE5C 8003C25C 8E0400EC */  lw         $a0, 0xec($s0)
/* 3CE60 8003C260 0C00A607 */  jal        func_8002981C
/* 3CE64 8003C264 00072823 */   negu      $a1, $a3
/* 3CE68 8003C268 10000010 */  b          .L8003C2AC
/* 3CE6C 8003C26C AE0200EC */   sw        $v0, 0xec($s0)
.L8003C270:
/* 3CE70 8003C270 24880001 */  addiu      $t0, $a0, 1
/* 3CE74 8003C274 A60800D0 */  sh         $t0, 0xd0($s0)
/* 3CE78 8003C278 3C090002 */  lui        $t1, 2
.L8003C27C:
/* 3CE7C 8003C27C 35291003 */  ori        $t1, $t1, 0x1003
/* 3CE80 8003C280 97A4002A */  lhu        $a0, 0x2a($sp)
/* 3CE84 8003C284 AFA90010 */  sw         $t1, 0x10($sp)
/* 3CE88 8003C288 34C61083 */  ori        $a2, $a2, 0x1083
/* 3CE8C 8003C28C 0C00A46B */  jal        func_800291AC
/* 3CE90 8003C290 24070001 */   addiu     $a3, $zero, 1
/* 3CE94 8003C294 24010002 */  addiu      $at, $zero, 2
/* 3CE98 8003C298 14410004 */  bne        $v0, $at, .L8003C2AC
/* 3CE9C 8003C29C 240A0008 */   addiu     $t2, $zero, 8
/* 3CEA0 8003C2A0 3C0B0004 */  lui        $t3, 4
/* 3CEA4 8003C2A4 AE0A0170 */  sw         $t2, 0x170($s0)
/* 3CEA8 8003C2A8 AE0B00FC */  sw         $t3, 0xfc($s0)
.L8003C2AC:
/* 3CEAC 8003C2AC 3C01800F */  lui        $at, %hi(D_800EBB68)
/* 3CEB0 8003C2B0 C42EBB68 */  lwc1       $f14, %lo(D_800EBB68)($at)
/* 3CEB4 8003C2B4 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 3CEB8 8003C2B8 3C063DCC */  lui        $a2, 0x3dcc
/* 3CEBC 8003C2BC 0C00A618 */  jal        func_80029860
/* 3CEC0 8003C2C0 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 3CEC4 8003C2C4 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 3CEC8 8003C2C8 3C01800F */  lui        $at, %hi(D_800EBB6C)
/* 3CECC 8003C2CC C42EBB6C */  lwc1       $f14, %lo(D_800EBB6C)($at)
/* 3CED0 8003C2D0 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 3CED4 8003C2D4 3C063DCC */  lui        $a2, 0x3dcc
/* 3CED8 8003C2D8 0C00A618 */  jal        func_80029860
/* 3CEDC 8003C2DC 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 3CEE0 8003C2E0 97A4002A */  lhu        $a0, 0x2a($sp)
/* 3CEE4 8003C2E4 3C050007 */  lui        $a1, 7
/* 3CEE8 8003C2E8 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 3CEEC 8003C2EC 0C00A846 */  jal        func_8002A118
/* 3CEF0 8003C2F0 34A5FFF0 */   ori       $a1, $a1, 0xfff0
/* 3CEF4 8003C2F4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 3CEF8 8003C2F8 3C050007 */  lui        $a1, 7
/* 3CEFC 8003C2FC 0C00A85C */  jal        func_8002A170
/* 3CF00 8003C300 34A5FFF0 */   ori       $a1, $a1, 0xfff0
/* 3CF04 8003C304 8E0C0098 */  lw         $t4, 0x98($s0)
/* 3CF08 8003C308 3C01FFDF */  lui        $at, 0xffdf
/* 3CF0C 8003C30C 3421F9FF */  ori        $at, $at, 0xf9ff
/* 3CF10 8003C310 01816824 */  and        $t5, $t4, $at
/* 3CF14 8003C314 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3CF18 8003C318 AE0D0098 */  sw         $t5, 0x98($s0)
/* 3CF1C 8003C31C 8FB00020 */  lw         $s0, 0x20($sp)
/* 3CF20 8003C320 03E00008 */  jr         $ra
/* 3CF24 8003C324 27BD0028 */   addiu     $sp, $sp, 0x28
