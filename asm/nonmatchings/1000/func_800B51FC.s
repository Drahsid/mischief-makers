glabel func_800B51FC
/* B5DFC 800B51FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B5E00 800B5200 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5E04 800B5204 3C0E8018 */  lui        $t6, %hi(D_801857B0)
/* B5E08 800B5208 8DCE57B0 */  lw         $t6, %lo(D_801857B0)($t6)
/* B5E0C 800B520C 25CF0014 */  addiu      $t7, $t6, 0x14
/* B5E10 800B5210 AFAF001C */  sw         $t7, 0x1c($sp)
/* B5E14 800B5214 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* B5E18 800B5218 8F190010 */  lw         $t9, %lo(D_A4600010)($t8)
/* B5E1C 800B521C AFB90018 */  sw         $t9, 0x18($sp)
/* B5E20 800B5220 8FA80018 */  lw         $t0, 0x18($sp)
/* B5E24 800B5224 31090003 */  andi       $t1, $t0, 3
/* B5E28 800B5228 11200008 */  beqz       $t1, .L800B524C
/* B5E2C 800B522C 00000000 */   nop
.L800B5230:
/* B5E30 800B5230 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* B5E34 800B5234 8D4B0010 */  lw         $t3, %lo(D_A4600010)($t2)
/* B5E38 800B5238 AFAB0018 */  sw         $t3, 0x18($sp)
/* B5E3C 800B523C 8FAC0018 */  lw         $t4, 0x18($sp)
/* B5E40 800B5240 318D0003 */  andi       $t5, $t4, 3
/* B5E44 800B5244 15A0FFFA */  bnez       $t5, .L800B5230
/* B5E48 800B5248 00000000 */   nop
.L800B524C:
/* B5E4C 800B524C 8FAE001C */  lw         $t6, 0x1c($sp)
/* B5E50 800B5250 3C011000 */  lui        $at, 0x1000
/* B5E54 800B5254 3C19A500 */  lui        $t9, %hi(D_A5000510)
/* B5E58 800B5258 8DCF0010 */  lw         $t7, 0x10($t6)
/* B5E5C 800B525C 01E1C025 */  or         $t8, $t7, $at
/* B5E60 800B5260 AF380510 */  sw         $t8, %lo(D_A5000510)($t9)
/* B5E64 800B5264 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* B5E68 800B5268 8D090010 */  lw         $t1, %lo(D_A4600010)($t0)
/* B5E6C 800B526C AFA90018 */  sw         $t1, 0x18($sp)
/* B5E70 800B5270 8FAA0018 */  lw         $t2, 0x18($sp)
/* B5E74 800B5274 314B0003 */  andi       $t3, $t2, 3
/* B5E78 800B5278 11600008 */  beqz       $t3, .L800B529C
/* B5E7C 800B527C 00000000 */   nop
.L800B5280:
/* B5E80 800B5280 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* B5E84 800B5284 8D8D0010 */  lw         $t5, %lo(D_A4600010)($t4)
/* B5E88 800B5288 AFAD0018 */  sw         $t5, 0x18($sp)
/* B5E8C 800B528C 8FAE0018 */  lw         $t6, 0x18($sp)
/* B5E90 800B5290 31CF0003 */  andi       $t7, $t6, 3
/* B5E94 800B5294 15E0FFFA */  bnez       $t7, .L800B5280
/* B5E98 800B5298 00000000 */   nop
.L800B529C:
/* B5E9C 800B529C 8FB8001C */  lw         $t8, 0x1c($sp)
/* B5EA0 800B52A0 3C08A500 */  lui        $t0, %hi(D_A5000510)
/* B5EA4 800B52A4 8F190010 */  lw         $t9, 0x10($t8)
/* B5EA8 800B52A8 AD190510 */  sw         $t9, %lo(D_A5000510)($t0)
/* B5EAC 800B52AC 0C02D4BD */  jal        func_800B52F4
/* B5EB0 800B52B0 00000000 */   nop
/* B5EB4 800B52B4 24090002 */  addiu      $t1, $zero, 2
/* B5EB8 800B52B8 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* B5EBC 800B52BC AD490010 */  sw         $t1, %lo(D_A4600010)($t2)
/* B5EC0 800B52C0 3C0B800F */  lui        $t3, %hi(D_800E9780)
/* B5EC4 800B52C4 8D6B9780 */  lw         $t3, %lo(D_800E9780)($t3)
/* B5EC8 800B52C8 3C010010 */  lui        $at, 0x10
/* B5ECC 800B52CC 34210401 */  ori        $at, $at, 0x401
/* B5ED0 800B52D0 01616025 */  or         $t4, $t3, $at
/* B5ED4 800B52D4 3C01800F */  lui        $at, %hi(D_800E9780)
/* B5ED8 800B52D8 AC2C9780 */  sw         $t4, %lo(D_800E9780)($at)
/* B5EDC 800B52DC 10000001 */  b          .L800B52E4
/* B5EE0 800B52E0 00000000 */   nop
.L800B52E4:
/* B5EE4 800B52E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5EE8 800B52E8 27BD0020 */  addiu      $sp, $sp, 0x20
/* B5EEC 800B52EC 03E00008 */  jr         $ra
/* B5EF0 800B52F0 00000000 */   nop
