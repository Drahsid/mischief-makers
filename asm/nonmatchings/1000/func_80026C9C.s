glabel func_80026C9C
/* 2789C 80026C9C 3088FFFF */  andi       $t0, $a0, 0xffff
/* 278A0 80026CA0 3C02800D */  lui        $v0, %hi(D_800CBF50)
/* 278A4 80026CA4 3C098013 */  lui        $t1, %hi(D_80137718)
/* 278A8 80026CA8 0008C880 */  sll        $t9, $t0, 2
/* 278AC 80026CAC 25297718 */  addiu      $t1, $t1, %lo(D_80137718)
/* 278B0 80026CB0 2442BF50 */  addiu      $v0, $v0, %lo(D_800CBF50)
/* 278B4 80026CB4 3C0F8036 */  lui        $t7, 0x8036
/* 278B8 80026CB8 0328C823 */  subu       $t9, $t9, $t0
/* 278BC 80026CBC 3C0B800D */  lui        $t3, %hi(D_800CFE04)
/* 278C0 80026CC0 A4400000 */  sh         $zero, ($v0)
/* 278C4 80026CC4 AD2F0000 */  sw         $t7, ($t1)
/* 278C8 80026CC8 3C018013 */  lui        $at, %hi(D_80137714)
/* 278CC 80026CCC 256BFE04 */  addiu      $t3, $t3, %lo(D_800CFE04)
/* 278D0 80026CD0 00195100 */  sll        $t2, $t9, 4
/* 278D4 80026CD4 AC2F7714 */  sw         $t7, %lo(D_80137714)($at)
/* 278D8 80026CD8 014B3821 */  addu       $a3, $t2, $t3
/* 278DC 80026CDC 8CE30028 */  lw         $v1, 0x28($a3)
/* 278E0 80026CE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 278E4 80026CE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 278E8 80026CE8 10600023 */  beqz       $v1, .L80026D78
/* 278EC 80026CEC AFA40028 */   sw        $a0, 0x28($sp)
/* 278F0 80026CF0 3C0C011A */  lui        $t4, 0x11a
/* 278F4 80026CF4 258CEB70 */  addiu      $t4, $t4, -0x1490
/* 278F8 80026CF8 15830003 */  bne        $t4, $v1, .L80026D08
/* 278FC 80026CFC 3C0E0100 */   lui       $t6, 0x100
/* 27900 80026D00 240D0001 */  addiu      $t5, $zero, 1
/* 27904 80026D04 A44D0000 */  sh         $t5, ($v0)
.L80026D08:
/* 27908 80026D08 8CF9002C */  lw         $t9, 0x2c($a3)
/* 2790C 80026D0C 25CE0000 */  addiu      $t6, $t6, 0
/* 27910 80026D10 3C180025 */  lui        $t8, 0x25
/* 27914 80026D14 27188F40 */  addiu      $t8, $t8, -0x70c0
/* 27918 80026D18 006E7823 */  subu       $t7, $v1, $t6
/* 2791C 80026D1C 3C058025 */  lui        $a1, 0x8025
/* 27920 80026D20 01F82021 */  addu       $a0, $t7, $t8
/* 27924 80026D24 34A59000 */  ori        $a1, $a1, 0x9000
/* 27928 80026D28 AFA8001C */  sw         $t0, 0x1c($sp)
/* 2792C 80026D2C 0C00047C */  jal        func_800011F0
/* 27930 80026D30 03233023 */   subu      $a2, $t9, $v1
/* 27934 80026D34 3C048025 */  lui        $a0, 0x8025
/* 27938 80026D38 34849000 */  ori        $a0, $a0, 0x9000
/* 2793C 80026D3C 0C001244 */  jal        func_80004910
/* 27940 80026D40 3C058036 */   lui       $a1, 0x8036
/* 27944 80026D44 8FA8001C */  lw         $t0, 0x1c($sp)
/* 27948 80026D48 3C018036 */  lui        $at, 0x8036
/* 2794C 80026D4C 00085880 */  sll        $t3, $t0, 2
/* 27950 80026D50 01685823 */  subu       $t3, $t3, $t0
/* 27954 80026D54 00415021 */  addu       $t2, $v0, $at
/* 27958 80026D58 000B60C0 */  sll        $t4, $t3, 3
/* 2795C 80026D5C 3C0D800D */  lui        $t5, %hi(D_800D0E98)
/* 27960 80026D60 3C018013 */  lui        $at, %hi(D_80137718)
/* 27964 80026D64 01AC6821 */  addu       $t5, $t5, $t4
/* 27968 80026D68 8DAD0E98 */  lw         $t5, %lo(D_800D0E98)($t5)
/* 2796C 80026D6C AC2A7718 */  sw         $t2, %lo(D_80137718)($at)
/* 27970 80026D70 3C018013 */  lui        $at, %hi(D_801376D4)
/* 27974 80026D74 AC2D76D4 */  sw         $t5, %lo(D_801376D4)($at)
.L80026D78:
/* 27978 80026D78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2797C 80026D7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 27980 80026D80 03E00008 */  jr         $ra
/* 27984 80026D84 00000000 */   nop
