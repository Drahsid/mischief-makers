glabel func_8005C520
/* 5D120 8005C520 3C02800F */  lui        $v0, %hi(gActors)
/* 5D124 8005C524 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 5D128 8005C528 904800DC */  lbu        $t0, 0xdc($v0)
/* 5D12C 8005C52C 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 5D130 8005C530 246373E0 */  addiu      $v1, $v1, %lo(D_801373E0)
/* 5D134 8005C534 35090040 */  ori        $t1, $t0, 0x40
/* 5D138 8005C538 AFA40000 */  sw         $a0, ($sp)
/* 5D13C 8005C53C AFA50004 */  sw         $a1, 4($sp)
/* 5D140 8005C540 A04900DC */  sb         $t1, 0xdc($v0)
/* 5D144 8005C544 A064000A */  sb         $a0, 0xa($v1)
/* 5D148 8005C548 03E00008 */  jr         $ra
/* 5D14C 8005C54C A065000B */   sb        $a1, 0xb($v1)
