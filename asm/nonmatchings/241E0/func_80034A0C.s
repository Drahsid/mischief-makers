.section .rodata

glabel jtbl_800EB9C0
.word L80034AC4_356C4, L80034ADC_356DC, L80034B90_35790, L80034BBC_357BC, L80034C08_35808, L80034CA8_358A8, L80034CC0_358C0, 0xBD4CCCCD

.section .text

glabel func_80034A0C
/* 3560C 80034A0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35610 80034A10 AFA40020 */  sw         $a0, 0x20($sp)
/* 35614 80034A14 97AE0022 */  lhu        $t6, 0x22($sp)
/* 35618 80034A18 3C18800F */  lui        $t8, 0x800f
/* 3561C 80034A1C 000E7880 */  sll        $t7, $t6, 2
/* 35620 80034A20 01EE7823 */  subu       $t7, $t7, $t6
/* 35624 80034A24 000F7880 */  sll        $t7, $t7, 2
/* 35628 80034A28 01EE7821 */  addu       $t7, $t7, $t6
/* 3562C 80034A2C 000F7880 */  sll        $t7, $t7, 2
/* 35630 80034A30 01EE7823 */  subu       $t7, $t7, $t6
/* 35634 80034A34 AFB00018 */  sw         $s0, 0x18($sp)
/* 35638 80034A38 000F78C0 */  sll        $t7, $t7, 3
/* 3563C 80034A3C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 35640 80034A40 01F88021 */  addu       $s0, $t7, $t8
/* 35644 80034A44 8E020160 */  lw         $v0, 0x160($s0)
/* 35648 80034A48 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3564C 80034A4C 2459FFFF */  addiu      $t9, $v0, -1
/* 35650 80034A50 2F210007 */  sltiu      $at, $t9, 7
/* 35654 80034A54 10200008 */  beqz       $at, .L80034A78
/* 35658 80034A58 AE000164 */   sw        $zero, 0x164($s0)
/* 3565C 80034A5C 0019C880 */  sll        $t9, $t9, 2
/* 35660 80034A60 3C01800F */  lui        $at, %hi(jtbl_800EB9C0)
/* 35664 80034A64 00390821 */  addu       $at, $at, $t9
/* 35668 80034A68 8C39B9C0 */  lw         $t9, %lo(jtbl_800EB9C0)($at)
/* 3566C 80034A6C 00000000 */  nop
/* 35670 80034A70 03200008 */  jr         $t9
/* 35674 80034A74 00000000 */   nop
.L80034A78:
/* 35678 80034A78 8E040168 */  lw         $a0, 0x168($s0)
/* 3567C 80034A7C 240504B0 */  addiu      $a1, $zero, 0x4b0
/* 35680 80034A80 0C00A607 */  jal        func_8002981C
/* 35684 80034A84 2406003C */   addiu     $a2, $zero, 0x3c
/* 35688 80034A88 8E04016C */  lw         $a0, 0x16c($s0)
/* 3568C 80034A8C AE020168 */  sw         $v0, 0x168($s0)
/* 35690 80034A90 240504B0 */  addiu      $a1, $zero, 0x4b0
/* 35694 80034A94 0C00A607 */  jal        func_8002981C
/* 35698 80034A98 2406003C */   addiu     $a2, $zero, 0x3c
/* 3569C 80034A9C 8E080168 */  lw         $t0, 0x168($s0)
/* 356A0 80034AA0 240304B0 */  addiu      $v1, $zero, 0x4b0
/* 356A4 80034AA4 14680097 */  bne        $v1, $t0, .L80034D04
/* 356A8 80034AA8 AE02016C */   sw        $v0, 0x16c($s0)
/* 356AC 80034AAC 14620095 */  bne        $v1, $v0, .L80034D04
/* 356B0 80034AB0 240A0003 */   addiu     $t2, $zero, 3
/* 356B4 80034AB4 240B0001 */  addiu      $t3, $zero, 1
/* 356B8 80034AB8 AE0A0160 */  sw         $t2, 0x160($s0)
/* 356BC 80034ABC 10000091 */  b          .L80034D04
/* 356C0 80034AC0 AE0B0164 */   sw        $t3, 0x164($s0)
glabel L80034AC4_356C4
/* 356C4 80034AC4 24030640 */  addiu      $v1, $zero, 0x640
/* 356C8 80034AC8 244CFFFF */  addiu      $t4, $v0, -1
/* 356CC 80034ACC AE0C0160 */  sw         $t4, 0x160($s0)
/* 356D0 80034AD0 AE030168 */  sw         $v1, 0x168($s0)
/* 356D4 80034AD4 1000008B */  b          .L80034D04
/* 356D8 80034AD8 AE03016C */   sw        $v1, 0x16c($s0)
glabel L80034ADC_356DC
/* 356DC 80034ADC 8E0D015C */  lw         $t5, 0x15c($s0)
/* 356E0 80034AE0 24060064 */  addiu      $a2, $zero, 0x64
/* 356E4 80034AE4 11A00016 */  beqz       $t5, .L80034B40
/* 356E8 80034AE8 240505AA */   addiu     $a1, $zero, 0x5aa
/* 356EC 80034AEC 8E040168 */  lw         $a0, 0x168($s0)
/* 356F0 80034AF0 0C00A607 */  jal        func_8002981C
/* 356F4 80034AF4 240504B0 */   addiu     $a1, $zero, 0x4b0
/* 356F8 80034AF8 8E04016C */  lw         $a0, 0x16c($s0)
/* 356FC 80034AFC AE020168 */  sw         $v0, 0x168($s0)
/* 35700 80034B00 240504B0 */  addiu      $a1, $zero, 0x4b0
/* 35704 80034B04 0C00A607 */  jal        func_8002981C
/* 35708 80034B08 24060096 */   addiu     $a2, $zero, 0x96
/* 3570C 80034B0C 8E0E0168 */  lw         $t6, 0x168($s0)
/* 35710 80034B10 240304B0 */  addiu      $v1, $zero, 0x4b0
/* 35714 80034B14 146E007B */  bne        $v1, $t6, .L80034D04
/* 35718 80034B18 AE02016C */   sw        $v0, 0x16c($s0)
/* 3571C 80034B1C 14620079 */  bne        $v1, $v0, .L80034D04
/* 35720 80034B20 24180001 */   addiu     $t8, $zero, 1
/* 35724 80034B24 97A50022 */  lhu        $a1, 0x22($sp)
/* 35728 80034B28 AE00015C */  sw         $zero, 0x15c($s0)
/* 3572C 80034B2C AE180164 */  sw         $t8, 0x164($s0)
/* 35730 80034B30 0C000DB2 */  jal        func_800036C8
/* 35734 80034B34 240400A3 */   addiu     $a0, $zero, 0xa3
/* 35738 80034B38 10000073 */  b          .L80034D08
/* 3573C 80034B3C 8FBF001C */   lw        $ra, 0x1c($sp)
.L80034B40:
/* 35740 80034B40 8E040168 */  lw         $a0, 0x168($s0)
/* 35744 80034B44 0C00A607 */  jal        func_8002981C
/* 35748 80034B48 24060064 */   addiu     $a2, $zero, 0x64
/* 3574C 80034B4C 8E04016C */  lw         $a0, 0x16c($s0)
/* 35750 80034B50 AE020168 */  sw         $v0, 0x168($s0)
/* 35754 80034B54 2405044C */  addiu      $a1, $zero, 0x44c
/* 35758 80034B58 0C00A607 */  jal        func_8002981C
/* 3575C 80034B5C 24060096 */   addiu     $a2, $zero, 0x96
/* 35760 80034B60 8E190168 */  lw         $t9, 0x168($s0)
/* 35764 80034B64 240105AA */  addiu      $at, $zero, 0x5aa
/* 35768 80034B68 17210066 */  bne        $t9, $at, .L80034D04
/* 3576C 80034B6C AE02016C */   sw        $v0, 0x16c($s0)
/* 35770 80034B70 2401044C */  addiu      $at, $zero, 0x44c
/* 35774 80034B74 14410063 */  bne        $v0, $at, .L80034D04
/* 35778 80034B78 240B0002 */   addiu     $t3, $zero, 2
/* 3577C 80034B7C 8E09015C */  lw         $t1, 0x15c($s0)
/* 35780 80034B80 AE0B0164 */  sw         $t3, 0x164($s0)
/* 35784 80034B84 252A0001 */  addiu      $t2, $t1, 1
/* 35788 80034B88 1000005E */  b          .L80034D04
/* 3578C 80034B8C AE0A015C */   sw        $t2, 0x15c($s0)
glabel L80034B90_35790
/* 35790 80034B90 8E040168 */  lw         $a0, 0x168($s0)
/* 35794 80034B94 24050514 */  addiu      $a1, $zero, 0x514
/* 35798 80034B98 0C00A607 */  jal        func_8002981C
/* 3579C 80034B9C 24060014 */   addiu     $a2, $zero, 0x14
/* 357A0 80034BA0 8E04016C */  lw         $a0, 0x16c($s0)
/* 357A4 80034BA4 AE020168 */  sw         $v0, 0x168($s0)
/* 357A8 80034BA8 240505AA */  addiu      $a1, $zero, 0x5aa
/* 357AC 80034BAC 0C00A607 */  jal        func_8002981C
/* 357B0 80034BB0 24060014 */   addiu     $a2, $zero, 0x14
/* 357B4 80034BB4 10000053 */  b          .L80034D04
/* 357B8 80034BB8 AE02016C */   sw        $v0, 0x16c($s0)
glabel L80034BBC_357BC
/* 357BC 80034BBC 8E040168 */  lw         $a0, 0x168($s0)
/* 357C0 80034BC0 240503E8 */  addiu      $a1, $zero, 0x3e8
/* 357C4 80034BC4 0C00A607 */  jal        func_8002981C
/* 357C8 80034BC8 24060028 */   addiu     $a2, $zero, 0x28
/* 357CC 80034BCC 8E04016C */  lw         $a0, 0x16c($s0)
/* 357D0 80034BD0 AE020168 */  sw         $v0, 0x168($s0)
/* 357D4 80034BD4 240503E8 */  addiu      $a1, $zero, 0x3e8
/* 357D8 80034BD8 0C00A607 */  jal        func_8002981C
/* 357DC 80034BDC 24060028 */   addiu     $a2, $zero, 0x28
/* 357E0 80034BE0 8E0C0168 */  lw         $t4, 0x168($s0)
/* 357E4 80034BE4 240303E8 */  addiu      $v1, $zero, 0x3e8
/* 357E8 80034BE8 146C0007 */  bne        $v1, $t4, L80034C08_35808
/* 357EC 80034BEC AE02016C */   sw        $v0, 0x16c($s0)
/* 357F0 80034BF0 14620005 */  bne        $v1, $v0, L80034C08_35808
/* 357F4 80034BF4 00000000 */   nop
/* 357F8 80034BF8 8E0E0160 */  lw         $t6, 0x160($s0)
/* 357FC 80034BFC 00000000 */  nop
/* 35800 80034C00 25CF0001 */  addiu      $t7, $t6, 1
/* 35804 80034C04 AE0F0160 */  sw         $t7, 0x160($s0)
glabel L80034C08_35808
/* 35808 80034C08 8E18015C */  lw         $t8, 0x15c($s0)
/* 3580C 80034C0C 8E040168 */  lw         $a0, 0x168($s0)
/* 35810 80034C10 13000012 */  beqz       $t8, .L80034C5C
/* 35814 80034C14 2405044C */   addiu     $a1, $zero, 0x44c
/* 35818 80034C18 24050384 */  addiu      $a1, $zero, 0x384
/* 3581C 80034C1C 0C00A607 */  jal        func_8002981C
/* 35820 80034C20 24060002 */   addiu     $a2, $zero, 2
/* 35824 80034C24 8E04016C */  lw         $a0, 0x16c($s0)
/* 35828 80034C28 AE020168 */  sw         $v0, 0x168($s0)
/* 3582C 80034C2C 2405044C */  addiu      $a1, $zero, 0x44c
/* 35830 80034C30 0C00A607 */  jal        func_8002981C
/* 35834 80034C34 24060002 */   addiu     $a2, $zero, 2
/* 35838 80034C38 8E190168 */  lw         $t9, 0x168($s0)
/* 3583C 80034C3C 24010384 */  addiu      $at, $zero, 0x384
/* 35840 80034C40 17210030 */  bne        $t9, $at, .L80034D04
/* 35844 80034C44 AE02016C */   sw        $v0, 0x16c($s0)
/* 35848 80034C48 2401044C */  addiu      $at, $zero, 0x44c
/* 3584C 80034C4C 1441002E */  bne        $v0, $at, .L80034D08
/* 35850 80034C50 8FBF001C */   lw        $ra, 0x1c($sp)
/* 35854 80034C54 1000002B */  b          .L80034D04
/* 35858 80034C58 AE00015C */   sw        $zero, 0x15c($s0)
.L80034C5C:
/* 3585C 80034C5C 0C00A607 */  jal        func_8002981C
/* 35860 80034C60 24060002 */   addiu     $a2, $zero, 2
/* 35864 80034C64 8E04016C */  lw         $a0, 0x16c($s0)
/* 35868 80034C68 AE020168 */  sw         $v0, 0x168($s0)
/* 3586C 80034C6C 24050384 */  addiu      $a1, $zero, 0x384
/* 35870 80034C70 0C00A607 */  jal        func_8002981C
/* 35874 80034C74 24060002 */   addiu     $a2, $zero, 2
/* 35878 80034C78 8E090168 */  lw         $t1, 0x168($s0)
/* 3587C 80034C7C 2401044C */  addiu      $at, $zero, 0x44c
/* 35880 80034C80 15210020 */  bne        $t1, $at, .L80034D04
/* 35884 80034C84 AE02016C */   sw        $v0, 0x16c($s0)
/* 35888 80034C88 24010384 */  addiu      $at, $zero, 0x384
/* 3588C 80034C8C 1441001E */  bne        $v0, $at, .L80034D08
/* 35890 80034C90 8FBF001C */   lw        $ra, 0x1c($sp)
/* 35894 80034C94 8E0B015C */  lw         $t3, 0x15c($s0)
/* 35898 80034C98 00000000 */  nop
/* 3589C 80034C9C 256C0001 */  addiu      $t4, $t3, 1
/* 358A0 80034CA0 10000018 */  b          .L80034D04
/* 358A4 80034CA4 AE0C015C */   sw        $t4, 0x15c($s0)
glabel L80034CA8_358A8
/* 358A8 80034CA8 24030640 */  addiu      $v1, $zero, 0x640
/* 358AC 80034CAC 244D0001 */  addiu      $t5, $v0, 1
/* 358B0 80034CB0 240E02BC */  addiu      $t6, $zero, 0x2bc
/* 358B4 80034CB4 AE0D0160 */  sw         $t5, 0x160($s0)
/* 358B8 80034CB8 AE030168 */  sw         $v1, 0x168($s0)
/* 358BC 80034CBC AE0E016C */  sw         $t6, 0x16c($s0)
glabel L80034CC0_358C0
/* 358C0 80034CC0 8E040168 */  lw         $a0, 0x168($s0)
/* 358C4 80034CC4 24050320 */  addiu      $a1, $zero, 0x320
/* 358C8 80034CC8 0C00A607 */  jal        func_8002981C
/* 358CC 80034CCC 24060032 */   addiu     $a2, $zero, 0x32
/* 358D0 80034CD0 8E04016C */  lw         $a0, 0x16c($s0)
/* 358D4 80034CD4 AE020168 */  sw         $v0, 0x168($s0)
/* 358D8 80034CD8 2405044C */  addiu      $a1, $zero, 0x44c
/* 358DC 80034CDC 0C00A607 */  jal        func_8002981C
/* 358E0 80034CE0 2406003C */   addiu     $a2, $zero, 0x3c
/* 358E4 80034CE4 8E0F0168 */  lw         $t7, 0x168($s0)
/* 358E8 80034CE8 24010320 */  addiu      $at, $zero, 0x320
/* 358EC 80034CEC 15E10005 */  bne        $t7, $at, .L80034D04
/* 358F0 80034CF0 AE02016C */   sw        $v0, 0x16c($s0)
/* 358F4 80034CF4 2401044C */  addiu      $at, $zero, 0x44c
/* 358F8 80034CF8 14410002 */  bne        $v0, $at, .L80034D04
/* 358FC 80034CFC 24190004 */   addiu     $t9, $zero, 4
/* 35900 80034D00 AE190160 */  sw         $t9, 0x160($s0)
.L80034D04:
/* 35904 80034D04 8FBF001C */  lw         $ra, 0x1c($sp)
.L80034D08:
/* 35908 80034D08 8FB00018 */  lw         $s0, 0x18($sp)
/* 3590C 80034D0C 03E00008 */  jr         $ra
/* 35910 80034D10 27BD0020 */   addiu     $sp, $sp, 0x20
