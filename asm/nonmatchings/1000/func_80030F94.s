glabel func_80030F94
/* 31B94 80030F94 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 31B98 80030F98 AFB00018 */  sw         $s0, 0x18($sp)
/* 31B9C 80030F9C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 31BA0 80030FA0 01C08025 */  or         $s0, $t6, $zero
/* 31BA4 80030FA4 320F7FFF */  andi       $t7, $s0, 0x7fff
/* 31BA8 80030FA8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31BAC 80030FAC AFA40030 */  sw         $a0, 0x30($sp)
/* 31BB0 80030FB0 11E00037 */  beqz       $t7, .L80031090
/* 31BB4 80030FB4 01E08025 */   or        $s0, $t7, $zero
/* 31BB8 80030FB8 000FC080 */  sll        $t8, $t7, 2
/* 31BBC 80030FBC 030FC023 */  subu       $t8, $t8, $t7
/* 31BC0 80030FC0 0018C080 */  sll        $t8, $t8, 2
/* 31BC4 80030FC4 030FC021 */  addu       $t8, $t8, $t7
/* 31BC8 80030FC8 0018C080 */  sll        $t8, $t8, 2
/* 31BCC 80030FCC 030FC023 */  subu       $t8, $t8, $t7
/* 31BD0 80030FD0 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 31BD4 80030FD4 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 31BD8 80030FD8 0018C0C0 */  sll        $t8, $t8, 3
/* 31BDC 80030FDC 03191021 */  addu       $v0, $t8, $t9
/* 31BE0 80030FE0 24080009 */  addiu      $t0, $zero, 9
/* 31BE4 80030FE4 A44800D2 */  sh         $t0, 0xd2($v0)
/* 31BE8 80030FE8 AFA20020 */  sw         $v0, 0x20($sp)
/* 31BEC 80030FEC 31E4FFFF */  andi       $a0, $t7, 0xffff
/* 31BF0 80030FF0 AFAE0028 */  sw         $t6, 0x28($sp)
/* 31BF4 80030FF4 AFA50034 */  sw         $a1, 0x34($sp)
/* 31BF8 80030FF8 AFA60038 */  sw         $a2, 0x38($sp)
/* 31BFC 80030FFC 0C0078B4 */  jal        func_8001E2D0
/* 31C00 80031000 AFA7003C */   sw        $a3, 0x3c($sp)
/* 31C04 80031004 8FA30028 */  lw         $v1, 0x28($sp)
/* 31C08 80031008 8FA20020 */  lw         $v0, 0x20($sp)
/* 31C0C 8003100C 8FA50034 */  lw         $a1, 0x34($sp)
/* 31C10 80031010 8FA60038 */  lw         $a2, 0x38($sp)
/* 31C14 80031014 8FA7003C */  lw         $a3, 0x3c($sp)
/* 31C18 80031018 24090003 */  addiu      $t1, $zero, 3
/* 31C1C 8003101C 306A8000 */  andi       $t2, $v1, 0x8000
/* 31C20 80031020 11400006 */  beqz       $t2, .L8003103C
/* 31C24 80031024 AC490080 */   sw        $t1, 0x80($v0)
/* 31C28 80031028 8FAB0040 */  lw         $t3, 0x40($sp)
/* 31C2C 8003102C AC460088 */  sw         $a2, 0x88($v0)
/* 31C30 80031030 AC47008C */  sw         $a3, 0x8c($v0)
/* 31C34 80031034 10000005 */  b          .L8003104C
/* 31C38 80031038 AC4B0090 */   sw        $t3, 0x90($v0)
.L8003103C:
/* 31C3C 8003103C 8FAC0040 */  lw         $t4, 0x40($sp)
/* 31C40 80031040 A4460088 */  sh         $a2, 0x88($v0)
/* 31C44 80031044 A447008C */  sh         $a3, 0x8c($v0)
/* 31C48 80031048 A44C0090 */  sh         $t4, 0x90($v0)
.L8003104C:
/* 31C4C 8003104C 3C01BF80 */  lui        $at, 0xbf80
/* 31C50 80031050 44812000 */  mtc1       $at, $f4
/* 31C54 80031054 3C014370 */  lui        $at, 0x4370
/* 31C58 80031058 8C4D0088 */  lw         $t5, 0x88($v0)
/* 31C5C 8003105C 8C4E008C */  lw         $t6, 0x8c($v0)
/* 31C60 80031060 44813000 */  mtc1       $at, $f6
/* 31C64 80031064 3C0F800E */  lui        $t7, %hi(D_800E1380)
/* 31C68 80031068 25EF1380 */  addiu      $t7, $t7, %lo(D_800E1380)
/* 31C6C 8003106C E4440130 */  swc1       $f4, 0x130($v0)
/* 31C70 80031070 AC4D0184 */  sw         $t5, 0x184($v0)
/* 31C74 80031074 AC4E0188 */  sw         $t6, 0x188($v0)
/* 31C78 80031078 14AF0004 */  bne        $a1, $t7, .L8003108C
/* 31C7C 8003107C E4460148 */   swc1      $f6, 0x148($v0)
/* 31C80 80031080 241801E0 */  addiu      $t8, $zero, 0x1e0
/* 31C84 80031084 10000002 */  b          .L80031090
/* 31C88 80031088 A45800E6 */   sh        $t8, 0xe6($v0)
.L8003108C:
/* 31C8C 8003108C AC4500E8 */  sw         $a1, 0xe8($v0)
.L80031090:
/* 31C90 80031090 8FBF001C */  lw         $ra, 0x1c($sp)
/* 31C94 80031094 02001025 */  or         $v0, $s0, $zero
/* 31C98 80031098 8FB00018 */  lw         $s0, 0x18($sp)
/* 31C9C 8003109C 03E00008 */  jr         $ra
/* 31CA0 800310A0 27BD0030 */   addiu     $sp, $sp, 0x30
