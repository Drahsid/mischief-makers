glabel func_8009FE30
/* A0A30 8009FE30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A0A34 8009FE34 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0A38 8009FE38 AFA40020 */  sw         $a0, 0x20($sp)
/* A0A3C 8009FE3C AFA50024 */  sw         $a1, 0x24($sp)
/* A0A40 8009FE40 8FAE0020 */  lw         $t6, 0x20($sp)
/* A0A44 8009FE44 31CF0007 */  andi       $t7, $t6, 7
/* A0A48 8009FE48 11E00007 */  beqz       $t7, .L8009FE68
/* A0A4C 8009FE4C 00000000 */   nop
/* A0A50 8009FE50 2404000F */  addiu      $a0, $zero, 0xf
/* A0A54 8009FE54 24050001 */  addiu      $a1, $zero, 1
/* A0A58 8009FE58 0C0297B4 */  jal        func_800A5ED0
/* A0A5C 8009FE5C 8FA60020 */   lw        $a2, 0x20($sp)
/* A0A60 8009FE60 10000032 */  b          .L8009FF2C
/* A0A64 8009FE64 2402FFFF */   addiu     $v0, $zero, -1
.L8009FE68:
/* A0A68 8009FE68 8FB80024 */  lw         $t8, 0x24($sp)
/* A0A6C 8009FE6C 33190007 */  andi       $t9, $t8, 7
/* A0A70 8009FE70 13200007 */  beqz       $t9, .L8009FE90
/* A0A74 8009FE74 00000000 */   nop
/* A0A78 8009FE78 24040010 */  addiu      $a0, $zero, 0x10
/* A0A7C 8009FE7C 24050001 */  addiu      $a1, $zero, 1
/* A0A80 8009FE80 0C0297B4 */  jal        func_800A5ED0
/* A0A84 8009FE84 8FA60024 */   lw        $a2, 0x24($sp)
/* A0A88 8009FE88 10000028 */  b          .L8009FF2C
/* A0A8C 8009FE8C 2402FFFF */   addiu     $v0, $zero, -1
.L8009FE90:
/* A0A90 8009FE90 8FA80020 */  lw         $t0, 0x20($sp)
/* A0A94 8009FE94 AFA8001C */  sw         $t0, 0x1c($sp)
/* A0A98 8009FE98 3C09800F */  lui        $t1, %hi(D_800EA530)
/* A0A9C 8009FE9C 9129A530 */  lbu        $t1, %lo(D_800EA530)($t1)
/* A0AA0 8009FEA0 11200004 */  beqz       $t1, .L8009FEB4
/* A0AA4 8009FEA4 00000000 */   nop
/* A0AA8 8009FEA8 8FAA0020 */  lw         $t2, 0x20($sp)
/* A0AAC 8009FEAC 254BE000 */  addiu      $t3, $t2, -0x2000
/* A0AB0 8009FEB0 AFAB001C */  sw         $t3, 0x1c($sp)
.L8009FEB4:
/* A0AB4 8009FEB4 8FAC0020 */  lw         $t4, 0x20($sp)
/* A0AB8 8009FEB8 8FAD0024 */  lw         $t5, 0x24($sp)
/* A0ABC 8009FEBC 24012000 */  addiu      $at, $zero, 0x2000
/* A0AC0 8009FEC0 018D7021 */  addu       $t6, $t4, $t5
/* A0AC4 8009FEC4 31CF3FFF */  andi       $t7, $t6, 0x3fff
/* A0AC8 8009FEC8 15E10005 */  bne        $t7, $at, .L8009FEE0
/* A0ACC 8009FECC 00000000 */   nop
/* A0AD0 8009FED0 24180001 */  addiu      $t8, $zero, 1
/* A0AD4 8009FED4 3C01800F */  lui        $at, %hi(D_800EA530)
/* A0AD8 8009FED8 10000003 */  b          .L8009FEE8
/* A0ADC 8009FEDC A038A530 */   sb        $t8, %lo(D_800EA530)($at)
.L8009FEE0:
/* A0AE0 8009FEE0 3C01800F */  lui        $at, %hi(D_800EA530)
/* A0AE4 8009FEE4 A020A530 */  sb         $zero, %lo(D_800EA530)($at)
.L8009FEE8:
/* A0AE8 8009FEE8 0C02C874 */  jal        func_800B21D0
/* A0AEC 8009FEEC 00000000 */   nop
/* A0AF0 8009FEF0 10400003 */  beqz       $v0, .L8009FF00
/* A0AF4 8009FEF4 00000000 */   nop
/* A0AF8 8009FEF8 1000000C */  b          .L8009FF2C
/* A0AFC 8009FEFC 2402FFFF */   addiu     $v0, $zero, -1
.L8009FF00:
/* A0B00 8009FF00 0C026964 */  jal        func_8009A590
/* A0B04 8009FF04 8FA4001C */   lw        $a0, 0x1c($sp)
/* A0B08 8009FF08 3C19A450 */  lui        $t9, 0xa450
/* A0B0C 8009FF0C AF220000 */  sw         $v0, ($t9)
/* A0B10 8009FF10 8FA80024 */  lw         $t0, 0x24($sp)
/* A0B14 8009FF14 3C09A450 */  lui        $t1, %hi(D_A4500004)
/* A0B18 8009FF18 AD280004 */  sw         $t0, %lo(D_A4500004)($t1)
/* A0B1C 8009FF1C 10000003 */  b          .L8009FF2C
/* A0B20 8009FF20 00001025 */   or        $v0, $zero, $zero
/* A0B24 8009FF24 10000001 */  b          .L8009FF2C
/* A0B28 8009FF28 00000000 */   nop
.L8009FF2C:
/* A0B2C 8009FF2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0B30 8009FF30 27BD0020 */  addiu      $sp, $sp, 0x20
/* A0B34 8009FF34 03E00008 */  jr         $ra
/* A0B38 8009FF38 00000000 */   nop
/* A0B3C 8009FF3C 00000000 */  nop
