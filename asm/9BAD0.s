.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009AED0
/* 9BAD0 8009AED0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9BAD4 8009AED4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9BAD8 8009AED8 AFA40020 */  sw         $a0, 0x20($sp)
/* 9BADC 8009AEDC 3C0E8018 */  lui        $t6, %hi(D_801855F0)
/* 9BAE0 8009AEE0 25CE55F0 */  addiu      $t6, $t6, %lo(D_801855F0)
/* 9BAE4 8009AEE4 AFAE001C */  sw         $t6, 0x1c($sp)
/* 9BAE8 8009AEE8 8FA40020 */  lw         $a0, 0x20($sp)
/* 9BAEC 8009AEEC 8FA5001C */  lw         $a1, 0x1c($sp)
/* 9BAF0 8009AEF0 0C02AA84 */  jal        func_800AAA10
/* 9BAF4 8009AEF4 24060040 */   addiu     $a2, $zero, 0x40
/* 9BAF8 8009AEF8 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9BAFC 8009AEFC 8DF80010 */  lw         $t8, 0x10($t7)
/* 9BB00 8009AF00 13000006 */  beqz       $t8, .L8009AF1C
/* 9BB04 8009AF04 00000000 */   nop
/* 9BB08 8009AF08 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9BB0C 8009AF0C 0C026964 */  jal        func_8009A590
/* 9BB10 8009AF10 8F240010 */   lw        $a0, 0x10($t9)
/* 9BB14 8009AF14 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9BB18 8009AF18 AD020010 */  sw         $v0, 0x10($t0)
.L8009AF1C:
/* 9BB1C 8009AF1C 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9BB20 8009AF20 8D2A0018 */  lw         $t2, 0x18($t1)
/* 9BB24 8009AF24 11400006 */  beqz       $t2, .L8009AF40
/* 9BB28 8009AF28 00000000 */   nop
/* 9BB2C 8009AF2C 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9BB30 8009AF30 0C026964 */  jal        func_8009A590
/* 9BB34 8009AF34 8D640018 */   lw        $a0, 0x18($t3)
/* 9BB38 8009AF38 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9BB3C 8009AF3C AD820018 */  sw         $v0, 0x18($t4)
.L8009AF40:
/* 9BB40 8009AF40 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9BB44 8009AF44 8DAE0020 */  lw         $t6, 0x20($t5)
/* 9BB48 8009AF48 11C00006 */  beqz       $t6, .L8009AF64
/* 9BB4C 8009AF4C 00000000 */   nop
/* 9BB50 8009AF50 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9BB54 8009AF54 0C026964 */  jal        func_8009A590
/* 9BB58 8009AF58 8DE40020 */   lw        $a0, 0x20($t7)
/* 9BB5C 8009AF5C 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9BB60 8009AF60 AF020020 */  sw         $v0, 0x20($t8)
.L8009AF64:
/* 9BB64 8009AF64 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9BB68 8009AF68 8F280028 */  lw         $t0, 0x28($t9)
/* 9BB6C 8009AF6C 11000006 */  beqz       $t0, .L8009AF88
/* 9BB70 8009AF70 00000000 */   nop
/* 9BB74 8009AF74 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9BB78 8009AF78 0C026964 */  jal        func_8009A590
/* 9BB7C 8009AF7C 8D240028 */   lw        $a0, 0x28($t1)
/* 9BB80 8009AF80 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9BB84 8009AF84 AD420028 */  sw         $v0, 0x28($t2)
.L8009AF88:
/* 9BB88 8009AF88 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9BB8C 8009AF8C 8D6C002C */  lw         $t4, 0x2c($t3)
/* 9BB90 8009AF90 11800006 */  beqz       $t4, .L8009AFAC
/* 9BB94 8009AF94 00000000 */   nop
/* 9BB98 8009AF98 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9BB9C 8009AF9C 0C026964 */  jal        func_8009A590
/* 9BBA0 8009AFA0 8DA4002C */   lw        $a0, 0x2c($t5)
/* 9BBA4 8009AFA4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9BBA8 8009AFA8 ADC2002C */  sw         $v0, 0x2c($t6)
.L8009AFAC:
/* 9BBAC 8009AFAC 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9BBB0 8009AFB0 8DF80030 */  lw         $t8, 0x30($t7)
/* 9BBB4 8009AFB4 13000006 */  beqz       $t8, .L8009AFD0
/* 9BBB8 8009AFB8 00000000 */   nop
/* 9BBBC 8009AFBC 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9BBC0 8009AFC0 0C026964 */  jal        func_8009A590
/* 9BBC4 8009AFC4 8F240030 */   lw        $a0, 0x30($t9)
/* 9BBC8 8009AFC8 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9BBCC 8009AFCC AD020030 */  sw         $v0, 0x30($t0)
.L8009AFD0:
/* 9BBD0 8009AFD0 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9BBD4 8009AFD4 8D2A0038 */  lw         $t2, 0x38($t1)
/* 9BBD8 8009AFD8 11400006 */  beqz       $t2, .L8009AFF4
/* 9BBDC 8009AFDC 00000000 */   nop
/* 9BBE0 8009AFE0 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9BBE4 8009AFE4 0C026964 */  jal        func_8009A590
/* 9BBE8 8009AFE8 8D640038 */   lw        $a0, 0x38($t3)
/* 9BBEC 8009AFEC 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9BBF0 8009AFF0 AD820038 */  sw         $v0, 0x38($t4)
.L8009AFF4:
/* 9BBF4 8009AFF4 10000003 */  b          .L8009B004
/* 9BBF8 8009AFF8 8FA2001C */   lw        $v0, 0x1c($sp)
/* 9BBFC 8009AFFC 10000001 */  b          .L8009B004
/* 9BC00 8009B000 00000000 */   nop
.L8009B004:
/* 9BC04 8009B004 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9BC08 8009B008 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9BC0C 8009B00C 03E00008 */  jr         $ra
/* 9BC10 8009B010 00000000 */   nop

