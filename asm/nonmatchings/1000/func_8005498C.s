glabel func_8005498C
/* 5558C 8005498C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 55590 80054990 AFA40038 */  sw         $a0, 0x38($sp)
/* 55594 80054994 97AE003A */  lhu        $t6, 0x3a($sp)
/* 55598 80054998 3C18800F */  lui        $t8, 0x800f
/* 5559C 8005499C 000E7880 */  sll        $t7, $t6, 2
/* 555A0 800549A0 01EE7823 */  subu       $t7, $t7, $t6
/* 555A4 800549A4 000F7880 */  sll        $t7, $t7, 2
/* 555A8 800549A8 01EE7821 */  addu       $t7, $t7, $t6
/* 555AC 800549AC 000F7880 */  sll        $t7, $t7, 2
/* 555B0 800549B0 01EE7823 */  subu       $t7, $t7, $t6
/* 555B4 800549B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 555B8 800549B8 000F78C0 */  sll        $t7, $t7, 3
/* 555BC 800549BC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 555C0 800549C0 01F88021 */  addu       $s0, $t7, $t8
/* 555C4 800549C4 9219012E */  lbu        $t9, 0x12e($s0)
/* 555C8 800549C8 920900D0 */  lbu        $t1, 0xd0($s0)
/* 555CC 800549CC 37280080 */  ori        $t0, $t9, 0x80
/* 555D0 800549D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 555D4 800549D4 AFA5003C */  sw         $a1, 0x3c($sp)
/* 555D8 800549D8 1520000B */  bnez       $t1, .L80054A08
/* 555DC 800549DC A208012E */   sb        $t0, 0x12e($s0)
/* 555E0 800549E0 8E0A0080 */  lw         $t2, 0x80($s0)
/* 555E4 800549E4 2401BFBF */  addiu      $at, $zero, -0x4041
/* 555E8 800549E8 01415824 */  and        $t3, $t2, $at
/* 555EC 800549EC 3C01FF3C */  lui        $at, 0xff3c
/* 555F0 800549F0 3421FFFF */  ori        $at, $at, 0xffff
/* 555F4 800549F4 AE0B0080 */  sw         $t3, 0x80($s0)
/* 555F8 800549F8 01616824 */  and        $t5, $t3, $at
/* 555FC 800549FC 240E0001 */  addiu      $t6, $zero, 1
/* 55600 80054A00 AE0D0080 */  sw         $t5, 0x80($s0)
/* 55604 80054A04 A20E00D0 */  sb         $t6, 0xd0($s0)
.L80054A08:
/* 55608 80054A08 8E0F0080 */  lw         $t7, 0x80($s0)
/* 5560C 80054A0C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 55610 80054A10 31F84040 */  andi       $t8, $t7, 0x4040
/* 55614 80054A14 13000009 */  beqz       $t8, .L80054A3C
/* 55618 80054A18 00000000 */   nop
/* 5561C 80054A1C 0C017506 */  jal        func_8005D418
/* 55620 80054A20 00000000 */   nop
/* 55624 80054A24 10400005 */  beqz       $v0, .L80054A3C
/* 55628 80054A28 00000000 */   nop
/* 5562C 80054A2C 8E190080 */  lw         $t9, 0x80($s0)
/* 55630 80054A30 2401BFBF */  addiu      $at, $zero, -0x4041
/* 55634 80054A34 03214024 */  and        $t0, $t9, $at
/* 55638 80054A38 AE080080 */  sw         $t0, 0x80($s0)
.L80054A3C:
/* 5563C 80054A3C 8E090080 */  lw         $t1, 0x80($s0)
/* 55640 80054A40 97AB003E */  lhu        $t3, 0x3e($sp)
/* 55644 80054A44 312A4040 */  andi       $t2, $t1, 0x4040
/* 55648 80054A48 1540001D */  bnez       $t2, .L80054AC0
/* 5564C 80054A4C 000B6080 */   sll       $t4, $t3, 2
/* 55650 80054A50 018B6023 */  subu       $t4, $t4, $t3
/* 55654 80054A54 000C6080 */  sll        $t4, $t4, 2
/* 55658 80054A58 018B6021 */  addu       $t4, $t4, $t3
/* 5565C 80054A5C 000C6080 */  sll        $t4, $t4, 2
/* 55660 80054A60 018B6023 */  subu       $t4, $t4, $t3
/* 55664 80054A64 3C0D800F */  lui        $t5, %hi(D_800EF510)
/* 55668 80054A68 25ADF510 */  addiu      $t5, $t5, %lo(D_800EF510)
/* 5566C 80054A6C 000C60C0 */  sll        $t4, $t4, 3
/* 55670 80054A70 018D3021 */  addu       $a2, $t4, $t5
/* 55674 80054A74 90C300DE */  lbu        $v1, 0xde($a2)
/* 55678 80054A78 24010010 */  addiu      $at, $zero, 0x10
/* 5567C 80054A7C 1461000A */  bne        $v1, $at, .L80054AA8
/* 55680 80054A80 240E0004 */   addiu     $t6, $zero, 4
/* 55684 80054A84 97A4003A */  lhu        $a0, 0x3a($sp)
/* 55688 80054A88 A20E0140 */  sb         $t6, 0x140($s0)
/* 5568C 80054A8C 2405003F */  addiu      $a1, $zero, 0x3f
/* 55690 80054A90 0C0174DC */  jal        func_8005D370
/* 55694 80054A94 AFA60024 */   sw        $a2, 0x24($sp)
/* 55698 80054A98 8FA60024 */  lw         $a2, 0x24($sp)
/* 5569C 80054A9C 00000000 */  nop
/* 556A0 80054AA0 90C300DE */  lbu        $v1, 0xde($a2)
/* 556A4 80054AA4 00000000 */  nop
.L80054AA8:
/* 556A8 80054AA8 24010011 */  addiu      $at, $zero, 0x11
/* 556AC 80054AAC 14610004 */  bne        $v1, $at, .L80054AC0
/* 556B0 80054AB0 24050043 */   addiu     $a1, $zero, 0x43
/* 556B4 80054AB4 97A4003A */  lhu        $a0, 0x3a($sp)
/* 556B8 80054AB8 0C0174DC */  jal        func_8005D370
/* 556BC 80054ABC A2000140 */   sb        $zero, 0x140($s0)
.L80054AC0:
/* 556C0 80054AC0 97A4003A */  lhu        $a0, 0x3a($sp)
/* 556C4 80054AC4 97A5003E */  lhu        $a1, 0x3e($sp)
/* 556C8 80054AC8 0C014A9B */  jal        func_80052A6C
/* 556CC 80054ACC 00000000 */   nop
/* 556D0 80054AD0 97A4003A */  lhu        $a0, 0x3a($sp)
/* 556D4 80054AD4 97A5003E */  lhu        $a1, 0x3e($sp)
/* 556D8 80054AD8 0C01515F */  jal        func_8005457C
/* 556DC 80054ADC 00000000 */   nop
/* 556E0 80054AE0 97A4003A */  lhu        $a0, 0x3a($sp)
/* 556E4 80054AE4 97A5003E */  lhu        $a1, 0x3e($sp)
/* 556E8 80054AE8 0C014C84 */  jal        func_80053210
/* 556EC 80054AEC 00000000 */   nop
/* 556F0 80054AF0 10400011 */  beqz       $v0, .L80054B38
/* 556F4 80054AF4 00401825 */   or        $v1, $v0, $zero
/* 556F8 80054AF8 8E190080 */  lw         $t9, 0x80($s0)
/* 556FC 80054AFC 3C01FF3C */  lui        $at, 0xff3c
/* 55700 80054B00 3421FFFF */  ori        $at, $at, 0xffff
/* 55704 80054B04 03214024 */  and        $t0, $t9, $at
/* 55708 80054B08 960F0094 */  lhu        $t7, 0x94($s0)
/* 5570C 80054B0C 3C010002 */  lui        $at, 2
/* 55710 80054B10 01015025 */  or         $t2, $t0, $at
/* 55714 80054B14 AE080080 */  sw         $t0, 0x80($s0)
/* 55718 80054B18 31F8FFF7 */  andi       $t8, $t7, 0xfff7
/* 5571C 80054B1C A6180094 */  sh         $t8, 0x94($s0)
/* 55720 80054B20 AE0A0080 */  sw         $t2, 0x80($s0)
/* 55724 80054B24 24040024 */  addiu      $a0, $zero, 0x24
/* 55728 80054B28 0C000CD3 */  jal        func_8000334C
/* 5572C 80054B2C AFA20034 */   sw        $v0, 0x34($sp)
/* 55730 80054B30 8FA30034 */  lw         $v1, 0x34($sp)
/* 55734 80054B34 00000000 */  nop
.L80054B38:
/* 55738 80054B38 24010003 */  addiu      $at, $zero, 3
/* 5573C 80054B3C 1461001A */  bne        $v1, $at, .L80054BA8
/* 55740 80054B40 24010002 */   addiu     $at, $zero, 2
/* 55744 80054B44 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 55748 80054B48 2401FFDF */  addiu      $at, $zero, -0x21
/* 5574C 80054B4C 18800005 */  blez       $a0, .L80054B64
/* 55750 80054B50 00000000 */   nop
/* 55754 80054B54 8E0B0080 */  lw         $t3, 0x80($s0)
/* 55758 80054B58 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 5575C 80054B5C 01616024 */  and        $t4, $t3, $at
/* 55760 80054B60 AE0C0080 */  sw         $t4, 0x80($s0)
.L80054B64:
/* 55764 80054B64 04810005 */  bgez       $a0, .L80054B7C
/* 55768 80054B68 00000000 */   nop
/* 5576C 80054B6C 8E0D0080 */  lw         $t5, 0x80($s0)
/* 55770 80054B70 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 55774 80054B74 35AE0020 */  ori        $t6, $t5, 0x20
/* 55778 80054B78 AE0E0080 */  sw         $t6, 0x80($s0)
.L80054B7C:
/* 5577C 80054B7C 0C00A824 */  jal        func_8002A090
/* 55780 80054B80 3C050008 */   lui       $a1, 8
/* 55784 80054B84 8E0400FC */  lw         $a0, 0xfc($s0)
/* 55788 80054B88 AE0200EC */  sw         $v0, 0xec($s0)
/* 5578C 80054B8C 0C00A824 */  jal        func_8002A090
/* 55790 80054B90 3C050008 */   lui       $a1, 8
/* 55794 80054B94 240F0017 */  addiu      $t7, $zero, 0x17
/* 55798 80054B98 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 5579C 80054B9C 1000009A */  b          .L80054E08
/* 557A0 80054BA0 A60F00D0 */   sh        $t7, 0xd0($s0)
/* 557A4 80054BA4 24010002 */  addiu      $at, $zero, 2
.L80054BA8:
/* 557A8 80054BA8 1461007D */  bne        $v1, $at, .L80054DA0
/* 557AC 80054BAC 3C028013 */   lui       $v0, %hi(D_801373D8)
/* 557B0 80054BB0 97B8003E */  lhu        $t8, 0x3e($sp)
/* 557B4 80054BB4 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 557B8 80054BB8 0018C880 */  sll        $t9, $t8, 2
/* 557BC 80054BBC 0338C823 */  subu       $t9, $t9, $t8
/* 557C0 80054BC0 0019C880 */  sll        $t9, $t9, 2
/* 557C4 80054BC4 0338C821 */  addu       $t9, $t9, $t8
/* 557C8 80054BC8 0019C880 */  sll        $t9, $t9, 2
/* 557CC 80054BCC 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 557D0 80054BD0 0338C823 */  subu       $t9, $t9, $t8
/* 557D4 80054BD4 0019C8C0 */  sll        $t9, $t9, 3
/* 557D8 80054BD8 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 557DC 80054BDC 30450001 */  andi       $a1, $v0, 1
/* 557E0 80054BE0 00001825 */  or         $v1, $zero, $zero
/* 557E4 80054BE4 03283021 */  addu       $a2, $t9, $t0
/* 557E8 80054BE8 10A00002 */  beqz       $a1, .L80054BF4
/* 557EC 80054BEC 30440002 */   andi      $a0, $v0, 2
/* 557F0 80054BF0 24030008 */  addiu      $v1, $zero, 8
.L80054BF4:
/* 557F4 80054BF4 30490020 */  andi       $t1, $v0, 0x20
/* 557F8 80054BF8 11200007 */  beqz       $t1, .L80054C18
/* 557FC 80054BFC 304A0010 */   andi      $t2, $v0, 0x10
/* 55800 80054C00 10800002 */  beqz       $a0, .L80054C0C
/* 55804 80054C04 24030004 */   addiu     $v1, $zero, 4
/* 55808 80054C08 24030002 */  addiu      $v1, $zero, 2
.L80054C0C:
/* 5580C 80054C0C 10A00002 */  beqz       $a1, .L80054C18
/* 55810 80054C10 00000000 */   nop
/* 55814 80054C14 24030006 */  addiu      $v1, $zero, 6
.L80054C18:
/* 55818 80054C18 11400008 */  beqz       $t2, .L80054C3C
/* 5581C 80054C1C 00035980 */   sll       $t3, $v1, 6
/* 55820 80054C20 10800002 */  beqz       $a0, .L80054C2C
/* 55824 80054C24 2403000C */   addiu     $v1, $zero, 0xc
/* 55828 80054C28 2403000E */  addiu      $v1, $zero, 0xe
.L80054C2C:
/* 5582C 80054C2C 10A00003 */  beqz       $a1, .L80054C3C
/* 55830 80054C30 00035980 */   sll       $t3, $v1, 6
/* 55834 80054C34 2403000A */  addiu      $v1, $zero, 0xa
/* 55838 80054C38 00035980 */  sll        $t3, $v1, 6
.L80054C3C:
/* 5583C 80054C3C 8CC400F8 */  lw         $a0, 0xf8($a2)
/* 55840 80054C40 AFAB002C */  sw         $t3, 0x2c($sp)
/* 55844 80054C44 3C050008 */  lui        $a1, 8
/* 55848 80054C48 0C00A824 */  jal        func_8002A090
/* 5584C 80054C4C AFA60024 */   sw        $a2, 0x24($sp)
/* 55850 80054C50 8FA60024 */  lw         $a2, 0x24($sp)
/* 55854 80054C54 AE0200EC */  sw         $v0, 0xec($s0)
/* 55858 80054C58 8CC400FC */  lw         $a0, 0xfc($a2)
/* 5585C 80054C5C 0C00A824 */  jal        func_8002A090
/* 55860 80054C60 3C050008 */   lui       $a1, 8
/* 55864 80054C64 8FA3002C */  lw         $v1, 0x2c($sp)
/* 55868 80054C68 3C05800C */  lui        $a1, %hi(D_800BCCD0)
/* 5586C 80054C6C 306D03FF */  andi       $t5, $v1, 0x3ff
/* 55870 80054C70 24A5CCD0 */  addiu      $a1, $a1, %lo(D_800BCCD0)
/* 55874 80054C74 000D7080 */  sll        $t6, $t5, 2
/* 55878 80054C78 8E0C00EC */  lw         $t4, 0xec($s0)
/* 5587C 80054C7C 3C014840 */  lui        $at, 0x4840
/* 55880 80054C80 00AE7821 */  addu       $t7, $a1, $t6
/* 55884 80054C84 44810000 */  mtc1       $at, $f0
/* 55888 80054C88 C5E80000 */  lwc1       $f8, ($t7)
/* 5588C 80054C8C 448C2000 */  mtc1       $t4, $f4
/* 55890 80054C90 46080282 */  mul.s      $f10, $f0, $f8
/* 55894 80054C94 2468FF00 */  addiu      $t0, $v1, -0x100
/* 55898 80054C98 310903FF */  andi       $t1, $t0, 0x3ff
/* 5589C 80054C9C 00095080 */  sll        $t2, $t1, 2
/* 558A0 80054CA0 468021A0 */  cvt.s.w    $f6, $f4
/* 558A4 80054CA4 00AA5821 */  addu       $t3, $a1, $t2
/* 558A8 80054CA8 44822000 */  mtc1       $v0, $f4
/* 558AC 80054CAC 460A3400 */  add.s      $f16, $f6, $f10
/* 558B0 80054CB0 C5660000 */  lwc1       $f6, ($t3)
/* 558B4 80054CB4 4458F800 */  cfc1       $t8, $31
/* 558B8 80054CB8 3C028013 */  lui        $v0, 0x8013
/* 558BC 80054CBC 37010003 */  ori        $at, $t8, 3
/* 558C0 80054CC0 38210002 */  xori       $at, $at, 2
/* 558C4 80054CC4 44C1F800 */  ctc1       $at, $31
/* 558C8 80054CC8 00000000 */  nop
/* 558CC 80054CCC 460084A4 */  cvt.w.s    $f18, $f16
/* 558D0 80054CD0 44D8F800 */  ctc1       $t8, $31
/* 558D4 80054CD4 44199000 */  mfc1       $t9, $f18
/* 558D8 80054CD8 46060282 */  mul.s      $f10, $f0, $f6
/* 558DC 80054CDC AE1900EC */  sw         $t9, 0xec($s0)
/* 558E0 80054CE0 03202025 */  or         $a0, $t9, $zero
/* 558E4 80054CE4 46802220 */  cvt.s.w    $f8, $f4
/* 558E8 80054CE8 460A4400 */  add.s      $f16, $f8, $f10
/* 558EC 80054CEC 444CF800 */  cfc1       $t4, $31
/* 558F0 80054CF0 00000000 */  nop
/* 558F4 80054CF4 35810003 */  ori        $at, $t4, 3
/* 558F8 80054CF8 38210002 */  xori       $at, $at, 2
/* 558FC 80054CFC 44C1F800 */  ctc1       $at, $31
/* 55900 80054D00 2401FFDF */  addiu      $at, $zero, -0x21
/* 55904 80054D04 460084A4 */  cvt.w.s    $f18, $f16
/* 55908 80054D08 440D9000 */  mfc1       $t5, $f18
/* 5590C 80054D0C 44CCF800 */  ctc1       $t4, $31
/* 55910 80054D10 1B200005 */  blez       $t9, .L80054D28
/* 55914 80054D14 AE0D00F0 */   sw        $t5, 0xf0($s0)
/* 55918 80054D18 8E0E0080 */  lw         $t6, 0x80($s0)
/* 5591C 80054D1C 03202025 */  or         $a0, $t9, $zero
/* 55920 80054D20 01C17824 */  and        $t7, $t6, $at
/* 55924 80054D24 AE0F0080 */  sw         $t7, 0x80($s0)
.L80054D28:
/* 55928 80054D28 04810005 */  bgez       $a0, .L80054D40
/* 5592C 80054D2C 00000000 */   nop
/* 55930 80054D30 8E180080 */  lw         $t8, 0x80($s0)
/* 55934 80054D34 00000000 */  nop
/* 55938 80054D38 37190020 */  ori        $t9, $t8, 0x20
/* 5593C 80054D3C AE190080 */  sw         $t9, 0x80($s0)
.L80054D40:
/* 55940 80054D40 944273D8 */  lhu        $v0, 0x73d8($v0)
/* 55944 80054D44 00000000 */  nop
/* 55948 80054D48 30480002 */  andi       $t0, $v0, 2
/* 5594C 80054D4C 11000005 */  beqz       $t0, .L80054D64
/* 55950 80054D50 304B0001 */   andi      $t3, $v0, 1
/* 55954 80054D54 8E090080 */  lw         $t1, 0x80($s0)
/* 55958 80054D58 2401FFDF */  addiu      $at, $zero, -0x21
/* 5595C 80054D5C 01215024 */  and        $t2, $t1, $at
/* 55960 80054D60 AE0A0080 */  sw         $t2, 0x80($s0)
.L80054D64:
/* 55964 80054D64 11600006 */  beqz       $t3, .L80054D80
/* 55968 80054D68 97A4003A */   lhu       $a0, 0x3a($sp)
/* 5596C 80054D6C 8E0C0080 */  lw         $t4, 0x80($s0)
/* 55970 80054D70 00000000 */  nop
/* 55974 80054D74 358D0020 */  ori        $t5, $t4, 0x20
/* 55978 80054D78 AE0D0080 */  sw         $t5, 0x80($s0)
/* 5597C 80054D7C 97A4003A */  lhu        $a0, 0x3a($sp)
.L80054D80:
/* 55980 80054D80 97A5003E */  lhu        $a1, 0x3e($sp)
/* 55984 80054D84 0C013D45 */  jal        func_8004F514
/* 55988 80054D88 00000000 */   nop
/* 5598C 80054D8C 240E007F */  addiu      $t6, $zero, 0x7f
/* 55990 80054D90 240F0017 */  addiu      $t7, $zero, 0x17
/* 55994 80054D94 A20E0171 */  sb         $t6, 0x171($s0)
/* 55998 80054D98 1000001B */  b          .L80054E08
/* 5599C 80054D9C A60F00D0 */   sh        $t7, 0xd0($s0)
.L80054DA0:
/* 559A0 80054DA0 24010004 */  addiu      $at, $zero, 4
/* 559A4 80054DA4 14610019 */  bne        $v1, $at, .L80054E0C
/* 559A8 80054DA8 8FBF001C */   lw        $ra, 0x1c($sp)
/* 559AC 80054DAC 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 559B0 80054DB0 2401FFDF */  addiu      $at, $zero, -0x21
/* 559B4 80054DB4 18800005 */  blez       $a0, .L80054DCC
/* 559B8 80054DB8 00000000 */   nop
/* 559BC 80054DBC 8E180080 */  lw         $t8, 0x80($s0)
/* 559C0 80054DC0 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 559C4 80054DC4 0301C824 */  and        $t9, $t8, $at
/* 559C8 80054DC8 AE190080 */  sw         $t9, 0x80($s0)
.L80054DCC:
/* 559CC 80054DCC 04810005 */  bgez       $a0, .L80054DE4
/* 559D0 80054DD0 00000000 */   nop
/* 559D4 80054DD4 8E080080 */  lw         $t0, 0x80($s0)
/* 559D8 80054DD8 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 559DC 80054DDC 35090020 */  ori        $t1, $t0, 0x20
/* 559E0 80054DE0 AE090080 */  sw         $t1, 0x80($s0)
.L80054DE4:
/* 559E4 80054DE4 0C00A824 */  jal        func_8002A090
/* 559E8 80054DE8 3C050008 */   lui       $a1, 8
/* 559EC 80054DEC 8E0400FC */  lw         $a0, 0xfc($s0)
/* 559F0 80054DF0 AE0200EC */  sw         $v0, 0xec($s0)
/* 559F4 80054DF4 0C00A824 */  jal        func_8002A090
/* 559F8 80054DF8 3C050008 */   lui       $a1, 8
/* 559FC 80054DFC 240A0017 */  addiu      $t2, $zero, 0x17
/* 55A00 80054E00 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 55A04 80054E04 A60A00D0 */  sh         $t2, 0xd0($s0)
.L80054E08:
/* 55A08 80054E08 8FBF001C */  lw         $ra, 0x1c($sp)
.L80054E0C:
/* 55A0C 80054E0C 8FB00018 */  lw         $s0, 0x18($sp)
/* 55A10 80054E10 03E00008 */  jr         $ra
/* 55A14 80054E14 27BD0038 */   addiu     $sp, $sp, 0x38
