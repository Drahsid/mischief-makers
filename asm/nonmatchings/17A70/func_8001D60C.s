glabel func_8001D60C
/* 1E20C 8001D60C 3C02800F */  lui        $v0, %hi(gActors)
/* 1E210 8001D610 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 1E214 8001D614 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E218 8001D618 AFA40018 */  sw         $a0, 0x18($sp)
/* 1E21C 8001D61C 00047400 */  sll        $t6, $a0, 0x10
/* 1E220 8001D620 8458503C */  lh         $t8, 0x503c($v0)
/* 1E224 8001D624 844851D4 */  lh         $t0, 0x51d4($v0)
/* 1E228 8001D628 000E2403 */  sra        $a0, $t6, 0x10
/* 1E22C 8001D62C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E230 8001D630 0304C821 */  addu       $t9, $t8, $a0
/* 1E234 8001D634 01044821 */  addu       $t1, $t0, $a0
/* 1E238 8001D638 A459503C */  sh         $t9, 0x503c($v0)
/* 1E23C 8001D63C 0C00756E */  jal        func_8001D5B8
/* 1E240 8001D640 A44951D4 */   sh        $t1, 0x51d4($v0)
/* 1E244 8001D644 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E248 8001D648 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E24C 8001D64C 03E00008 */  jr         $ra
/* 1E250 8001D650 00000000 */   nop
