glabel func_80090BFC
/* 917FC 80090BFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91800 80090C00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 91804 80090C04 AFA40020 */  sw         $a0, 0x20($sp)
/* 91808 80090C08 308EFFFF */  andi       $t6, $a0, 0xffff
/* 9180C 80090C0C 01C02025 */  or         $a0, $t6, $zero
/* 91810 80090C10 0C023C5A */  jal        func_8008F168
/* 91814 80090C14 A7AE0022 */   sh        $t6, 0x22($sp)
/* 91818 80090C18 97A40022 */  lhu        $a0, 0x22($sp)
/* 9181C 80090C1C 1440002B */  bnez       $v0, .L80090CCC
/* 91820 80090C20 00047880 */   sll       $t7, $a0, 2
/* 91824 80090C24 01E47823 */  subu       $t7, $t7, $a0
/* 91828 80090C28 000F7880 */  sll        $t7, $t7, 2
/* 9182C 80090C2C 01E47821 */  addu       $t7, $t7, $a0
/* 91830 80090C30 000F7880 */  sll        $t7, $t7, 2
/* 91834 80090C34 01E47823 */  subu       $t7, $t7, $a0
/* 91838 80090C38 3C18800F */  lui        $t8, %hi(gActors)
/* 9183C 80090C3C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 91840 80090C40 000F78C0 */  sll        $t7, $t7, 3
/* 91844 80090C44 01F81021 */  addu       $v0, $t7, $t8
/* 91848 80090C48 944600D0 */  lhu        $a2, 0xd0($v0)
/* 9184C 80090C4C 24010120 */  addiu      $at, $zero, 0x120
/* 91850 80090C50 10C10006 */  beq        $a2, $at, .L80090C6C
/* 91854 80090C54 00C01825 */   or        $v1, $a2, $zero
/* 91858 80090C58 24010121 */  addiu      $at, $zero, 0x121
/* 9185C 80090C5C 1061000B */  beq        $v1, $at, .L80090C8C
/* 91860 80090C60 00000000 */   nop
/* 91864 80090C64 1000001A */  b          .L80090CD0
/* 91868 80090C68 8FBF0014 */   lw        $ra, 0x14($sp)
.L80090C6C:
/* 9186C 80090C6C 24D90001 */  addiu      $t9, $a2, 1
/* 91870 80090C70 3C05800F */  lui        $a1, %hi(D_800E8A08)
/* 91874 80090C74 A45900D0 */  sh         $t9, 0xd0($v0)
/* 91878 80090C78 24A58A08 */  addiu      $a1, $a1, %lo(D_800E8A08)
/* 9187C 80090C7C 0C0205E4 */  jal        func_80081790
/* 91880 80090C80 AFA20018 */   sw        $v0, 0x18($sp)
/* 91884 80090C84 8FA20018 */  lw         $v0, 0x18($sp)
/* 91888 80090C88 00000000 */  nop
.L80090C8C:
/* 9188C 80090C8C 8C48016C */  lw         $t0, 0x16c($v0)
/* 91890 80090C90 44803000 */  mtc1       $zero, $f6
/* 91894 80090C94 31090001 */  andi       $t1, $t0, 1
/* 91898 80090C98 11200005 */  beqz       $t1, .L80090CB0
/* 9189C 80090C9C 240C0110 */   addiu     $t4, $zero, 0x110
/* 918A0 80090CA0 8C4A0080 */  lw         $t2, 0x80($v0)
/* 918A4 80090CA4 00000000 */  nop
/* 918A8 80090CA8 394B0020 */  xori       $t3, $t2, 0x20
/* 918AC 80090CAC AC4B0080 */  sw         $t3, 0x80($v0)
.L80090CB0:
/* 918B0 80090CB0 C444011C */  lwc1       $f4, 0x11c($v0)
/* 918B4 80090CB4 00000000 */  nop
/* 918B8 80090CB8 4606203C */  c.lt.s     $f4, $f6
/* 918BC 80090CBC 00000000 */  nop
/* 918C0 80090CC0 45000003 */  bc1f       .L80090CD0
/* 918C4 80090CC4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 918C8 80090CC8 A44C00D0 */  sh         $t4, 0xd0($v0)
.L80090CCC:
/* 918CC 80090CCC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80090CD0:
/* 918D0 80090CD0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 918D4 80090CD4 03E00008 */  jr         $ra
/* 918D8 80090CD8 00000000 */   nop
