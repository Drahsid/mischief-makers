glabel func_80057268
/* 57E68 80057268 308EFFFF */  andi       $t6, $a0, 0xffff
/* 57E6C 8005726C 000E7880 */  sll        $t7, $t6, 2
/* 57E70 80057270 01EE7823 */  subu       $t7, $t7, $t6
/* 57E74 80057274 000F7880 */  sll        $t7, $t7, 2
/* 57E78 80057278 01EE7821 */  addu       $t7, $t7, $t6
/* 57E7C 8005727C 000F7880 */  sll        $t7, $t7, 2
/* 57E80 80057280 01EE7823 */  subu       $t7, $t7, $t6
/* 57E84 80057284 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 57E88 80057288 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 57E8C 8005728C 000F78C0 */  sll        $t7, $t7, 3
/* 57E90 80057290 01F81021 */  addu       $v0, $t7, $t8
/* 57E94 80057294 9059012E */  lbu        $t9, 0x12e($v0)
/* 57E98 80057298 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 57E9C 8005729C AFBF0014 */  sw         $ra, 0x14($sp)
/* 57EA0 800572A0 AFA40020 */  sw         $a0, 0x20($sp)
/* 57EA4 800572A4 944500D6 */  lhu        $a1, 0xd6($v0)
/* 57EA8 800572A8 37280081 */  ori        $t0, $t9, 0x81
/* 57EAC 800572AC 01C02025 */  or         $a0, $t6, $zero
/* 57EB0 800572B0 A048012E */  sb         $t0, 0x12e($v0)
/* 57EB4 800572B4 AC4000EC */  sw         $zero, 0xec($v0)
/* 57EB8 800572B8 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 57EBC 800572BC 0C013D45 */  jal        func_8004F514
/* 57EC0 800572C0 AFA20018 */   sw        $v0, 0x18($sp)
/* 57EC4 800572C4 8FA20018 */  lw         $v0, 0x18($sp)
/* 57EC8 800572C8 3C038013 */  lui        $v1, %hi(D_801370CE)
/* 57ECC 800572CC 3C0A800C */  lui        $t2, %hi(D_800BE514)
/* 57ED0 800572D0 A040012F */  sb         $zero, 0x12f($v0)
/* 57ED4 800572D4 954AE514 */  lhu        $t2, %lo(D_800BE514)($t2)
/* 57ED8 800572D8 246370CE */  addiu      $v1, $v1, %lo(D_801370CE)
/* 57EDC 800572DC 94690000 */  lhu        $t1, ($v1)
/* 57EE0 800572E0 8C4D0080 */  lw         $t5, 0x80($v0)
/* 57EE4 800572E4 3C010081 */  lui        $at, 0x81
/* 57EE8 800572E8 01405827 */  not        $t3, $t2
/* 57EEC 800572EC 012B6024 */  and        $t4, $t1, $t3
/* 57EF0 800572F0 01A17024 */  and        $t6, $t5, $at
/* 57EF4 800572F4 11C00004 */  beqz       $t6, .L80057308
/* 57EF8 800572F8 A46C0000 */   sh        $t4, ($v1)
/* 57EFC 800572FC 240F0003 */  addiu      $t7, $zero, 3
/* 57F00 80057300 10000003 */  b          .L80057310
/* 57F04 80057304 A44F00D0 */   sh        $t7, 0xd0($v0)
.L80057308:
/* 57F08 80057308 24180019 */  addiu      $t8, $zero, 0x19
/* 57F0C 8005730C A45800D0 */  sh         $t8, 0xd0($v0)
.L80057310:
/* 57F10 80057310 8FBF0014 */  lw         $ra, 0x14($sp)
/* 57F14 80057314 27BD0020 */  addiu      $sp, $sp, 0x20
/* 57F18 80057318 03E00008 */  jr         $ra
/* 57F1C 8005731C 00000000 */   nop
