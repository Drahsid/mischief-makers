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
