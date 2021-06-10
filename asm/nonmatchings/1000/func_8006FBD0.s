glabel func_8006FBD0
/* 707D0 8006FBD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 707D4 8006FBD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 707D8 8006FBD8 AFA40020 */  sw         $a0, 0x20($sp)
/* 707DC 8006FBDC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 707E0 8006FBE0 01C02025 */  or         $a0, $t6, $zero
/* 707E4 8006FBE4 0C01B22E */  jal        func_8006C8B8
/* 707E8 8006FBE8 A7AE0022 */   sh        $t6, 0x22($sp)
/* 707EC 8006FBEC 97A40022 */  lhu        $a0, 0x22($sp)
/* 707F0 8006FBF0 1440002F */  bnez       $v0, .L8006FCB0
/* 707F4 8006FBF4 00047880 */   sll       $t7, $a0, 2
/* 707F8 8006FBF8 01E47823 */  subu       $t7, $t7, $a0
/* 707FC 8006FBFC 000F7880 */  sll        $t7, $t7, 2
/* 70800 8006FC00 01E47821 */  addu       $t7, $t7, $a0
/* 70804 8006FC04 000F7880 */  sll        $t7, $t7, 2
/* 70808 8006FC08 01E47823 */  subu       $t7, $t7, $a0
/* 7080C 8006FC0C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 70810 8006FC10 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 70814 8006FC14 000F78C0 */  sll        $t7, $t7, 3
/* 70818 8006FC18 01F81021 */  addu       $v0, $t7, $t8
/* 7081C 8006FC1C 944300D0 */  lhu        $v1, 0xd0($v0)
/* 70820 8006FC20 24010200 */  addiu      $at, $zero, 0x200
/* 70824 8006FC24 14610018 */  bne        $v1, $at, .L8006FC88
/* 70828 8006FC28 24790001 */   addiu     $t9, $v1, 1
/* 7082C 8006FC2C 8C480080 */  lw         $t0, 0x80($v0)
/* 70830 8006FC30 3C010001 */  lui        $at, 1
/* 70834 8006FC34 01014825 */  or         $t1, $t0, $at
/* 70838 8006FC38 3C01FFFD */  lui        $at, 0xfffd
/* 7083C 8006FC3C 3421FFFF */  ori        $at, $at, 0xffff
/* 70840 8006FC40 8C4C0098 */  lw         $t4, 0x98($v0)
/* 70844 8006FC44 01215824 */  and        $t3, $t1, $at
/* 70848 8006FC48 2401FFBF */  addiu      $at, $zero, -0x41
/* 7084C 8006FC4C 01816824 */  and        $t5, $t4, $at
/* 70850 8006FC50 3C014080 */  lui        $at, 0x4080
/* 70854 8006FC54 44812000 */  mtc1       $at, $f4
/* 70858 8006FC58 3C0E800E */  lui        $t6, %hi(D_800E1728)
/* 7085C 8006FC5C AC490080 */  sw         $t1, 0x80($v0)
/* 70860 8006FC60 25CE1728 */  addiu      $t6, $t6, %lo(D_800E1728)
/* 70864 8006FC64 240F0001 */  addiu      $t7, $zero, 1
/* 70868 8006FC68 A45900D0 */  sh         $t9, 0xd0($v0)
/* 7086C 8006FC6C AC4B0080 */  sw         $t3, 0x80($v0)
/* 70870 8006FC70 AC4D0098 */  sw         $t5, 0x98($v0)
/* 70874 8006FC74 A44F00E6 */  sh         $t7, 0xe6($v0)
/* 70878 8006FC78 AC4E00E8 */  sw         $t6, 0xe8($v0)
/* 7087C 8006FC7C AC4000F0 */  sw         $zero, 0xf0($v0)
/* 70880 8006FC80 AC400158 */  sw         $zero, 0x158($v0)
/* 70884 8006FC84 E4440144 */  swc1       $f4, 0x144($v0)
.L8006FC88:
/* 70888 8006FC88 8C580158 */  lw         $t8, 0x158($v0)
/* 7088C 8006FC8C AFA2001C */  sw         $v0, 0x1c($sp)
/* 70890 8006FC90 27190001 */  addiu      $t9, $t8, 1
/* 70894 8006FC94 0C01A6E5 */  jal        func_80069B94
/* 70898 8006FC98 AC590158 */   sw        $t9, 0x158($v0)
/* 7089C 8006FC9C 3C0140A0 */  lui        $at, 0x40a0
/* 708A0 8006FCA0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 708A4 8006FCA4 44813000 */  mtc1       $at, $f6
/* 708A8 8006FCA8 00000000 */  nop
/* 708AC 8006FCAC E446013C */  swc1       $f6, 0x13c($v0)
.L8006FCB0:
/* 708B0 8006FCB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 708B4 8006FCB4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 708B8 8006FCB8 03E00008 */  jr         $ra
/* 708BC 8006FCBC 00000000 */   nop
