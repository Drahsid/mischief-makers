glabel func_80045FA4
/* 46BA4 80045FA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 46BA8 80045FA8 AFA40018 */  sw         $a0, 0x18($sp)
/* 46BAC 80045FAC 3C04800C */  lui        $a0, %hi(D_800BE5D0)
/* 46BB0 80045FB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 46BB4 80045FB4 9484E5D0 */  lhu        $a0, %lo(D_800BE5D0)($a0)
/* 46BB8 80045FB8 0C004308 */  jal        func_80010C20
/* 46BBC 80045FBC AFA5001C */   sw        $a1, 0x1c($sp)
/* 46BC0 80045FC0 44802000 */  mtc1       $zero, $f4
/* 46BC4 80045FC4 3C01800D */  lui        $at, %hi(D_800D2904)
/* 46BC8 80045FC8 8FA40018 */  lw         $a0, 0x18($sp)
/* 46BCC 80045FCC 0C0117C5 */  jal        func_80045F14
/* 46BD0 80045FD0 E4242904 */   swc1      $f4, %lo(D_800D2904)($at)
/* 46BD4 80045FD4 3C01800D */  lui        $at, %hi(D_800D294C)
/* 46BD8 80045FD8 A420294C */  sh         $zero, %lo(D_800D294C)($at)
/* 46BDC 80045FDC 3C01800D */  lui        $at, %hi(gPlayerActorIndex)
/* 46BE0 80045FE0 A4202950 */  sh         $zero, %lo(gPlayerActorIndex)($at)
/* 46BE4 80045FE4 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 46BE8 80045FE8 240E0005 */  addiu      $t6, $zero, 5
/* 46BEC 80045FEC AC2EE5F4 */  sw         $t6, %lo(D_800BE5F4)($at)
/* 46BF0 80045FF0 944F0000 */  lhu        $t7, ($v0)
/* 46BF4 80045FF4 3C03800F */  lui        $v1, %hi(gActors)
/* 46BF8 80045FF8 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 46BFC 80045FFC A46F0088 */  sh         $t7, 0x88($v1)
/* 46C00 80046000 94580002 */  lhu        $t8, 2($v0)
/* 46C04 80046004 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 46C08 80046008 A478008C */  sh         $t8, 0x8c($v1)
/* 46C0C 8004600C 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 46C10 80046010 84680088 */  lh         $t0, 0x88($v1)
/* 46C14 80046014 3C01800C */  lui        $at, %hi(gPlayerPosXMirror)
/* 46C18 80046018 03284821 */  addu       $t1, $t9, $t0
/* 46C1C 8004601C A429E5D8 */  sh         $t1, %lo(gPlayerPosXMirror)($at)
/* 46C20 80046020 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 46C24 80046024 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 46C28 80046028 846B008C */  lh         $t3, 0x8c($v1)
/* 46C2C 8004602C 3C01800C */  lui        $at, %hi(gPlayerPosYMirror)
/* 46C30 80046030 014B6021 */  addu       $t4, $t2, $t3
/* 46C34 80046034 3C048013 */  lui        $a0, %hi(D_801373E0)
/* 46C38 80046038 A42CE5DC */  sh         $t4, %lo(gPlayerPosYMirror)($at)
/* 46C3C 8004603C 248473E0 */  addiu      $a0, $a0, %lo(D_801373E0)
/* 46C40 80046040 8C8D0078 */  lw         $t5, 0x78($a0)
/* 46C44 80046044 3C01FFFE */  lui        $at, 0xfffe
/* 46C48 80046048 3421FFFA */  ori        $at, $at, 0xfffa
/* 46C4C 8004604C 01A17024 */  and        $t6, $t5, $at
/* 46C50 80046050 8C790080 */  lw         $t9, 0x80($v1)
/* 46C54 80046054 846500E0 */  lh         $a1, 0xe0($v1)
/* 46C58 80046058 2401FFDF */  addiu      $at, $zero, -0x21
/* 46C5C 8004605C AC8E0078 */  sw         $t6, 0x78($a0)
/* 46C60 80046060 35D80002 */  ori        $t8, $t6, 2
/* 46C64 80046064 03214024 */  and        $t0, $t9, $at
/* 46C68 80046068 AC980078 */  sw         $t8, 0x78($a0)
/* 46C6C 8004606C 04A10004 */  bgez       $a1, .L80046080
/* 46C70 80046070 AC680080 */   sw        $t0, 0x80($v1)
/* 46C74 80046074 A46000E0 */  sh         $zero, 0xe0($v1)
/* 46C78 80046078 846500E0 */  lh         $a1, 0xe0($v1)
/* 46C7C 8004607C 00000000 */  nop
.L80046080:
/* 46C80 80046080 3C01800D */  lui        $at, %hi(D_800D2958)
/* 46C84 80046084 0C011540 */  jal        func_80045500
/* 46C88 80046088 A4252958 */   sh        $a1, %lo(D_800D2958)($at)
/* 46C8C 8004608C 3C02800D */  lui        $v0, %hi(D_800D28FC)
/* 46C90 80046090 244228FC */  addiu      $v0, $v0, %lo(D_800D28FC)
/* 46C94 80046094 8C490000 */  lw         $t1, ($v0)
/* 46C98 80046098 24018A75 */  addiu      $at, $zero, -0x758b
/* 46C9C 8004609C 01215024 */  and        $t2, $t1, $at
/* 46CA0 800460A0 AC4A0000 */  sw         $t2, ($v0)
/* 46CA4 800460A4 354C0004 */  ori        $t4, $t2, 4
/* 46CA8 800460A8 AC4C0000 */  sw         $t4, ($v0)
/* 46CAC 800460AC 3C01800D */  lui        $at, %hi(D_800D2914)
/* 46CB0 800460B0 A4202914 */  sh         $zero, %lo(D_800D2914)($at)
/* 46CB4 800460B4 3C038013 */  lui        $v1, %hi(D_801376BC)
/* 46CB8 800460B8 246376BC */  addiu      $v1, $v1, %lo(D_801376BC)
/* 46CBC 800460BC 24040001 */  addiu      $a0, $zero, 1
/* 46CC0 800460C0 3C058010 */  lui        $a1, %hi(D_80104098)
/* 46CC4 800460C4 24A54098 */  addiu      $a1, $a1, %lo(D_80104098)
/* 46CC8 800460C8 240D0050 */  addiu      $t5, $zero, 0x50
/* 46CCC 800460CC 240E0053 */  addiu      $t6, $zero, 0x53
/* 46CD0 800460D0 A4AD2888 */  sh         $t5, 0x2888($a1)
/* 46CD4 800460D4 A4AE2928 */  sh         $t6, 0x2928($a1)
/* 46CD8 800460D8 A0640000 */  sb         $a0, ($v1)
/* 46CDC 800460DC A0640001 */  sb         $a0, 1($v1)
/* 46CE0 800460E0 0C00994F */  jal        func_8002653C
/* 46CE4 800460E4 A0640002 */   sb        $a0, 2($v1)
/* 46CE8 800460E8 8FA4001C */  lw         $a0, 0x1c($sp)
/* 46CEC 800460EC 2409FFFF */  addiu      $t1, $zero, -1
/* 46CF0 800460F0 2C81FFF8 */  sltiu      $at, $a0, -8
/* 46CF4 800460F4 1420000E */  bnez       $at, .L80046130
/* 46CF8 800460F8 308F0002 */   andi      $t7, $a0, 2
/* 46CFC 800460FC 11E00002 */  beqz       $t7, .L80046108
/* 46D00 80046100 00001025 */   or        $v0, $zero, $zero
/* 46D04 80046104 24024000 */  addiu      $v0, $zero, 0x4000
.L80046108:
/* 46D08 80046108 30980001 */  andi       $t8, $a0, 1
/* 46D0C 8004610C 13000002 */  beqz       $t8, .L80046118
/* 46D10 80046110 34598000 */   ori       $t9, $v0, 0x8000
/* 46D14 80046114 3322FFFF */  andi       $v0, $t9, 0xffff
.L80046118:
/* 46D18 80046118 01222023 */  subu       $a0, $t1, $v0
/* 46D1C 8004611C 308AFFFF */  andi       $t2, $a0, 0xffff
/* 46D20 80046120 0C010B8A */  jal        func_80042E28
/* 46D24 80046124 01402025 */   or        $a0, $t2, $zero
/* 46D28 80046128 10000004 */  b          .L8004613C
/* 46D2C 8004612C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80046130:
/* 46D30 80046130 0C010B6F */  jal        func_80042DBC
/* 46D34 80046134 00000000 */   nop
/* 46D38 80046138 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004613C:
/* 46D3C 8004613C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 46D40 80046140 03E00008 */  jr         $ra
/* 46D44 80046144 00000000 */   nop
