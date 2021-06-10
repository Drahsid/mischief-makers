glabel func_8005DFC8
/* 5EBC8 8005DFC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EBCC 8005DFCC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5EBD0 8005DFD0 0C0177BF */  jal        func_8005DEFC
/* 5EBD4 8005DFD4 AFA40018 */   sw        $a0, 0x18($sp)
/* 5EBD8 8005DFD8 8FA50018 */  lw         $a1, 0x18($sp)
/* 5EBDC 8005DFDC 14400005 */  bnez       $v0, .L8005DFF4
/* 5EBE0 8005DFE0 24010001 */   addiu     $at, $zero, 1
/* 5EBE4 8005DFE4 0C0177D7 */  jal        func_8005DF5C
/* 5EBE8 8005DFE8 00A02025 */   or        $a0, $a1, $zero
/* 5EBEC 8005DFEC 10000028 */  b          .L8005E090
/* 5EBF0 8005DFF0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005DFF4:
/* 5EBF4 8005DFF4 3C028018 */  lui        $v0, %hi(D_801783F0)
/* 5EBF8 8005DFF8 244283F0 */  addiu      $v0, $v0, %lo(D_801783F0)
/* 5EBFC 8005DFFC 84460000 */  lh         $a2, ($v0)
/* 5EC00 8005E000 24070001 */  addiu      $a3, $zero, 1
/* 5EC04 8005E004 14C00002 */  bnez       $a2, .L8005E010
/* 5EC08 8005E008 240E0002 */   addiu     $t6, $zero, 2
/* 5EC0C 8005E00C 00003825 */  or         $a3, $zero, $zero
.L8005E010:
/* 5EC10 8005E010 14C10004 */  bne        $a2, $at, .L8005E024
/* 5EC14 8005E014 240FFFFF */   addiu     $t7, $zero, -1
/* 5EC18 8005E018 A44E0000 */  sh         $t6, ($v0)
/* 5EC1C 8005E01C 84460000 */  lh         $a2, ($v0)
/* 5EC20 8005E020 00000000 */  nop
.L8005E024:
/* 5EC24 8005E024 24010002 */  addiu      $at, $zero, 2
/* 5EC28 8005E028 14C10003 */  bne        $a2, $at, .L8005E038
/* 5EC2C 8005E02C 00072040 */   sll       $a0, $a3, 1
/* 5EC30 8005E030 3C018018 */  lui        $at, %hi(D_801783F2)
/* 5EC34 8005E034 A42F83F2 */  sh         $t7, %lo(D_801783F2)($at)
.L8005E038:
/* 5EC38 8005E038 28E10010 */  slti       $at, $a3, 0x10
/* 5EC3C 8005E03C 1020000F */  beqz       $at, .L8005E07C
/* 5EC40 8005E040 3C188018 */   lui       $t8, %hi(D_801783F8)
/* 5EC44 8005E044 3C198018 */  lui        $t9, %hi(D_80178418)
/* 5EC48 8005E048 27398418 */  addiu      $t9, $t9, %lo(D_80178418)
/* 5EC4C 8005E04C 271883F8 */  addiu      $t8, $t8, %lo(D_801783F8)
/* 5EC50 8005E050 00981821 */  addu       $v1, $a0, $t8
/* 5EC54 8005E054 00991021 */  addu       $v0, $a0, $t9
/* 5EC58 8005E058 3C048018 */  lui        $a0, %hi(D_80178438)
/* 5EC5C 8005E05C 24848438 */  addiu      $a0, $a0, %lo(D_80178438)
.L8005E060:
/* 5EC60 8005E060 24420002 */  addiu      $v0, $v0, 2
/* 5EC64 8005E064 0044082B */  sltu       $at, $v0, $a0
/* 5EC68 8005E068 A445FFFE */  sh         $a1, -2($v0)
/* 5EC6C 8005E06C 24630002 */  addiu      $v1, $v1, 2
/* 5EC70 8005E070 A460FFFE */  sh         $zero, -2($v1)
/* 5EC74 8005E074 1420FFFA */  bnez       $at, .L8005E060
/* 5EC78 8005E078 00002825 */   or        $a1, $zero, $zero
.L8005E07C:
/* 5EC7C 8005E07C 14C00003 */  bnez       $a2, .L8005E08C
/* 5EC80 8005E080 24020001 */   addiu     $v0, $zero, 1
/* 5EC84 8005E084 10000001 */  b          .L8005E08C
/* 5EC88 8005E088 00001025 */   or        $v0, $zero, $zero
.L8005E08C:
/* 5EC8C 8005E08C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005E090:
/* 5EC90 8005E090 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5EC94 8005E094 03E00008 */  jr         $ra
/* 5EC98 8005E098 00000000 */   nop
