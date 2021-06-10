glabel func_8008AF04
/* 8BB04 8008AF04 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8BB08 8008AF08 000E7880 */  sll        $t7, $t6, 2
/* 8BB0C 8008AF0C 01EE7823 */  subu       $t7, $t7, $t6
/* 8BB10 8008AF10 000F7880 */  sll        $t7, $t7, 2
/* 8BB14 8008AF14 01EE7821 */  addu       $t7, $t7, $t6
/* 8BB18 8008AF18 000F7880 */  sll        $t7, $t7, 2
/* 8BB1C 8008AF1C 01EE7823 */  subu       $t7, $t7, $t6
/* 8BB20 8008AF20 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8BB24 8008AF24 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8BB28 8008AF28 000F78C0 */  sll        $t7, $t7, 3
/* 8BB2C 8008AF2C 01F81821 */  addu       $v1, $t7, $t8
/* 8BB30 8008AF30 3C08800C */  lui        $t0, %hi(D_800BE55C)
/* 8BB34 8008AF34 8D08E55C */  lw         $t0, %lo(D_800BE55C)($t0)
/* 8BB38 8008AF38 8C79008C */  lw         $t9, 0x8c($v1)
/* 8BB3C 8008AF3C 8C690168 */  lw         $t1, 0x168($v1)
/* 8BB40 8008AF40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8BB44 8008AF44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BB48 8008AF48 AFA40028 */  sw         $a0, 0x28($sp)
/* 8BB4C 8008AF4C 11200004 */  beqz       $t1, .L8008AF60
/* 8BB50 8008AF50 03283821 */   addu      $a3, $t9, $t0
/* 8BB54 8008AF54 8C650160 */  lw         $a1, 0x160($v1)
/* 8BB58 8008AF58 10000004 */  b          .L8008AF6C
/* 8BB5C 8008AF5C 8C660158 */   lw        $a2, 0x158($v1)
.L8008AF60:
/* 8BB60 8008AF60 8C65015C */  lw         $a1, 0x15c($v1)
/* 8BB64 8008AF64 00000000 */  nop
/* 8BB68 8008AF68 8C660158 */  lw         $a2, 0x158($v1)
.L8008AF6C:
/* 8BB6C 8008AF6C 00E02025 */  or         $a0, $a3, $zero
/* 8BB70 8008AF70 AFA3001C */  sw         $v1, 0x1c($sp)
/* 8BB74 8008AF74 0C00A607 */  jal        func_8002981C
/* 8BB78 8008AF78 AFA50020 */   sw        $a1, 0x20($sp)
/* 8BB7C 8008AF7C 8FA50020 */  lw         $a1, 0x20($sp)
/* 8BB80 8008AF80 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8BB84 8008AF84 14450005 */  bne        $v0, $a1, .L8008AF9C
/* 8BB88 8008AF88 3C0C800C */   lui       $t4, %hi(D_800BE55C)
/* 8BB8C 8008AF8C 8C6A0168 */  lw         $t2, 0x168($v1)
/* 8BB90 8008AF90 00000000 */  nop
/* 8BB94 8008AF94 394B0001 */  xori       $t3, $t2, 1
/* 8BB98 8008AF98 AC6B0168 */  sw         $t3, 0x168($v1)
.L8008AF9C:
/* 8BB9C 8008AF9C 8D8CE55C */  lw         $t4, %lo(D_800BE55C)($t4)
/* 8BBA0 8008AFA0 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 8BBA4 8008AFA4 004C6823 */  subu       $t5, $v0, $t4
/* 8BBA8 8008AFA8 AC6D008C */  sw         $t5, 0x8c($v1)
/* 8BBAC 8008AFAC 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 8BBB0 8008AFB0 8C6E0164 */  lw         $t6, 0x164($v1)
/* 8BBB4 8008AFB4 00000000 */  nop
/* 8BBB8 8008AFB8 01CFC024 */  and        $t8, $t6, $t7
/* 8BBBC 8008AFBC 17000007 */  bnez       $t8, .L8008AFDC
/* 8BBC0 8008AFC0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8BBC4 8008AFC4 8C79016C */  lw         $t9, 0x16c($v1)
/* 8BBC8 8008AFC8 24080001 */  addiu      $t0, $zero, 1
/* 8BBCC 8008AFCC 17200003 */  bnez       $t9, .L8008AFDC
/* 8BBD0 8008AFD0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8BBD4 8008AFD4 AC68016C */  sw         $t0, 0x16c($v1)
/* 8BBD8 8008AFD8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008AFDC:
/* 8BBDC 8008AFDC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8BBE0 8008AFE0 03E00008 */  jr         $ra
/* 8BBE4 8008AFE4 00000000 */   nop
