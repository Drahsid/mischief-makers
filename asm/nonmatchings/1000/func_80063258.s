glabel func_80063258
/* 63E58 80063258 308EFFFF */  andi       $t6, $a0, 0xffff
/* 63E5C 8006325C 000E7880 */  sll        $t7, $t6, 2
/* 63E60 80063260 01EE7823 */  subu       $t7, $t7, $t6
/* 63E64 80063264 000F7880 */  sll        $t7, $t7, 2
/* 63E68 80063268 01EE7821 */  addu       $t7, $t7, $t6
/* 63E6C 8006326C 000F7880 */  sll        $t7, $t7, 2
/* 63E70 80063270 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 63E74 80063274 01EE7823 */  subu       $t7, $t7, $t6
/* 63E78 80063278 3C18800F */  lui        $t8, %hi(gActors)
/* 63E7C 8006327C AFB00018 */  sw         $s0, 0x18($sp)
/* 63E80 80063280 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 63E84 80063284 000F78C0 */  sll        $t7, $t7, 3
/* 63E88 80063288 01F88021 */  addu       $s0, $t7, $t8
/* 63E8C 8006328C 961900D8 */  lhu        $t9, 0xd8($s0)
/* 63E90 80063290 AFBF001C */  sw         $ra, 0x1c($sp)
/* 63E94 80063294 2B210030 */  slti       $at, $t9, 0x30
/* 63E98 80063298 10200018 */  beqz       $at, .L800632FC
/* 63E9C 8006329C AFA40020 */   sw        $a0, 0x20($sp)
/* 63EA0 800632A0 0C0121BD */  jal        func_800486F4
/* 63EA4 800632A4 00000000 */   nop
/* 63EA8 800632A8 14400015 */  bnez       $v0, .L80063300
/* 63EAC 800632AC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 63EB0 800632B0 8605008C */  lh         $a1, 0x8c($s0)
/* 63EB4 800632B4 86040088 */  lh         $a0, 0x88($s0)
/* 63EB8 800632B8 24A50009 */  addiu      $a1, $a1, 9
/* 63EBC 800632BC 00054400 */  sll        $t0, $a1, 0x10
/* 63EC0 800632C0 0C004AAD */  jal        func_80012AB4
/* 63EC4 800632C4 00082C03 */   sra       $a1, $t0, 0x10
/* 63EC8 800632C8 1040000D */  beqz       $v0, .L80063300
/* 63ECC 800632CC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 63ED0 800632D0 86040088 */  lh         $a0, 0x88($s0)
/* 63ED4 800632D4 8605008C */  lh         $a1, 0x8c($s0)
/* 63ED8 800632D8 0C004AAD */  jal        func_80012AB4
/* 63EDC 800632DC 00000000 */   nop
/* 63EE0 800632E0 24010036 */  addiu      $at, $zero, 0x36
/* 63EE4 800632E4 14410004 */  bne        $v0, $at, .L800632F8
/* 63EE8 800632E8 240B0065 */   addiu     $t3, $zero, 0x65
/* 63EEC 800632EC 240A0064 */  addiu      $t2, $zero, 0x64
/* 63EF0 800632F0 10000002 */  b          .L800632FC
/* 63EF4 800632F4 A60A00D0 */   sh        $t2, 0xd0($s0)
.L800632F8:
/* 63EF8 800632F8 A60B00D0 */  sh         $t3, 0xd0($s0)
.L800632FC:
/* 63EFC 800632FC 8FBF001C */  lw         $ra, 0x1c($sp)
.L80063300:
/* 63F00 80063300 8FB00018 */  lw         $s0, 0x18($sp)
/* 63F04 80063304 03E00008 */  jr         $ra
/* 63F08 80063308 27BD0020 */   addiu     $sp, $sp, 0x20
