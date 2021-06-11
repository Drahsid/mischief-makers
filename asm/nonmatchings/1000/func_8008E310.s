glabel func_8008E310
/* 8EF10 8008E310 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8EF14 8008E314 AFA40020 */  sw         $a0, 0x20($sp)
/* 8EF18 8008E318 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8EF1C 8008E31C 240F0004 */  addiu      $t7, $zero, 4
/* 8EF20 8008E320 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8EF24 8008E324 01C02025 */  or         $a0, $t6, $zero
/* 8EF28 8008E328 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EF2C 8008E32C AFA50024 */  sw         $a1, 0x24($sp)
/* 8EF30 8008E330 15C00002 */  bnez       $t6, .L8008E33C
/* 8EF34 8008E334 AC2FE5F4 */   sw        $t7, %lo(D_800BE5F4)($at)
/* 8EF38 8008E338 24040010 */  addiu      $a0, $zero, 0x10
.L8008E33C:
/* 8EF3C 8008E33C 0004C080 */  sll        $t8, $a0, 2
/* 8EF40 8008E340 0304C023 */  subu       $t8, $t8, $a0
/* 8EF44 8008E344 0018C080 */  sll        $t8, $t8, 2
/* 8EF48 8008E348 0304C021 */  addu       $t8, $t8, $a0
/* 8EF4C 8008E34C 0018C080 */  sll        $t8, $t8, 2
/* 8EF50 8008E350 3C03800F */  lui        $v1, %hi(gActors)
/* 8EF54 8008E354 0304C023 */  subu       $t8, $t8, $a0
/* 8EF58 8008E358 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 8EF5C 8008E35C 0018C0C0 */  sll        $t8, $t8, 3
/* 8EF60 8008E360 00781021 */  addu       $v0, $v1, $t8
/* 8EF64 8008E364 24190070 */  addiu      $t9, $zero, 0x70
/* 8EF68 8008E368 A45900D2 */  sh         $t9, 0xd2($v0)
/* 8EF6C 8008E36C 0C0078B4 */  jal        func_8001E2D0
/* 8EF70 8008E370 AFA2001C */   sw        $v0, 0x1c($sp)
/* 8EF74 8008E374 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8EF78 8008E378 3C03800F */  lui        $v1, %hi(gActors)
/* 8EF7C 8008E37C 24080002 */  addiu      $t0, $zero, 2
/* 8EF80 8008E380 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 8EF84 8008E384 AC480080 */  sw         $t0, 0x80($v0)
/* 8EF88 8008E388 84690088 */  lh         $t1, 0x88($v1)
/* 8EF8C 8008E38C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8EF90 8008E390 A4490088 */  sh         $t1, 0x88($v0)
/* 8EF94 8008E394 846A008C */  lh         $t2, 0x8c($v1)
/* 8EF98 8008E398 00000000 */  nop
/* 8EF9C 8008E39C A44A008C */  sh         $t2, 0x8c($v0)
/* 8EFA0 8008E3A0 8C6B00EC */  lw         $t3, 0xec($v1)
/* 8EFA4 8008E3A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8EFA8 8008E3A8 05610003 */  bgez       $t3, .L8008E3B8
/* 8EFAC 8008E3AC 000B6043 */   sra       $t4, $t3, 1
/* 8EFB0 8008E3B0 25610001 */  addiu      $at, $t3, 1
/* 8EFB4 8008E3B4 00016043 */  sra        $t4, $at, 1
.L8008E3B8:
/* 8EFB8 8008E3B8 03E00008 */  jr         $ra
/* 8EFBC 8008E3BC AC4C00EC */   sw        $t4, 0xec($v0)
