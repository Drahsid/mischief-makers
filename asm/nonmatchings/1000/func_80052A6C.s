glabel func_80052A6C
/* 5366C 80052A6C 3C0F8013 */  lui        $t7, %hi(D_801373F2)
/* 53670 80052A70 81EF73F2 */  lb         $t7, %lo(D_801373F2)($t7)
/* 53674 80052A74 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 53678 80052A78 AFA40030 */  sw         $a0, 0x30($sp)
/* 5367C 80052A7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 53680 80052A80 01C02025 */  or         $a0, $t6, $zero
/* 53684 80052A84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 53688 80052A88 11E00003 */  beqz       $t7, .L80052A98
/* 5368C 80052A8C AFA50034 */   sw        $a1, 0x34($sp)
/* 53690 80052A90 1000006A */  b          .L80052C3C
/* 53694 80052A94 00001025 */   or        $v0, $zero, $zero
.L80052A98:
/* 53698 80052A98 24050001 */  addiu      $a1, $zero, 1
/* 5369C 80052A9C 0C017026 */  jal        func_8005C098
/* 536A0 80052AA0 A7A40032 */   sh        $a0, 0x32($sp)
/* 536A4 80052AA4 97A40032 */  lhu        $a0, 0x32($sp)
/* 536A8 80052AA8 24070198 */  addiu      $a3, $zero, 0x198
/* 536AC 80052AAC 00870019 */  multu      $a0, $a3
/* 536B0 80052AB0 3C06800F */  lui        $a2, %hi(gActors)
/* 536B4 80052AB4 3C028013 */  lui        $v0, %hi(D_801373F0)
/* 536B8 80052AB8 804273F0 */  lb         $v0, %lo(D_801373F0)($v0)
/* 536BC 80052ABC 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 536C0 80052AC0 24010008 */  addiu      $at, $zero, 8
/* 536C4 80052AC4 0000C012 */  mflo       $t8
/* 536C8 80052AC8 00D82821 */  addu       $a1, $a2, $t8
/* 536CC 80052ACC 10400005 */  beqz       $v0, .L80052AE4
/* 536D0 80052AD0 A0A20182 */   sb        $v0, 0x182($a1)
/* 536D4 80052AD4 10410005 */  beq        $v0, $at, .L80052AEC
/* 536D8 80052AD8 30590008 */   andi      $t9, $v0, 8
/* 536DC 80052ADC 10000005 */  b          .L80052AF4
/* 536E0 80052AE0 00000000 */   nop
.L80052AE4:
/* 536E4 80052AE4 10000015 */  b          .L80052B3C
/* 536E8 80052AE8 24030055 */   addiu     $v1, $zero, 0x55
.L80052AEC:
/* 536EC 80052AEC 10000013 */  b          .L80052B3C
/* 536F0 80052AF0 24030058 */   addiu     $v1, $zero, 0x58
.L80052AF4:
/* 536F4 80052AF4 1720000A */  bnez       $t9, .L80052B20
/* 536F8 80052AF8 00000000 */   nop
/* 536FC 80052AFC 8CA80080 */  lw         $t0, 0x80($a1)
/* 53700 80052B00 00000000 */  nop
/* 53704 80052B04 31090020 */  andi       $t1, $t0, 0x20
/* 53708 80052B08 15200003 */  bnez       $t1, .L80052B18
/* 5370C 80052B0C 00000000 */   nop
/* 53710 80052B10 1000000A */  b          .L80052B3C
/* 53714 80052B14 2403004F */   addiu     $v1, $zero, 0x4f
.L80052B18:
/* 53718 80052B18 10000008 */  b          .L80052B3C
/* 5371C 80052B1C 24030052 */   addiu     $v1, $zero, 0x52
.L80052B20:
/* 53720 80052B20 8CAA0080 */  lw         $t2, 0x80($a1)
/* 53724 80052B24 2403004F */  addiu      $v1, $zero, 0x4f
/* 53728 80052B28 314B0020 */  andi       $t3, $t2, 0x20
/* 5372C 80052B2C 15600003 */  bnez       $t3, .L80052B3C
/* 53730 80052B30 00000000 */   nop
/* 53734 80052B34 10000001 */  b          .L80052B3C
/* 53738 80052B38 24030052 */   addiu     $v1, $zero, 0x52
.L80052B3C:
/* 5373C 80052B3C 90A20140 */  lbu        $v0, 0x140($a1)
/* 53740 80052B40 24010008 */  addiu      $at, $zero, 8
/* 53744 80052B44 14400002 */  bnez       $v0, .L80052B50
/* 53748 80052B48 00000000 */   nop
/* 5374C 80052B4C 24630001 */  addiu      $v1, $v1, 1
.L80052B50:
/* 53750 80052B50 14410008 */  bne        $v0, $at, .L80052B74
/* 53754 80052B54 24010052 */   addiu     $at, $zero, 0x52
/* 53758 80052B58 10610003 */  beq        $v1, $at, .L80052B68
/* 5375C 80052B5C 24010055 */   addiu     $at, $zero, 0x55
/* 53760 80052B60 14610004 */  bne        $v1, $at, .L80052B74
/* 53764 80052B64 24630002 */   addiu     $v1, $v1, 2
.L80052B68:
/* 53768 80052B68 10000002 */  b          .L80052B74
/* 5376C 80052B6C 00001825 */   or        $v1, $zero, $zero
/* 53770 80052B70 24630002 */  addiu      $v1, $v1, 2
.L80052B74:
/* 53774 80052B74 10600022 */  beqz       $v1, .L80052C00
/* 53778 80052B78 97A90036 */   lhu       $t1, 0x36($sp)
/* 5377C 80052B7C 97AE0036 */  lhu        $t6, 0x36($sp)
/* 53780 80052B80 8CAC0080 */  lw         $t4, 0x80($a1)
/* 53784 80052B84 01C70019 */  multu      $t6, $a3
/* 53788 80052B88 358D0040 */  ori        $t5, $t4, 0x40
/* 5378C 80052B8C ACAD0080 */  sw         $t5, 0x80($a1)
/* 53790 80052B90 24010058 */  addiu      $at, $zero, 0x58
/* 53794 80052B94 00007812 */  mflo       $t7
/* 53798 80052B98 00CFC021 */  addu       $t8, $a2, $t7
/* 5379C 80052B9C 931900DF */  lbu        $t9, 0xdf($t8)
/* 537A0 80052BA0 00000000 */  nop
/* 537A4 80052BA4 33280008 */  andi       $t0, $t9, 8
/* 537A8 80052BA8 15000010 */  bnez       $t0, .L80052BEC
/* 537AC 80052BAC 00000000 */   nop
/* 537B0 80052BB0 1461000E */  bne        $v1, $at, .L80052BEC
/* 537B4 80052BB4 00000000 */   nop
/* 537B8 80052BB8 AFA3002C */  sw         $v1, 0x2c($sp)
/* 537BC 80052BBC 0C0174CE */  jal        func_8005D338
/* 537C0 80052BC0 AFA5001C */   sw        $a1, 0x1c($sp)
/* 537C4 80052BC4 8FA3002C */  lw         $v1, 0x2c($sp)
/* 537C8 80052BC8 8FA5001C */  lw         $a1, 0x1c($sp)
/* 537CC 80052BCC 10620007 */  beq        $v1, $v0, .L80052BEC
/* 537D0 80052BD0 240400B3 */   addiu     $a0, $zero, 0xb3
/* 537D4 80052BD4 AFA3002C */  sw         $v1, 0x2c($sp)
/* 537D8 80052BD8 0C000CD3 */  jal        func_8000334C
/* 537DC 80052BDC AFA5001C */   sw        $a1, 0x1c($sp)
/* 537E0 80052BE0 8FA3002C */  lw         $v1, 0x2c($sp)
/* 537E4 80052BE4 8FA5001C */  lw         $a1, 0x1c($sp)
/* 537E8 80052BE8 00000000 */  nop
.L80052BEC:
/* 537EC 80052BEC 3C06800F */  lui        $a2, %hi(gActors)
/* 537F0 80052BF0 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 537F4 80052BF4 24070198 */  addiu      $a3, $zero, 0x198
/* 537F8 80052BF8 ACA30170 */  sw         $v1, 0x170($a1)
/* 537FC 80052BFC 97A90036 */  lhu        $t1, 0x36($sp)
.L80052C00:
/* 53800 80052C00 3401FFFF */  ori        $at, $zero, 0xffff
/* 53804 80052C04 15210004 */  bne        $t1, $at, .L80052C18
/* 53808 80052C08 97AA0036 */   lhu       $t2, 0x36($sp)
/* 5380C 80052C0C 1000000B */  b          .L80052C3C
/* 53810 80052C10 24020002 */   addiu     $v0, $zero, 2
/* 53814 80052C14 97AA0036 */  lhu        $t2, 0x36($sp)
.L80052C18:
/* 53818 80052C18 3C010002 */  lui        $at, 2
/* 5381C 80052C1C 01470019 */  multu      $t2, $a3
/* 53820 80052C20 24020001 */  addiu      $v0, $zero, 1
/* 53824 80052C24 00005812 */  mflo       $t3
/* 53828 80052C28 00CB1821 */  addu       $v1, $a2, $t3
/* 5382C 80052C2C 8C6C0098 */  lw         $t4, 0x98($v1)
/* 53830 80052C30 00000000 */  nop
/* 53834 80052C34 01816825 */  or         $t5, $t4, $at
/* 53838 80052C38 AC6D0098 */  sw         $t5, 0x98($v1)
.L80052C3C:
/* 5383C 80052C3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53840 80052C40 27BD0030 */  addiu      $sp, $sp, 0x30
/* 53844 80052C44 03E00008 */  jr         $ra
/* 53848 80052C48 00000000 */   nop
