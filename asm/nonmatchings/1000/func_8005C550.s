glabel func_8005C550
/* 5D150 8005C550 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5D154 8005C554 000EC880 */  sll        $t9, $t6, 2
/* 5D158 8005C558 032EC823 */  subu       $t9, $t9, $t6
/* 5D15C 8005C55C 0019C880 */  sll        $t9, $t9, 2
/* 5D160 8005C560 032EC821 */  addu       $t9, $t9, $t6
/* 5D164 8005C564 0019C880 */  sll        $t9, $t9, 2
/* 5D168 8005C568 032EC823 */  subu       $t9, $t9, $t6
/* 5D16C 8005C56C 3C08800F */  lui        $t0, %hi(gActors)
/* 5D170 8005C570 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 5D174 8005C574 0019C8C0 */  sll        $t9, $t9, 3
/* 5D178 8005C578 03281821 */  addu       $v1, $t9, $t0
/* 5D17C 8005C57C 8462013C */  lh         $v0, 0x13c($v1)
/* 5D180 8005C580 00057C00 */  sll        $t7, $a1, 0x10
/* 5D184 8005C584 000FC403 */  sra        $t8, $t7, 0x10
/* 5D188 8005C588 AFA50004 */  sw         $a1, 4($sp)
/* 5D18C 8005C58C 03002825 */  or         $a1, $t8, $zero
/* 5D190 8005C590 14400004 */  bnez       $v0, .L8005C5A4
/* 5D194 8005C594 AFA40000 */   sw        $a0, ($sp)
/* 5D198 8005C598 A478013C */  sh         $t8, 0x13c($v1)
/* 5D19C 8005C59C 03E00008 */  jr         $ra
/* 5D1A0 8005C5A0 24020001 */   addiu     $v0, $zero, 1
.L8005C5A4:
/* 5D1A4 8005C5A4 18A00005 */  blez       $a1, .L8005C5BC
/* 5D1A8 8005C5A8 0045082A */   slt       $at, $v0, $a1
/* 5D1AC 8005C5AC 10200009 */  beqz       $at, .L8005C5D4
/* 5D1B0 8005C5B0 24020002 */   addiu     $v0, $zero, 2
/* 5D1B4 8005C5B4 03E00008 */  jr         $ra
/* 5D1B8 8005C5B8 A465013C */   sh        $a1, 0x13c($v1)
.L8005C5BC:
/* 5D1BC 8005C5BC 04410005 */  bgez       $v0, .L8005C5D4
/* 5D1C0 8005C5C0 00A2082A */   slt       $at, $a1, $v0
/* 5D1C4 8005C5C4 10200003 */  beqz       $at, .L8005C5D4
/* 5D1C8 8005C5C8 24020003 */   addiu     $v0, $zero, 3
/* 5D1CC 8005C5CC 03E00008 */  jr         $ra
/* 5D1D0 8005C5D0 A465013C */   sh        $a1, 0x13c($v1)
.L8005C5D4:
/* 5D1D4 8005C5D4 00001025 */  or         $v0, $zero, $zero
/* 5D1D8 8005C5D8 03E00008 */  jr         $ra
/* 5D1DC 8005C5DC 00000000 */   nop
