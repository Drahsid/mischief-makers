glabel func_8009EBA0
/* 9F7A0 8009EBA0 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9F7A4 8009EBA4 AFA00004 */  sw         $zero, 4($sp)
/* 9F7A8 8009EBA8 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* 9F7AC 8009EBAC 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* 9F7B0 8009EBB0 AFAE0000 */  sw         $t6, ($sp)
/* 9F7B4 8009EBB4 8FAF0000 */  lw         $t7, ($sp)
/* 9F7B8 8009EBB8 8DF8002C */  lw         $t8, 0x2c($t7)
/* 9F7BC 8009EBBC 1300000A */  beqz       $t8, .L8009EBE8
/* 9F7C0 8009EBC0 00000000 */   nop
/* 9F7C4 8009EBC4 8FB90000 */  lw         $t9, ($sp)
/* 9F7C8 8009EBC8 8F28002C */  lw         $t0, 0x2c($t9)
/* 9F7CC 8009EBCC AFA80004 */  sw         $t0, 4($sp)
/* 9F7D0 8009EBD0 8FA90000 */  lw         $t1, ($sp)
/* 9F7D4 8009EBD4 8D2A002C */  lw         $t2, 0x2c($t1)
/* 9F7D8 8009EBD8 8D4B0000 */  lw         $t3, ($t2)
/* 9F7DC 8009EBDC AD2B002C */  sw         $t3, 0x2c($t1)
/* 9F7E0 8009EBE0 8FAC0004 */  lw         $t4, 4($sp)
/* 9F7E4 8009EBE4 AD800000 */  sw         $zero, ($t4)
.L8009EBE8:
/* 9F7E8 8009EBE8 10000003 */  b          .L8009EBF8
/* 9F7EC 8009EBEC 8FA20004 */   lw        $v0, 4($sp)
/* 9F7F0 8009EBF0 10000001 */  b          .L8009EBF8
/* 9F7F4 8009EBF4 00000000 */   nop
.L8009EBF8:
/* 9F7F8 8009EBF8 03E00008 */  jr         $ra
/* 9F7FC 8009EBFC 27BD0008 */   addiu     $sp, $sp, 8
