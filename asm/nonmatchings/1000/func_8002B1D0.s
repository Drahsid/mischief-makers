glabel func_8002B1D0
/* 2BDD0 8002B1D0 3087FFFF */  andi       $a3, $a0, 0xffff
/* 2BDD4 8002B1D4 00077080 */  sll        $t6, $a3, 2
/* 2BDD8 8002B1D8 01C77023 */  subu       $t6, $t6, $a3
/* 2BDDC 8002B1DC 000E7080 */  sll        $t6, $t6, 2
/* 2BDE0 8002B1E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2BDE4 8002B1E4 01C77021 */  addu       $t6, $t6, $a3
/* 2BDE8 8002B1E8 000E7080 */  sll        $t6, $t6, 2
/* 2BDEC 8002B1EC 01C77023 */  subu       $t6, $t6, $a3
/* 2BDF0 8002B1F0 3C0F800F */  lui        $t7, %hi(gActors)
/* 2BDF4 8002B1F4 AFB00018 */  sw         $s0, 0x18($sp)
/* 2BDF8 8002B1F8 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 2BDFC 8002B1FC 000E70C0 */  sll        $t6, $t6, 3
/* 2BE00 8002B200 AFA40020 */  sw         $a0, 0x20($sp)
/* 2BE04 8002B204 AFA50024 */  sw         $a1, 0x24($sp)
/* 2BE08 8002B208 01CF8021 */  addu       $s0, $t6, $t7
/* 2BE0C 8002B20C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2BE10 8002B210 9204009C */  lbu        $a0, 0x9c($s0)
/* 2BE14 8002B214 87A60026 */  lh         $a2, 0x26($sp)
/* 2BE18 8002B218 0C00A607 */  jal        func_8002981C
/* 2BE1C 8002B21C 00002825 */   or        $a1, $zero, $zero
/* 2BE20 8002B220 9204009D */  lbu        $a0, 0x9d($s0)
/* 2BE24 8002B224 87A60026 */  lh         $a2, 0x26($sp)
/* 2BE28 8002B228 A202009C */  sb         $v0, 0x9c($s0)
/* 2BE2C 8002B22C 0C00A607 */  jal        func_8002981C
/* 2BE30 8002B230 00002825 */   or        $a1, $zero, $zero
/* 2BE34 8002B234 9204009E */  lbu        $a0, 0x9e($s0)
/* 2BE38 8002B238 87A60026 */  lh         $a2, 0x26($sp)
/* 2BE3C 8002B23C A202009D */  sb         $v0, 0x9d($s0)
/* 2BE40 8002B240 0C00A607 */  jal        func_8002981C
/* 2BE44 8002B244 00002825 */   or        $a1, $zero, $zero
/* 2BE48 8002B248 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2BE4C 8002B24C A202009E */  sb         $v0, 0x9e($s0)
/* 2BE50 8002B250 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BE54 8002B254 03E00008 */  jr         $ra
/* 2BE58 8002B258 27BD0020 */   addiu     $sp, $sp, 0x20
