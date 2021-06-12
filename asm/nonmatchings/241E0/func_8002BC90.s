glabel func_8002BC90
/* 2C890 8002BC90 AFA40000 */  sw         $a0, ($sp)
/* 2C894 8002BC94 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2C898 8002BC98 11C00007 */  beqz       $t6, .L8002BCB8
/* 2C89C 8002BC9C 01C02025 */   or        $a0, $t6, $zero
/* 2C8A0 8002BCA0 3C0A800C */  lui        $t2, %hi(D_800BE510)
/* 2C8A4 8002BCA4 254AE510 */  addiu      $t2, $t2, %lo(D_800BE510)
/* 2C8A8 8002BCA8 95420000 */  lhu        $v0, ($t2)
/* 2C8AC 8002BCAC 3C0D800C */  lui        $t5, %hi(D_800BE50C)
/* 2C8B0 8002BCB0 10000006 */  b          .L8002BCCC
/* 2C8B4 8002BCB4 25ADE50C */   addiu     $t5, $t5, %lo(D_800BE50C)
.L8002BCB8:
/* 2C8B8 8002BCB8 3C0D800C */  lui        $t5, %hi(D_800BE50C)
/* 2C8BC 8002BCBC 25ADE50C */  addiu      $t5, $t5, %lo(D_800BE50C)
/* 2C8C0 8002BCC0 3C0A800C */  lui        $t2, %hi(D_800BE510)
/* 2C8C4 8002BCC4 95A20000 */  lhu        $v0, ($t5)
/* 2C8C8 8002BCC8 254AE510 */  addiu      $t2, $t2, %lo(D_800BE510)
.L8002BCCC:
/* 2C8CC 8002BCCC 3C08800C */  lui        $t0, %hi(D_800BE504)
/* 2C8D0 8002BCD0 9508E504 */  lhu        $t0, %lo(D_800BE504)($t0)
/* 2C8D4 8002BCD4 240FFFFF */  addiu      $t7, $zero, -1
/* 2C8D8 8002BCD8 3C0B8012 */  lui        $t3, %hi(D_8011DD70)
/* 2C8DC 8002BCDC 00001825 */  or         $v1, $zero, $zero
/* 2C8E0 8002BCE0 256BDD70 */  addiu      $t3, $t3, %lo(D_8011DD70)
/* 2C8E4 8002BCE4 00002825 */  or         $a1, $zero, $zero
/* 2C8E8 8002BCE8 240C0002 */  addiu      $t4, $zero, 2
/* 2C8EC 8002BCEC 01E84823 */  subu       $t1, $t7, $t0
.L8002BCF0:
/* 2C8F0 8002BCF0 0005C040 */  sll        $t8, $a1, 1
/* 2C8F4 8002BCF4 0178C821 */  addu       $t9, $t3, $t8
/* 2C8F8 8002BCF8 97260000 */  lhu        $a2, ($t9)
/* 2C8FC 8002BCFC 24A50001 */  addiu      $a1, $a1, 1
/* 2C900 8002BD00 00C93024 */  and        $a2, $a2, $t1
/* 2C904 8002BD04 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 2C908 8002BD08 11C0000E */  beqz       $t6, .L8002BD44
/* 2C90C 8002BD0C 30B9FFFF */   andi      $t9, $a1, 0xffff
/* 2C910 8002BD10 15C20009 */  bne        $t6, $v0, .L8002BD38
/* 2C914 8002BD14 24630001 */   addiu     $v1, $v1, 1
/* 2C918 8002BD18 306FFFFF */  andi       $t7, $v1, 0xffff
/* 2C91C 8002BD1C 158F0009 */  bne        $t4, $t7, .L8002BD44
/* 2C920 8002BD20 01E01825 */   or        $v1, $t7, $zero
/* 2C924 8002BD24 3C09800C */  lui        $t1, %hi(D_800BE5FC)
/* 2C928 8002BD28 2529E5FC */  addiu      $t1, $t1, %lo(D_800BE5FC)
/* 2C92C 8002BD2C 24180003 */  addiu      $t8, $zero, 3
/* 2C930 8002BD30 03E00008 */  jr         $ra
/* 2C934 8002BD34 A5380000 */   sh        $t8, ($t1)
.L8002BD38:
/* 2C938 8002BD38 00001825 */  or         $v1, $zero, $zero
/* 2C93C 8002BD3C 10000006 */  b          .L8002BD58
/* 2C940 8002BD40 00002825 */   or        $a1, $zero, $zero
.L8002BD44:
/* 2C944 8002BD44 2B210012 */  slti       $at, $t9, 0x12
/* 2C948 8002BD48 1420FFE9 */  bnez       $at, .L8002BCF0
/* 2C94C 8002BD4C 03202825 */   or        $a1, $t9, $zero
/* 2C950 8002BD50 00001825 */  or         $v1, $zero, $zero
/* 2C954 8002BD54 00002825 */  or         $a1, $zero, $zero
.L8002BD58:
/* 2C958 8002BD58 10800004 */  beqz       $a0, .L8002BD6C
/* 2C95C 8002BD5C 00000000 */   nop
/* 2C960 8002BD60 95A20000 */  lhu        $v0, ($t5)
/* 2C964 8002BD64 10000004 */  b          .L8002BD78
/* 2C968 8002BD68 00057040 */   sll       $t6, $a1, 1
.L8002BD6C:
/* 2C96C 8002BD6C 95420000 */  lhu        $v0, ($t2)
/* 2C970 8002BD70 00000000 */  nop
.L8002BD74:
/* 2C974 8002BD74 00057040 */  sll        $t6, $a1, 1
.L8002BD78:
/* 2C978 8002BD78 016E7821 */  addu       $t7, $t3, $t6
/* 2C97C 8002BD7C 95E60000 */  lhu        $a2, ($t7)
/* 2C980 8002BD80 24A50001 */  addiu      $a1, $a1, 1
/* 2C984 8002BD84 00C93024 */  and        $a2, $a2, $t1
/* 2C988 8002BD88 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 2C98C 8002BD8C 1300000D */  beqz       $t8, .L8002BDC4
/* 2C990 8002BD90 30AFFFFF */   andi      $t7, $a1, 0xffff
/* 2C994 8002BD94 17020009 */  bne        $t8, $v0, .L8002BDBC
/* 2C998 8002BD98 24630001 */   addiu     $v1, $v1, 1
/* 2C99C 8002BD9C 3079FFFF */  andi       $t9, $v1, 0xffff
/* 2C9A0 8002BDA0 15990008 */  bne        $t4, $t9, .L8002BDC4
/* 2C9A4 8002BDA4 03201825 */   or        $v1, $t9, $zero
/* 2C9A8 8002BDA8 3C09800C */  lui        $t1, %hi(D_800BE5FC)
/* 2C9AC 8002BDAC 2529E5FC */  addiu      $t1, $t1, %lo(D_800BE5FC)
/* 2C9B0 8002BDB0 240E0005 */  addiu      $t6, $zero, 5
/* 2C9B4 8002BDB4 03E00008 */  jr         $ra
/* 2C9B8 8002BDB8 A52E0000 */   sh        $t6, ($t1)
.L8002BDBC:
/* 2C9BC 8002BDBC 10000005 */  b          .L8002BDD4
/* 2C9C0 8002BDC0 00002825 */   or        $a1, $zero, $zero
.L8002BDC4:
/* 2C9C4 8002BDC4 29E10012 */  slti       $at, $t7, 0x12
/* 2C9C8 8002BDC8 1420FFEA */  bnez       $at, .L8002BD74
/* 2C9CC 8002BDCC 01E02825 */   or        $a1, $t7, $zero
/* 2C9D0 8002BDD0 00002825 */  or         $a1, $zero, $zero
.L8002BDD4:
/* 2C9D4 8002BDD4 10800004 */  beqz       $a0, .L8002BDE8
/* 2C9D8 8002BDD8 3C09800C */   lui       $t1, 0x800c
/* 2C9DC 8002BDDC 95420000 */  lhu        $v0, ($t2)
/* 2C9E0 8002BDE0 10000003 */  b          .L8002BDF0
/* 2C9E4 8002BDE4 00000000 */   nop
.L8002BDE8:
/* 2C9E8 8002BDE8 95A20000 */  lhu        $v0, ($t5)
/* 2C9EC 8002BDEC 00000000 */  nop
.L8002BDF0:
/* 2C9F0 8002BDF0 2529E5FC */  addiu      $t1, $t1, -0x1a04
/* 2C9F4 8002BDF4 95230000 */  lhu        $v1, ($t1)
/* 2C9F8 8002BDF8 3C06800C */  lui        $a2, 0x800c
/* 2C9FC 8002BDFC 30780001 */  andi       $t8, $v1, 1
/* 2CA00 8002BE00 13000015 */  beqz       $t8, .L8002BE58
/* 2CA04 8002BE04 03001825 */   or        $v1, $t8, $zero
.L8002BE08:
/* 2CA08 8002BE08 0005C840 */  sll        $t9, $a1, 1
/* 2CA0C 8002BE0C 01797021 */  addu       $t6, $t3, $t9
/* 2CA10 8002BE10 95C70000 */  lhu        $a3, ($t6)
/* 2CA14 8002BE14 24A50001 */  addiu      $a1, $a1, 1
/* 2CA18 8002BE18 10E0000B */  beqz       $a3, .L8002BE48
/* 2CA1C 8002BE1C 30B9FFFF */   andi      $t9, $a1, 0xffff
/* 2CA20 8002BE20 94C6E514 */  lhu        $a2, -0x1aec($a2)
/* 2CA24 8002BE24 2418000B */  addiu      $t8, $zero, 0xb
/* 2CA28 8002BE28 10C70003 */  beq        $a2, $a3, .L8002BE38
/* 2CA2C 8002BE2C 00C27821 */   addu      $t7, $a2, $v0
/* 2CA30 8002BE30 15E70003 */  bne        $t7, $a3, .L8002BE40
/* 2CA34 8002BE34 00000000 */   nop
.L8002BE38:
/* 2CA38 8002BE38 03E00008 */  jr         $ra
/* 2CA3C 8002BE3C A5380000 */   sh        $t8, ($t1)
.L8002BE40:
/* 2CA40 8002BE40 10000005 */  b          .L8002BE58
/* 2CA44 8002BE44 00002825 */   or        $a1, $zero, $zero
.L8002BE48:
/* 2CA48 8002BE48 2B21000A */  slti       $at, $t9, 0xa
/* 2CA4C 8002BE4C 1420FFEE */  bnez       $at, .L8002BE08
/* 2CA50 8002BE50 03202825 */   or        $a1, $t9, $zero
/* 2CA54 8002BE54 00002825 */  or         $a1, $zero, $zero
.L8002BE58:
/* 2CA58 8002BE58 10800004 */  beqz       $a0, .L8002BE6C
/* 2CA5C 8002BE5C 00000000 */   nop
/* 2CA60 8002BE60 95A20000 */  lhu        $v0, ($t5)
/* 2CA64 8002BE64 10000003 */  b          .L8002BE74
/* 2CA68 8002BE68 00000000 */   nop
.L8002BE6C:
/* 2CA6C 8002BE6C 95420000 */  lhu        $v0, ($t2)
/* 2CA70 8002BE70 00000000 */  nop
.L8002BE74:
/* 2CA74 8002BE74 10600015 */  beqz       $v1, .L8002BECC
/* 2CA78 8002BE78 3C06800C */   lui       $a2, 0x800c
.L8002BE7C:
/* 2CA7C 8002BE7C 00057040 */  sll        $t6, $a1, 1
/* 2CA80 8002BE80 016E7821 */  addu       $t7, $t3, $t6
/* 2CA84 8002BE84 95E70000 */  lhu        $a3, ($t7)
/* 2CA88 8002BE88 24A50001 */  addiu      $a1, $a1, 1
/* 2CA8C 8002BE8C 10E0000B */  beqz       $a3, .L8002BEBC
/* 2CA90 8002BE90 30AEFFFF */   andi      $t6, $a1, 0xffff
/* 2CA94 8002BE94 94C6E514 */  lhu        $a2, -0x1aec($a2)
/* 2CA98 8002BE98 2419000D */  addiu      $t9, $zero, 0xd
/* 2CA9C 8002BE9C 10C70003 */  beq        $a2, $a3, .L8002BEAC
/* 2CAA0 8002BEA0 00C2C021 */   addu      $t8, $a2, $v0
/* 2CAA4 8002BEA4 17070003 */  bne        $t8, $a3, .L8002BEB4
/* 2CAA8 8002BEA8 00000000 */   nop
.L8002BEAC:
/* 2CAAC 8002BEAC 03E00008 */  jr         $ra
/* 2CAB0 8002BEB0 A5390000 */   sh        $t9, ($t1)
.L8002BEB4:
/* 2CAB4 8002BEB4 10000005 */  b          .L8002BECC
/* 2CAB8 8002BEB8 00002825 */   or        $a1, $zero, $zero
.L8002BEBC:
/* 2CABC 8002BEBC 29C1000A */  slti       $at, $t6, 0xa
/* 2CAC0 8002BEC0 1420FFEE */  bnez       $at, .L8002BE7C
/* 2CAC4 8002BEC4 01C02825 */   or        $a1, $t6, $zero
/* 2CAC8 8002BEC8 00002825 */  or         $a1, $zero, $zero
.L8002BECC:
/* 2CACC 8002BECC 00001825 */  or         $v1, $zero, $zero
.L8002BED0:
/* 2CAD0 8002BED0 00057840 */  sll        $t7, $a1, 1
/* 2CAD4 8002BED4 016FC021 */  addu       $t8, $t3, $t7
/* 2CAD8 8002BED8 97070000 */  lhu        $a3, ($t8)
/* 2CADC 8002BEDC 3C06800C */  lui        $a2, %hi(D_800BE514)
/* 2CAE0 8002BEE0 10E00008 */  beqz       $a3, .L8002BF04
/* 2CAE4 8002BEE4 00000000 */   nop
/* 2CAE8 8002BEE8 94C6E514 */  lhu        $a2, %lo(D_800BE514)($a2)
/* 2CAEC 8002BEEC 00000000 */  nop
/* 2CAF0 8002BEF0 10C70009 */  beq        $a2, $a3, .L8002BF18
/* 2CAF4 8002BEF4 00C8C821 */   addu      $t9, $a2, $t0
/* 2CAF8 8002BEF8 13270008 */  beq        $t9, $a3, .L8002BF1C
/* 2CAFC 8002BEFC 24A50001 */   addiu     $a1, $a1, 1
/* 2CB00 8002BF00 24050064 */  addiu      $a1, $zero, 0x64
.L8002BF04:
/* 2CB04 8002BF04 24A50001 */  addiu      $a1, $a1, 1
/* 2CB08 8002BF08 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 2CB0C 8002BF0C 29C10014 */  slti       $at, $t6, 0x14
/* 2CB10 8002BF10 1420FFEF */  bnez       $at, .L8002BED0
/* 2CB14 8002BF14 01C02825 */   or        $a1, $t6, $zero
.L8002BF18:
/* 2CB18 8002BF18 24A50001 */  addiu      $a1, $a1, 1
.L8002BF1C:
/* 2CB1C 8002BF1C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 2CB20 8002BF20 29E10014 */  slti       $at, $t7, 0x14
/* 2CB24 8002BF24 10200015 */  beqz       $at, .L8002BF7C
/* 2CB28 8002BF28 01E02825 */   or        $a1, $t7, $zero
.L8002BF2C:
/* 2CB2C 8002BF2C 0005C040 */  sll        $t8, $a1, 1
/* 2CB30 8002BF30 0178C821 */  addu       $t9, $t3, $t8
/* 2CB34 8002BF34 97260000 */  lhu        $a2, ($t9)
/* 2CB38 8002BF38 24A50001 */  addiu      $a1, $a1, 1
/* 2CB3C 8002BF3C 10C0000B */  beqz       $a2, .L8002BF6C
/* 2CB40 8002BF40 30B8FFFF */   andi      $t8, $a1, 0xffff
/* 2CB44 8002BF44 15060007 */  bne        $t0, $a2, .L8002BF64
/* 2CB48 8002BF48 24630001 */   addiu     $v1, $v1, 1
/* 2CB4C 8002BF4C 306EFFFF */  andi       $t6, $v1, 0xffff
/* 2CB50 8002BF50 158E0006 */  bne        $t4, $t6, .L8002BF6C
/* 2CB54 8002BF54 01C01825 */   or        $v1, $t6, $zero
/* 2CB58 8002BF58 240F0010 */  addiu      $t7, $zero, 0x10
/* 2CB5C 8002BF5C 03E00008 */  jr         $ra
/* 2CB60 8002BF60 A52F0000 */   sh        $t7, ($t1)
.L8002BF64:
/* 2CB64 8002BF64 10000005 */  b          .L8002BF7C
/* 2CB68 8002BF68 00001825 */   or        $v1, $zero, $zero
.L8002BF6C:
/* 2CB6C 8002BF6C 2B010014 */  slti       $at, $t8, 0x14
/* 2CB70 8002BF70 1420FFEE */  bnez       $at, .L8002BF2C
/* 2CB74 8002BF74 03002825 */   or        $a1, $t8, $zero
/* 2CB78 8002BF78 00001825 */  or         $v1, $zero, $zero
.L8002BF7C:
/* 2CB7C 8002BF7C 3C02800C */  lui        $v0, %hi(D_800BE508)
/* 2CB80 8002BF80 00002825 */  or         $a1, $zero, $zero
/* 2CB84 8002BF84 2442E508 */  addiu      $v0, $v0, %lo(D_800BE508)
.L8002BF88:
/* 2CB88 8002BF88 0005C840 */  sll        $t9, $a1, 1
/* 2CB8C 8002BF8C 01797021 */  addu       $t6, $t3, $t9
/* 2CB90 8002BF90 95C70000 */  lhu        $a3, ($t6)
/* 2CB94 8002BF94 3C06800C */  lui        $a2, %hi(D_800BE514)
/* 2CB98 8002BF98 10E0000B */  beqz       $a3, .L8002BFC8
/* 2CB9C 8002BF9C 00000000 */   nop
/* 2CBA0 8002BFA0 94C6E514 */  lhu        $a2, %lo(D_800BE514)($a2)
/* 2CBA4 8002BFA4 00000000 */  nop
/* 2CBA8 8002BFA8 10C7000C */  beq        $a2, $a3, .L8002BFDC
/* 2CBAC 8002BFAC 00000000 */   nop
/* 2CBB0 8002BFB0 944F0000 */  lhu        $t7, ($v0)
/* 2CBB4 8002BFB4 00000000 */  nop
/* 2CBB8 8002BFB8 00CFC021 */  addu       $t8, $a2, $t7
/* 2CBBC 8002BFBC 13070008 */  beq        $t8, $a3, .L8002BFE0
/* 2CBC0 8002BFC0 24A50001 */   addiu     $a1, $a1, 1
/* 2CBC4 8002BFC4 24050064 */  addiu      $a1, $zero, 0x64
.L8002BFC8:
/* 2CBC8 8002BFC8 24A50001 */  addiu      $a1, $a1, 1
/* 2CBCC 8002BFCC 30B9FFFF */  andi       $t9, $a1, 0xffff
/* 2CBD0 8002BFD0 2B210014 */  slti       $at, $t9, 0x14
/* 2CBD4 8002BFD4 1420FFEC */  bnez       $at, .L8002BF88
/* 2CBD8 8002BFD8 03202825 */   or        $a1, $t9, $zero
.L8002BFDC:
/* 2CBDC 8002BFDC 24A50001 */  addiu      $a1, $a1, 1
.L8002BFE0:
/* 2CBE0 8002BFE0 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 2CBE4 8002BFE4 29C10014 */  slti       $at, $t6, 0x14
/* 2CBE8 8002BFE8 10200013 */  beqz       $at, .L8002C038
/* 2CBEC 8002BFEC 01C02825 */   or        $a1, $t6, $zero
.L8002BFF0:
/* 2CBF0 8002BFF0 00057840 */  sll        $t7, $a1, 1
/* 2CBF4 8002BFF4 016FC021 */  addu       $t8, $t3, $t7
/* 2CBF8 8002BFF8 97060000 */  lhu        $a2, ($t8)
/* 2CBFC 8002BFFC 24A50001 */  addiu      $a1, $a1, 1
/* 2CC00 8002C000 10C0000A */  beqz       $a2, .L8002C02C
/* 2CC04 8002C004 30B8FFFF */   andi      $t8, $a1, 0xffff
/* 2CC08 8002C008 94590000 */  lhu        $t9, ($v0)
/* 2CC0C 8002C00C 24630001 */  addiu      $v1, $v1, 1
/* 2CC10 8002C010 17260009 */  bne        $t9, $a2, .L8002C038
/* 2CC14 8002C014 306EFFFF */   andi      $t6, $v1, 0xffff
/* 2CC18 8002C018 158E0004 */  bne        $t4, $t6, .L8002C02C
/* 2CC1C 8002C01C 01C01825 */   or        $v1, $t6, $zero
/* 2CC20 8002C020 240F0020 */  addiu      $t7, $zero, 0x20
/* 2CC24 8002C024 03E00008 */  jr         $ra
/* 2CC28 8002C028 A52F0000 */   sh        $t7, ($t1)
.L8002C02C:
/* 2CC2C 8002C02C 2B010014 */  slti       $at, $t8, 0x14
/* 2CC30 8002C030 1420FFEF */  bnez       $at, .L8002BFF0
/* 2CC34 8002C034 03002825 */   or        $a1, $t8, $zero
.L8002C038:
/* 2CC38 8002C038 A5200000 */  sh         $zero, ($t1)
/* 2CC3C 8002C03C 03E00008 */  jr         $ra
/* 2CC40 8002C040 00000000 */   nop
