glabel func_8008BB64
/* 8C764 8008BB64 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C768 8008BB68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C76C 8008BB6C AFA40020 */  sw         $a0, 0x20($sp)
/* 8C770 8008BB70 24040090 */  addiu      $a0, $zero, 0x90
/* 8C774 8008BB74 0C00A12E */  jal        func_800284B8
/* 8C778 8008BB78 240500C0 */   addiu     $a1, $zero, 0xc0
/* 8C77C 8008BB7C 10400033 */  beqz       $v0, .L8008BC4C
/* 8C780 8008BB80 3044FFFF */   andi      $a0, $v0, 0xffff
/* 8C784 8008BB84 00047080 */  sll        $t6, $a0, 2
/* 8C788 8008BB88 01C47023 */  subu       $t6, $t6, $a0
/* 8C78C 8008BB8C 000E7080 */  sll        $t6, $t6, 2
/* 8C790 8008BB90 01C47021 */  addu       $t6, $t6, $a0
/* 8C794 8008BB94 000E7080 */  sll        $t6, $t6, 2
/* 8C798 8008BB98 01C47023 */  subu       $t6, $t6, $a0
/* 8C79C 8008BB9C 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 8C7A0 8008BBA0 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 8C7A4 8008BBA4 000E70C0 */  sll        $t6, $t6, 3
/* 8C7A8 8008BBA8 01CF1021 */  addu       $v0, $t6, $t7
/* 8C7AC 8008BBAC 2418005C */  addiu      $t8, $zero, 0x5c
/* 8C7B0 8008BBB0 A45800D2 */  sh         $t8, 0xd2($v0)
/* 8C7B4 8008BBB4 0C0078B4 */  jal        func_8001E2D0
/* 8C7B8 8008BBB8 AFA20018 */   sw        $v0, 0x18($sp)
/* 8C7BC 8008BBBC 97A40022 */  lhu        $a0, 0x22($sp)
/* 8C7C0 8008BBC0 8FA20018 */  lw         $v0, 0x18($sp)
/* 8C7C4 8008BBC4 00045880 */  sll        $t3, $a0, 2
/* 8C7C8 8008BBC8 01645823 */  subu       $t3, $t3, $a0
/* 8C7CC 8008BBCC 000B5880 */  sll        $t3, $t3, 2
/* 8C7D0 8008BBD0 3C013F00 */  lui        $at, 0x3f00
/* 8C7D4 8008BBD4 01645821 */  addu       $t3, $t3, $a0
/* 8C7D8 8008BBD8 44810000 */  mtc1       $at, $f0
/* 8C7DC 8008BBDC 000B5880 */  sll        $t3, $t3, 2
/* 8C7E0 8008BBE0 3C0C800F */  lui        $t4, 0x800f
/* 8C7E4 8008BBE4 01645823 */  subu       $t3, $t3, $a0
/* 8C7E8 8008BBE8 24190001 */  addiu      $t9, $zero, 1
/* 8C7EC 8008BBEC 24080007 */  addiu      $t0, $zero, 7
/* 8C7F0 8008BBF0 240901A2 */  addiu      $t1, $zero, 0x1a2
/* 8C7F4 8008BBF4 240A0010 */  addiu      $t2, $zero, 0x10
/* 8C7F8 8008BBF8 000B58C0 */  sll        $t3, $t3, 3
/* 8C7FC 8008BBFC 258CF510 */  addiu      $t4, $t4, -0xaf0
/* 8C800 8008BC00 016C1821 */  addu       $v1, $t3, $t4
/* 8C804 8008BC04 A4590094 */  sh         $t9, 0x94($v0)
/* 8C808 8008BC08 AC480080 */  sw         $t0, 0x80($v0)
/* 8C80C 8008BC0C A4490084 */  sh         $t1, 0x84($v0)
/* 8C810 8008BC10 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 8C814 8008BC14 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 8C818 8008BC18 E44000B8 */  swc1       $f0, 0xb8($v0)
/* 8C81C 8008BC1C 846D0088 */  lh         $t5, 0x88($v1)
/* 8C820 8008BC20 00000000 */  nop
/* 8C824 8008BC24 A44D0088 */  sh         $t5, 0x88($v0)
/* 8C828 8008BC28 846E008C */  lh         $t6, 0x8c($v1)
/* 8C82C 8008BC2C 00000000 */  nop
/* 8C830 8008BC30 A44E008C */  sh         $t6, 0x8c($v0)
/* 8C834 8008BC34 846F0090 */  lh         $t7, 0x90($v1)
/* 8C838 8008BC38 00000000 */  nop
/* 8C83C 8008BC3C A44F0090 */  sh         $t7, 0x90($v0)
/* 8C840 8008BC40 8C780150 */  lw         $t8, 0x150($v1)
/* 8C844 8008BC44 AC440168 */  sw         $a0, 0x168($v0)
/* 8C848 8008BC48 AC580150 */  sw         $t8, 0x150($v0)
.L8008BC4C:
/* 8C84C 8008BC4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C850 8008BC50 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8C854 8008BC54 03E00008 */  jr         $ra
/* 8C858 8008BC58 00000000 */   nop
