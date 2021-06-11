glabel func_80073EF4
/* 74AF4 80073EF4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 74AF8 80073EF8 000E7880 */  sll        $t7, $t6, 2
/* 74AFC 80073EFC 01EE7823 */  subu       $t7, $t7, $t6
/* 74B00 80073F00 000F7880 */  sll        $t7, $t7, 2
/* 74B04 80073F04 01EE7821 */  addu       $t7, $t7, $t6
/* 74B08 80073F08 000F7880 */  sll        $t7, $t7, 2
/* 74B0C 80073F0C 01EE7823 */  subu       $t7, $t7, $t6
/* 74B10 80073F10 3C18800F */  lui        $t8, %hi(gActors)
/* 74B14 80073F14 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 74B18 80073F18 000F78C0 */  sll        $t7, $t7, 3
/* 74B1C 80073F1C 01F81021 */  addu       $v0, $t7, $t8
/* 74B20 80073F20 8C430080 */  lw         $v1, 0x80($v0)
/* 74B24 80073F24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74B28 80073F28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74B2C 80073F2C AFA40020 */  sw         $a0, 0x20($sp)
/* 74B30 80073F30 24190060 */  addiu      $t9, $zero, 0x60
/* 74B34 80073F34 30680020 */  andi       $t0, $v1, 0x20
/* 74B38 80073F38 01C02025 */  or         $a0, $t6, $zero
/* 74B3C 80073F3C A45900D2 */  sh         $t9, 0xd2($v0)
/* 74B40 80073F40 AFA8001C */  sw         $t0, 0x1c($sp)
/* 74B44 80073F44 0C0078B4 */  jal        func_8001E2D0
/* 74B48 80073F48 AFA20018 */   sw        $v0, 0x18($sp)
/* 74B4C 80073F4C 8FA20018 */  lw         $v0, 0x18($sp)
/* 74B50 80073F50 8FA3001C */  lw         $v1, 0x1c($sp)
/* 74B54 80073F54 3C010002 */  lui        $at, 2
/* 74B58 80073F58 34210006 */  ori        $at, $at, 6
/* 74B5C 80073F5C 3C0E800E */  lui        $t6, 0x800e
/* 74B60 80073F60 2404000E */  addiu      $a0, $zero, 0xe
/* 74B64 80073F64 24090201 */  addiu      $t1, $zero, 0x201
/* 74B68 80073F68 340BFFFF */  ori        $t3, $zero, 0xffff
/* 74B6C 80073F6C 240CFFEE */  addiu      $t4, $zero, -0x12
/* 74B70 80073F70 240DFFF2 */  addiu      $t5, $zero, -0xe
/* 74B74 80073F74 25CE1BE0 */  addiu      $t6, $t6, 0x1be0
/* 74B78 80073F78 240F0001 */  addiu      $t7, $zero, 1
/* 74B7C 80073F7C 00615021 */  addu       $t2, $v1, $at
/* 74B80 80073F80 30780020 */  andi       $t8, $v1, 0x20
/* 74B84 80073F84 A4490094 */  sh         $t1, 0x94($v0)
/* 74B88 80073F88 AC4A0080 */  sw         $t2, 0x80($v0)
/* 74B8C 80073F8C A44B00D0 */  sh         $t3, 0xd0($v0)
/* 74B90 80073F90 A44D00AA */  sh         $t5, 0xaa($v0)
/* 74B94 80073F94 A44C00B0 */  sh         $t4, 0xb0($v0)
/* 74B98 80073F98 A44400AE */  sh         $a0, 0xae($v0)
/* 74B9C 80073F9C A44400AC */  sh         $a0, 0xac($v0)
/* 74BA0 80073FA0 A44F00E6 */  sh         $t7, 0xe6($v0)
/* 74BA4 80073FA4 13000004 */  beqz       $t8, .L80073FB8
/* 74BA8 80073FA8 AC4E00E8 */   sw        $t6, 0xe8($v0)
/* 74BAC 80073FAC 3C190002 */  lui        $t9, 2
/* 74BB0 80073FB0 10000003 */  b          .L80073FC0
/* 74BB4 80073FB4 AC5900EC */   sw        $t9, 0xec($v0)
.L80073FB8:
/* 74BB8 80073FB8 3C08FFFE */  lui        $t0, 0xfffe
/* 74BBC 80073FBC AC4800EC */  sw         $t0, 0xec($v0)
.L80073FC0:
/* 74BC0 80073FC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74BC4 80073FC4 3C090002 */  lui        $t1, 2
/* 74BC8 80073FC8 AC4900F0 */  sw         $t1, 0xf0($v0)
/* 74BCC 80073FCC AC400098 */  sw         $zero, 0x98($v0)
/* 74BD0 80073FD0 03E00008 */  jr         $ra
/* 74BD4 80073FD4 27BD0020 */   addiu     $sp, $sp, 0x20
