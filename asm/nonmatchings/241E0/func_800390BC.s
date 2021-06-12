glabel func_800390BC
/* 39CBC 800390BC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 39CC0 800390C0 000E7880 */  sll        $t7, $t6, 2
/* 39CC4 800390C4 01EE7823 */  subu       $t7, $t7, $t6
/* 39CC8 800390C8 000F7880 */  sll        $t7, $t7, 2
/* 39CCC 800390CC 01EE7821 */  addu       $t7, $t7, $t6
/* 39CD0 800390D0 000F7880 */  sll        $t7, $t7, 2
/* 39CD4 800390D4 01EE7823 */  subu       $t7, $t7, $t6
/* 39CD8 800390D8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 39CDC 800390DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 39CE0 800390E0 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 39CE4 800390E4 000F78C0 */  sll        $t7, $t7, 3
/* 39CE8 800390E8 01F81021 */  addu       $v0, $t7, $t8
/* 39CEC 800390EC 8459008C */  lh         $t9, 0x8c($v0)
/* 39CF0 800390F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 39CF4 800390F4 AFA40028 */  sw         $a0, 0x28($sp)
/* 39CF8 800390F8 84470088 */  lh         $a3, 0x88($v0)
/* 39CFC 800390FC 3C063F99 */  lui        $a2, 0x3f99
/* 39D00 80039100 24080004 */  addiu      $t0, $zero, 4
/* 39D04 80039104 01C02025 */  or         $a0, $t6, $zero
/* 39D08 80039108 AFA80014 */  sw         $t0, 0x14($sp)
/* 39D0C 8003910C 34C6999A */  ori        $a2, $a2, 0x999a
/* 39D10 80039110 AFA20024 */  sw         $v0, 0x24($sp)
/* 39D14 80039114 00002825 */  or         $a1, $zero, $zero
/* 39D18 80039118 0C00FEC8 */  jal        func_8003FB20
/* 39D1C 8003911C AFB90010 */   sw        $t9, 0x10($sp)
/* 39D20 80039120 8FA20024 */  lw         $v0, 0x24($sp)
/* 39D24 80039124 8FBF001C */  lw         $ra, 0x1c($sp)
/* 39D28 80039128 27BD0028 */  addiu      $sp, $sp, 0x28
/* 39D2C 8003912C 03E00008 */  jr         $ra
/* 39D30 80039130 AC400080 */   sw        $zero, 0x80($v0)
