glabel func_8006BC90
/* 6C890 8006BC90 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 6C894 8006BC94 24070198 */  addiu      $a3, $zero, 0x198
/* 6C898 8006BC98 01E70019 */  multu      $t7, $a3
/* 6C89C 8006BC9C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6C8A0 8006BCA0 3C06800F */  lui        $a2, %hi(gActors)
/* 6C8A4 8006BCA4 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 6C8A8 8006BCA8 3C010006 */  lui        $at, 6
/* 6C8AC 8006BCAC AFA40000 */  sw         $a0, ($sp)
/* 6C8B0 8006BCB0 AFA50004 */  sw         $a1, 4($sp)
/* 6C8B4 8006BCB4 0000C012 */  mflo       $t8
/* 6C8B8 8006BCB8 00D81021 */  addu       $v0, $a2, $t8
/* 6C8BC 8006BCBC 8C590098 */  lw         $t9, 0x98($v0)
/* 6C8C0 8006BCC0 01C70019 */  multu      $t6, $a3
/* 6C8C4 8006BCC4 37280200 */  ori        $t0, $t9, 0x200
/* 6C8C8 8006BCC8 A44E00D6 */  sh         $t6, 0xd6($v0)
/* 6C8CC 8006BCCC AC480098 */  sw         $t0, 0x98($v0)
/* 6C8D0 8006BCD0 00004812 */  mflo       $t1
/* 6C8D4 8006BCD4 00C91821 */  addu       $v1, $a2, $t1
/* 6C8D8 8006BCD8 8C6A0088 */  lw         $t2, 0x88($v1)
/* 6C8DC 8006BCDC 00000000 */  nop
/* 6C8E0 8006BCE0 AC4A0104 */  sw         $t2, 0x104($v0)
/* 6C8E4 8006BCE4 8C6B008C */  lw         $t3, 0x8c($v1)
/* 6C8E8 8006BCE8 00000000 */  nop
/* 6C8EC 8006BCEC 01616021 */  addu       $t4, $t3, $at
/* 6C8F0 8006BCF0 AC4C0108 */  sw         $t4, 0x108($v0)
/* 6C8F4 8006BCF4 8C6D0090 */  lw         $t5, 0x90($v1)
/* 6C8F8 8006BCF8 00000000 */  nop
/* 6C8FC 8006BCFC 25AEFFF8 */  addiu      $t6, $t5, -8
/* 6C900 8006BD00 03E00008 */  jr         $ra
/* 6C904 8006BD04 AC4E010C */   sw        $t6, 0x10c($v0)
