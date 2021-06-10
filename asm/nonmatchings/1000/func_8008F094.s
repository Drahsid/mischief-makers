glabel func_8008F094
/* 8FC94 8008F094 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8FC98 8008F098 000EC080 */  sll        $t8, $t6, 2
/* 8FC9C 8008F09C 030EC023 */  subu       $t8, $t8, $t6
/* 8FCA0 8008F0A0 0018C080 */  sll        $t8, $t8, 2
/* 8FCA4 8008F0A4 030EC021 */  addu       $t8, $t8, $t6
/* 8FCA8 8008F0A8 0018C080 */  sll        $t8, $t8, 2
/* 8FCAC 8008F0AC 030EC023 */  subu       $t8, $t8, $t6
/* 8FCB0 8008F0B0 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 8FCB4 8008F0B4 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 8FCB8 8008F0B8 0018C0C0 */  sll        $t8, $t8, 3
/* 8FCBC 8008F0BC 03191021 */  addu       $v0, $t8, $t9
/* 8FCC0 8008F0C0 844800E0 */  lh         $t0, 0xe0($v0)
/* 8FCC4 8008F0C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8FCC8 8008F0C8 01054823 */  subu       $t1, $t0, $a1
/* 8FCCC 8008F0CC A44900E0 */  sh         $t1, 0xe0($v0)
/* 8FCD0 8008F0D0 844A00E0 */  lh         $t2, 0xe0($v0)
/* 8FCD4 8008F0D4 AFA40018 */  sw         $a0, 0x18($sp)
/* 8FCD8 8008F0D8 314B8000 */  andi       $t3, $t2, 0x8000
/* 8FCDC 8008F0DC 01C02025 */  or         $a0, $t6, $zero
/* 8FCE0 8008F0E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FCE4 8008F0E4 11600002 */  beqz       $t3, .L8008F0F0
/* 8FCE8 8008F0E8 AFA5001C */   sw        $a1, 0x1c($sp)
/* 8FCEC 8008F0EC A44000E0 */  sh         $zero, 0xe0($v0)
.L8008F0F0:
/* 8FCF0 8008F0F0 0C023BEA */  jal        func_8008EFA8
/* 8FCF4 8008F0F4 00000000 */   nop
/* 8FCF8 8008F0F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FCFC 8008F0FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8FD00 8008F100 03E00008 */  jr         $ra
/* 8FD04 8008F104 00000000 */   nop