glabel func_8009B014
/* 9BC14 8009B014 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9BC18 8009B018 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9BC1C 8009B01C AFA40020 */  sw         $a0, 0x20($sp)
/* 9BC20 8009B020 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9BC24 8009B024 8DCF0020 */  lw         $t7, 0x20($t6)
/* 9BC28 8009B028 11E0000B */  beqz       $t7, .L8009B058
/* 9BC2C 8009B02C 00000000 */   nop
/* 9BC30 8009B030 31F8000F */  andi       $t8, $t7, 0xf
/* 9BC34 8009B034 13000008 */  beqz       $t8, .L8009B058
/* 9BC38 8009B038 00000000 */   nop
/* 9BC3C 8009B03C 8FB90020 */  lw         $t9, 0x20($sp)
/* 9BC40 8009B040 24040039 */  addiu      $a0, $zero, 0x39
/* 9BC44 8009B044 24050001 */  addiu      $a1, $zero, 1
/* 9BC48 8009B048 0C0297B4 */  jal        func_800A5ED0
/* 9BC4C 8009B04C 8F260020 */   lw        $a2, 0x20($t9)
/* 9BC50 8009B050 1000008C */  b          .L8009B284
/* 9BC54 8009B054 00000000 */   nop
.L8009B058:
/* 9BC58 8009B058 8FA80020 */  lw         $t0, 0x20($sp)
/* 9BC5C 8009B05C 8D090028 */  lw         $t1, 0x28($t0)
/* 9BC60 8009B060 1120000B */  beqz       $t1, .L8009B090
/* 9BC64 8009B064 00000000 */   nop
/* 9BC68 8009B068 312A000F */  andi       $t2, $t1, 0xf
/* 9BC6C 8009B06C 11400008 */  beqz       $t2, .L8009B090
/* 9BC70 8009B070 00000000 */   nop
/* 9BC74 8009B074 8FAB0020 */  lw         $t3, 0x20($sp)
/* 9BC78 8009B078 2404003A */  addiu      $a0, $zero, 0x3a
/* 9BC7C 8009B07C 24050001 */  addiu      $a1, $zero, 1
/* 9BC80 8009B080 0C0297B4 */  jal        func_800A5ED0
/* 9BC84 8009B084 8D660028 */   lw        $a2, 0x28($t3)
/* 9BC88 8009B088 1000007E */  b          .L8009B284
/* 9BC8C 8009B08C 00000000 */   nop
.L8009B090:
/* 9BC90 8009B090 8FAC0020 */  lw         $t4, 0x20($sp)
/* 9BC94 8009B094 8D8D002C */  lw         $t5, 0x2c($t4)
/* 9BC98 8009B098 11A0000B */  beqz       $t5, .L8009B0C8
/* 9BC9C 8009B09C 00000000 */   nop
/* 9BCA0 8009B0A0 31AE000F */  andi       $t6, $t5, 0xf
/* 9BCA4 8009B0A4 11C00008 */  beqz       $t6, .L8009B0C8
/* 9BCA8 8009B0A8 00000000 */   nop
/* 9BCAC 8009B0AC 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9BCB0 8009B0B0 2404003B */  addiu      $a0, $zero, 0x3b
/* 9BCB4 8009B0B4 24050001 */  addiu      $a1, $zero, 1
/* 9BCB8 8009B0B8 0C0297B4 */  jal        func_800A5ED0
/* 9BCBC 8009B0BC 8DE6002C */   lw        $a2, 0x2c($t7)
/* 9BCC0 8009B0C0 10000070 */  b          .L8009B284
/* 9BCC4 8009B0C4 00000000 */   nop
.L8009B0C8:
/* 9BCC8 8009B0C8 8FB80020 */  lw         $t8, 0x20($sp)
/* 9BCCC 8009B0CC 8F190038 */  lw         $t9, 0x38($t8)
/* 9BCD0 8009B0D0 1320000B */  beqz       $t9, .L8009B100
/* 9BCD4 8009B0D4 00000000 */   nop
/* 9BCD8 8009B0D8 3328000F */  andi       $t0, $t9, 0xf
/* 9BCDC 8009B0DC 11000008 */  beqz       $t0, .L8009B100
/* 9BCE0 8009B0E0 00000000 */   nop
/* 9BCE4 8009B0E4 8FA90020 */  lw         $t1, 0x20($sp)
/* 9BCE8 8009B0E8 2404003C */  addiu      $a0, $zero, 0x3c
/* 9BCEC 8009B0EC 24050001 */  addiu      $a1, $zero, 1
/* 9BCF0 8009B0F0 0C0297B4 */  jal        func_800A5ED0
/* 9BCF4 8009B0F4 8D260038 */   lw        $a2, 0x38($t1)
/* 9BCF8 8009B0F8 10000062 */  b          .L8009B284
/* 9BCFC 8009B0FC 00000000 */   nop
.L8009B100:
/* 9BD00 8009B100 0C026BB4 */  jal        func_8009AED0
/* 9BD04 8009B104 8FA40020 */   lw        $a0, 0x20($sp)
/* 9BD08 8009B108 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9BD0C 8009B10C 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9BD10 8009B110 8D4B0004 */  lw         $t3, 4($t2)
/* 9BD14 8009B114 316C0001 */  andi       $t4, $t3, 1
/* 9BD18 8009B118 11800019 */  beqz       $t4, .L8009B180
/* 9BD1C 8009B11C 00000000 */   nop
/* 9BD20 8009B120 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9BD24 8009B124 8DAE0038 */  lw         $t6, 0x38($t5)
/* 9BD28 8009B128 ADAE0018 */  sw         $t6, 0x18($t5)
/* 9BD2C 8009B12C 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9BD30 8009B130 8DF8003C */  lw         $t8, 0x3c($t7)
/* 9BD34 8009B134 ADF8001C */  sw         $t8, 0x1c($t7)
/* 9BD38 8009B138 8FB90020 */  lw         $t9, 0x20($sp)
/* 9BD3C 8009B13C 2401FFFE */  addiu      $at, $zero, -2
/* 9BD40 8009B140 8F280004 */  lw         $t0, 4($t9)
/* 9BD44 8009B144 01014824 */  and        $t1, $t0, $at
/* 9BD48 8009B148 AF290004 */  sw         $t1, 4($t9)
/* 9BD4C 8009B14C 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9BD50 8009B150 8D4B0004 */  lw         $t3, 4($t2)
/* 9BD54 8009B154 316C0004 */  andi       $t4, $t3, 4
/* 9BD58 8009B158 11800009 */  beqz       $t4, .L8009B180
/* 9BD5C 8009B15C 00000000 */   nop
/* 9BD60 8009B160 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9BD64 8009B164 3C01A000 */  lui        $at, 0xa000
/* 9BD68 8009B168 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9BD6C 8009B16C 8DCD0038 */  lw         $t5, 0x38($t6)
/* 9BD70 8009B170 25B80BFC */  addiu      $t8, $t5, 0xbfc
/* 9BD74 8009B174 03017825 */  or         $t7, $t8, $at
/* 9BD78 8009B178 8DE80000 */  lw         $t0, ($t7)
/* 9BD7C 8009B17C AD280010 */  sw         $t0, 0x10($t1)
.L8009B180:
/* 9BD80 8009B180 8FA4001C */  lw         $a0, 0x1c($sp)
/* 9BD84 8009B184 0C029BC4 */  jal        func_800A6F10
/* 9BD88 8009B188 24050040 */   addiu     $a1, $zero, 0x40
/* 9BD8C 8009B18C 0C02AB5C */  jal        func_800AAD70
/* 9BD90 8009B190 24042B00 */   addiu     $a0, $zero, 0x2b00
/* 9BD94 8009B194 3C040400 */  lui        $a0, 0x400
/* 9BD98 8009B198 0C02AB64 */  jal        func_800AAD90
/* 9BD9C 8009B19C 34841000 */   ori       $a0, $a0, 0x1000
/* 9BDA0 8009B1A0 2401FFFF */  addiu      $at, $zero, -1
/* 9BDA4 8009B1A4 14410007 */  bne        $v0, $at, .L8009B1C4
/* 9BDA8 8009B1A8 00000000 */   nop
.L8009B1AC:
/* 9BDAC 8009B1AC 3C040400 */  lui        $a0, 0x400
/* 9BDB0 8009B1B0 0C02AB64 */  jal        func_800AAD90
/* 9BDB4 8009B1B4 34841000 */   ori       $a0, $a0, 0x1000
/* 9BDB8 8009B1B8 2401FFFF */  addiu      $at, $zero, -1
/* 9BDBC 8009B1BC 1041FFFB */  beq        $v0, $at, .L8009B1AC
/* 9BDC0 8009B1C0 00000000 */   nop
.L8009B1C4:
/* 9BDC4 8009B1C4 3C050400 */  lui        $a1, 0x400
/* 9BDC8 8009B1C8 34A50FC0 */  ori        $a1, $a1, 0xfc0
/* 9BDCC 8009B1CC 24040001 */  addiu      $a0, $zero, 1
/* 9BDD0 8009B1D0 8FA6001C */  lw         $a2, 0x1c($sp)
/* 9BDD4 8009B1D4 0C02AB74 */  jal        func_800AADD0
/* 9BDD8 8009B1D8 24070040 */   addiu     $a3, $zero, 0x40
/* 9BDDC 8009B1DC 2401FFFF */  addiu      $at, $zero, -1
/* 9BDE0 8009B1E0 1441000A */  bne        $v0, $at, .L8009B20C
/* 9BDE4 8009B1E4 00000000 */   nop
.L8009B1E8:
/* 9BDE8 8009B1E8 3C050400 */  lui        $a1, 0x400
/* 9BDEC 8009B1EC 34A50FC0 */  ori        $a1, $a1, 0xfc0
/* 9BDF0 8009B1F0 24040001 */  addiu      $a0, $zero, 1
/* 9BDF4 8009B1F4 8FA6001C */  lw         $a2, 0x1c($sp)
/* 9BDF8 8009B1F8 0C02AB74 */  jal        func_800AADD0
/* 9BDFC 8009B1FC 24070040 */   addiu     $a3, $zero, 0x40
/* 9BE00 8009B200 2401FFFF */  addiu      $at, $zero, -1
/* 9BE04 8009B204 1041FFF8 */  beq        $v0, $at, .L8009B1E8
/* 9BE08 8009B208 00000000 */   nop
.L8009B20C:
/* 9BE0C 8009B20C 0C02ABC0 */  jal        func_800AAF00
/* 9BE10 8009B210 00000000 */   nop
/* 9BE14 8009B214 10400005 */  beqz       $v0, .L8009B22C
/* 9BE18 8009B218 00000000 */   nop
.L8009B21C:
/* 9BE1C 8009B21C 0C02ABC0 */  jal        func_800AAF00
/* 9BE20 8009B220 00000000 */   nop
/* 9BE24 8009B224 1440FFFD */  bnez       $v0, .L8009B21C
/* 9BE28 8009B228 00000000 */   nop
.L8009B22C:
/* 9BE2C 8009B22C 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9BE30 8009B230 3C050400 */  lui        $a1, 0x400
/* 9BE34 8009B234 34A51000 */  ori        $a1, $a1, 0x1000
/* 9BE38 8009B238 24040001 */  addiu      $a0, $zero, 1
/* 9BE3C 8009B23C 8F260008 */  lw         $a2, 8($t9)
/* 9BE40 8009B240 0C02AB74 */  jal        func_800AADD0
/* 9BE44 8009B244 8F27000C */   lw        $a3, 0xc($t9)
/* 9BE48 8009B248 2401FFFF */  addiu      $at, $zero, -1
/* 9BE4C 8009B24C 1441000B */  bne        $v0, $at, .L8009B27C
/* 9BE50 8009B250 00000000 */   nop
.L8009B254:
/* 9BE54 8009B254 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9BE58 8009B258 3C050400 */  lui        $a1, 0x400
/* 9BE5C 8009B25C 34A51000 */  ori        $a1, $a1, 0x1000
/* 9BE60 8009B260 24040001 */  addiu      $a0, $zero, 1
/* 9BE64 8009B264 8D460008 */  lw         $a2, 8($t2)
/* 9BE68 8009B268 0C02AB74 */  jal        func_800AADD0
/* 9BE6C 8009B26C 8D47000C */   lw        $a3, 0xc($t2)
/* 9BE70 8009B270 2401FFFF */  addiu      $at, $zero, -1
/* 9BE74 8009B274 1041FFF7 */  beq        $v0, $at, .L8009B254
/* 9BE78 8009B278 00000000 */   nop
.L8009B27C:
/* 9BE7C 8009B27C 10000001 */  b          .L8009B284
/* 9BE80 8009B280 00000000 */   nop
.L8009B284:
/* 9BE84 8009B284 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9BE88 8009B288 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9BE8C 8009B28C 03E00008 */  jr         $ra
/* 9BE90 8009B290 00000000 */   nop

