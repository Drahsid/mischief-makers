glabel func_80042A0C
/* 4360C 80042A0C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 43610 80042A10 AFA40028 */  sw         $a0, 0x28($sp)
/* 43614 80042A14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 43618 80042A18 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4361C 80042A1C 0C010A19 */  jal        func_80042864
/* 43620 80042A20 00000000 */   nop
/* 43624 80042A24 97A4002A */  lhu        $a0, 0x2a($sp)
/* 43628 80042A28 0C0108E8 */  jal        func_800423A0
/* 4362C 80042A2C 00000000 */   nop
/* 43630 80042A30 24040010 */  addiu      $a0, $zero, 0x10
/* 43634 80042A34 0C00A12E */  jal        func_800284B8
/* 43638 80042A38 24050018 */   addiu     $a1, $zero, 0x18
/* 4363C 80042A3C 10400027 */  beqz       $v0, .L80042ADC
/* 43640 80042A40 3044FFFF */   andi      $a0, $v0, 0xffff
/* 43644 80042A44 97AE002A */  lhu        $t6, 0x2a($sp)
/* 43648 80042A48 24060198 */  addiu      $a2, $zero, 0x198
/* 4364C 80042A4C 01C60019 */  multu      $t6, $a2
/* 43650 80042A50 3C05800F */  lui        $a1, %hi(gActors)
/* 43654 80042A54 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 43658 80042A58 3C013F80 */  lui        $at, 0x3f80
/* 4365C 80042A5C 44813000 */  mtc1       $at, $f6
/* 43660 80042A60 2409000C */  addiu      $t1, $zero, 0xc
/* 43664 80042A64 A7A40026 */  sh         $a0, 0x26($sp)
/* 43668 80042A68 00007812 */  mflo       $t7
/* 4366C 80042A6C 00AF1021 */  addu       $v0, $a1, $t7
/* 43670 80042A70 C4440110 */  lwc1       $f4, 0x110($v0)
/* 43674 80042A74 00860019 */  multu      $a0, $a2
/* 43678 80042A78 945800D0 */  lhu        $t8, 0xd0($v0)
/* 4367C 80042A7C 46062201 */  sub.s      $f8, $f4, $f6
/* 43680 80042A80 27190001 */  addiu      $t9, $t8, 1
/* 43684 80042A84 A45900D0 */  sh         $t9, 0xd0($v0)
/* 43688 80042A88 AC440154 */  sw         $a0, 0x154($v0)
/* 4368C 80042A8C E4480110 */  swc1       $f8, 0x110($v0)
/* 43690 80042A90 AFA20020 */  sw         $v0, 0x20($sp)
/* 43694 80042A94 00004012 */  mflo       $t0
/* 43698 80042A98 00A81821 */  addu       $v1, $a1, $t0
/* 4369C 80042A9C A46900D2 */  sh         $t1, 0xd2($v1)
/* 436A0 80042AA0 0C0078B4 */  jal        func_8001E2D0
/* 436A4 80042AA4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 436A8 80042AA8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 436AC 80042AAC 97A40026 */  lhu        $a0, 0x26($sp)
/* 436B0 80042AB0 240A1002 */  addiu      $t2, $zero, 0x1002
/* 436B4 80042AB4 24050004 */  addiu      $a1, $zero, 4
/* 436B8 80042AB8 A4600094 */  sh         $zero, 0x94($v1)
/* 436BC 80042ABC 0C00AB0C */  jal        func_8002AC30
/* 436C0 80042AC0 AC6A0080 */   sw        $t2, 0x80($v1)
/* 436C4 80042AC4 8FA20020 */  lw         $v0, 0x20($sp)
/* 436C8 80042AC8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 436CC 80042ACC 8C4B0150 */  lw         $t3, 0x150($v0)
/* 436D0 80042AD0 97A4002A */  lhu        $a0, 0x2a($sp)
/* 436D4 80042AD4 0C0109F8 */  jal        func_800427E0
/* 436D8 80042AD8 AC6B0150 */   sw        $t3, 0x150($v1)
.L80042ADC:
/* 436DC 80042ADC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 436E0 80042AE0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 436E4 80042AE4 03E00008 */  jr         $ra
/* 436E8 80042AE8 00000000 */   nop