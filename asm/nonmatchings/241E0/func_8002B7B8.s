glabel func_8002B7B8
/* 2C3B8 8002B7B8 AFA60008 */  sw         $a2, 8($sp)
/* 2C3BC 8002B7BC 94820000 */  lhu        $v0, ($a0)
/* 2C3C0 8002B7C0 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 2C3C4 8002B7C4 24030100 */  addiu      $v1, $zero, 0x100
/* 2C3C8 8002B7C8 10620008 */  beq        $v1, $v0, .L8002B7EC
/* 2C3CC 8002B7CC 01C03025 */   or        $a2, $t6, $zero
/* 2C3D0 8002B7D0 00027840 */  sll        $t7, $v0, 1
.L8002B7D4:
/* 2C3D4 8002B7D4 00AFC021 */  addu       $t8, $a1, $t7
/* 2C3D8 8002B7D8 A7060000 */  sh         $a2, ($t8)
/* 2C3DC 8002B7DC 94820004 */  lhu        $v0, 4($a0)
/* 2C3E0 8002B7E0 24840004 */  addiu      $a0, $a0, 4
/* 2C3E4 8002B7E4 1462FFFB */  bne        $v1, $v0, .L8002B7D4
/* 2C3E8 8002B7E8 00027840 */   sll       $t7, $v0, 1
.L8002B7EC:
/* 2C3EC 8002B7EC 03E00008 */  jr         $ra
/* 2C3F0 8002B7F0 00000000 */   nop