glabel func_8009B294
/* 9BE94 8009B294 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9BE98 8009B298 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9BE9C 8009B29C AFA40018 */  sw         $a0, 0x18($sp)
/* 9BEA0 8009B2A0 0C02ABC0 */  jal        func_800AAF00
/* 9BEA4 8009B2A4 00000000 */   nop
/* 9BEA8 8009B2A8 10400005 */  beqz       $v0, .L8009B2C0
/* 9BEAC 8009B2AC 00000000 */   nop
.L8009B2B0:
/* 9BEB0 8009B2B0 0C02ABC0 */  jal        func_800AAF00
/* 9BEB4 8009B2B4 00000000 */   nop
/* 9BEB8 8009B2B8 1440FFFD */  bnez       $v0, .L8009B2B0
/* 9BEBC 8009B2BC 00000000 */   nop
.L8009B2C0:
/* 9BEC0 8009B2C0 0C02AB5C */  jal        func_800AAD70
/* 9BEC4 8009B2C4 24040125 */   addiu     $a0, $zero, 0x125
/* 9BEC8 8009B2C8 10000001 */  b          .L8009B2D0
/* 9BECC 8009B2CC 00000000 */   nop
.L8009B2D0:
/* 9BED0 8009B2D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9BED4 8009B2D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9BED8 8009B2D8 03E00008 */  jr         $ra
/* 9BEDC 8009B2DC 00000000 */   nop

