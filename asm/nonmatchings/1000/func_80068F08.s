glabel func_80068F08
/* 69B08 80068F08 308EFFFF */  andi       $t6, $a0, 0xffff
/* 69B0C 80068F0C 000E7880 */  sll        $t7, $t6, 2
/* 69B10 80068F10 01EE7823 */  subu       $t7, $t7, $t6
/* 69B14 80068F14 000F7880 */  sll        $t7, $t7, 2
/* 69B18 80068F18 01EE7821 */  addu       $t7, $t7, $t6
/* 69B1C 80068F1C 000F7880 */  sll        $t7, $t7, 2
/* 69B20 80068F20 01EE7823 */  subu       $t7, $t7, $t6
/* 69B24 80068F24 3C18800F */  lui        $t8, %hi(gActors)
/* 69B28 80068F28 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 69B2C 80068F2C 000F78C0 */  sll        $t7, $t7, 3
/* 69B30 80068F30 01F81821 */  addu       $v1, $t7, $t8
/* 69B34 80068F34 8C79017C */  lw         $t9, 0x17c($v1)
/* 69B38 80068F38 84680184 */  lh         $t0, 0x184($v1)
/* 69B3C 80068F3C AFA40000 */  sw         $a0, ($sp)
/* 69B40 80068F40 03281023 */  subu       $v0, $t9, $t0
/* 69B44 80068F44 00024C00 */  sll        $t1, $v0, 0x10
/* 69B48 80068F48 00095403 */  sra        $t2, $t1, 0x10
/* 69B4C 80068F4C 2941000B */  slti       $at, $t2, 0xb
/* 69B50 80068F50 10200006 */  beqz       $at, .L80068F6C
/* 69B54 80068F54 01401025 */   or        $v0, $t2, $zero
/* 69B58 80068F58 2941FFF6 */  slti       $at, $t2, -0xa
/* 69B5C 80068F5C 14200003 */  bnez       $at, .L80068F6C
/* 69B60 80068F60 00000000 */   nop
/* 69B64 80068F64 03E00008 */  jr         $ra
/* 69B68 80068F68 00001025 */   or        $v0, $zero, $zero
.L80068F6C:
/* 69B6C 80068F6C 0440000A */  bltz       $v0, .L80068F98
/* 69B70 80068F70 00000000 */   nop
/* 69B74 80068F74 8C6B0080 */  lw         $t3, 0x80($v1)
/* 69B78 80068F78 00000000 */  nop
/* 69B7C 80068F7C 316C0020 */  andi       $t4, $t3, 0x20
/* 69B80 80068F80 15800003 */  bnez       $t4, .L80068F90
/* 69B84 80068F84 00000000 */   nop
/* 69B88 80068F88 03E00008 */  jr         $ra
/* 69B8C 80068F8C 24020081 */   addiu     $v0, $zero, 0x81
.L80068F90:
/* 69B90 80068F90 03E00008 */  jr         $ra
/* 69B94 80068F94 24020082 */   addiu     $v0, $zero, 0x82
.L80068F98:
/* 69B98 80068F98 8C6D0080 */  lw         $t5, 0x80($v1)
/* 69B9C 80068F9C 24020084 */  addiu      $v0, $zero, 0x84
/* 69BA0 80068FA0 31AE0020 */  andi       $t6, $t5, 0x20
/* 69BA4 80068FA4 11C00003 */  beqz       $t6, .L80068FB4
/* 69BA8 80068FA8 00000000 */   nop
/* 69BAC 80068FAC 03E00008 */  jr         $ra
/* 69BB0 80068FB0 24020083 */   addiu     $v0, $zero, 0x83
.L80068FB4:
/* 69BB4 80068FB4 03E00008 */  jr         $ra
/* 69BB8 80068FB8 00000000 */   nop
