glabel func_800B3260
/* B3E60 800B3260 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3E64 800B3264 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3E68 800B3268 AFA40020 */  sw         $a0, 0x20($sp)
/* B3E6C 800B326C AFA50024 */  sw         $a1, 0x24($sp)
/* B3E70 800B3270 AFA60028 */  sw         $a2, 0x28($sp)
/* B3E74 800B3274 8FAE0020 */  lw         $t6, 0x20($sp)
/* B3E78 800B3278 8FAF0024 */  lw         $t7, 0x24($sp)
/* B3E7C 800B327C 8FB80028 */  lw         $t8, 0x28($sp)
/* B3E80 800B3280 C5C40000 */  lwc1       $f4, ($t6)
/* B3E84 800B3284 C5E80000 */  lwc1       $f8, ($t7)
/* B3E88 800B3288 C7120000 */  lwc1       $f18, ($t8)
/* B3E8C 800B328C 46042182 */  mul.s      $f6, $f4, $f4
/* B3E90 800B3290 00000000 */  nop
/* B3E94 800B3294 46084282 */  mul.s      $f10, $f8, $f8
/* B3E98 800B3298 460A3400 */  add.s      $f16, $f6, $f10
/* B3E9C 800B329C 46129102 */  mul.s      $f4, $f18, $f18
/* B3EA0 800B32A0 0C0295C4 */  jal        func_800A5710
/* B3EA4 800B32A4 46102300 */   add.s     $f12, $f4, $f16
/* B3EA8 800B32A8 3C013F80 */  lui        $at, 0x3f80
/* B3EAC 800B32AC 44814000 */  mtc1       $at, $f8
/* B3EB0 800B32B0 00000000 */  nop
/* B3EB4 800B32B4 46004183 */  div.s      $f6, $f8, $f0
/* B3EB8 800B32B8 E7A6001C */  swc1       $f6, 0x1c($sp)
/* B3EBC 800B32BC 8FB90020 */  lw         $t9, 0x20($sp)
/* B3EC0 800B32C0 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* B3EC4 800B32C4 C72A0000 */  lwc1       $f10, ($t9)
/* B3EC8 800B32C8 46125102 */  mul.s      $f4, $f10, $f18
/* B3ECC 800B32CC E7240000 */  swc1       $f4, ($t9)
/* B3ED0 800B32D0 8FA80024 */  lw         $t0, 0x24($sp)
/* B3ED4 800B32D4 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* B3ED8 800B32D8 C5100000 */  lwc1       $f16, ($t0)
/* B3EDC 800B32DC 46088182 */  mul.s      $f6, $f16, $f8
/* B3EE0 800B32E0 E5060000 */  swc1       $f6, ($t0)
/* B3EE4 800B32E4 8FA90028 */  lw         $t1, 0x28($sp)
/* B3EE8 800B32E8 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* B3EEC 800B32EC C52A0000 */  lwc1       $f10, ($t1)
/* B3EF0 800B32F0 46125102 */  mul.s      $f4, $f10, $f18
/* B3EF4 800B32F4 E5240000 */  swc1       $f4, ($t1)
/* B3EF8 800B32F8 10000001 */  b          .L800B3300
/* B3EFC 800B32FC 00000000 */   nop
.L800B3300:
/* B3F00 800B3300 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3F04 800B3304 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3F08 800B3308 03E00008 */  jr         $ra
/* B3F0C 800B330C 00000000 */   nop