glabel func_8009B2E0
/* 9BEE0 8009B2E0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 9BEE4 8009B2E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9BEE8 8009B2E8 AFA40080 */  sw         $a0, 0x80($sp)
/* 9BEEC 8009B2EC AFA50084 */  sw         $a1, 0x84($sp)
/* 9BEF0 8009B2F0 AFA60088 */  sw         $a2, 0x88($sp)
/* 9BEF4 8009B2F4 AFA00078 */  sw         $zero, 0x78($sp)
/* 9BEF8 8009B2F8 3C0E800F */  lui        $t6, %hi(D_800EA510)
/* 9BEFC 8009B2FC 8DCEA510 */  lw         $t6, %lo(D_800EA510)($t6)
/* 9BF00 8009B300 11C00003 */  beqz       $t6, .L8009B310
/* 9BF04 8009B304 00000000 */   nop
/* 9BF08 8009B308 10000077 */  b          .L8009B4E8
/* 9BF0C 8009B30C 00001025 */   or        $v0, $zero, $zero
.L8009B310:
/* 9BF10 8009B310 240F0001 */  addiu      $t7, $zero, 1
/* 9BF14 8009B314 3C01800F */  lui        $at, %hi(D_800EA510)
/* 9BF18 8009B318 AC2FA510 */  sw         $t7, %lo(D_800EA510)($at)
/* 9BF1C 8009B31C 0C0295C8 */  jal        func_800A5720
/* 9BF20 8009B320 00000000 */   nop
/* 9BF24 8009B324 AFA20070 */  sw         $v0, 0x70($sp)
/* 9BF28 8009B328 AFA30074 */  sw         $v1, 0x74($sp)
/* 9BF2C 8009B32C 3C050007 */  lui        $a1, 7
/* 9BF30 8009B330 3C06800F */  lui        $a2, %hi(D_800E9770)
/* 9BF34 8009B334 3C07800F */  lui        $a3, %hi(D_800E9774)
/* 9BF38 8009B338 8CE79774 */  lw         $a3, %lo(D_800E9774)($a3)
/* 9BF3C 8009B33C 8CC69770 */  lw         $a2, %lo(D_800E9770)($a2)
/* 9BF40 8009B340 34A5A120 */  ori        $a1, $a1, 0xa120
/* 9BF44 8009B344 0C029112 */  jal        func_800A4448
/* 9BF48 8009B348 24040000 */   addiu     $a0, $zero, 0
/* 9BF4C 8009B34C AFA20030 */  sw         $v0, 0x30($sp)
/* 9BF50 8009B350 AFA30034 */  sw         $v1, 0x34($sp)
/* 9BF54 8009B354 3C07000F */  lui        $a3, 0xf
/* 9BF58 8009B358 34E74240 */  ori        $a3, $a3, 0x4240
/* 9BF5C 8009B35C 8FA50034 */  lw         $a1, 0x34($sp)
/* 9BF60 8009B360 8FA40030 */  lw         $a0, 0x30($sp)
/* 9BF64 8009B364 0C0290C2 */  jal        func_800A4308
/* 9BF68 8009B368 24060000 */   addiu     $a2, $zero, 0
/* 9BF6C 8009B36C 8FB80070 */  lw         $t8, 0x70($sp)
/* 9BF70 8009B370 8FB90074 */  lw         $t9, 0x74($sp)
/* 9BF74 8009B374 0058082B */  sltu       $at, $v0, $t8
/* 9BF78 8009B378 14200033 */  bnez       $at, .L8009B448
/* 9BF7C 8009B37C 00000000 */   nop
/* 9BF80 8009B380 0302082B */  sltu       $at, $t8, $v0
/* 9BF84 8009B384 14200004 */  bnez       $at, .L8009B398
/* 9BF88 8009B388 00000000 */   nop
/* 9BF8C 8009B38C 0323082B */  sltu       $at, $t9, $v1
/* 9BF90 8009B390 1020002D */  beqz       $at, .L8009B448
/* 9BF94 8009B394 00000000 */   nop
.L8009B398:
/* 9BF98 8009B398 27A40038 */  addiu      $a0, $sp, 0x38
/* 9BF9C 8009B39C 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9BFA0 8009B3A0 0C026994 */  jal        osCreateMesgQueue
/* 9BFA4 8009B3A4 24060001 */   addiu     $a2, $zero, 1
/* 9BFA8 8009B3A8 3C050007 */  lui        $a1, 7
/* 9BFAC 8009B3AC 3C06800F */  lui        $a2, %hi(D_800E9770)
/* 9BFB0 8009B3B0 3C07800F */  lui        $a3, %hi(D_800E9774)
/* 9BFB4 8009B3B4 8CE79774 */  lw         $a3, %lo(D_800E9774)($a3)
/* 9BFB8 8009B3B8 8CC69770 */  lw         $a2, %lo(D_800E9770)($a2)
/* 9BFBC 8009B3BC 34A5A120 */  ori        $a1, $a1, 0xa120
/* 9BFC0 8009B3C0 0C029112 */  jal        func_800A4448
/* 9BFC4 8009B3C4 24040000 */   addiu     $a0, $zero, 0
/* 9BFC8 8009B3C8 AFA20028 */  sw         $v0, 0x28($sp)
/* 9BFCC 8009B3CC AFA3002C */  sw         $v1, 0x2c($sp)
/* 9BFD0 8009B3D0 3C07000F */  lui        $a3, 0xf
/* 9BFD4 8009B3D4 34E74240 */  ori        $a3, $a3, 0x4240
/* 9BFD8 8009B3D8 8FA5002C */  lw         $a1, 0x2c($sp)
/* 9BFDC 8009B3DC 8FA40028 */  lw         $a0, 0x28($sp)
/* 9BFE0 8009B3E0 0C0290C2 */  jal        func_800A4308
/* 9BFE4 8009B3E4 24060000 */   addiu     $a2, $zero, 0
/* 9BFE8 8009B3E8 AFA20030 */  sw         $v0, 0x30($sp)
/* 9BFEC 8009B3EC AFA30034 */  sw         $v1, 0x34($sp)
/* 9BFF0 8009B3F0 8FA90034 */  lw         $t1, 0x34($sp)
/* 9BFF4 8009B3F4 8FA80030 */  lw         $t0, 0x30($sp)
/* 9BFF8 8009B3F8 8FAA0070 */  lw         $t2, 0x70($sp)
/* 9BFFC 8009B3FC 8FAB0074 */  lw         $t3, 0x74($sp)
/* 9C000 8009B400 240C0000 */  addiu      $t4, $zero, 0
/* 9C004 8009B404 240D0000 */  addiu      $t5, $zero, 0
/* 9C008 8009B408 27AE0038 */  addiu      $t6, $sp, 0x38
/* 9C00C 8009B40C 27AF007C */  addiu      $t7, $sp, 0x7c
/* 9C010 8009B410 010A3023 */  subu       $a2, $t0, $t2
/* 9C014 8009B414 012B082B */  sltu       $at, $t1, $t3
/* 9C018 8009B418 00C13023 */  subu       $a2, $a2, $at
/* 9C01C 8009B41C AFAF001C */  sw         $t7, 0x1c($sp)
/* 9C020 8009B420 AFAE0018 */  sw         $t6, 0x18($sp)
/* 9C024 8009B424 AFAD0014 */  sw         $t5, 0x14($sp)
/* 9C028 8009B428 AFAC0010 */  sw         $t4, 0x10($sp)
/* 9C02C 8009B42C 27A40050 */  addiu      $a0, $sp, 0x50
/* 9C030 8009B430 0C02ABD0 */  jal        func_800AAF40
/* 9C034 8009B434 012B3823 */   subu      $a3, $t1, $t3
/* 9C038 8009B438 27A40038 */  addiu      $a0, $sp, 0x38
/* 9C03C 8009B43C 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9C040 8009B440 0C026B44 */  jal        func_8009AD10
/* 9C044 8009B444 24060001 */   addiu     $a2, $zero, 1
.L8009B448:
/* 9C048 8009B448 24180004 */  addiu      $t8, $zero, 4
/* 9C04C 8009B44C 3C018018 */  lui        $at, %hi(D_80185671)
/* 9C050 8009B450 A0385671 */  sb         $t8, %lo(D_80185671)($at)
/* 9C054 8009B454 0C026D77 */  jal        func_8009B5DC
/* 9C058 8009B458 00002025 */   or        $a0, $zero, $zero
/* 9C05C 8009B45C 3C058018 */  lui        $a1, %hi(D_80185630)
/* 9C060 8009B460 24A55630 */  addiu      $a1, $a1, %lo(D_80185630)
/* 9C064 8009B464 0C02AA48 */  jal        func_800AA920
/* 9C068 8009B468 24040001 */   addiu     $a0, $zero, 1
/* 9C06C 8009B46C AFA20078 */  sw         $v0, 0x78($sp)
/* 9C070 8009B470 8FA40080 */  lw         $a0, 0x80($sp)
/* 9C074 8009B474 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9C078 8009B478 0C026B44 */  jal        func_8009AD10
/* 9C07C 8009B47C 24060001 */   addiu     $a2, $zero, 1
/* 9C080 8009B480 3C058018 */  lui        $a1, %hi(D_80185630)
/* 9C084 8009B484 24A55630 */  addiu      $a1, $a1, %lo(D_80185630)
/* 9C088 8009B488 0C02AA48 */  jal        func_800AA920
/* 9C08C 8009B48C 00002025 */   or        $a0, $zero, $zero
/* 9C090 8009B490 AFA20078 */  sw         $v0, 0x78($sp)
/* 9C094 8009B494 8FA40080 */  lw         $a0, 0x80($sp)
/* 9C098 8009B498 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9C09C 8009B49C 0C026B44 */  jal        func_8009AD10
/* 9C0A0 8009B4A0 24060001 */   addiu     $a2, $zero, 1
/* 9C0A4 8009B4A4 8FA40084 */  lw         $a0, 0x84($sp)
/* 9C0A8 8009B4A8 0C026D3E */  jal        func_8009B4F8
/* 9C0AC 8009B4AC 8FA50088 */   lw        $a1, 0x88($sp)
/* 9C0B0 8009B4B0 3C018018 */  lui        $at, %hi(D_80185670)
/* 9C0B4 8009B4B4 A0205670 */  sb         $zero, %lo(D_80185670)($at)
/* 9C0B8 8009B4B8 0C02AA10 */  jal        func_800AA840
/* 9C0BC 8009B4BC 00000000 */   nop
/* 9C0C0 8009B4C0 3C048018 */  lui        $a0, %hi(D_80185698)
/* 9C0C4 8009B4C4 3C058018 */  lui        $a1, %hi(D_801856B0)
/* 9C0C8 8009B4C8 24A556B0 */  addiu      $a1, $a1, %lo(D_801856B0)
/* 9C0CC 8009B4CC 24845698 */  addiu      $a0, $a0, %lo(D_80185698)
/* 9C0D0 8009B4D0 0C026994 */  jal        osCreateMesgQueue
/* 9C0D4 8009B4D4 24060001 */   addiu     $a2, $zero, 1
/* 9C0D8 8009B4D8 10000003 */  b          .L8009B4E8
/* 9C0DC 8009B4DC 8FA20078 */   lw        $v0, 0x78($sp)
/* 9C0E0 8009B4E0 10000001 */  b          .L8009B4E8
/* 9C0E4 8009B4E4 00000000 */   nop
.L8009B4E8:
/* 9C0E8 8009B4E8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9C0EC 8009B4EC 27BD0080 */  addiu      $sp, $sp, 0x80
/* 9C0F0 8009B4F0 03E00008 */  jr         $ra
/* 9C0F4 8009B4F4 00000000 */   nop

