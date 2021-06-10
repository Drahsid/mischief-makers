glabel func_800A924C
/* A9E4C 800A924C 27BDFFF8 */  addiu      $sp, $sp, -8
/* A9E50 800A9250 90A60000 */  lbu        $a2, ($a1)
/* A9E54 800A9254 24840001 */  addiu      $a0, $a0, 1
/* A9E58 800A9258 24A50001 */  addiu      $a1, $a1, 1
/* A9E5C 800A925C 00C03825 */  or         $a3, $a2, $zero
/* A9E60 800A9260 10E00007 */  beqz       $a3, .L800A9280
/* A9E64 800A9264 A086FFFF */   sb        $a2, -1($a0)
.L800A9268:
/* A9E68 800A9268 90A60000 */  lbu        $a2, ($a1)
/* A9E6C 800A926C 24840001 */  addiu      $a0, $a0, 1
/* A9E70 800A9270 24A50001 */  addiu      $a1, $a1, 1
/* A9E74 800A9274 00C03825 */  or         $a3, $a2, $zero
/* A9E78 800A9278 14E0FFFB */  bnez       $a3, .L800A9268
/* A9E7C 800A927C A086FFFF */   sb        $a2, -1($a0)
.L800A9280:
/* A9E80 800A9280 10000001 */  b          .L800A9288
/* A9E84 800A9284 00000000 */   nop
.L800A9288:
/* A9E88 800A9288 03E00008 */  jr         $ra
/* A9E8C 800A928C 27BD0008 */   addiu     $sp, $sp, 8
