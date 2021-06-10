glabel func_80068E48
/* 69A48 80068E48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 69A4C 80068E4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 69A50 80068E50 AFA40018 */  sw         $a0, 0x18($sp)
/* 69A54 80068E54 308EFFFF */  andi       $t6, $a0, 0xffff
/* 69A58 80068E58 01C02025 */  or         $a0, $t6, $zero
/* 69A5C 80068E5C AFA5001C */  sw         $a1, 0x1c($sp)
/* 69A60 80068E60 AFA60020 */  sw         $a2, 0x20($sp)
/* 69A64 80068E64 0C01A37E */  jal        func_80068DF8
/* 69A68 80068E68 A7AE001A */   sh        $t6, 0x1a($sp)
/* 69A6C 80068E6C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 69A70 80068E70 24010081 */  addiu      $at, $zero, 0x81
/* 69A74 80068E74 1041000B */  beq        $v0, $at, .L80068EA4
/* 69A78 80068E78 0004C080 */   sll       $t8, $a0, 2
/* 69A7C 80068E7C 24010082 */  addiu      $at, $zero, 0x82
/* 69A80 80068E80 10410013 */  beq        $v0, $at, .L80068ED0
/* 69A84 80068E84 00044080 */   sll       $t0, $a0, 2
/* 69A88 80068E88 24010083 */  addiu      $at, $zero, 0x83
/* 69A8C 80068E8C 10410005 */  beq        $v0, $at, .L80068EA4
/* 69A90 80068E90 24010084 */   addiu     $at, $zero, 0x84
/* 69A94 80068E94 1041000F */  beq        $v0, $at, .L80068ED4
/* 69A98 80068E98 01044023 */   subu      $t0, $t0, $a0
/* 69A9C 80068E9C 10000017 */  b          .L80068EFC
/* 69AA0 80068EA0 8FBF0014 */   lw        $ra, 0x14($sp)
.L80068EA4:
/* 69AA4 80068EA4 0304C023 */  subu       $t8, $t8, $a0
/* 69AA8 80068EA8 0018C080 */  sll        $t8, $t8, 2
/* 69AAC 80068EAC 0304C021 */  addu       $t8, $t8, $a0
/* 69AB0 80068EB0 0018C080 */  sll        $t8, $t8, 2
/* 69AB4 80068EB4 0304C023 */  subu       $t8, $t8, $a0
/* 69AB8 80068EB8 97AF0022 */  lhu        $t7, 0x22($sp)
/* 69ABC 80068EBC 0018C0C0 */  sll        $t8, $t8, 3
/* 69AC0 80068EC0 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 69AC4 80068EC4 00380821 */  addu       $at, $at, $t8
/* 69AC8 80068EC8 1000000B */  b          .L80068EF8
/* 69ACC 80068ECC A42FF5E0 */   sh        $t7, %lo(D_800EF5E0)($at)
.L80068ED0:
/* 69AD0 80068ED0 01044023 */  subu       $t0, $t0, $a0
.L80068ED4:
/* 69AD4 80068ED4 00084080 */  sll        $t0, $t0, 2
/* 69AD8 80068ED8 01044021 */  addu       $t0, $t0, $a0
/* 69ADC 80068EDC 00084080 */  sll        $t0, $t0, 2
/* 69AE0 80068EE0 01044023 */  subu       $t0, $t0, $a0
/* 69AE4 80068EE4 97B9001E */  lhu        $t9, 0x1e($sp)
/* 69AE8 80068EE8 000840C0 */  sll        $t0, $t0, 3
/* 69AEC 80068EEC 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 69AF0 80068EF0 00280821 */  addu       $at, $at, $t0
/* 69AF4 80068EF4 A439F5E0 */  sh         $t9, %lo(D_800EF5E0)($at)
.L80068EF8:
/* 69AF8 80068EF8 8FBF0014 */  lw         $ra, 0x14($sp)
.L80068EFC:
/* 69AFC 80068EFC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 69B00 80068F00 03E00008 */  jr         $ra
/* 69B04 80068F04 00000000 */   nop