glabel func_8009B4F8
/* 9C0F8 8009B4F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C0FC 8009B4FC A3A00007 */  sb         $zero, 7($sp)
/* 9C100 8009B500 3C0E8018 */  lui        $t6, %hi(D_80185630)
/* 9C104 8009B504 25CE5630 */  addiu      $t6, $t6, %lo(D_80185630)
/* 9C108 8009B508 AFAE0014 */  sw         $t6, 0x14($sp)
/* 9C10C 8009B50C 3C0F8018 */  lui        $t7, %hi(D_80185671)
/* 9C110 8009B510 91EF5671 */  lbu        $t7, %lo(D_80185671)($t7)
/* 9C114 8009B514 AFA00008 */  sw         $zero, 8($sp)
/* 9C118 8009B518 19E0002A */  blez       $t7, .L8009B5C4
/* 9C11C 8009B51C 00000000 */   nop
.L8009B520:
/* 9C120 8009B520 8FB90014 */  lw         $t9, 0x14($sp)
/* 9C124 8009B524 27B8000C */  addiu      $t8, $sp, 0xc
/* 9C128 8009B528 8B210000 */  lwl        $at, ($t9)
/* 9C12C 8009B52C 9B210003 */  lwr        $at, 3($t9)
/* 9C130 8009B530 AF010000 */  sw         $at, ($t8)
/* 9C134 8009B534 8B290004 */  lwl        $t1, 4($t9)
/* 9C138 8009B538 9B290007 */  lwr        $t1, 7($t9)
/* 9C13C 8009B53C AF090004 */  sw         $t1, 4($t8)
/* 9C140 8009B540 93AA000E */  lbu        $t2, 0xe($sp)
/* 9C144 8009B544 314B00C0 */  andi       $t3, $t2, 0xc0
/* 9C148 8009B548 000B6103 */  sra        $t4, $t3, 4
/* 9C14C 8009B54C A0AC0003 */  sb         $t4, 3($a1)
/* 9C150 8009B550 90AD0003 */  lbu        $t5, 3($a1)
/* 9C154 8009B554 11A00003 */  beqz       $t5, .L8009B564
/* 9C158 8009B558 00000000 */   nop
/* 9C15C 8009B55C 1000000E */  b          .L8009B598
/* 9C160 8009B560 00000000 */   nop
.L8009B564:
/* 9C164 8009B564 93AE0011 */  lbu        $t6, 0x11($sp)
/* 9C168 8009B568 93A80010 */  lbu        $t0, 0x10($sp)
/* 9C16C 8009B56C 000E7A00 */  sll        $t7, $t6, 8
/* 9C170 8009B570 01E8C025 */  or         $t8, $t7, $t0
/* 9C174 8009B574 A4B80000 */  sh         $t8, ($a1)
/* 9C178 8009B578 93B90012 */  lbu        $t9, 0x12($sp)
/* 9C17C 8009B57C A0B90002 */  sb         $t9, 2($a1)
/* 9C180 8009B580 8FAA0008 */  lw         $t2, 8($sp)
/* 9C184 8009B584 93A90007 */  lbu        $t1, 7($sp)
/* 9C188 8009B588 240B0001 */  addiu      $t3, $zero, 1
/* 9C18C 8009B58C 014B6004 */  sllv       $t4, $t3, $t2
/* 9C190 8009B590 012C6825 */  or         $t5, $t1, $t4
/* 9C194 8009B594 A3AD0007 */  sb         $t5, 7($sp)
.L8009B598:
/* 9C198 8009B598 8FAE0008 */  lw         $t6, 8($sp)
/* 9C19C 8009B59C 3C198018 */  lui        $t9, %hi(D_80185671)
/* 9C1A0 8009B5A0 93395671 */  lbu        $t9, %lo(D_80185671)($t9)
/* 9C1A4 8009B5A4 8FA80014 */  lw         $t0, 0x14($sp)
/* 9C1A8 8009B5A8 25CF0001 */  addiu      $t7, $t6, 1
/* 9C1AC 8009B5AC 01F9082A */  slt        $at, $t7, $t9
/* 9C1B0 8009B5B0 25180008 */  addiu      $t8, $t0, 8
/* 9C1B4 8009B5B4 AFB80014 */  sw         $t8, 0x14($sp)
/* 9C1B8 8009B5B8 AFAF0008 */  sw         $t7, 8($sp)
/* 9C1BC 8009B5BC 1420FFD8 */  bnez       $at, .L8009B520
/* 9C1C0 8009B5C0 24A50004 */   addiu     $a1, $a1, 4
.L8009B5C4:
/* 9C1C4 8009B5C4 93AB0007 */  lbu        $t3, 7($sp)
/* 9C1C8 8009B5C8 A08B0000 */  sb         $t3, ($a0)
/* 9C1CC 8009B5CC 10000001 */  b          .L8009B5D4
/* 9C1D0 8009B5D0 00000000 */   nop
.L8009B5D4:
/* 9C1D4 8009B5D4 03E00008 */  jr         $ra
/* 9C1D8 8009B5D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8009B5DC
/* 9C1DC 8009B5DC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9C1E0 8009B5E0 308400FF */  andi       $a0, $a0, 0xff
/* 9C1E4 8009B5E4 AFA00000 */  sw         $zero, ($sp)
.L8009B5E8:
/* 9C1E8 8009B5E8 8FAE0000 */  lw         $t6, ($sp)
/* 9C1EC 8009B5EC 3C018018 */  lui        $at, %hi(D_80185630)
/* 9C1F0 8009B5F0 000E7880 */  sll        $t7, $t6, 2
/* 9C1F4 8009B5F4 002F0821 */  addu       $at, $at, $t7
/* 9C1F8 8009B5F8 AC205630 */  sw         $zero, %lo(D_80185630)($at)
/* 9C1FC 8009B5FC 8FB80000 */  lw         $t8, ($sp)
/* 9C200 8009B600 27190001 */  addiu      $t9, $t8, 1
/* 9C204 8009B604 2B210010 */  slti       $at, $t9, 0x10
/* 9C208 8009B608 1420FFF7 */  bnez       $at, .L8009B5E8
/* 9C20C 8009B60C AFB90000 */   sw        $t9, ($sp)
/* 9C210 8009B610 24080001 */  addiu      $t0, $zero, 1
/* 9C214 8009B614 3C018018 */  lui        $at, %hi(D_8018566C)
/* 9C218 8009B618 AC28566C */  sw         $t0, %lo(D_8018566C)($at)
/* 9C21C 8009B61C 3C098018 */  lui        $t1, %hi(D_80185630)
/* 9C220 8009B620 25295630 */  addiu      $t1, $t1, %lo(D_80185630)
/* 9C224 8009B624 AFA9000C */  sw         $t1, 0xc($sp)
/* 9C228 8009B628 240A00FF */  addiu      $t2, $zero, 0xff
/* 9C22C 8009B62C A3AA0004 */  sb         $t2, 4($sp)
/* 9C230 8009B630 240B0001 */  addiu      $t3, $zero, 1
/* 9C234 8009B634 A3AB0005 */  sb         $t3, 5($sp)
/* 9C238 8009B638 240C0003 */  addiu      $t4, $zero, 3
/* 9C23C 8009B63C A3AC0006 */  sb         $t4, 6($sp)
/* 9C240 8009B640 A3A40007 */  sb         $a0, 7($sp)
/* 9C244 8009B644 240D00FF */  addiu      $t5, $zero, 0xff
/* 9C248 8009B648 A3AD0008 */  sb         $t5, 8($sp)
/* 9C24C 8009B64C 240E00FF */  addiu      $t6, $zero, 0xff
/* 9C250 8009B650 A3AE0009 */  sb         $t6, 9($sp)
/* 9C254 8009B654 240F00FF */  addiu      $t7, $zero, 0xff
/* 9C258 8009B658 A3AF000A */  sb         $t7, 0xa($sp)
/* 9C25C 8009B65C 241800FF */  addiu      $t8, $zero, 0xff
/* 9C260 8009B660 A3B8000B */  sb         $t8, 0xb($sp)
/* 9C264 8009B664 3C198018 */  lui        $t9, %hi(D_80185671)
/* 9C268 8009B668 93395671 */  lbu        $t9, %lo(D_80185671)($t9)
/* 9C26C 8009B66C AFA00000 */  sw         $zero, ($sp)
/* 9C270 8009B670 1B200014 */  blez       $t9, .L8009B6C4
/* 9C274 8009B674 00000000 */   nop
.L8009B678:
/* 9C278 8009B678 27A90004 */  addiu      $t1, $sp, 4
/* 9C27C 8009B67C 8D210000 */  lw         $at, ($t1)
/* 9C280 8009B680 8FA8000C */  lw         $t0, 0xc($sp)
/* 9C284 8009B684 A9010000 */  swl        $at, ($t0)
/* 9C288 8009B688 B9010003 */  swr        $at, 3($t0)
/* 9C28C 8009B68C 8D2B0004 */  lw         $t3, 4($t1)
/* 9C290 8009B690 A90B0004 */  swl        $t3, 4($t0)
/* 9C294 8009B694 B90B0007 */  swr        $t3, 7($t0)
/* 9C298 8009B698 8FAC000C */  lw         $t4, 0xc($sp)
/* 9C29C 8009B69C 258D0008 */  addiu      $t5, $t4, 8
/* 9C2A0 8009B6A0 AFAD000C */  sw         $t5, 0xc($sp)
/* 9C2A4 8009B6A4 8FAE0000 */  lw         $t6, ($sp)
/* 9C2A8 8009B6A8 3C188018 */  lui        $t8, %hi(D_80185671)
/* 9C2AC 8009B6AC 93185671 */  lbu        $t8, %lo(D_80185671)($t8)
/* 9C2B0 8009B6B0 25CF0001 */  addiu      $t7, $t6, 1
/* 9C2B4 8009B6B4 AFAF0000 */  sw         $t7, ($sp)
/* 9C2B8 8009B6B8 01F8082A */  slt        $at, $t7, $t8
/* 9C2BC 8009B6BC 1420FFEE */  bnez       $at, .L8009B678
/* 9C2C0 8009B6C0 00000000 */   nop
.L8009B6C4:
/* 9C2C4 8009B6C4 8FAA000C */  lw         $t2, 0xc($sp)
/* 9C2C8 8009B6C8 241900FE */  addiu      $t9, $zero, 0xfe
/* 9C2CC 8009B6CC A1590000 */  sb         $t9, ($t2)
/* 9C2D0 8009B6D0 10000001 */  b          .L8009B6D8
/* 9C2D4 8009B6D4 00000000 */   nop
.L8009B6D8:
/* 9C2D8 8009B6D8 03E00008 */  jr         $ra
/* 9C2DC 8009B6DC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8009B6E0
/* 9C2E0 8009B6E0 18A00020 */  blez       $a1, .L8009B764
/* 9C2E4 8009B6E4 00000000 */   nop
/* 9C2E8 8009B6E8 240B2000 */  addiu      $t3, $zero, 0x2000
/* 9C2EC 8009B6EC 00AB082B */  sltu       $at, $a1, $t3
/* 9C2F0 8009B6F0 1020001E */  beqz       $at, .L8009B76C
/* 9C2F4 8009B6F4 00000000 */   nop
/* 9C2F8 8009B6F8 00804025 */  or         $t0, $a0, $zero
/* 9C2FC 8009B6FC 00854821 */  addu       $t1, $a0, $a1
/* 9C300 8009B700 0109082B */  sltu       $at, $t0, $t1
/* 9C304 8009B704 10200017 */  beqz       $at, .L8009B764
/* 9C308 8009B708 00000000 */   nop
/* 9C30C 8009B70C 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 9C310 8009B710 310A000F */  andi       $t2, $t0, 0xf
/* 9C314 8009B714 11400007 */  beqz       $t2, .L8009B734
/* 9C318 8009B718 00000000 */   nop
/* 9C31C 8009B71C 010A4023 */  subu       $t0, $t0, $t2
/* 9C320 8009B720 BD150000 */  cache      0x15, ($t0)
/* 9C324 8009B724 0109082B */  sltu       $at, $t0, $t1
/* 9C328 8009B728 1020000E */  beqz       $at, .L8009B764
/* 9C32C 8009B72C 00000000 */   nop
/* 9C330 8009B730 25080010 */  addiu      $t0, $t0, 0x10
.L8009B734:
/* 9C334 8009B734 312A000F */  andi       $t2, $t1, 0xf
/* 9C338 8009B738 11400006 */  beqz       $t2, .L8009B754
/* 9C33C 8009B73C 00000000 */   nop
/* 9C340 8009B740 012A4823 */  subu       $t1, $t1, $t2
/* 9C344 8009B744 BD350010 */  cache      0x15, 0x10($t1)
/* 9C348 8009B748 0128082B */  sltu       $at, $t1, $t0
/* 9C34C 8009B74C 14200005 */  bnez       $at, .L8009B764
/* 9C350 8009B750 00000000 */   nop
.L8009B754:
/* 9C354 8009B754 BD110000 */  cache      0x11, ($t0)
/* 9C358 8009B758 0109082B */  sltu       $at, $t0, $t1
/* 9C35C 8009B75C 1420FFFD */  bnez       $at, .L8009B754
/* 9C360 8009B760 25080010 */   addiu     $t0, $t0, 0x10
.L8009B764:
/* 9C364 8009B764 03E00008 */  jr         $ra
/* 9C368 8009B768 00000000 */   nop
.L8009B76C:
/* 9C36C 8009B76C 3C088000 */  lui        $t0, 0x8000
/* 9C370 8009B770 010B4821 */  addu       $t1, $t0, $t3
/* 9C374 8009B774 2529FFF0 */  addiu      $t1, $t1, -0x10
.L8009B778:
/* 9C378 8009B778 BD010000 */  cache      1, ($t0)
/* 9C37C 8009B77C 0109082B */  sltu       $at, $t0, $t1
/* 9C380 8009B780 1420FFFD */  bnez       $at, .L8009B778
/* 9C384 8009B784 25080010 */   addiu     $t0, $t0, 0x10
/* 9C388 8009B788 03E00008 */  jr         $ra
/* 9C38C 8009B78C 00000000 */   nop

