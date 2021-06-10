glabel func_800A91D4
/* A9DD4 800A91D4 27BDFFF8 */  addiu      $sp, $sp, -8
/* A9DD8 800A91D8 00C03825 */  or         $a3, $a2, $zero
/* A9DDC 800A91DC 10E00008 */  beqz       $a3, .L800A9200
/* A9DE0 800A91E0 24C6FFFF */   addiu     $a2, $a2, -1
.L800A91E4:
/* A9DE4 800A91E4 90AE0000 */  lbu        $t6, ($a1)
/* A9DE8 800A91E8 24840001 */  addiu      $a0, $a0, 1
/* A9DEC 800A91EC 24A50001 */  addiu      $a1, $a1, 1
/* A9DF0 800A91F0 A08EFFFF */  sb         $t6, -1($a0)
/* A9DF4 800A91F4 00C03825 */  or         $a3, $a2, $zero
/* A9DF8 800A91F8 14E0FFFA */  bnez       $a3, .L800A91E4
/* A9DFC 800A91FC 24C6FFFF */   addiu     $a2, $a2, -1
.L800A9200:
/* A9E00 800A9200 10000001 */  b          .L800A9208
/* A9E04 800A9204 00000000 */   nop
.L800A9208:
/* A9E08 800A9208 03E00008 */  jr         $ra
/* A9E0C 800A920C 27BD0008 */   addiu     $sp, $sp, 8
