glabel func_8009EC98
/* 9F898 8009EC98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9F89C 8009EC9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F8A0 8009ECA0 AFA40018 */  sw         $a0, 0x18($sp)
/* 9F8A4 8009ECA4 AFA5001C */  sw         $a1, 0x1c($sp)
/* 9F8A8 8009ECA8 0C026EBB */  jal        func_8009BAEC
/* 9F8AC 8009ECAC 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9F8B0 8009ECB0 8FA50018 */  lw         $a1, 0x18($sp)
/* 9F8B4 8009ECB4 8FA4001C */  lw         $a0, 0x1c($sp)
/* 9F8B8 8009ECB8 0C026EAE */  jal        func_8009BAB8
/* 9F8BC 8009ECBC 24A50014 */   addiu     $a1, $a1, 0x14
/* 9F8C0 8009ECC0 10000001 */  b          .L8009ECC8
/* 9F8C4 8009ECC4 00000000 */   nop
.L8009ECC8:
/* 9F8C8 8009ECC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F8CC 8009ECCC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9F8D0 8009ECD0 03E00008 */  jr         $ra
/* 9F8D4 8009ECD4 00000000 */   nop
