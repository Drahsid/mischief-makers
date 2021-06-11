glabel func_8004F2B0
/* 4FEB0 8004F2B0 3C0E8013 */  lui        $t6, %hi(D_801370CE)
/* 4FEB4 8004F2B4 3C0F800C */  lui        $t7, %hi(D_800BE514)
/* 4FEB8 8004F2B8 95EFE514 */  lhu        $t7, %lo(D_800BE514)($t7)
/* 4FEBC 8004F2BC 95CE70CE */  lhu        $t6, %lo(D_801370CE)($t6)
/* 4FEC0 8004F2C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4FEC4 8004F2C4 01CFC024 */  and        $t8, $t6, $t7
/* 4FEC8 8004F2C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4FECC 8004F2CC AFA40020 */  sw         $a0, 0x20($sp)
/* 4FED0 8004F2D0 17000003 */  bnez       $t8, .L8004F2E0
/* 4FED4 8004F2D4 3085FFFF */   andi      $a1, $a0, 0xffff
/* 4FED8 8004F2D8 1000001C */  b          .L8004F34C
/* 4FEDC 8004F2DC 00001025 */   or        $v0, $zero, $zero
.L8004F2E0:
/* 4FEE0 8004F2E0 0005C880 */  sll        $t9, $a1, 2
/* 4FEE4 8004F2E4 0325C823 */  subu       $t9, $t9, $a1
/* 4FEE8 8004F2E8 0019C880 */  sll        $t9, $t9, 2
/* 4FEEC 8004F2EC 0325C821 */  addu       $t9, $t9, $a1
/* 4FEF0 8004F2F0 0019C880 */  sll        $t9, $t9, 2
/* 4FEF4 8004F2F4 0325C823 */  subu       $t9, $t9, $a1
/* 4FEF8 8004F2F8 3C08800F */  lui        $t0, %hi(gActors)
/* 4FEFC 8004F2FC 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 4FF00 8004F300 0019C8C0 */  sll        $t9, $t9, 3
/* 4FF04 8004F304 03281821 */  addu       $v1, $t9, $t0
/* 4FF08 8004F308 8C690080 */  lw         $t1, 0x80($v1)
/* 4FF0C 8004F30C 2401BFBF */  addiu      $at, $zero, -0x4041
/* 4FF10 8004F310 01215024 */  and        $t2, $t1, $at
/* 4FF14 8004F314 AC6A0080 */  sw         $t2, 0x80($v1)
/* 4FF18 8004F318 AFA30018 */  sw         $v1, 0x18($sp)
/* 4FF1C 8004F31C 0C01230A */  jal        func_80048C28
/* 4FF20 8004F320 00002025 */   or        $a0, $zero, $zero
/* 4FF24 8004F324 8FA30018 */  lw         $v1, 0x18($sp)
/* 4FF28 8004F328 3C0B8013 */  lui        $t3, %hi(D_801373D8)
/* 4FF2C 8004F32C A0620140 */  sb         $v0, 0x140($v1)
/* 4FF30 8004F330 956B73D8 */  lhu        $t3, %lo(D_801373D8)($t3)
/* 4FF34 8004F334 2401FF7F */  addiu      $at, $zero, -0x81
/* 4FF38 8004F338 01616024 */  and        $t4, $t3, $at
/* 4FF3C 8004F33C 15800003 */  bnez       $t4, .L8004F34C
/* 4FF40 8004F340 24020002 */   addiu     $v0, $zero, 2
/* 4FF44 8004F344 10000001 */  b          .L8004F34C
/* 4FF48 8004F348 24020001 */   addiu     $v0, $zero, 1
.L8004F34C:
/* 4FF4C 8004F34C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4FF50 8004F350 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4FF54 8004F354 03E00008 */  jr         $ra
/* 4FF58 8004F358 00000000 */   nop
