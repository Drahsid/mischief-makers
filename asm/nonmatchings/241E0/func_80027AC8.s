glabel func_80027AC8
/* 286C8 80027AC8 AFA40000 */  sw         $a0, ($sp)
/* 286CC 80027ACC 94A20000 */  lhu        $v0, ($a1)
/* 286D0 80027AD0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 286D4 80027AD4 34038FFF */  ori        $v1, $zero, 0x8fff
/* 286D8 80027AD8 10620011 */  beq        $v1, $v0, .L80027B20
/* 286DC 80027ADC 01C02025 */   or        $a0, $t6, $zero
/* 286E0 80027AE0 3C06800F */  lui        $a2, %hi(gActors)
/* 286E4 80027AE4 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 286E8 80027AE8 24070198 */  addiu      $a3, $zero, 0x198
.L80027AEC:
/* 286EC 80027AEC 10400008 */  beqz       $v0, .L80027B10
/* 286F0 80027AF0 00000000 */   nop
/* 286F4 80027AF4 00870019 */  multu      $a0, $a3
/* 286F8 80027AF8 24840001 */  addiu      $a0, $a0, 1
/* 286FC 80027AFC 3099FFFF */  andi       $t9, $a0, 0xffff
/* 28700 80027B00 03202025 */  or         $a0, $t9, $zero
/* 28704 80027B04 00007812 */  mflo       $t7
/* 28708 80027B08 00CFC021 */  addu       $t8, $a2, $t7
/* 2870C 80027B0C AF000080 */  sw         $zero, 0x80($t8)
.L80027B10:
/* 28710 80027B10 94A20002 */  lhu        $v0, 2($a1)
/* 28714 80027B14 24A50002 */  addiu      $a1, $a1, 2
/* 28718 80027B18 1462FFF4 */  bne        $v1, $v0, .L80027AEC
/* 2871C 80027B1C 00000000 */   nop
.L80027B20:
/* 28720 80027B20 03E00008 */  jr         $ra
/* 28724 80027B24 00801025 */   or        $v0, $a0, $zero
