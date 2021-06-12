glabel func_80029DEC
/* 2A9EC 80029DEC 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 2A9F0 80029DF0 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 2A9F4 80029DF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2A9F8 80029DF8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2A9FC 80029DFC 01EEC024 */  and        $t8, $t7, $t6
/* 2AA00 80029E00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2AA04 80029E04 AFA40018 */  sw         $a0, 0x18($sp)
/* 2AA08 80029E08 1700000A */  bnez       $t8, .L80029E34
/* 2AA0C 80029E0C AFA5001C */   sw        $a1, 0x1c($sp)
/* 2AA10 80029E10 0C0005E3 */  jal        func_8000178C
/* 2AA14 80029E14 00000000 */   nop
/* 2AA18 80029E18 97B9001E */  lhu        $t9, 0x1e($sp)
/* 2AA1C 80029E1C 00000000 */  nop
/* 2AA20 80029E20 00594024 */  and        $t0, $v0, $t9
/* 2AA24 80029E24 15000004 */  bnez       $t0, .L80029E38
/* 2AA28 80029E28 00001025 */   or        $v0, $zero, $zero
/* 2AA2C 80029E2C 10000002 */  b          .L80029E38
/* 2AA30 80029E30 24020001 */   addiu     $v0, $zero, 1
.L80029E34:
/* 2AA34 80029E34 00001025 */  or         $v0, $zero, $zero
.L80029E38:
/* 2AA38 80029E38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2AA3C 80029E3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2AA40 80029E40 03E00008 */  jr         $ra
/* 2AA44 80029E44 00000000 */   nop
