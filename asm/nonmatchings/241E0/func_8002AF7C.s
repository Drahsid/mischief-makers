glabel func_8002AF7C
/* 2BB7C 8002AF7C 3C08800C */  lui        $t0, %hi(D_800BE4E0)
/* 2BB80 8002AF80 9508E4E0 */  lhu        $t0, %lo(D_800BE4E0)($t0)
/* 2BB84 8002AF84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2BB88 8002AF88 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 2BB8C 8002AF8C AFA40018 */  sw         $a0, 0x18($sp)
/* 2BB90 8002AF90 AFA60020 */  sw         $a2, 0x20($sp)
/* 2BB94 8002AF94 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2BB98 8002AF98 0006C400 */  sll        $t8, $a2, 0x10
/* 2BB9C 8002AF9C 010F4824 */  and        $t1, $t0, $t7
/* 2BBA0 8002AFA0 00183403 */  sra        $a2, $t8, 0x10
/* 2BBA4 8002AFA4 01C02025 */  or         $a0, $t6, $zero
/* 2BBA8 8002AFA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2BBAC 8002AFAC 15200010 */  bnez       $t1, .L8002AFF0
/* 2BBB0 8002AFB0 AFA5001C */   sw        $a1, 0x1c($sp)
/* 2BBB4 8002AFB4 000E5080 */  sll        $t2, $t6, 2
/* 2BBB8 8002AFB8 014E5023 */  subu       $t2, $t2, $t6
/* 2BBBC 8002AFBC 000A5080 */  sll        $t2, $t2, 2
/* 2BBC0 8002AFC0 014E5021 */  addu       $t2, $t2, $t6
/* 2BBC4 8002AFC4 000A5080 */  sll        $t2, $t2, 2
/* 2BBC8 8002AFC8 014E5023 */  subu       $t2, $t2, $t6
/* 2BBCC 8002AFCC 3C0B800F */  lui        $t3, %hi(D_800EF510)
/* 2BBD0 8002AFD0 256BF510 */  addiu      $t3, $t3, %lo(D_800EF510)
/* 2BBD4 8002AFD4 000A50C0 */  sll        $t2, $t2, 3
/* 2BBD8 8002AFD8 2403007F */  addiu      $v1, $zero, 0x7f
/* 2BBDC 8002AFDC 014B1021 */  addu       $v0, $t2, $t3
/* 2BBE0 8002AFE0 A043009C */  sb         $v1, 0x9c($v0)
/* 2BBE4 8002AFE4 A043009D */  sb         $v1, 0x9d($v0)
/* 2BBE8 8002AFE8 10000005 */  b          .L8002B000
/* 2BBEC 8002AFEC A043009E */   sb        $v1, 0x9e($v0)
.L8002AFF0:
/* 2BBF0 8002AFF0 00062C00 */  sll        $a1, $a2, 0x10
/* 2BBF4 8002AFF4 00056403 */  sra        $t4, $a1, 0x10
/* 2BBF8 8002AFF8 0C00ABBE */  jal        func_8002AEF8
/* 2BBFC 8002AFFC 01802825 */   or        $a1, $t4, $zero
.L8002B000:
/* 2BC00 8002B000 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2BC04 8002B004 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2BC08 8002B008 03E00008 */  jr         $ra
/* 2BC0C 8002B00C 00000000 */   nop
