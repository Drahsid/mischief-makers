glabel func_80082088
/* 82C88 80082088 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 82C8C 8008208C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 82C90 80082090 AFA40030 */  sw         $a0, 0x30($sp)
/* 82C94 80082094 24010040 */  addiu      $at, $zero, 0x40
/* 82C98 80082098 01C02025 */  or         $a0, $t6, $zero
/* 82C9C 8008209C AFBF0014 */  sw         $ra, 0x14($sp)
/* 82CA0 800820A0 15C1000C */  bne        $t6, $at, .L800820D4
/* 82CA4 800820A4 01C01025 */   or        $v0, $t6, $zero
/* 82CA8 800820A8 000EC080 */  sll        $t8, $t6, 2
/* 82CAC 800820AC 030EC023 */  subu       $t8, $t8, $t6
/* 82CB0 800820B0 0018C080 */  sll        $t8, $t8, 2
/* 82CB4 800820B4 030EC021 */  addu       $t8, $t8, $t6
/* 82CB8 800820B8 0018C080 */  sll        $t8, $t8, 2
/* 82CBC 800820BC 030EC023 */  subu       $t8, $t8, $t6
/* 82CC0 800820C0 0018C0C0 */  sll        $t8, $t8, 3
/* 82CC4 800820C4 3C01800F */  lui        $at, %hi(D_800EF5A0)
/* 82CC8 800820C8 00380821 */  addu       $at, $at, $t8
/* 82CCC 800820CC 240F0010 */  addiu      $t7, $zero, 0x10
/* 82CD0 800820D0 A42FF5A0 */  sh         $t7, %lo(D_800EF5A0)($at)
.L800820D4:
/* 82CD4 800820D4 0004C880 */  sll        $t9, $a0, 2
/* 82CD8 800820D8 0324C823 */  subu       $t9, $t9, $a0
/* 82CDC 800820DC 0019C880 */  sll        $t9, $t9, 2
/* 82CE0 800820E0 0324C821 */  addu       $t9, $t9, $a0
/* 82CE4 800820E4 0019C880 */  sll        $t9, $t9, 2
/* 82CE8 800820E8 0324C823 */  subu       $t9, $t9, $a0
/* 82CEC 800820EC 3C08800F */  lui        $t0, %hi(gActors)
/* 82CF0 800820F0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 82CF4 800820F4 0019C8C0 */  sll        $t9, $t9, 3
/* 82CF8 800820F8 24010050 */  addiu      $at, $zero, 0x50
/* 82CFC 800820FC 14410003 */  bne        $v0, $at, .L8008210C
/* 82D00 80082100 03281821 */   addu      $v1, $t9, $t0
/* 82D04 80082104 2409FEFF */  addiu      $t1, $zero, -0x101
/* 82D08 80082108 A4690090 */  sh         $t1, 0x90($v1)
.L8008210C:
/* 82D0C 8008210C 24010060 */  addiu      $at, $zero, 0x60
/* 82D10 80082110 14410002 */  bne        $v0, $at, .L8008211C
/* 82D14 80082114 240AFF7F */   addiu     $t2, $zero, -0x81
/* 82D18 80082118 A46A0090 */  sh         $t2, 0x90($v1)
.L8008211C:
/* 82D1C 8008211C AFA3001C */  sw         $v1, 0x1c($sp)
/* 82D20 80082120 0C0207F2 */  jal        func_80081FC8
/* 82D24 80082124 A7A40032 */   sh        $a0, 0x32($sp)
/* 82D28 80082128 8FA3001C */  lw         $v1, 0x1c($sp)
/* 82D2C 8008212C 97A40032 */  lhu        $a0, 0x32($sp)
/* 82D30 80082130 946200D0 */  lhu        $v0, 0xd0($v1)
/* 82D34 80082134 24010001 */  addiu      $at, $zero, 1
/* 82D38 80082138 10400005 */  beqz       $v0, .L80082150
/* 82D3C 8008213C 00000000 */   nop
/* 82D40 80082140 1041000A */  beq        $v0, $at, .L8008216C
/* 82D44 80082144 00000000 */   nop
/* 82D48 80082148 10000008 */  b          .L8008216C
/* 82D4C 8008214C 00000000 */   nop
.L80082150:
/* 82D50 80082150 AFA3001C */  sw         $v1, 0x1c($sp)
/* 82D54 80082154 0C020748 */  jal        func_80081D20
/* 82D58 80082158 A7A40032 */   sh        $a0, 0x32($sp)
/* 82D5C 8008215C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 82D60 80082160 240B0001 */  addiu      $t3, $zero, 1
/* 82D64 80082164 97A40032 */  lhu        $a0, 0x32($sp)
/* 82D68 80082168 A46B00D0 */  sh         $t3, 0xd0($v1)
.L8008216C:
/* 82D6C 8008216C 0C020809 */  jal        func_80082024
/* 82D70 80082170 00000000 */   nop
/* 82D74 80082174 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82D78 80082178 27BD0030 */  addiu      $sp, $sp, 0x30
/* 82D7C 8008217C 03E00008 */  jr         $ra
/* 82D80 80082180 00000000 */   nop
