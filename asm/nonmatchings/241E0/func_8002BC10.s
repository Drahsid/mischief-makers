glabel func_8002BC10
/* 2C810 8002BC10 3086FFFF */  andi       $a2, $a0, 0xffff
/* 2C814 8002BC14 00067080 */  sll        $t6, $a2, 2
/* 2C818 8002BC18 01C67023 */  subu       $t6, $t6, $a2
/* 2C81C 8002BC1C 000E7080 */  sll        $t6, $t6, 2
/* 2C820 8002BC20 01C67021 */  addu       $t6, $t6, $a2
/* 2C824 8002BC24 000E7080 */  sll        $t6, $t6, 2
/* 2C828 8002BC28 01C67023 */  subu       $t6, $t6, $a2
/* 2C82C 8002BC2C 3C0F800F */  lui        $t7, %hi(gActors)
/* 2C830 8002BC30 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 2C834 8002BC34 000E70C0 */  sll        $t6, $t6, 3
/* 2C838 8002BC38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C83C 8002BC3C 01CF1021 */  addu       $v0, $t6, $t7
/* 2C840 8002BC40 AFA40018 */  sw         $a0, 0x18($sp)
/* 2C844 8002BC44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C848 8002BC48 84440088 */  lh         $a0, 0x88($v0)
/* 2C84C 8002BC4C 8445008C */  lh         $a1, 0x8c($v0)
/* 2C850 8002BC50 0C004B01 */  jal        func_80012C04
/* 2C854 8002BC54 00000000 */   nop
/* 2C858 8002BC58 3043007F */  andi       $v1, $v0, 0x7f
/* 2C85C 8002BC5C 3064FFFF */  andi       $a0, $v1, 0xffff
/* 2C860 8002BC60 24010032 */  addiu      $at, $zero, 0x32
/* 2C864 8002BC64 10810004 */  beq        $a0, $at, .L8002BC78
/* 2C868 8002BC68 3065FFFF */   andi      $a1, $v1, 0xffff
/* 2C86C 8002BC6C 24010036 */  addiu      $at, $zero, 0x36
/* 2C870 8002BC70 14810003 */  bne        $a0, $at, .L8002BC80
/* 2C874 8002BC74 00A01025 */   or        $v0, $a1, $zero
.L8002BC78:
/* 2C878 8002BC78 10000001 */  b          .L8002BC80
/* 2C87C 8002BC7C 00001025 */   or        $v0, $zero, $zero
.L8002BC80:
/* 2C880 8002BC80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C884 8002BC84 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2C888 8002BC88 03E00008 */  jr         $ra
/* 2C88C 8002BC8C 00000000 */   nop
