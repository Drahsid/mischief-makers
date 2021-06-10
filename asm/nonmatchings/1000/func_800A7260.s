glabel func_800A7260
/* A7E60 800A7260 3C018018 */  lui        $at, %hi(D_801856F4)
/* A7E64 800A7264 240E0000 */  addiu      $t6, $zero, 0
/* A7E68 800A7268 240F0000 */  addiu      $t7, $zero, 0
/* A7E6C 800A726C AC2F56F4 */  sw         $t7, %lo(D_801856F4)($at)
/* A7E70 800A7270 AC2E56F0 */  sw         $t6, 0x56f0($at)
/* A7E74 800A7274 3C018018 */  lui        $at, %hi(D_801856F8)
/* A7E78 800A7278 AC2056F8 */  sw         $zero, %lo(D_801856F8)($at)
/* A7E7C 800A727C 3C018018 */  lui        $at, %hi(D_801856FC)
/* A7E80 800A7280 AC2056FC */  sw         $zero, %lo(D_801856FC)($at)
/* A7E84 800A7284 3C18800F */  lui        $t8, %hi(D_800EA620)
/* A7E88 800A7288 8F18A620 */  lw         $t8, %lo(D_800EA620)($t8)
/* A7E8C 800A728C 3C19800F */  lui        $t9, %hi(D_800EA620)
/* A7E90 800A7290 AF180004 */  sw         $t8, 4($t8)
/* A7E94 800A7294 8F39A620 */  lw         $t9, %lo(D_800EA620)($t9)
/* A7E98 800A7298 8F280004 */  lw         $t0, 4($t9)
/* A7E9C 800A729C AF280000 */  sw         $t0, ($t9)
/* A7EA0 800A72A0 3C09800F */  lui        $t1, %hi(D_800EA620)
/* A7EA4 800A72A4 8D29A620 */  lw         $t1, %lo(D_800EA620)($t1)
/* A7EA8 800A72A8 240A0000 */  addiu      $t2, $zero, 0
/* A7EAC 800A72AC 240B0000 */  addiu      $t3, $zero, 0
/* A7EB0 800A72B0 3C0C800F */  lui        $t4, %hi(D_800EA620)
/* A7EB4 800A72B4 AD2B0014 */  sw         $t3, 0x14($t1)
/* A7EB8 800A72B8 AD2A0010 */  sw         $t2, 0x10($t1)
/* A7EBC 800A72BC 8D8CA620 */  lw         $t4, %lo(D_800EA620)($t4)
/* A7EC0 800A72C0 8D8E0010 */  lw         $t6, 0x10($t4)
/* A7EC4 800A72C4 8D8F0014 */  lw         $t7, 0x14($t4)
/* A7EC8 800A72C8 AD8E0008 */  sw         $t6, 8($t4)
/* A7ECC 800A72CC AD8F000C */  sw         $t7, 0xc($t4)
/* A7ED0 800A72D0 3C0D800F */  lui        $t5, %hi(D_800EA620)
/* A7ED4 800A72D4 8DADA620 */  lw         $t5, %lo(D_800EA620)($t5)
/* A7ED8 800A72D8 ADA00018 */  sw         $zero, 0x18($t5)
/* A7EDC 800A72DC 3C18800F */  lui        $t8, %hi(D_800EA620)
/* A7EE0 800A72E0 8F18A620 */  lw         $t8, %lo(D_800EA620)($t8)
/* A7EE4 800A72E4 AF00001C */  sw         $zero, 0x1c($t8)
/* A7EE8 800A72E8 03E00008 */  jr         $ra
/* A7EEC 800A72EC 00000000 */   nop
