glabel func_80054FD0
/* 55BD0 80054FD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 55BD4 80054FD4 AFA40020 */  sw         $a0, 0x20($sp)
/* 55BD8 80054FD8 97AE0022 */  lhu        $t6, 0x22($sp)
/* 55BDC 80054FDC 24060198 */  addiu      $a2, $zero, 0x198
/* 55BE0 80054FE0 01C60019 */  multu      $t6, $a2
/* 55BE4 80054FE4 AFA50024 */  sw         $a1, 0x24($sp)
/* 55BE8 80054FE8 97A80026 */  lhu        $t0, 0x26($sp)
/* 55BEC 80054FEC 3C02800F */  lui        $v0, %hi(gActors)
/* 55BF0 80054FF0 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 55BF4 80054FF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 55BF8 80054FF8 00007812 */  mflo       $t7
/* 55BFC 80054FFC 004F1821 */  addu       $v1, $v0, $t7
/* 55C00 80055000 9078012E */  lbu        $t8, 0x12e($v1)
/* 55C04 80055004 01060019 */  multu      $t0, $a2
/* 55C08 80055008 37190080 */  ori        $t9, $t8, 0x80
/* 55C0C 8005500C A079012E */  sb         $t9, 0x12e($v1)
/* 55C10 80055010 24080004 */  addiu      $t0, $zero, 4
/* 55C14 80055014 00004812 */  mflo       $t1
/* 55C18 80055018 00495021 */  addu       $t2, $v0, $t1
/* 55C1C 8005501C 8D4B0080 */  lw         $t3, 0x80($t2)
/* 55C20 80055020 310900FF */  andi       $t1, $t0, 0xff
/* 55C24 80055024 316C0020 */  andi       $t4, $t3, 0x20
/* 55C28 80055028 15800006 */  bnez       $t4, .L80055044
/* 55C2C 8005502C 00000000 */   nop
/* 55C30 80055030 8C6D0080 */  lw         $t5, 0x80($v1)
/* 55C34 80055034 2401FFDF */  addiu      $at, $zero, -0x21
/* 55C38 80055038 01A17024 */  and        $t6, $t5, $at
/* 55C3C 8005503C 10000005 */  b          .L80055054
/* 55C40 80055040 AC6E0080 */   sw        $t6, 0x80($v1)
.L80055044:
/* 55C44 80055044 8C6F0080 */  lw         $t7, 0x80($v1)
/* 55C48 80055048 00000000 */  nop
/* 55C4C 8005504C 35F80020 */  ori        $t8, $t7, 0x20
/* 55C50 80055050 AC780080 */  sw         $t8, 0x80($v1)
.L80055054:
/* 55C54 80055054 907900D0 */  lbu        $t9, 0xd0($v1)
/* 55C58 80055058 2401BFBF */  addiu      $at, $zero, -0x4041
/* 55C5C 8005505C 1720000E */  bnez       $t9, .L80055098
/* 55C60 80055060 24180001 */   addiu     $t8, $zero, 1
/* 55C64 80055064 8C6A0080 */  lw         $t2, 0x80($v1)
/* 55C68 80055068 A0680140 */  sb         $t0, 0x140($v1)
/* 55C6C 8005506C 01415824 */  and        $t3, $t2, $at
/* 55C70 80055070 3C01FF3C */  lui        $at, 0xff3c
/* 55C74 80055074 3421FFFF */  ori        $at, $at, 0xffff
/* 55C78 80055078 01616824 */  and        $t5, $t3, $at
/* 55C7C 8005507C AC6B0080 */  sw         $t3, 0x80($v1)
/* 55C80 80055080 3C010002 */  lui        $at, 2
/* 55C84 80055084 01A17825 */  or         $t7, $t5, $at
/* 55C88 80055088 AC6D0080 */  sw         $t5, 0x80($v1)
/* 55C8C 8005508C A4690142 */  sh         $t1, 0x142($v1)
/* 55C90 80055090 AC6F0080 */  sw         $t7, 0x80($v1)
/* 55C94 80055094 A07800D0 */  sb         $t8, 0xd0($v1)
.L80055098:
/* 55C98 80055098 8C790080 */  lw         $t9, 0x80($v1)
/* 55C9C 8005509C 97A40022 */  lhu        $a0, 0x22($sp)
/* 55CA0 800550A0 33284040 */  andi       $t0, $t9, 0x4040
/* 55CA4 800550A4 1100000A */  beqz       $t0, .L800550D0
/* 55CA8 800550A8 00000000 */   nop
/* 55CAC 800550AC 0C017506 */  jal        func_8005D418
/* 55CB0 800550B0 AFA3001C */   sw        $v1, 0x1c($sp)
/* 55CB4 800550B4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 55CB8 800550B8 10400005 */  beqz       $v0, .L800550D0
/* 55CBC 800550BC 00000000 */   nop
/* 55CC0 800550C0 8C690080 */  lw         $t1, 0x80($v1)
/* 55CC4 800550C4 2401BFBF */  addiu      $at, $zero, -0x4041
/* 55CC8 800550C8 01215024 */  and        $t2, $t1, $at
/* 55CCC 800550CC AC6A0080 */  sw         $t2, 0x80($v1)
.L800550D0:
/* 55CD0 800550D0 8C6B0080 */  lw         $t3, 0x80($v1)
/* 55CD4 800550D4 97A40022 */  lhu        $a0, 0x22($sp)
/* 55CD8 800550D8 316C4040 */  andi       $t4, $t3, 0x4040
/* 55CDC 800550DC 15800005 */  bnez       $t4, .L800550F4
/* 55CE0 800550E0 2405003F */   addiu     $a1, $zero, 0x3f
/* 55CE4 800550E4 0C0174DC */  jal        func_8005D370
/* 55CE8 800550E8 AFA3001C */   sw        $v1, 0x1c($sp)
/* 55CEC 800550EC 8FA3001C */  lw         $v1, 0x1c($sp)
/* 55CF0 800550F0 00000000 */  nop
.L800550F4:
/* 55CF4 800550F4 97A40022 */  lhu        $a0, 0x22($sp)
/* 55CF8 800550F8 97A50026 */  lhu        $a1, 0x26($sp)
/* 55CFC 800550FC 0C014A9B */  jal        func_80052A6C
/* 55D00 80055100 AFA3001C */   sw        $v1, 0x1c($sp)
/* 55D04 80055104 97A40022 */  lhu        $a0, 0x22($sp)
/* 55D08 80055108 97A50026 */  lhu        $a1, 0x26($sp)
/* 55D0C 8005510C 0C014DB3 */  jal        func_800536CC
/* 55D10 80055110 00000000 */   nop
/* 55D14 80055114 97A40022 */  lhu        $a0, 0x22($sp)
/* 55D18 80055118 97A50026 */  lhu        $a1, 0x26($sp)
/* 55D1C 8005511C 0C014C84 */  jal        func_80053210
/* 55D20 80055120 00000000 */   nop
/* 55D24 80055124 8FA3001C */  lw         $v1, 0x1c($sp)
/* 55D28 80055128 24010002 */  addiu      $at, $zero, 2
/* 55D2C 8005512C 14410012 */  bne        $v0, $at, .L80055178
/* 55D30 80055130 24090004 */   addiu     $t1, $zero, 4
/* 55D34 80055134 3C028013 */  lui        $v0, %hi(D_801373D8)
/* 55D38 80055138 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 55D3C 8005513C 00000000 */  nop
/* 55D40 80055140 304D0002 */  andi       $t5, $v0, 2
/* 55D44 80055144 11A00005 */  beqz       $t5, .L8005515C
/* 55D48 80055148 30580001 */   andi      $t8, $v0, 1
/* 55D4C 8005514C 8C6E0080 */  lw         $t6, 0x80($v1)
/* 55D50 80055150 2401FFDF */  addiu      $at, $zero, -0x21
/* 55D54 80055154 01C17824 */  and        $t7, $t6, $at
/* 55D58 80055158 AC6F0080 */  sw         $t7, 0x80($v1)
.L8005515C:
/* 55D5C 8005515C 13000005 */  beqz       $t8, .L80055174
/* 55D60 80055160 00000000 */   nop
/* 55D64 80055164 8C790080 */  lw         $t9, 0x80($v1)
/* 55D68 80055168 00000000 */  nop
/* 55D6C 8005516C 37280020 */  ori        $t0, $t9, 0x20
/* 55D70 80055170 AC680080 */  sw         $t0, 0x80($v1)
.L80055174:
/* 55D74 80055174 A4690142 */  sh         $t1, 0x142($v1)
.L80055178:
/* 55D78 80055178 8FBF0014 */  lw         $ra, 0x14($sp)
/* 55D7C 8005517C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 55D80 80055180 03E00008 */  jr         $ra
/* 55D84 80055184 00000000 */   nop
