glabel func_80017FE8
/* 18BE8 80017FE8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 18BEC 80017FEC 000E7880 */  sll        $t7, $t6, 2
/* 18BF0 80017FF0 01EE7823 */  subu       $t7, $t7, $t6
/* 18BF4 80017FF4 000F7880 */  sll        $t7, $t7, 2
/* 18BF8 80017FF8 01EE7821 */  addu       $t7, $t7, $t6
/* 18BFC 80017FFC 000F7880 */  sll        $t7, $t7, 2
/* 18C00 80018000 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18C04 80018004 01EE7823 */  subu       $t7, $t7, $t6
/* 18C08 80018008 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 18C0C 8001800C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 18C10 80018010 000F78C0 */  sll        $t7, $t7, 3
/* 18C14 80018014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 18C18 80018018 AFA40020 */  sw         $a0, 0x20($sp)
/* 18C1C 8001801C 01F81021 */  addu       $v0, $t7, $t8
/* 18C20 80018020 01C02025 */  or         $a0, $t6, $zero
/* 18C24 80018024 A44000D2 */  sh         $zero, 0xd2($v0)
/* 18C28 80018028 0C0078B4 */  jal        func_8001E2D0
/* 18C2C 8001802C AFA20018 */   sw        $v0, 0x18($sp)
/* 18C30 80018030 8FA20018 */  lw         $v0, 0x18($sp)
/* 18C34 80018034 3C014190 */  lui        $at, 0x4190
/* 18C38 80018038 44812000 */  mtc1       $at, $f4
/* 18C3C 8001803C 944A0094 */  lhu        $t2, 0x94($v0)
/* 18C40 80018040 3C014140 */  lui        $at, 0x4140
/* 18C44 80018044 240300FF */  addiu      $v1, $zero, 0xff
/* 18C48 80018048 44813000 */  mtc1       $at, $f6
/* 18C4C 8001804C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 18C50 80018050 2419FFFE */  addiu      $t9, $zero, -2
/* 18C54 80018054 24080004 */  addiu      $t0, $zero, 4
/* 18C58 80018058 240902D0 */  addiu      $t1, $zero, 0x2d0
/* 18C5C 8001805C 240C0100 */  addiu      $t4, $zero, 0x100
/* 18C60 80018060 354B0801 */  ori        $t3, $t2, 0x801
/* 18C64 80018064 27BD0020 */  addiu      $sp, $sp, 0x20
/* 18C68 80018068 A4590088 */  sh         $t9, 0x88($v0)
/* 18C6C 8001806C A448008C */  sh         $t0, 0x8c($v0)
/* 18C70 80018070 A4490084 */  sh         $t1, 0x84($v0)
/* 18C74 80018074 A44B0094 */  sh         $t3, 0x94($v0)
/* 18C78 80018078 A44C0090 */  sh         $t4, 0x90($v0)
/* 18C7C 8001807C AC400188 */  sw         $zero, 0x188($v0)
/* 18C80 80018080 A043009F */  sb         $v1, 0x9f($v0)
/* 18C84 80018084 A043009E */  sb         $v1, 0x9e($v0)
/* 18C88 80018088 A043009D */  sb         $v1, 0x9d($v0)
/* 18C8C 8001808C A043009C */  sb         $v1, 0x9c($v0)
/* 18C90 80018090 E44400B4 */  swc1       $f4, 0xb4($v0)
/* 18C94 80018094 03E00008 */  jr         $ra
/* 18C98 80018098 E44600B8 */   swc1      $f6, 0xb8($v0)
