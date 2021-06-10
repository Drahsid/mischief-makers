glabel func_800B2D64
/* B3964 800B2D64 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* B3968 800B2D68 AFBF0014 */  sw         $ra, 0x14($sp)
/* B396C 800B2D6C AFA40058 */  sw         $a0, 0x58($sp)
/* B3970 800B2D70 0C02CB32 */  jal        func_800B2CC8
/* B3974 800B2D74 27A40018 */   addiu     $a0, $sp, 0x18
/* B3978 800B2D78 27A40018 */  addiu      $a0, $sp, 0x18
/* B397C 800B2D7C 0C02CA98 */  jal        func_800B2A60
/* B3980 800B2D80 8FA50058 */   lw        $a1, 0x58($sp)
/* B3984 800B2D84 10000001 */  b          .L800B2D8C
/* B3988 800B2D88 00000000 */   nop
.L800B2D8C:
/* B398C 800B2D8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3990 800B2D90 27BD0058 */  addiu      $sp, $sp, 0x58
/* B3994 800B2D94 03E00008 */  jr         $ra
/* B3998 800B2D98 00000000 */   nop
/* B399C 800B2D9C 00000000 */  nop
