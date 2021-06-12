.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B2A60
/* B3660 800B2A60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3664 800B2A64 AFA50004 */  sw         $a1, 4($sp)
/* B3668 800B2A68 24AE0020 */  addiu      $t6, $a1, 0x20
/* B366C 800B2A6C AFAE0000 */  sw         $t6, ($sp)
/* B3670 800B2A70 AFA00014 */  sw         $zero, 0x14($sp)
.L800B2A74:
/* B3674 800B2A74 AFA00010 */  sw         $zero, 0x10($sp)
.L800B2A78:
/* B3678 800B2A78 8FAF0014 */  lw         $t7, 0x14($sp)
/* B367C 800B2A7C 8FA80010 */  lw         $t0, 0x10($sp)
/* B3680 800B2A80 3C014780 */  lui        $at, 0x4780
/* B3684 800B2A84 000FC100 */  sll        $t8, $t7, 4
/* B3688 800B2A88 00084840 */  sll        $t1, $t0, 1
/* B368C 800B2A8C 00095080 */  sll        $t2, $t1, 2
/* B3690 800B2A90 0098C821 */  addu       $t9, $a0, $t8
/* B3694 800B2A94 032A5821 */  addu       $t3, $t9, $t2
/* B3698 800B2A98 C5640000 */  lwc1       $f4, ($t3)
/* B369C 800B2A9C 44813000 */  mtc1       $at, $f6
/* B36A0 800B2AA0 00000000 */  nop
/* B36A4 800B2AA4 46062202 */  mul.s      $f8, $f4, $f6
/* B36A8 800B2AA8 4600428D */  trunc.w.s  $f10, $f8
/* B36AC 800B2AAC 440D5000 */  mfc1       $t5, $f10
/* B36B0 800B2AB0 00000000 */  nop
/* B36B4 800B2AB4 AFAD000C */  sw         $t5, 0xc($sp)
/* B36B8 800B2AB8 8FAE0014 */  lw         $t6, 0x14($sp)
/* B36BC 800B2ABC 8FA80010 */  lw         $t0, 0x10($sp)
/* B36C0 800B2AC0 3C014780 */  lui        $at, 0x4780
/* B36C4 800B2AC4 000E7900 */  sll        $t7, $t6, 4
/* B36C8 800B2AC8 00084840 */  sll        $t1, $t0, 1
/* B36CC 800B2ACC 0009C880 */  sll        $t9, $t1, 2
/* B36D0 800B2AD0 008FC021 */  addu       $t8, $a0, $t7
/* B36D4 800B2AD4 03195021 */  addu       $t2, $t8, $t9
/* B36D8 800B2AD8 C5500004 */  lwc1       $f16, 4($t2)
/* B36DC 800B2ADC 44819000 */  mtc1       $at, $f18
/* B36E0 800B2AE0 00000000 */  nop
/* B36E4 800B2AE4 46128102 */  mul.s      $f4, $f16, $f18
/* B36E8 800B2AE8 4600218D */  trunc.w.s  $f6, $f4
/* B36EC 800B2AEC 440C3000 */  mfc1       $t4, $f6
/* B36F0 800B2AF0 00000000 */  nop
/* B36F4 800B2AF4 AFAC0008 */  sw         $t4, 8($sp)
/* B36F8 800B2AF8 8FAF0008 */  lw         $t7, 8($sp)
/* B36FC 800B2AFC 8FAD000C */  lw         $t5, 0xc($sp)
/* B3700 800B2B00 8FB90004 */  lw         $t9, 4($sp)
/* B3704 800B2B04 3C01FFFF */  lui        $at, 0xffff
/* B3708 800B2B08 000F4403 */  sra        $t0, $t7, 0x10
/* B370C 800B2B0C 3109FFFF */  andi       $t1, $t0, 0xffff
/* B3710 800B2B10 01A17024 */  and        $t6, $t5, $at
/* B3714 800B2B14 01C9C025 */  or         $t8, $t6, $t1
/* B3718 800B2B18 AF380000 */  sw         $t8, ($t9)
/* B371C 800B2B1C 8FAA0004 */  lw         $t2, 4($sp)
/* B3720 800B2B20 254B0004 */  addiu      $t3, $t2, 4
/* B3724 800B2B24 AFAB0004 */  sw         $t3, 4($sp)
/* B3728 800B2B28 8FAC000C */  lw         $t4, 0xc($sp)
/* B372C 800B2B2C 8FA80008 */  lw         $t0, 8($sp)
/* B3730 800B2B30 8FB80000 */  lw         $t8, ($sp)
/* B3734 800B2B34 3C01FFFF */  lui        $at, 0xffff
/* B3738 800B2B38 000C6C00 */  sll        $t5, $t4, 0x10
/* B373C 800B2B3C 01A17824 */  and        $t7, $t5, $at
/* B3740 800B2B40 310EFFFF */  andi       $t6, $t0, 0xffff
/* B3744 800B2B44 01EE4825 */  or         $t1, $t7, $t6
/* B3748 800B2B48 AF090000 */  sw         $t1, ($t8)
/* B374C 800B2B4C 8FB90000 */  lw         $t9, ($sp)
/* B3750 800B2B50 272A0004 */  addiu      $t2, $t9, 4
/* B3754 800B2B54 AFAA0000 */  sw         $t2, ($sp)
/* B3758 800B2B58 8FAB0010 */  lw         $t3, 0x10($sp)
/* B375C 800B2B5C 256C0001 */  addiu      $t4, $t3, 1
/* B3760 800B2B60 29810002 */  slti       $at, $t4, 2
/* B3764 800B2B64 1420FFC4 */  bnez       $at, .L800B2A78
/* B3768 800B2B68 AFAC0010 */   sw        $t4, 0x10($sp)
/* B376C 800B2B6C 8FAD0014 */  lw         $t5, 0x14($sp)
/* B3770 800B2B70 25A80001 */  addiu      $t0, $t5, 1
/* B3774 800B2B74 29010004 */  slti       $at, $t0, 4
/* B3778 800B2B78 1420FFBE */  bnez       $at, .L800B2A74
/* B377C 800B2B7C AFA80014 */   sw        $t0, 0x14($sp)
/* B3780 800B2B80 10000001 */  b          .L800B2B88
/* B3784 800B2B84 00000000 */   nop
.L800B2B88:
/* B3788 800B2B88 03E00008 */  jr         $ra
/* B378C 800B2B8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800B2B90
/* B3790 800B2B90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3794 800B2B94 AFA5000C */  sw         $a1, 0xc($sp)
/* B3798 800B2B98 24AE0020 */  addiu      $t6, $a1, 0x20
/* B379C 800B2B9C AFAE0008 */  sw         $t6, 8($sp)
/* B37A0 800B2BA0 AFA0001C */  sw         $zero, 0x1c($sp)
.L800B2BA4:
/* B37A4 800B2BA4 AFA00018 */  sw         $zero, 0x18($sp)
.L800B2BA8:
/* B37A8 800B2BA8 8FAF0008 */  lw         $t7, 8($sp)
/* B37AC 800B2BAC 8FA9000C */  lw         $t1, 0xc($sp)
/* B37B0 800B2BB0 3C01FFFF */  lui        $at, 0xffff
/* B37B4 800B2BB4 8DF80000 */  lw         $t8, ($t7)
/* B37B8 800B2BB8 8D2A0000 */  lw         $t2, ($t1)
/* B37BC 800B2BBC 0018CC02 */  srl        $t9, $t8, 0x10
/* B37C0 800B2BC0 3328FFFF */  andi       $t0, $t9, 0xffff
/* B37C4 800B2BC4 01415824 */  and        $t3, $t2, $at
/* B37C8 800B2BC8 010B6025 */  or         $t4, $t0, $t3
/* B37CC 800B2BCC AFAC0014 */  sw         $t4, 0x14($sp)
/* B37D0 800B2BD0 8FB8000C */  lw         $t8, 0xc($sp)
/* B37D4 800B2BD4 8FAD0008 */  lw         $t5, 8($sp)
/* B37D8 800B2BD8 3C01FFFF */  lui        $at, 0xffff
/* B37DC 800B2BDC 8F190000 */  lw         $t9, ($t8)
/* B37E0 800B2BE0 8DAE0000 */  lw         $t6, ($t5)
/* B37E4 800B2BE4 270B0004 */  addiu      $t3, $t8, 4
/* B37E8 800B2BE8 00194C00 */  sll        $t1, $t9, 0x10
/* B37EC 800B2BEC 01215024 */  and        $t2, $t1, $at
/* B37F0 800B2BF0 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B37F4 800B2BF4 01EA4025 */  or         $t0, $t7, $t2
/* B37F8 800B2BF8 25AC0004 */  addiu      $t4, $t5, 4
/* B37FC 800B2BFC AFAC0008 */  sw         $t4, 8($sp)
/* B3800 800B2C00 AFA80010 */  sw         $t0, 0x10($sp)
/* B3804 800B2C04 AFAB000C */  sw         $t3, 0xc($sp)
/* B3808 800B2C08 27AE0014 */  addiu      $t6, $sp, 0x14
/* B380C 800B2C0C 8DD90000 */  lw         $t9, ($t6)
/* B3810 800B2C10 AFB90004 */  sw         $t9, 4($sp)
/* B3814 800B2C14 27A90010 */  addiu      $t1, $sp, 0x10
/* B3818 800B2C18 8D2F0000 */  lw         $t7, ($t1)
/* B381C 800B2C1C AFAF0000 */  sw         $t7, ($sp)
/* B3820 800B2C20 8FAA0004 */  lw         $t2, 4($sp)
/* B3824 800B2C24 3C014780 */  lui        $at, 0x4780
/* B3828 800B2C28 44814000 */  mtc1       $at, $f8
/* B382C 800B2C2C 448A2000 */  mtc1       $t2, $f4
/* B3830 800B2C30 8FA8001C */  lw         $t0, 0x1c($sp)
/* B3834 800B2C34 8FAD0018 */  lw         $t5, 0x18($sp)
/* B3838 800B2C38 468021A0 */  cvt.s.w    $f6, $f4
/* B383C 800B2C3C 0008C100 */  sll        $t8, $t0, 4
/* B3840 800B2C40 000D6040 */  sll        $t4, $t5, 1
/* B3844 800B2C44 000C7080 */  sll        $t6, $t4, 2
/* B3848 800B2C48 00985821 */  addu       $t3, $a0, $t8
/* B384C 800B2C4C 016EC821 */  addu       $t9, $t3, $t6
/* B3850 800B2C50 46083283 */  div.s      $f10, $f6, $f8
/* B3854 800B2C54 E72A0000 */  swc1       $f10, ($t9)
/* B3858 800B2C58 8FA90000 */  lw         $t1, ($sp)
/* B385C 800B2C5C 3C014780 */  lui        $at, 0x4780
/* B3860 800B2C60 44812000 */  mtc1       $at, $f4
/* B3864 800B2C64 44898000 */  mtc1       $t1, $f16
/* B3868 800B2C68 8FAF001C */  lw         $t7, 0x1c($sp)
/* B386C 800B2C6C 8FB80018 */  lw         $t8, 0x18($sp)
/* B3870 800B2C70 468084A0 */  cvt.s.w    $f18, $f16
/* B3874 800B2C74 000F5100 */  sll        $t2, $t7, 4
/* B3878 800B2C78 00186840 */  sll        $t5, $t8, 1
/* B387C 800B2C7C 000D6080 */  sll        $t4, $t5, 2
/* B3880 800B2C80 008A4021 */  addu       $t0, $a0, $t2
/* B3884 800B2C84 010C5821 */  addu       $t3, $t0, $t4
/* B3888 800B2C88 46049183 */  div.s      $f6, $f18, $f4
/* B388C 800B2C8C E5660004 */  swc1       $f6, 4($t3)
/* B3890 800B2C90 8FAE0018 */  lw         $t6, 0x18($sp)
/* B3894 800B2C94 25D90001 */  addiu      $t9, $t6, 1
/* B3898 800B2C98 2B210002 */  slti       $at, $t9, 2
/* B389C 800B2C9C 1420FFC2 */  bnez       $at, .L800B2BA8
/* B38A0 800B2CA0 AFB90018 */   sw        $t9, 0x18($sp)
/* B38A4 800B2CA4 8FA9001C */  lw         $t1, 0x1c($sp)
/* B38A8 800B2CA8 252F0001 */  addiu      $t7, $t1, 1
/* B38AC 800B2CAC 29E10004 */  slti       $at, $t7, 4
/* B38B0 800B2CB0 1420FFBC */  bnez       $at, .L800B2BA4
/* B38B4 800B2CB4 AFAF001C */   sw        $t7, 0x1c($sp)
/* B38B8 800B2CB8 10000001 */  b          .L800B2CC0
/* B38BC 800B2CBC 00000000 */   nop
.L800B2CC0:
/* B38C0 800B2CC0 03E00008 */  jr         $ra
/* B38C4 800B2CC4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800B2CC8
/* B38C8 800B2CC8 27BDFFF8 */  addiu      $sp, $sp, -8
/* B38CC 800B2CCC AFA00004 */  sw         $zero, 4($sp)
.L800B2CD0:
/* B38D0 800B2CD0 AFA00000 */  sw         $zero, ($sp)
.L800B2CD4:
/* B38D4 800B2CD4 8FAE0004 */  lw         $t6, 4($sp)
/* B38D8 800B2CD8 8FAF0000 */  lw         $t7, ($sp)
/* B38DC 800B2CDC 15CF000B */  bne        $t6, $t7, .L800B2D0C
/* B38E0 800B2CE0 00000000 */   nop
/* B38E4 800B2CE4 8FB80004 */  lw         $t8, 4($sp)
/* B38E8 800B2CE8 8FA90000 */  lw         $t1, ($sp)
/* B38EC 800B2CEC 3C013F80 */  lui        $at, 0x3f80
/* B38F0 800B2CF0 0018C900 */  sll        $t9, $t8, 4
/* B38F4 800B2CF4 44812000 */  mtc1       $at, $f4
/* B38F8 800B2CF8 00994021 */  addu       $t0, $a0, $t9
/* B38FC 800B2CFC 00095080 */  sll        $t2, $t1, 2
/* B3900 800B2D00 010A5821 */  addu       $t3, $t0, $t2
/* B3904 800B2D04 10000009 */  b          .L800B2D2C
/* B3908 800B2D08 E5640000 */   swc1      $f4, ($t3)
.L800B2D0C:
/* B390C 800B2D0C 8FAC0004 */  lw         $t4, 4($sp)
/* B3910 800B2D10 8FAF0000 */  lw         $t7, ($sp)
/* B3914 800B2D14 44803000 */  mtc1       $zero, $f6
/* B3918 800B2D18 000C6900 */  sll        $t5, $t4, 4
/* B391C 800B2D1C 008D7021 */  addu       $t6, $a0, $t5
/* B3920 800B2D20 000FC080 */  sll        $t8, $t7, 2
/* B3924 800B2D24 01D8C821 */  addu       $t9, $t6, $t8
/* B3928 800B2D28 E7260000 */  swc1       $f6, ($t9)
.L800B2D2C:
/* B392C 800B2D2C 8FA90000 */  lw         $t1, ($sp)
/* B3930 800B2D30 25280001 */  addiu      $t0, $t1, 1
/* B3934 800B2D34 29010004 */  slti       $at, $t0, 4
/* B3938 800B2D38 1420FFE6 */  bnez       $at, .L800B2CD4
/* B393C 800B2D3C AFA80000 */   sw        $t0, ($sp)
/* B3940 800B2D40 8FAA0004 */  lw         $t2, 4($sp)
/* B3944 800B2D44 254B0001 */  addiu      $t3, $t2, 1
/* B3948 800B2D48 29610004 */  slti       $at, $t3, 4
/* B394C 800B2D4C 1420FFE0 */  bnez       $at, .L800B2CD0
/* B3950 800B2D50 AFAB0004 */   sw        $t3, 4($sp)
/* B3954 800B2D54 10000001 */  b          .L800B2D5C
/* B3958 800B2D58 00000000 */   nop
.L800B2D5C:
/* B395C 800B2D5C 03E00008 */  jr         $ra
/* B3960 800B2D60 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B2D64
/* B3964 800B2D64 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* B3968 800B2D68 AFBF0014 */  sw         $ra, 0x14($sp)
/* B396C 800B2D6C AFA40058 */  sw         $a0, 0x58($sp)
/* B3970 800B2D70 0C02CB32 */  jal        func_800B2CC8
/* B3974 800B2D74 27A40018 */   addiu     $a0, $sp, 0x18
/* B3978 800B2D78 27A40018 */  addiu      $a0, $sp, 0x18
/* B397C 800B2D7C 0C02CA98 */  jal        func_800B2A60
/* B3980 800B2D80 8FA50058 */   lw        $a1, 0x58($sp)
/* B3984 800B2D84 10000001 */  b          .L800B2D8C
/* B3988 800B2D88 00000000 */   nop
.L800B2D8C:
/* B398C 800B2D8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3990 800B2D90 27BD0058 */  addiu      $sp, $sp, 0x58
/* B3994 800B2D94 03E00008 */  jr         $ra
/* B3998 800B2D98 00000000 */   nop
/* B399C 800B2D9C 00000000 */  nop
