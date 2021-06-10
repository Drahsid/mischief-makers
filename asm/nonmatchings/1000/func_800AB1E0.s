glabel func_800AB1E0
/* ABDE0 800AB1E0 3C0E800F */  lui        $t6, %hi(D_800EA4D0)
/* ABDE4 800AB1E4 8DCEA4D0 */  lw         $t6, %lo(D_800EA4D0)($t6)
/* ABDE8 800AB1E8 15C00005 */  bnez       $t6, .L800AB200
/* ABDEC 800AB1EC 00000000 */   nop
/* ABDF0 800AB1F0 03E00008 */  jr         $ra
/* ABDF4 800AB1F4 00001025 */   or        $v0, $zero, $zero
/* ABDF8 800AB1F8 10000004 */  b          .L800AB20C
/* ABDFC 800AB1FC 00000000 */   nop
.L800AB200:
/* ABE00 800AB200 3C02800F */  lui        $v0, %hi(D_800EA4D8)
/* ABE04 800AB204 03E00008 */  jr         $ra
/* ABE08 800AB208 8C42A4D8 */   lw        $v0, %lo(D_800EA4D8)($v0)
.L800AB20C:
/* ABE0C 800AB20C 03E00008 */  jr         $ra
/* ABE10 800AB210 00000000 */   nop
