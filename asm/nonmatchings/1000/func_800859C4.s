glabel func_800859C4
/* 865C4 800859C4 3085FFFF */  andi       $a1, $a0, 0xffff
/* 865C8 800859C8 00057080 */  sll        $t6, $a1, 2
/* 865CC 800859CC 01C57023 */  subu       $t6, $t6, $a1
/* 865D0 800859D0 000E7080 */  sll        $t6, $t6, 2
/* 865D4 800859D4 01C57021 */  addu       $t6, $t6, $a1
/* 865D8 800859D8 000E7080 */  sll        $t6, $t6, 2
/* 865DC 800859DC 01C57023 */  subu       $t6, $t6, $a1
/* 865E0 800859E0 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 865E4 800859E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 865E8 800859E8 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 865EC 800859EC 000E70C0 */  sll        $t6, $t6, 3
/* 865F0 800859F0 01CF1021 */  addu       $v0, $t6, $t7
/* 865F4 800859F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 865F8 800859F8 AFA40020 */  sw         $a0, 0x20($sp)
/* 865FC 800859FC 24180082 */  addiu      $t8, $zero, 0x82
/* 86600 80085A00 AC580080 */  sw         $t8, 0x80($v0)
/* 86604 80085A04 A44000E0 */  sh         $zero, 0xe0($v0)
/* 86608 80085A08 A7A50022 */  sh         $a1, 0x22($sp)
/* 8660C 80085A0C 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 86610 80085A10 0C021740 */  jal        func_80085D00
/* 86614 80085A14 AFA2001C */   sw        $v0, 0x1c($sp)
/* 86618 80085A18 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8661C 80085A1C 97A50022 */  lhu        $a1, 0x22($sp)
/* 86620 80085A20 24190004 */  addiu      $t9, $zero, 4
/* 86624 80085A24 24040043 */  addiu      $a0, $zero, 0x43
/* 86628 80085A28 AC4000EC */  sw         $zero, 0xec($v0)
/* 8662C 80085A2C AC4000F0 */  sw         $zero, 0xf0($v0)
/* 86630 80085A30 A45900D0 */  sh         $t9, 0xd0($v0)
/* 86634 80085A34 0C000DB2 */  jal        func_800036C8
/* 86638 80085A38 AC400168 */   sw        $zero, 0x168($v0)
/* 8663C 80085A3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86640 80085A40 27BD0020 */  addiu      $sp, $sp, 0x20
/* 86644 80085A44 03E00008 */  jr         $ra
/* 86648 80085A48 00000000 */   nop
