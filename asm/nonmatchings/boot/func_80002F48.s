glabel func_80002F48
/* 3B48 80002F48 93B90017 */  lbu        $t9, 0x17($sp)
/* 3B4C 80002F4C 308E00FF */  andi       $t6, $a0, 0xff
/* 3B50 80002F50 3C01800F */  lui        $at, %hi(SFX_ChannelStates)
/* 3B54 80002F54 002E0821 */  addu       $at, $at, $t6
/* 3B58 80002F58 A039F4F0 */  sb         $t9, %lo(SFX_ChannelStates)($at)
/* 3B5C 80002F5C 97A8001A */  lhu        $t0, 0x1a($sp)
/* 3B60 80002F60 3C018011 */  lui        $at, %hi(D_80108DE0)
/* 3B64 80002F64 000E1040 */  sll        $v0, $t6, 1
/* 3B68 80002F68 00220821 */  addu       $at, $at, $v0
/* 3B6C 80002F6C A4288DE0 */  sh         $t0, %lo(D_80108DE0)($at)
/* 3B70 80002F70 3C01800F */  lui        $at, %hi(D_800EF508)
/* 3B74 80002F74 00220821 */  addu       $at, $at, $v0
/* 3B78 80002F78 3C0A800C */  lui        $t2, %hi(SFX2ByteArray+0x42)
/* 3B7C 80002F7C A426F508 */  sh         $a2, %lo(D_800EF508)($at)
/* 3B80 80002F80 254A2968 */  addiu      $t2, $t2, %lo(SFX2ByteArray+0x42)
/* 3B84 80002F84 00064840 */  sll        $t1, $a2, 1
/* 3B88 80002F88 012A1821 */  addu       $v1, $t1, $t2
/* 3B8C 80002F8C 906BFFBF */  lbu        $t3, -0x41($v1)
/* 3B90 80002F90 3C018010 */  lui        $at, %hi(D_80104090)
/* 3B94 80002F94 002E0821 */  addu       $at, $at, $t6
/* 3B98 80002F98 A02B4090 */  sb         $t3, %lo(D_80104090)($at)
/* 3B9C 80002F9C 97AC001E */  lhu        $t4, 0x1e($sp)
/* 3BA0 80002FA0 3C018011 */  lui        $at, %hi(D_8010CDE8)
/* 3BA4 80002FA4 00220821 */  addu       $at, $at, $v0
/* 3BA8 80002FA8 A42CCDE8 */  sh         $t4, %lo(D_8010CDE8)($at)
/* 3BAC 80002FAC 83AD0013 */  lb         $t5, 0x13($sp)
/* 3BB0 80002FB0 00077C00 */  sll        $t7, $a3, 0x10
/* 3BB4 80002FB4 3C018010 */  lui        $at, 0x8010
/* 3BB8 80002FB8 000FC403 */  sra        $t8, $t7, 0x10
/* 3BBC 80002FBC AFA7000C */  sw         $a3, 0xc($sp)
/* 3BC0 80002FC0 002E0821 */  addu       $at, $at, $t6
/* 3BC4 80002FC4 03003825 */  or         $a3, $t8, $zero
/* 3BC8 80002FC8 AFA40000 */  sw         $a0, ($sp)
/* 3BCC 80002FCC AFA50004 */  sw         $a1, 4($sp)
/* 3BD0 80002FD0 07000004 */  bltz       $t8, .L80002FE4
/* 3BD4 80002FD4 A02D69D8 */   sb        $t5, 0x69d8($at)
/* 3BD8 80002FD8 2B010101 */  slti       $at, $t8, 0x101
/* 3BDC 80002FDC 14200007 */  bnez       $at, .L80002FFC
/* 3BE0 80002FE0 00000000 */   nop
.L80002FE4:
/* 3BE4 80002FE4 906EFFBE */  lbu        $t6, -0x42($v1)
/* 3BE8 80002FE8 3C01800F */  lui        $at, %hi(SFX_Volumes)
/* 3BEC 80002FEC 00220821 */  addu       $at, $at, $v0
/* 3BF0 80002FF0 000E7A00 */  sll        $t7, $t6, 8
/* 3BF4 80002FF4 03E00008 */  jr         $ra
/* 3BF8 80002FF8 A42FF4F8 */   sh        $t7, %lo(SFX_Volumes)($at)
.L80002FFC:
/* 3BFC 80002FFC 9078FFBE */  lbu        $t8, -0x42($v1)
/* 3C00 80003000 3C01800F */  lui        $at, %hi(SFX_Volumes)
/* 3C04 80003004 03070019 */  multu      $t8, $a3
/* 3C08 80003008 00220821 */  addu       $at, $at, $v0
/* 3C0C 8000300C 0000C812 */  mflo       $t9
/* 3C10 80003010 A439F4F8 */  sh         $t9, %lo(SFX_Volumes)($at)
/* 3C14 80003014 00000000 */  nop
/* 3C18 80003018 03E00008 */  jr         $ra
/* 3C1C 8000301C 00000000 */   nop
