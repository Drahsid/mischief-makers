glabel func_80042DBC
/* 439BC 80042DBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 439C0 80042DC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 439C4 80042DC4 10800012 */  beqz       $a0, .L80042E10
/* 439C8 80042DC8 00003825 */   or        $a3, $zero, $zero
/* 439CC 80042DCC 94850000 */  lhu        $a1, ($a0)
/* 439D0 80042DD0 3C06800D */  lui        $a2, %hi(D_800D2978)
/* 439D4 80042DD4 10A0000E */  beqz       $a1, .L80042E10
/* 439D8 80042DD8 24C62978 */   addiu     $a2, $a2, %lo(D_800D2978)
.L80042DDC:
/* 439DC 80042DDC 00077040 */  sll        $t6, $a3, 1
/* 439E0 80042DE0 00CE1021 */  addu       $v0, $a2, $t6
/* 439E4 80042DE4 A4450000 */  sh         $a1, ($v0)
/* 439E8 80042DE8 948F0002 */  lhu        $t7, 2($a0)
/* 439EC 80042DEC 24E70003 */  addiu      $a3, $a3, 3
/* 439F0 80042DF0 A44F0002 */  sh         $t7, 2($v0)
/* 439F4 80042DF4 94980004 */  lhu        $t8, 4($a0)
/* 439F8 80042DF8 30F9FFFF */  andi       $t9, $a3, 0xffff
/* 439FC 80042DFC A4580004 */  sh         $t8, 4($v0)
/* 43A00 80042E00 94850006 */  lhu        $a1, 6($a0)
/* 43A04 80042E04 03203825 */  or         $a3, $t9, $zero
/* 43A08 80042E08 14A0FFF4 */  bnez       $a1, .L80042DDC
/* 43A0C 80042E0C 24840006 */   addiu     $a0, $a0, 6
.L80042E10:
/* 43A10 80042E10 0C010B61 */  jal        func_80042D84
/* 43A14 80042E14 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 43A18 80042E18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 43A1C 80042E1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 43A20 80042E20 03E00008 */  jr         $ra
/* 43A24 80042E24 00000000 */   nop
