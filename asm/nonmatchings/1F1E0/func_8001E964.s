glabel func_8001E964
/* 1F564 8001E964 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 1F568 8001E968 24070198 */  addiu      $a3, $zero, 0x198
/* 1F56C 8001E96C 01E70019 */  multu      $t7, $a3
/* 1F570 8001E970 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1F574 8001E974 3C06800F */  lui        $a2, %hi(gActors)
/* 1F578 8001E978 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 1F57C 8001E97C AFA40000 */  sw         $a0, ($sp)
/* 1F580 8001E980 AFA50004 */  sw         $a1, 4($sp)
/* 1F584 8001E984 0000C012 */  mflo       $t8
/* 1F588 8001E988 00D81021 */  addu       $v0, $a2, $t8
/* 1F58C 8001E98C 84480088 */  lh         $t0, 0x88($v0)
/* 1F590 8001E990 01C70019 */  multu      $t6, $a3
/* 1F594 8001E994 0000C812 */  mflo       $t9
/* 1F598 8001E998 00D91821 */  addu       $v1, $a2, $t9
/* 1F59C 8001E99C 84690088 */  lh         $t1, 0x88($v1)
/* 1F5A0 8001E9A0 00000000 */  nop
/* 1F5A4 8001E9A4 0109082A */  slt        $at, $t0, $t1
/* 1F5A8 8001E9A8 10200006 */  beqz       $at, .L8001E9C4
/* 1F5AC 8001E9AC 00000000 */   nop
/* 1F5B0 8001E9B0 8C6A00F8 */  lw         $t2, 0xf8($v1)
/* 1F5B4 8001E9B4 00000000 */  nop
/* 1F5B8 8001E9B8 000A5823 */  negu       $t3, $t2
/* 1F5BC 8001E9BC 10000004 */  b          .L8001E9D0
/* 1F5C0 8001E9C0 AC4B00F8 */   sw        $t3, 0xf8($v0)
.L8001E9C4:
/* 1F5C4 8001E9C4 8C6C00F8 */  lw         $t4, 0xf8($v1)
/* 1F5C8 8001E9C8 00000000 */  nop
/* 1F5CC 8001E9CC AC4C00F8 */  sw         $t4, 0xf8($v0)
.L8001E9D0:
/* 1F5D0 8001E9D0 8C6D00FC */  lw         $t5, 0xfc($v1)
/* 1F5D4 8001E9D4 03E00008 */  jr         $ra
/* 1F5D8 8001E9D8 AC4D00FC */   sw        $t5, 0xfc($v0)
