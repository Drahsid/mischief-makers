glabel func_80022F48
/* 23B48 80022F48 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 23B4C 80022F4C 9442E4F4 */  lhu        $v0, %lo(gGameSubState)($v0)
/* 23B50 80022F50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23B54 80022F54 10400006 */  beqz       $v0, .L80022F70
/* 23B58 80022F58 AFBF0014 */   sw        $ra, 0x14($sp)
/* 23B5C 80022F5C 24010001 */  addiu      $at, $zero, 1
/* 23B60 80022F60 1041000F */  beq        $v0, $at, .L80022FA0
/* 23B64 80022F64 00000000 */   nop
/* 23B68 80022F68 10000050 */  b          .L800230AC
/* 23B6C 80022F6C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80022F70:
/* 23B70 80022F70 0C008C2E */  jal        func_800230B8
/* 23B74 80022F74 00000000 */   nop
/* 23B78 80022F78 0C008C4B */  jal        func_8002312C
/* 23B7C 80022F7C 00000000 */   nop
/* 23B80 80022F80 0C008C5A */  jal        func_80023168
/* 23B84 80022F84 00000000 */   nop
/* 23B88 80022F88 3C0E800C */  lui        $t6, %hi(gGameSubState)
/* 23B8C 80022F8C 95CEE4F4 */  lhu        $t6, %lo(gGameSubState)($t6)
/* 23B90 80022F90 3C01800C */  lui        $at, %hi(gGameSubState)
/* 23B94 80022F94 25CF0001 */  addiu      $t7, $t6, 1
/* 23B98 80022F98 10000043 */  b          .L800230A8
/* 23B9C 80022F9C A42FE4F4 */   sh        $t7, %lo(gGameSubState)($at)
.L80022FA0:
/* 23BA0 80022FA0 0C008B62 */  jal        func_80022D88
/* 23BA4 80022FA4 00000000 */   nop
/* 23BA8 80022FA8 0C00979B */  jal        func_80025E6C
/* 23BAC 80022FAC 00000000 */   nop
/* 23BB0 80022FB0 0C0013FF */  jal        func_80004FFC
/* 23BB4 80022FB4 00002025 */   or        $a0, $zero, $zero
/* 23BB8 80022FB8 0C0013FF */  jal        func_80004FFC
/* 23BBC 80022FBC 24040001 */   addiu     $a0, $zero, 1
/* 23BC0 80022FC0 0C00142D */  jal        GameSave_Reset
/* 23BC4 80022FC4 00000000 */   nop
/* 23BC8 80022FC8 24181000 */  addiu      $t8, $zero, 0x1000
/* 23BCC 80022FCC 3C01800C */  lui        $at, %hi(gButton_Start)
/* 23BD0 80022FD0 A438E500 */  sh         $t8, %lo(gButton_Start)($at)
/* 23BD4 80022FD4 3C01800C */  lui        $at, %hi(gButton_DUp)
/* 23BD8 80022FD8 24190800 */  addiu      $t9, $zero, 0x800
/* 23BDC 80022FDC A439E504 */  sh         $t9, %lo(gButton_DUp)($at)
/* 23BE0 80022FE0 3C01800C */  lui        $at, %hi(gButton_DDown)
/* 23BE4 80022FE4 24080400 */  addiu      $t0, $zero, 0x400
/* 23BE8 80022FE8 A428E508 */  sh         $t0, %lo(gButton_DDown)($at)
/* 23BEC 80022FEC 3C01800C */  lui        $at, %hi(gButton_DLeft)
/* 23BF0 80022FF0 24090200 */  addiu      $t1, $zero, 0x200
/* 23BF4 80022FF4 A429E50C */  sh         $t1, %lo(gButton_DLeft)($at)
/* 23BF8 80022FF8 3C01800C */  lui        $at, %hi(gButton_DRight)
/* 23BFC 80022FFC 240A0100 */  addiu      $t2, $zero, 0x100
/* 23C00 80023000 A42AE510 */  sh         $t2, %lo(gButton_DRight)($at)
/* 23C04 80023004 3C01800C */  lui        $at, %hi(gButton_B)
/* 23C08 80023008 240B4000 */  addiu      $t3, $zero, 0x4000
/* 23C0C 8002300C A42BE514 */  sh         $t3, %lo(gButton_B)($at)
/* 23C10 80023010 3C01800C */  lui        $at, %hi(gButton_A)
/* 23C14 80023014 340C8000 */  ori        $t4, $zero, 0x8000
/* 23C18 80023018 A42CE518 */  sh         $t4, %lo(gButton_A)($at)
/* 23C1C 8002301C 3C01800C */  lui        $at, %hi(gButton_CLeft)
/* 23C20 80023020 240D0002 */  addiu      $t5, $zero, 2
/* 23C24 80023024 A42DE51C */  sh         $t5, %lo(gButton_CLeft)($at)
/* 23C28 80023028 3C01800C */  lui        $at, %hi(gButton_CDown)
/* 23C2C 8002302C 240E0004 */  addiu      $t6, $zero, 4
/* 23C30 80023030 A42EE520 */  sh         $t6, %lo(gButton_CDown)($at)
/* 23C34 80023034 3C01800C */  lui        $at, %hi(gButton_CUp)
/* 23C38 80023038 240F0008 */  addiu      $t7, $zero, 8
/* 23C3C 8002303C A42FE524 */  sh         $t7, %lo(gButton_CUp)($at)
/* 23C40 80023040 24020001 */  addiu      $v0, $zero, 1
/* 23C44 80023044 3C01800C */  lui        $at, %hi(gButton_CRight)
/* 23C48 80023048 A422E528 */  sh         $v0, %lo(gButton_CRight)($at)
/* 23C4C 8002304C 3C01800C */  lui        $at, %hi(gButton_ZTrig)
/* 23C50 80023050 24182000 */  addiu      $t8, $zero, 0x2000
/* 23C54 80023054 A438E52C */  sh         $t8, %lo(gButton_ZTrig)($at)
/* 23C58 80023058 3C01800C */  lui        $at, %hi(gButton_LTrig)
/* 23C5C 8002305C 24190020 */  addiu      $t9, $zero, 0x20
/* 23C60 80023060 A439E530 */  sh         $t9, %lo(gButton_LTrig)($at)
/* 23C64 80023064 3C01800C */  lui        $at, %hi(gButton_RTrig)
/* 23C68 80023068 24080010 */  addiu      $t0, $zero, 0x10
/* 23C6C 8002306C A428E534 */  sh         $t0, %lo(gButton_RTrig)($at)
/* 23C70 80023070 3C018018 */  lui        $at, %hi(D_801781F8)
/* 23C74 80023074 A42081F8 */  sh         $zero, %lo(D_801781F8)($at)
/* 23C78 80023078 3C01800D */  lui        $at, %hi(D_800CBF44)
/* 23C7C 8002307C A420BF44 */  sh         $zero, %lo(D_800CBF44)($at)
/* 23C80 80023080 3C01800F */  lui        $at, %hi(D_800EF5F0)
/* 23C84 80023084 240903E8 */  addiu      $t1, $zero, 0x3e8
/* 23C88 80023088 A429F5F0 */  sh         $t1, %lo(D_800EF5F0)($at)
/* 23C8C 8002308C 3C018018 */  lui        $at, %hi(gRedGems)
/* 23C90 80023090 240A001E */  addiu      $t2, $zero, 0x1e
/* 23C94 80023094 A42A8136 */  sh         $t2, %lo(gRedGems)($at)
/* 23C98 80023098 3C01800C */  lui        $at, %hi(gGameState)
/* 23C9C 8002309C A422E4F0 */  sh         $v0, %lo(gGameState)($at)
/* 23CA0 800230A0 3C01800C */  lui        $at, %hi(gGameSubState)
/* 23CA4 800230A4 A420E4F4 */  sh         $zero, %lo(gGameSubState)($at)
.L800230A8:
/* 23CA8 800230A8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800230AC:
/* 23CAC 800230AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 23CB0 800230B0 03E00008 */  jr         $ra
/* 23CB4 800230B4 00000000 */   nop
