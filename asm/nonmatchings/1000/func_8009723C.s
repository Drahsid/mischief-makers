glabel func_8009723C
/* 97E3C 8009723C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97E40 80097240 000E7880 */  sll        $t7, $t6, 2
/* 97E44 80097244 01EE7823 */  subu       $t7, $t7, $t6
/* 97E48 80097248 000F7880 */  sll        $t7, $t7, 2
/* 97E4C 8009724C 01EE7821 */  addu       $t7, $t7, $t6
/* 97E50 80097250 000F7880 */  sll        $t7, $t7, 2
/* 97E54 80097254 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 97E58 80097258 01EE7823 */  subu       $t7, $t7, $t6
/* 97E5C 8009725C 3C18800F */  lui        $t8, %hi(gActors)
/* 97E60 80097260 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 97E64 80097264 000F78C0 */  sll        $t7, $t7, 3
/* 97E68 80097268 AFBF0014 */  sw         $ra, 0x14($sp)
/* 97E6C 8009726C AFA40020 */  sw         $a0, 0x20($sp)
/* 97E70 80097270 01F81021 */  addu       $v0, $t7, $t8
/* 97E74 80097274 24190075 */  addiu      $t9, $zero, 0x75
/* 97E78 80097278 01C02025 */  or         $a0, $t6, $zero
/* 97E7C 8009727C A45900D2 */  sh         $t9, 0xd2($v0)
/* 97E80 80097280 0C0078B4 */  jal        func_8001E2D0
/* 97E84 80097284 AFA2001C */   sw        $v0, 0x1c($sp)
/* 97E88 80097288 3C01800F */  lui        $at, %hi(D_800ED50C)
/* 97E8C 8009728C C420D50C */  lwc1       $f0, %lo(D_800ED50C)($at)
/* 97E90 80097290 8FA2001C */  lw         $v0, 0x1c($sp)
/* 97E94 80097294 8FBF0014 */  lw         $ra, 0x14($sp)
/* 97E98 80097298 24080110 */  addiu      $t0, $zero, 0x110
/* 97E9C 8009729C 24090101 */  addiu      $t1, $zero, 0x101
/* 97EA0 800972A0 240A000B */  addiu      $t2, $zero, 0xb
/* 97EA4 800972A4 240B280C */  addiu      $t3, $zero, 0x280c
/* 97EA8 800972A8 240CFE80 */  addiu      $t4, $zero, -0x180
/* 97EAC 800972AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 97EB0 800972B0 A44800D0 */  sh         $t0, 0xd0($v0)
/* 97EB4 800972B4 A4490094 */  sh         $t1, 0x94($v0)
/* 97EB8 800972B8 AC4A0080 */  sw         $t2, 0x80($v0)
/* 97EBC 800972BC A44B0084 */  sh         $t3, 0x84($v0)
/* 97EC0 800972C0 A040009F */  sb         $zero, 0x9f($v0)
/* 97EC4 800972C4 A4400088 */  sh         $zero, 0x88($v0)
/* 97EC8 800972C8 A440008C */  sh         $zero, 0x8c($v0)
/* 97ECC 800972CC A44C0090 */  sh         $t4, 0x90($v0)
/* 97ED0 800972D0 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 97ED4 800972D4 03E00008 */  jr         $ra
/* 97ED8 800972D8 E44000B8 */   swc1      $f0, 0xb8($v0)
