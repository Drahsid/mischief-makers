glabel func_800A4E4C
/* A5A4C 800A4E4C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* A5A50 800A4E50 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5A54 800A4E54 AFA40058 */  sw         $a0, 0x58($sp)
/* A5A58 800A4E58 AFA5005C */  sw         $a1, 0x5c($sp)
/* A5A5C 800A4E5C AFA60060 */  sw         $a2, 0x60($sp)
/* A5A60 800A4E60 AFA70064 */  sw         $a3, 0x64($sp)
/* A5A64 800A4E64 27A40018 */  addiu      $a0, $sp, 0x18
/* A5A68 800A4E68 8FA5005C */  lw         $a1, 0x5c($sp)
/* A5A6C 800A4E6C 8FA60060 */  lw         $a2, 0x60($sp)
/* A5A70 800A4E70 0C02937C */  jal        func_800A4DF0
/* A5A74 800A4E74 8FA70064 */   lw        $a3, 0x64($sp)
/* A5A78 800A4E78 27A40018 */  addiu      $a0, $sp, 0x18
/* A5A7C 800A4E7C 0C02CA98 */  jal        func_800B2A60
/* A5A80 800A4E80 8FA50058 */   lw        $a1, 0x58($sp)
/* A5A84 800A4E84 10000001 */  b          .L800A4E8C
/* A5A88 800A4E88 00000000 */   nop
.L800A4E8C:
/* A5A8C 800A4E8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5A90 800A4E90 27BD0058 */  addiu      $sp, $sp, 0x58
/* A5A94 800A4E94 03E00008 */  jr         $ra
/* A5A98 800A4E98 00000000 */   nop
/* A5A9C 800A4E9C 00000000 */  nop
