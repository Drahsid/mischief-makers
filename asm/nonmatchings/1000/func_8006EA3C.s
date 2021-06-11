glabel func_8006EA3C
/* 6F63C 8006EA3C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6F640 8006EA40 000E7880 */  sll        $t7, $t6, 2
/* 6F644 8006EA44 01EE7823 */  subu       $t7, $t7, $t6
/* 6F648 8006EA48 000F7880 */  sll        $t7, $t7, 2
/* 6F64C 8006EA4C 01EE7821 */  addu       $t7, $t7, $t6
/* 6F650 8006EA50 000F7880 */  sll        $t7, $t7, 2
/* 6F654 8006EA54 01EE7823 */  subu       $t7, $t7, $t6
/* 6F658 8006EA58 3C18800F */  lui        $t8, %hi(gActors)
/* 6F65C 8006EA5C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6F660 8006EA60 000F78C0 */  sll        $t7, $t7, 3
/* 6F664 8006EA64 01F81021 */  addu       $v0, $t7, $t8
/* 6F668 8006EA68 8C430098 */  lw         $v1, 0x98($v0)
/* 6F66C 8006EA6C AFA40000 */  sw         $a0, ($sp)
/* 6F670 8006EA70 30790001 */  andi       $t9, $v1, 1
/* 6F674 8006EA74 13200003 */  beqz       $t9, .L8006EA84
/* 6F678 8006EA78 00000000 */   nop
/* 6F67C 8006EA7C 03E00008 */  jr         $ra
/* 6F680 8006EA80 24020001 */   addiu     $v0, $zero, 1
.L8006EA84:
/* 6F684 8006EA84 8C4400EC */  lw         $a0, 0xec($v0)
/* 6F688 8006EA88 30680008 */  andi       $t0, $v1, 8
/* 6F68C 8006EA8C 18800005 */  blez       $a0, .L8006EAA4
/* 6F690 8006EA90 00000000 */   nop
/* 6F694 8006EA94 11000003 */  beqz       $t0, .L8006EAA4
/* 6F698 8006EA98 00000000 */   nop
/* 6F69C 8006EA9C 03E00008 */  jr         $ra
/* 6F6A0 8006EAA0 24020002 */   addiu     $v0, $zero, 2
.L8006EAA4:
/* 6F6A4 8006EAA4 04810005 */  bgez       $a0, .L8006EABC
/* 6F6A8 8006EAA8 30690004 */   andi      $t1, $v1, 4
/* 6F6AC 8006EAAC 11200004 */  beqz       $t1, .L8006EAC0
/* 6F6B0 8006EAB0 00001025 */   or        $v0, $zero, $zero
/* 6F6B4 8006EAB4 03E00008 */  jr         $ra
/* 6F6B8 8006EAB8 24020003 */   addiu     $v0, $zero, 3
.L8006EABC:
/* 6F6BC 8006EABC 00001025 */  or         $v0, $zero, $zero
.L8006EAC0:
/* 6F6C0 8006EAC0 03E00008 */  jr         $ra
/* 6F6C4 8006EAC4 00000000 */   nop
