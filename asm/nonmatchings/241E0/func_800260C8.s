glabel func_800260C8
/* 26CC8 800260C8 308FFFFF */  andi       $t7, $a0, 0xffff
/* 26CCC 800260CC 3C19800D */  lui        $t9, %hi(D_800CE10C)
/* 26CD0 800260D0 2739E10C */  addiu      $t9, $t9, %lo(D_800CE10C)
/* 26CD4 800260D4 000FC100 */  sll        $t8, $t7, 4
/* 26CD8 800260D8 03191021 */  addu       $v0, $t8, $t9
/* 26CDC 800260DC 8C470000 */  lw         $a3, ($v0)
/* 26CE0 800260E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 26CE4 800260E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 26CE8 800260E8 10E0001E */  beqz       $a3, .L80026164
/* 26CEC 800260EC AFA40028 */   sw        $a0, 0x28($sp)
/* 26CF0 800260F0 8C480004 */  lw         $t0, 4($v0)
/* 26CF4 800260F4 3C09801B */  lui        $t1, 0x801b
/* 26CF8 800260F8 3C038013 */  lui        $v1, %hi(D_80137744)
/* 26CFC 800260FC 35290800 */  ori        $t1, $t1, 0x800
/* 26D00 80026100 24637744 */  addiu      $v1, $v1, %lo(D_80137744)
/* 26D04 80026104 01073023 */  subu       $a2, $t0, $a3
/* 26D08 80026108 AC690000 */  sw         $t1, ($v1)
/* 26D0C 8002610C 00C95021 */  addu       $t2, $a2, $t1
/* 26D10 80026110 3C018013 */  lui        $at, %hi(D_80137748)
/* 26D14 80026114 AC2A7748 */  sw         $t2, %lo(D_80137748)($at)
/* 26D18 80026118 8C650000 */  lw         $a1, ($v1)
/* 26D1C 8002611C 00E02025 */  or         $a0, $a3, $zero
/* 26D20 80026120 0C00047C */  jal        func_800011F0
/* 26D24 80026124 AFA2001C */   sw        $v0, 0x1c($sp)
/* 26D28 80026128 8FA2001C */  lw         $v0, 0x1c($sp)
/* 26D2C 8002612C 3C0C801B */  lui        $t4, 0x801b
/* 26D30 80026130 8C440008 */  lw         $a0, 8($v0)
/* 26D34 80026134 8C4B000C */  lw         $t3, 0xc($v0)
/* 26D38 80026138 3C038013 */  lui        $v1, %hi(D_80137744)
/* 26D3C 8002613C 358C0900 */  ori        $t4, $t4, 0x900
/* 26D40 80026140 24637744 */  addiu      $v1, $v1, %lo(D_80137744)
/* 26D44 80026144 01643023 */  subu       $a2, $t3, $a0
/* 26D48 80026148 AC6C0000 */  sw         $t4, ($v1)
/* 26D4C 8002614C 00CC6821 */  addu       $t5, $a2, $t4
/* 26D50 80026150 3C018013 */  lui        $at, %hi(D_80137748)
/* 26D54 80026154 AC2D7748 */  sw         $t5, %lo(D_80137748)($at)
/* 26D58 80026158 8C650000 */  lw         $a1, ($v1)
/* 26D5C 8002615C 0C00047C */  jal        func_800011F0
/* 26D60 80026160 00000000 */   nop
.L80026164:
/* 26D64 80026164 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26D68 80026168 27BD0028 */  addiu      $sp, $sp, 0x28
/* 26D6C 8002616C 03E00008 */  jr         $ra
/* 26D70 80026170 00000000 */   nop