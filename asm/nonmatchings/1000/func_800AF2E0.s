glabel func_800AF2E0
/* AFEE0 800AF2E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* AFEE4 800AF2E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* AFEE8 800AF2E8 AFA40048 */  sw         $a0, 0x48($sp)
/* AFEEC 800AF2EC AFA5004C */  sw         $a1, 0x4c($sp)
/* AFEF0 800AF2F0 AFA60050 */  sw         $a2, 0x50($sp)
/* AFEF4 800AF2F4 AFA70054 */  sw         $a3, 0x54($sp)
/* AFEF8 800AF2F8 8FAE0058 */  lw         $t6, 0x58($sp)
/* AFEFC 800AF2FC AFAE0044 */  sw         $t6, 0x44($sp)
/* AFF00 800AF300 8FAF0048 */  lw         $t7, 0x48($sp)
/* AFF04 800AF304 AFAF0040 */  sw         $t7, 0x40($sp)
/* AFF08 800AF308 8FB80040 */  lw         $t8, 0x40($sp)
/* AFF0C 800AF30C 8F19001C */  lw         $t9, 0x1c($t8)
/* AFF10 800AF310 AFB9003C */  sw         $t9, 0x3c($sp)
/* AFF14 800AF314 8FA80044 */  lw         $t0, 0x44($sp)
/* AFF18 800AF318 25090008 */  addiu      $t1, $t0, 8
/* AFF1C 800AF31C AFA90044 */  sw         $t1, 0x44($sp)
/* AFF20 800AF320 AFA80034 */  sw         $t0, 0x34($sp)
/* AFF24 800AF324 8FAB0034 */  lw         $t3, 0x34($sp)
/* AFF28 800AF328 3C0A0200 */  lui        $t2, 0x200
/* AFF2C 800AF32C 354A0440 */  ori        $t2, $t2, 0x440
/* AFF30 800AF330 AD6A0000 */  sw         $t2, ($t3)
/* AFF34 800AF334 8FAC0050 */  lw         $t4, 0x50($sp)
/* AFF38 800AF338 8FAE0034 */  lw         $t6, 0x34($sp)
/* AFF3C 800AF33C 000C6840 */  sll        $t5, $t4, 1
/* AFF40 800AF340 ADCD0004 */  sw         $t5, 4($t6)
/* AFF44 800AF344 8FAF0044 */  lw         $t7, 0x44($sp)
/* AFF48 800AF348 25F80008 */  addiu      $t8, $t7, 8
/* AFF4C 800AF34C AFB80044 */  sw         $t8, 0x44($sp)
/* AFF50 800AF350 AFAF0030 */  sw         $t7, 0x30($sp)
/* AFF54 800AF354 8FA80030 */  lw         $t0, 0x30($sp)
/* AFF58 800AF358 3C190200 */  lui        $t9, 0x200
/* AFF5C 800AF35C 37390580 */  ori        $t9, $t9, 0x580
/* AFF60 800AF360 AD190000 */  sw         $t9, ($t0)
/* AFF64 800AF364 8FA90050 */  lw         $t1, 0x50($sp)
/* AFF68 800AF368 8FAB0030 */  lw         $t3, 0x30($sp)
/* AFF6C 800AF36C 00095040 */  sll        $t2, $t1, 1
/* AFF70 800AF370 AD6A0004 */  sw         $t2, 4($t3)
/* AFF74 800AF374 8FAC0040 */  lw         $t4, 0x40($sp)
/* AFF78 800AF378 AFA00038 */  sw         $zero, 0x38($sp)
/* AFF7C 800AF37C 8D8D0014 */  lw         $t5, 0x14($t4)
/* AFF80 800AF380 19A0003B */  blez       $t5, .L800AF470
/* AFF84 800AF384 00000000 */   nop
.L800AF388:
/* AFF88 800AF388 8FAF0038 */  lw         $t7, 0x38($sp)
/* AFF8C 800AF38C 8FAE003C */  lw         $t6, 0x3c($sp)
/* AFF90 800AF390 8FA90044 */  lw         $t1, 0x44($sp)
/* AFF94 800AF394 000FC080 */  sll        $t8, $t7, 2
/* AFF98 800AF398 01D8C821 */  addu       $t9, $t6, $t8
/* AFF9C 800AF39C 8F280000 */  lw         $t0, ($t9)
/* AFFA0 800AF3A0 AFA90010 */  sw         $t1, 0x10($sp)
/* AFFA4 800AF3A4 8FA5004C */  lw         $a1, 0x4c($sp)
/* AFFA8 800AF3A8 8D190004 */  lw         $t9, 4($t0)
/* AFFAC 800AF3AC 8FA60050 */  lw         $a2, 0x50($sp)
/* AFFB0 800AF3B0 8FA70054 */  lw         $a3, 0x54($sp)
/* AFFB4 800AF3B4 0320F809 */  jalr       $t9
/* AFFB8 800AF3B8 01002025 */   or        $a0, $t0, $zero
/* AFFBC 800AF3BC AFA20044 */  sw         $v0, 0x44($sp)
/* AFFC0 800AF3C0 8FAA0044 */  lw         $t2, 0x44($sp)
/* AFFC4 800AF3C4 254B0008 */  addiu      $t3, $t2, 8
/* AFFC8 800AF3C8 AFAB0044 */  sw         $t3, 0x44($sp)
/* AFFCC 800AF3CC AFAA002C */  sw         $t2, 0x2c($sp)
/* AFFD0 800AF3D0 8FAD002C */  lw         $t5, 0x2c($sp)
/* AFFD4 800AF3D4 3C0C0800 */  lui        $t4, 0x800
/* AFFD8 800AF3D8 ADAC0000 */  sw         $t4, ($t5)
/* AFFDC 800AF3DC 8FAF0050 */  lw         $t7, 0x50($sp)
/* AFFE0 800AF3E0 8FA9002C */  lw         $t1, 0x2c($sp)
/* AFFE4 800AF3E4 000F7040 */  sll        $t6, $t7, 1
/* AFFE8 800AF3E8 31D8FFFF */  andi       $t8, $t6, 0xffff
/* AFFEC 800AF3EC AD380004 */  sw         $t8, 4($t1)
/* AFFF0 800AF3F0 8FA80044 */  lw         $t0, 0x44($sp)
/* AFFF4 800AF3F4 25190008 */  addiu      $t9, $t0, 8
/* AFFF8 800AF3F8 AFB90044 */  sw         $t9, 0x44($sp)
/* AFFFC 800AF3FC AFA80028 */  sw         $t0, 0x28($sp)
/* B0000 800AF400 8FAB0028 */  lw         $t3, 0x28($sp)
/* B0004 800AF404 3C0A0C00 */  lui        $t2, 0xc00
/* B0008 800AF408 354A7FFF */  ori        $t2, $t2, 0x7fff
/* B000C 800AF40C AD6A0000 */  sw         $t2, ($t3)
/* B0010 800AF410 8FAD0028 */  lw         $t5, 0x28($sp)
/* B0014 800AF414 3C0C06C0 */  lui        $t4, 0x6c0
/* B0018 800AF418 358C0440 */  ori        $t4, $t4, 0x440
/* B001C 800AF41C ADAC0004 */  sw         $t4, 4($t5)
/* B0020 800AF420 8FAF0044 */  lw         $t7, 0x44($sp)
/* B0024 800AF424 25EE0008 */  addiu      $t6, $t7, 8
/* B0028 800AF428 AFAE0044 */  sw         $t6, 0x44($sp)
/* B002C 800AF42C AFAF0024 */  sw         $t7, 0x24($sp)
/* B0030 800AF430 8FA90024 */  lw         $t1, 0x24($sp)
/* B0034 800AF434 3C180C00 */  lui        $t8, 0xc00
/* B0038 800AF438 37187FFF */  ori        $t8, $t8, 0x7fff
/* B003C 800AF43C AD380000 */  sw         $t8, ($t1)
/* B0040 800AF440 8FB90024 */  lw         $t9, 0x24($sp)
/* B0044 800AF444 3C080800 */  lui        $t0, 0x800
/* B0048 800AF448 35080580 */  ori        $t0, $t0, 0x580
/* B004C 800AF44C AF280004 */  sw         $t0, 4($t9)
/* B0050 800AF450 8FAA0038 */  lw         $t2, 0x38($sp)
/* B0054 800AF454 8FAC0040 */  lw         $t4, 0x40($sp)
/* B0058 800AF458 254B0001 */  addiu      $t3, $t2, 1
/* B005C 800AF45C AFAB0038 */  sw         $t3, 0x38($sp)
/* B0060 800AF460 8D8D0014 */  lw         $t5, 0x14($t4)
/* B0064 800AF464 016D082A */  slt        $at, $t3, $t5
/* B0068 800AF468 1420FFC7 */  bnez       $at, .L800AF388
/* B006C 800AF46C 00000000 */   nop
.L800AF470:
/* B0070 800AF470 10000003 */  b          .L800AF480
/* B0074 800AF474 8FA20044 */   lw        $v0, 0x44($sp)
/* B0078 800AF478 10000001 */  b          .L800AF480
/* B007C 800AF47C 00000000 */   nop
.L800AF480:
/* B0080 800AF480 8FBF001C */  lw         $ra, 0x1c($sp)
/* B0084 800AF484 27BD0048 */  addiu      $sp, $sp, 0x48
/* B0088 800AF488 03E00008 */  jr         $ra
/* B008C 800AF48C 00000000 */   nop