glabel func_8009B790
/* 9C390 8009B790 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9C394 8009B794 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9C398 8009B798 AFA40028 */  sw         $a0, 0x28($sp)
/* 9C39C 8009B79C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9C3A0 8009B7A0 AFA60030 */  sw         $a2, 0x30($sp)
/* 9C3A4 8009B7A4 AFA70034 */  sw         $a3, 0x34($sp)
/* 9C3A8 8009B7A8 AFB10018 */  sw         $s1, 0x18($sp)
/* 9C3AC 8009B7AC AFB00014 */  sw         $s0, 0x14($sp)
/* 9C3B0 8009B7B0 3C0E800F */  lui        $t6, %hi(D_800EA4D0)
/* 9C3B4 8009B7B4 8DCEA4D0 */  lw         $t6, %lo(D_800EA4D0)($t6)
/* 9C3B8 8009B7B8 15C00006 */  bnez       $t6, .L8009B7D4
/* 9C3BC 8009B7BC 00000000 */   nop
/* 9C3C0 8009B7C0 2404001C */  addiu      $a0, $zero, 0x1c
/* 9C3C4 8009B7C4 0C0297B4 */  jal        func_800A5ED0
/* 9C3C8 8009B7C8 00002825 */   or        $a1, $zero, $zero
/* 9C3CC 8009B7CC 10000079 */  b          .L8009B9B4
/* 9C3D0 8009B7D0 2402FFFF */   addiu     $v0, $zero, -1
.L8009B7D4:
/* 9C3D4 8009B7D4 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9C3D8 8009B7D8 11E0000A */  beqz       $t7, .L8009B804
/* 9C3DC 8009B7DC 00000000 */   nop
/* 9C3E0 8009B7E0 24010001 */  addiu      $at, $zero, 1
/* 9C3E4 8009B7E4 11E10007 */  beq        $t7, $at, .L8009B804
/* 9C3E8 8009B7E8 00000000 */   nop
/* 9C3EC 8009B7EC 2404001D */  addiu      $a0, $zero, 0x1d
/* 9C3F0 8009B7F0 24050001 */  addiu      $a1, $zero, 1
/* 9C3F4 8009B7F4 0C0297B4 */  jal        func_800A5ED0
/* 9C3F8 8009B7F8 8FA6002C */   lw        $a2, 0x2c($sp)
/* 9C3FC 8009B7FC 1000006D */  b          .L8009B9B4
/* 9C400 8009B800 2402FFFF */   addiu     $v0, $zero, -1
.L8009B804:
/* 9C404 8009B804 8FB80030 */  lw         $t8, 0x30($sp)
/* 9C408 8009B808 1300000A */  beqz       $t8, .L8009B834
/* 9C40C 8009B80C 00000000 */   nop
/* 9C410 8009B810 24010001 */  addiu      $at, $zero, 1
/* 9C414 8009B814 13010007 */  beq        $t8, $at, .L8009B834
/* 9C418 8009B818 00000000 */   nop
/* 9C41C 8009B81C 2404001E */  addiu      $a0, $zero, 0x1e
/* 9C420 8009B820 24050001 */  addiu      $a1, $zero, 1
/* 9C424 8009B824 0C0297B4 */  jal        func_800A5ED0
/* 9C428 8009B828 8FA60030 */   lw        $a2, 0x30($sp)
/* 9C42C 8009B82C 10000061 */  b          .L8009B9B4
/* 9C430 8009B830 2402FFFF */   addiu     $v0, $zero, -1
.L8009B834:
/* 9C434 8009B834 8FB90034 */  lw         $t9, 0x34($sp)
/* 9C438 8009B838 33280001 */  andi       $t0, $t9, 1
/* 9C43C 8009B83C 11000007 */  beqz       $t0, .L8009B85C
/* 9C440 8009B840 00000000 */   nop
/* 9C444 8009B844 2404001F */  addiu      $a0, $zero, 0x1f
/* 9C448 8009B848 24050001 */  addiu      $a1, $zero, 1
/* 9C44C 8009B84C 0C0297B4 */  jal        func_800A5ED0
/* 9C450 8009B850 8FA60034 */   lw        $a2, 0x34($sp)
/* 9C454 8009B854 10000057 */  b          .L8009B9B4
/* 9C458 8009B858 2402FFFF */   addiu     $v0, $zero, -1
.L8009B85C:
/* 9C45C 8009B85C 8FA90038 */  lw         $t1, 0x38($sp)
/* 9C460 8009B860 312A0007 */  andi       $t2, $t1, 7
/* 9C464 8009B864 11400007 */  beqz       $t2, .L8009B884
/* 9C468 8009B868 00000000 */   nop
/* 9C46C 8009B86C 24040020 */  addiu      $a0, $zero, 0x20
/* 9C470 8009B870 24050001 */  addiu      $a1, $zero, 1
/* 9C474 8009B874 0C0297B4 */  jal        func_800A5ED0
/* 9C478 8009B878 8FA60038 */   lw        $a2, 0x38($sp)
/* 9C47C 8009B87C 1000004D */  b          .L8009B9B4
/* 9C480 8009B880 2402FFFF */   addiu     $v0, $zero, -1
.L8009B884:
/* 9C484 8009B884 8FAB003C */  lw         $t3, 0x3c($sp)
/* 9C488 8009B888 316C0001 */  andi       $t4, $t3, 1
/* 9C48C 8009B88C 11800007 */  beqz       $t4, .L8009B8AC
/* 9C490 8009B890 00000000 */   nop
/* 9C494 8009B894 24040021 */  addiu      $a0, $zero, 0x21
/* 9C498 8009B898 24050001 */  addiu      $a1, $zero, 1
/* 9C49C 8009B89C 0C0297B4 */  jal        func_800A5ED0
/* 9C4A0 8009B8A0 8FA6003C */   lw        $a2, 0x3c($sp)
/* 9C4A4 8009B8A4 10000043 */  b          .L8009B9B4
/* 9C4A8 8009B8A8 2402FFFF */   addiu     $v0, $zero, -1
.L8009B8AC:
/* 9C4AC 8009B8AC 8FAD003C */  lw         $t5, 0x3c($sp)
/* 9C4B0 8009B8B0 11A00006 */  beqz       $t5, .L8009B8CC
/* 9C4B4 8009B8B4 00000000 */   nop
/* 9C4B8 8009B8B8 3C010100 */  lui        $at, 0x100
/* 9C4BC 8009B8BC 34210001 */  ori        $at, $at, 1
/* 9C4C0 8009B8C0 01A1082B */  sltu       $at, $t5, $at
/* 9C4C4 8009B8C4 14200007 */  bnez       $at, .L8009B8E4
/* 9C4C8 8009B8C8 00000000 */   nop
.L8009B8CC:
/* 9C4CC 8009B8CC 24040022 */  addiu      $a0, $zero, 0x22
/* 9C4D0 8009B8D0 24050001 */  addiu      $a1, $zero, 1
/* 9C4D4 8009B8D4 0C0297B4 */  jal        func_800A5ED0
/* 9C4D8 8009B8D8 8FA6003C */   lw        $a2, 0x3c($sp)
/* 9C4DC 8009B8DC 10000035 */  b          .L8009B9B4
/* 9C4E0 8009B8E0 2402FFFF */   addiu     $v0, $zero, -1
.L8009B8E4:
/* 9C4E4 8009B8E4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9C4E8 8009B8E8 15C00005 */  bnez       $t6, .L8009B900
/* 9C4EC 8009B8EC 00000000 */   nop
/* 9C4F0 8009B8F0 8FB80028 */  lw         $t8, 0x28($sp)
/* 9C4F4 8009B8F4 240F000B */  addiu      $t7, $zero, 0xb
/* 9C4F8 8009B8F8 10000004 */  b          .L8009B90C
/* 9C4FC 8009B8FC A70F0000 */   sh        $t7, ($t8)
.L8009B900:
/* 9C500 8009B900 8FA80028 */  lw         $t0, 0x28($sp)
/* 9C504 8009B904 2419000C */  addiu      $t9, $zero, 0xc
/* 9C508 8009B908 A5190000 */  sh         $t9, ($t0)
.L8009B90C:
/* 9C50C 8009B90C 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9C510 8009B910 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C514 8009B914 A1490002 */  sb         $t1, 2($t2)
/* 9C518 8009B918 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9C51C 8009B91C 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9C520 8009B920 AD8B0004 */  sw         $t3, 4($t4)
/* 9C524 8009B924 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9C528 8009B928 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C52C 8009B92C ADCD0008 */  sw         $t5, 8($t6)
/* 9C530 8009B930 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9C534 8009B934 8FB80028 */  lw         $t8, 0x28($sp)
/* 9C538 8009B938 AF0F000C */  sw         $t7, 0xc($t8)
/* 9C53C 8009B93C 8FB9003C */  lw         $t9, 0x3c($sp)
/* 9C540 8009B940 8FA80028 */  lw         $t0, 0x28($sp)
/* 9C544 8009B944 AD190010 */  sw         $t9, 0x10($t0)
/* 9C548 8009B948 8FA90028 */  lw         $t1, 0x28($sp)
/* 9C54C 8009B94C AD200014 */  sw         $zero, 0x14($t1)
/* 9C550 8009B950 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9C554 8009B954 24010001 */  addiu      $at, $zero, 1
/* 9C558 8009B958 1541000A */  bne        $t2, $at, .L8009B984
/* 9C55C 8009B95C 00000000 */   nop
/* 9C560 8009B960 0C02AC78 */  jal        func_800AB1E0
/* 9C564 8009B964 00000000 */   nop
/* 9C568 8009B968 00408825 */  or         $s1, $v0, $zero
/* 9C56C 8009B96C 02202025 */  or         $a0, $s1, $zero
/* 9C570 8009B970 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C574 8009B974 0C02AC14 */  jal        func_800AB050
/* 9C578 8009B978 00003025 */   or        $a2, $zero, $zero
/* 9C57C 8009B97C 10000009 */  b          .L8009B9A4
/* 9C580 8009B980 00408025 */   or        $s0, $v0, $zero
.L8009B984:
/* 9C584 8009B984 0C02AC78 */  jal        func_800AB1E0
/* 9C588 8009B988 00000000 */   nop
/* 9C58C 8009B98C 00408825 */  or         $s1, $v0, $zero
/* 9C590 8009B990 02202025 */  or         $a0, $s1, $zero
/* 9C594 8009B994 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C598 8009B998 0C0278BC */  jal        func_8009E2F0
/* 9C59C 8009B99C 00003025 */   or        $a2, $zero, $zero
/* 9C5A0 8009B9A0 00408025 */  or         $s0, $v0, $zero
.L8009B9A4:
/* 9C5A4 8009B9A4 10000003 */  b          .L8009B9B4
/* 9C5A8 8009B9A8 02001025 */   or        $v0, $s0, $zero
/* 9C5AC 8009B9AC 10000001 */  b          .L8009B9B4
/* 9C5B0 8009B9B0 00000000 */   nop
.L8009B9B4:
/* 9C5B4 8009B9B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9C5B8 8009B9B8 8FB00014 */  lw         $s0, 0x14($sp)
/* 9C5BC 8009B9BC 8FB10018 */  lw         $s1, 0x18($sp)
/* 9C5C0 8009B9C0 03E00008 */  jr         $ra
/* 9C5C4 8009B9C4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 9C5C8 8009B9C8 00000000 */  nop
/* 9C5CC 8009B9CC 00000000 */  nop
