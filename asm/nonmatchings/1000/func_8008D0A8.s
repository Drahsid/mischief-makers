glabel func_8008D0A8
/* 8DCA8 8008D0A8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DCAC 8008D0AC 000E7880 */  sll        $t7, $t6, 2
/* 8DCB0 8008D0B0 01EE7823 */  subu       $t7, $t7, $t6
/* 8DCB4 8008D0B4 000F7880 */  sll        $t7, $t7, 2
/* 8DCB8 8008D0B8 01EE7821 */  addu       $t7, $t7, $t6
/* 8DCBC 8008D0BC 000F7880 */  sll        $t7, $t7, 2
/* 8DCC0 8008D0C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DCC4 8008D0C4 01EE7823 */  subu       $t7, $t7, $t6
/* 8DCC8 8008D0C8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8DCCC 8008D0CC 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8DCD0 8008D0D0 000F78C0 */  sll        $t7, $t7, 3
/* 8DCD4 8008D0D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DCD8 8008D0D8 AFA40020 */  sw         $a0, 0x20($sp)
/* 8DCDC 8008D0DC 01F81021 */  addu       $v0, $t7, $t8
/* 8DCE0 8008D0E0 24190080 */  addiu      $t9, $zero, 0x80
/* 8DCE4 8008D0E4 01C02025 */  or         $a0, $t6, $zero
/* 8DCE8 8008D0E8 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DCEC 8008D0EC AFA2001C */  sw         $v0, 0x1c($sp)
/* 8DCF0 8008D0F0 0C023371 */  jal        func_8008CDC4
/* 8DCF4 8008D0F4 24050011 */   addiu     $a1, $zero, 0x11
/* 8DCF8 8008D0F8 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8DCFC 8008D0FC 3C01FFFE */  lui        $at, 0xfffe
/* 8DD00 8008D100 8C480080 */  lw         $t0, 0x80($v0)
/* 8DD04 8008D104 3421FFFF */  ori        $at, $at, 0xffff
/* 8DD08 8008D108 01014824 */  and        $t1, $t0, $at
/* 8DD0C 8008D10C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DD10 8008D110 3C010002 */  lui        $at, 2
/* 8DD14 8008D114 01215825 */  or         $t3, $t1, $at
/* 8DD18 8008D118 AC490080 */  sw         $t1, 0x80($v0)
/* 8DD1C 8008D11C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8DD20 8008D120 03E00008 */  jr         $ra
/* 8DD24 8008D124 AC4B0080 */   sw        $t3, 0x80($v0)
