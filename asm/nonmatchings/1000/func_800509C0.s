glabel func_800509C0
/* 515C0 800509C0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 515C4 800509C4 000E7880 */  sll        $t7, $t6, 2
/* 515C8 800509C8 01EE7823 */  subu       $t7, $t7, $t6
/* 515CC 800509CC 000F7880 */  sll        $t7, $t7, 2
/* 515D0 800509D0 01EE7821 */  addu       $t7, $t7, $t6
/* 515D4 800509D4 000F7880 */  sll        $t7, $t7, 2
/* 515D8 800509D8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 515DC 800509DC 01EE7823 */  subu       $t7, $t7, $t6
/* 515E0 800509E0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 515E4 800509E4 AFB00018 */  sw         $s0, 0x18($sp)
/* 515E8 800509E8 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 515EC 800509EC 000F78C0 */  sll        $t7, $t7, 3
/* 515F0 800509F0 01F88021 */  addu       $s0, $t7, $t8
/* 515F4 800509F4 961900D6 */  lhu        $t9, 0xd6($s0)
/* 515F8 800509F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 515FC 800509FC AFA40030 */  sw         $a0, 0x30($sp)
/* 51600 80050A00 24080002 */  addiu      $t0, $zero, 2
/* 51604 80050A04 01C02025 */  or         $a0, $t6, $zero
/* 51608 80050A08 A608012C */  sh         $t0, 0x12c($s0)
/* 5160C 80050A0C A7AE0032 */  sh         $t6, 0x32($sp)
/* 51610 80050A10 0C013DF6 */  jal        func_8004F7D8
/* 51614 80050A14 A7B9002C */   sh        $t9, 0x2c($sp)
/* 51618 80050A18 920900D0 */  lbu        $t1, 0xd0($s0)
/* 5161C 80050A1C AFA20028 */  sw         $v0, 0x28($sp)
/* 51620 80050A20 152000CD */  bnez       $t1, .L80050D58
/* 51624 80050A24 00000000 */   nop
/* 51628 80050A28 0C000CD3 */  jal        func_8000334C
/* 5162C 80050A2C 24040027 */   addiu     $a0, $zero, 0x27
/* 51630 80050A30 240A0010 */  addiu      $t2, $zero, 0x10
/* 51634 80050A34 AE0A0150 */  sw         $t2, 0x150($s0)
/* 51638 80050A38 3C038013 */  lui        $v1, %hi(D_801373F0)
/* 5163C 80050A3C 806373F0 */  lb         $v1, %lo(D_801373F0)($v1)
/* 51640 80050A40 24010004 */  addiu      $at, $zero, 4
/* 51644 80050A44 1461002B */  bne        $v1, $at, .L80050AF4
/* 51648 80050A48 2401000C */   addiu     $at, $zero, 0xc
/* 5164C 80050A4C 8FAB0028 */  lw         $t3, 0x28($sp)
/* 51650 80050A50 00000000 */  nop
/* 51654 80050A54 316C0008 */  andi       $t4, $t3, 8
/* 51658 80050A58 1580001C */  bnez       $t4, .L80050ACC
/* 5165C 80050A5C 00000000 */   nop
/* 51660 80050A60 0C012325 */  jal        func_80048C94
/* 51664 80050A64 24040005 */   addiu     $a0, $zero, 5
/* 51668 80050A68 AFA20020 */  sw         $v0, 0x20($sp)
/* 5166C 80050A6C 0C012325 */  jal        func_80048C94
/* 51670 80050A70 24040009 */   addiu     $a0, $zero, 9
/* 51674 80050A74 3C0D8013 */  lui        $t5, %hi(D_801373EE)
/* 51678 80050A78 85AD73EE */  lh         $t5, %lo(D_801373EE)($t5)
/* 5167C 80050A7C 24010064 */  addiu      $at, $zero, 0x64
/* 51680 80050A80 01A1001A */  div        $zero, $t5, $at
/* 51684 80050A84 8FB80020 */  lw         $t8, 0x20($sp)
/* 51688 80050A88 2404000A */  addiu      $a0, $zero, 0xa
/* 5168C 80050A8C 00007012 */  mflo       $t6
/* 51690 80050A90 00000000 */  nop
/* 51694 80050A94 00000000 */  nop
/* 51698 80050A98 01C20019 */  multu      $t6, $v0
/* 5169C 80050A9C 00007812 */  mflo       $t7
/* 516A0 80050AA0 01F8C821 */  addu       $t9, $t7, $t8
/* 516A4 80050AA4 0C012325 */  jal        func_80048C94
/* 516A8 80050AA8 AE1900EC */   sw        $t9, 0xec($s0)
/* 516AC 80050AAC 8E0800EC */  lw         $t0, 0xec($s0)
/* 516B0 80050AB0 00000000 */  nop
/* 516B4 80050AB4 0048082A */  slt        $at, $v0, $t0
/* 516B8 80050AB8 10200004 */  beqz       $at, .L80050ACC
/* 516BC 80050ABC 00000000 */   nop
/* 516C0 80050AC0 0C012325 */  jal        func_80048C94
/* 516C4 80050AC4 2404000A */   addiu     $a0, $zero, 0xa
/* 516C8 80050AC8 AE0200EC */  sw         $v0, 0xec($s0)
.L80050ACC:
/* 516CC 80050ACC 8E0A0080 */  lw         $t2, 0x80($s0)
/* 516D0 80050AD0 24090002 */  addiu      $t1, $zero, 2
/* 516D4 80050AD4 A20900D0 */  sb         $t1, 0xd0($s0)
/* 516D8 80050AD8 3C038013 */  lui        $v1, %hi(D_801373F0)
/* 516DC 80050ADC 806373F0 */  lb         $v1, %lo(D_801373F0)($v1)
/* 516E0 80050AE0 314B0020 */  andi       $t3, $t2, 0x20
/* 516E4 80050AE4 11600002 */  beqz       $t3, .L80050AF0
/* 516E8 80050AE8 352D0080 */   ori       $t5, $t1, 0x80
/* 516EC 80050AEC A20D00D0 */  sb         $t5, 0xd0($s0)
.L80050AF0:
/* 516F0 80050AF0 2401000C */  addiu      $at, $zero, 0xc
.L80050AF4:
/* 516F4 80050AF4 1461002A */  bne        $v1, $at, .L80050BA0
/* 516F8 80050AF8 00000000 */   nop
/* 516FC 80050AFC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 51700 80050B00 00000000 */  nop
/* 51704 80050B04 31CF0004 */  andi       $t7, $t6, 4
/* 51708 80050B08 15E0001E */  bnez       $t7, .L80050B84
/* 5170C 80050B0C 00000000 */   nop
/* 51710 80050B10 0C012325 */  jal        func_80048C94
/* 51714 80050B14 24040005 */   addiu     $a0, $zero, 5
/* 51718 80050B18 AFA20020 */  sw         $v0, 0x20($sp)
/* 5171C 80050B1C 0C012325 */  jal        func_80048C94
/* 51720 80050B20 24040009 */   addiu     $a0, $zero, 9
/* 51724 80050B24 3C188013 */  lui        $t8, %hi(D_801373EE)
/* 51728 80050B28 871873EE */  lh         $t8, %lo(D_801373EE)($t8)
/* 5172C 80050B2C 24010064 */  addiu      $at, $zero, 0x64
/* 51730 80050B30 0301001A */  div        $zero, $t8, $at
/* 51734 80050B34 8FA90020 */  lw         $t1, 0x20($sp)
/* 51738 80050B38 2404000A */  addiu      $a0, $zero, 0xa
/* 5173C 80050B3C 0000C812 */  mflo       $t9
/* 51740 80050B40 00000000 */  nop
/* 51744 80050B44 00000000 */  nop
/* 51748 80050B48 03220019 */  multu      $t9, $v0
/* 5174C 80050B4C 00004012 */  mflo       $t0
/* 51750 80050B50 01095021 */  addu       $t2, $t0, $t1
/* 51754 80050B54 000A5823 */  negu       $t3, $t2
/* 51758 80050B58 0C012325 */  jal        func_80048C94
/* 5175C 80050B5C AE0B00EC */   sw        $t3, 0xec($s0)
/* 51760 80050B60 8E0C00EC */  lw         $t4, 0xec($s0)
/* 51764 80050B64 00026823 */  negu       $t5, $v0
/* 51768 80050B68 018D082A */  slt        $at, $t4, $t5
/* 5176C 80050B6C 10200005 */  beqz       $at, .L80050B84
/* 51770 80050B70 00000000 */   nop
/* 51774 80050B74 0C012325 */  jal        func_80048C94
/* 51778 80050B78 2404000A */   addiu     $a0, $zero, 0xa
/* 5177C 80050B7C 00027023 */  negu       $t6, $v0
/* 51780 80050B80 AE0E00EC */  sw         $t6, 0xec($s0)
.L80050B84:
/* 51784 80050B84 8E180080 */  lw         $t8, 0x80($s0)
/* 51788 80050B88 240F0001 */  addiu      $t7, $zero, 1
/* 5178C 80050B8C 33190020 */  andi       $t9, $t8, 0x20
/* 51790 80050B90 17200003 */  bnez       $t9, .L80050BA0
/* 51794 80050B94 A20F00D0 */   sb        $t7, 0xd0($s0)
/* 51798 80050B98 35E90080 */  ori        $t1, $t7, 0x80
/* 5179C 80050B9C A20900D0 */  sb         $t1, 0xd0($s0)
.L80050BA0:
/* 517A0 80050BA0 860B00AE */  lh         $t3, 0xae($s0)
/* 517A4 80050BA4 860D00B0 */  lh         $t5, 0xb0($s0)
/* 517A8 80050BA8 920F00D0 */  lbu        $t7, 0xd0($s0)
/* 517AC 80050BAC 240A0015 */  addiu      $t2, $zero, 0x15
/* 517B0 80050BB0 256CFFFC */  addiu      $t4, $t3, -4
/* 517B4 80050BB4 25AE0008 */  addiu      $t6, $t5, 8
/* 517B8 80050BB8 31F80080 */  andi       $t8, $t7, 0x80
/* 517BC 80050BBC A20000DA */  sb         $zero, 0xda($s0)
/* 517C0 80050BC0 A20A00DB */  sb         $t2, 0xdb($s0)
/* 517C4 80050BC4 A60000E4 */  sh         $zero, 0xe4($s0)
/* 517C8 80050BC8 A60C00A6 */  sh         $t4, 0xa6($s0)
/* 517CC 80050BCC 1700003E */  bnez       $t8, .L80050CC8
/* 517D0 80050BD0 A60E00A8 */   sh        $t6, 0xa8($s0)
/* 517D4 80050BD4 8E190080 */  lw         $t9, 0x80($s0)
/* 517D8 80050BD8 00000000 */  nop
/* 517DC 80050BDC 33280020 */  andi       $t0, $t9, 0x20
/* 517E0 80050BE0 1500001A */  bnez       $t0, .L80050C4C
/* 517E4 80050BE4 00000000 */   nop
/* 517E8 80050BE8 860900AC */  lh         $t1, 0xac($s0)
/* 517EC 80050BEC 920B0140 */  lbu        $t3, 0x140($s0)
/* 517F0 80050BF0 252A0001 */  addiu      $t2, $t1, 1
/* 517F4 80050BF4 11600012 */  beqz       $t3, .L80050C40
/* 517F8 80050BF8 A60A00A4 */   sh        $t2, 0xa4($s0)
/* 517FC 80050BFC 97AC002C */  lhu        $t4, 0x2c($sp)
/* 51800 80050C00 3C0E800F */  lui        $t6, 0x800f
/* 51804 80050C04 000C6880 */  sll        $t5, $t4, 2
/* 51808 80050C08 01AC6823 */  subu       $t5, $t5, $t4
/* 5180C 80050C0C 000D6880 */  sll        $t5, $t5, 2
/* 51810 80050C10 01AC6821 */  addu       $t5, $t5, $t4
/* 51814 80050C14 000D6880 */  sll        $t5, $t5, 2
/* 51818 80050C18 01AC6823 */  subu       $t5, $t5, $t4
/* 5181C 80050C1C 000D68C0 */  sll        $t5, $t5, 3
/* 51820 80050C20 25CEF510 */  addiu      $t6, $t6, -0xaf0
/* 51824 80050C24 01AE1021 */  addu       $v0, $t5, $t6
/* 51828 80050C28 845800AC */  lh         $t8, 0xac($v0)
/* 5182C 80050C2C 860F00A4 */  lh         $t7, 0xa4($s0)
/* 51830 80050C30 844800AA */  lh         $t0, 0xaa($v0)
/* 51834 80050C34 01F8C821 */  addu       $t9, $t7, $t8
/* 51838 80050C38 03284823 */  subu       $t1, $t9, $t0
/* 5183C 80050C3C A60900A4 */  sh         $t1, 0xa4($s0)
.L80050C40:
/* 51840 80050C40 92030140 */  lbu        $v1, 0x140($s0)
/* 51844 80050C44 10000019 */  b          .L80050CAC
/* 51848 80050C48 A60000A2 */   sh        $zero, 0xa2($s0)
.L80050C4C:
/* 5184C 80050C4C 860A00AA */  lh         $t2, 0xaa($s0)
/* 51850 80050C50 92030140 */  lbu        $v1, 0x140($s0)
/* 51854 80050C54 254BFFFF */  addiu      $t3, $t2, -1
/* 51858 80050C58 A60000A4 */  sh         $zero, 0xa4($s0)
/* 5185C 80050C5C 10600013 */  beqz       $v1, .L80050CAC
/* 51860 80050C60 A60B00A2 */   sh        $t3, 0xa2($s0)
/* 51864 80050C64 97AC002C */  lhu        $t4, 0x2c($sp)
/* 51868 80050C68 3C0E800F */  lui        $t6, 0x800f
/* 5186C 80050C6C 000C6880 */  sll        $t5, $t4, 2
/* 51870 80050C70 01AC6823 */  subu       $t5, $t5, $t4
/* 51874 80050C74 000D6880 */  sll        $t5, $t5, 2
/* 51878 80050C78 01AC6821 */  addu       $t5, $t5, $t4
/* 5187C 80050C7C 000D6880 */  sll        $t5, $t5, 2
/* 51880 80050C80 01AC6823 */  subu       $t5, $t5, $t4
/* 51884 80050C84 000D68C0 */  sll        $t5, $t5, 3
/* 51888 80050C88 25CEF510 */  addiu      $t6, $t6, -0xaf0
/* 5188C 80050C8C 01AE1021 */  addu       $v0, $t5, $t6
/* 51890 80050C90 845800AA */  lh         $t8, 0xaa($v0)
/* 51894 80050C94 860F00A2 */  lh         $t7, 0xa2($s0)
/* 51898 80050C98 844800AC */  lh         $t0, 0xac($v0)
/* 5189C 80050C9C 01F8C821 */  addu       $t9, $t7, $t8
/* 518A0 80050CA0 03284823 */  subu       $t1, $t9, $t0
/* 518A4 80050CA4 92030140 */  lbu        $v1, 0x140($s0)
/* 518A8 80050CA8 A60900A2 */  sh         $t1, 0xa2($s0)
.L80050CAC:
/* 518AC 80050CAC 14600004 */  bnez       $v1, .L80050CC0
/* 518B0 80050CB0 240B004F */   addiu     $t3, $zero, 0x4f
/* 518B4 80050CB4 240A0050 */  addiu      $t2, $zero, 0x50
/* 518B8 80050CB8 10000018 */  b          .L80050D1C
/* 518BC 80050CBC AE0A0170 */   sw        $t2, 0x170($s0)
.L80050CC0:
/* 518C0 80050CC0 10000016 */  b          .L80050D1C
/* 518C4 80050CC4 AE0B0170 */   sw        $t3, 0x170($s0)
.L80050CC8:
/* 518C8 80050CC8 8E0C0080 */  lw         $t4, 0x80($s0)
/* 518CC 80050CCC 24090053 */  addiu      $t1, $zero, 0x53
/* 518D0 80050CD0 318D0020 */  andi       $t5, $t4, 0x20
/* 518D4 80050CD4 15A00006 */  bnez       $t5, .L80050CF0
/* 518D8 80050CD8 240A0052 */   addiu     $t2, $zero, 0x52
/* 518DC 80050CDC 860E00AA */  lh         $t6, 0xaa($s0)
/* 518E0 80050CE0 A60000A4 */  sh         $zero, 0xa4($s0)
/* 518E4 80050CE4 25CFFFFF */  addiu      $t7, $t6, -1
/* 518E8 80050CE8 10000005 */  b          .L80050D00
/* 518EC 80050CEC A60F00A2 */   sh        $t7, 0xa2($s0)
.L80050CF0:
/* 518F0 80050CF0 861800AC */  lh         $t8, 0xac($s0)
/* 518F4 80050CF4 A60000A2 */  sh         $zero, 0xa2($s0)
/* 518F8 80050CF8 27190001 */  addiu      $t9, $t8, 1
/* 518FC 80050CFC A61900A4 */  sh         $t9, 0xa4($s0)
.L80050D00:
/* 51900 80050D00 92080140 */  lbu        $t0, 0x140($s0)
/* 51904 80050D04 00000000 */  nop
/* 51908 80050D08 15000003 */  bnez       $t0, .L80050D18
/* 5190C 80050D0C 00000000 */   nop
/* 51910 80050D10 10000002 */  b          .L80050D1C
/* 51914 80050D14 AE090170 */   sw        $t1, 0x170($s0)
.L80050D18:
/* 51918 80050D18 AE0A0170 */  sw         $t2, 0x170($s0)
.L80050D1C:
/* 5191C 80050D1C 97A40032 */  lhu        $a0, 0x32($sp)
/* 51920 80050D20 0C017026 */  jal        func_8005C098
/* 51924 80050D24 24050001 */   addiu     $a1, $zero, 1
/* 51928 80050D28 AE00017C */  sw         $zero, 0x17c($s0)
/* 5192C 80050D2C 240B0002 */  addiu      $t3, $zero, 2
/* 51930 80050D30 A20B017D */  sb         $t3, 0x17d($s0)
/* 51934 80050D34 3C0C8013 */  lui        $t4, %hi(D_801373F0)
/* 51938 80050D38 818C73F0 */  lb         $t4, %lo(D_801373F0)($t4)
/* 5193C 80050D3C 240D0064 */  addiu      $t5, $zero, 0x64
/* 51940 80050D40 3C018013 */  lui        $at, %hi(D_801373F2)
/* 51944 80050D44 A20C0182 */  sb         $t4, 0x182($s0)
/* 51948 80050D48 A02D73F2 */  sb         $t5, %lo(D_801373F2)($at)
/* 5194C 80050D4C 3C018013 */  lui        $at, %hi(D_801373F3)
/* 51950 80050D50 240E0001 */  addiu      $t6, $zero, 1
/* 51954 80050D54 A02E73F3 */  sb         $t6, %lo(D_801373F3)($at)
.L80050D58:
/* 51958 80050D58 820F0170 */  lb         $t7, 0x170($s0)
/* 5195C 80050D5C 00000000 */  nop
/* 51960 80050D60 15E0000A */  bnez       $t7, .L80050D8C
/* 51964 80050D64 00000000 */   nop
/* 51968 80050D68 82020171 */  lb         $v0, 0x171($s0)
/* 5196C 80050D6C 24010003 */  addiu      $at, $zero, 3
/* 51970 80050D70 10400002 */  beqz       $v0, .L80050D7C
/* 51974 80050D74 00000000 */   nop
/* 51978 80050D78 14410004 */  bne        $v0, $at, .L80050D8C
.L80050D7C:
/* 5197C 80050D7C 3C018013 */   lui       $at, %hi(D_801370D2)
/* 51980 80050D80 97A40032 */  lhu        $a0, 0x32($sp)
/* 51984 80050D84 0C017094 */  jal        func_8005C250
/* 51988 80050D88 A42070D2 */   sh        $zero, %lo(D_801370D2)($at)
.L80050D8C:
/* 5198C 80050D8C 3C188013 */  lui        $t8, %hi(D_801373D8)
/* 51990 80050D90 971873D8 */  lhu        $t8, %lo(D_801373D8)($t8)
/* 51994 80050D94 2408000A */  addiu      $t0, $zero, 0xa
/* 51998 80050D98 33190010 */  andi       $t9, $t8, 0x10
/* 5199C 80050D9C 13200003 */  beqz       $t9, .L80050DAC
/* 519A0 80050DA0 00000000 */   nop
/* 519A4 80050DA4 10000061 */  b          .L80050F2C
/* 519A8 80050DA8 A60800D0 */   sh        $t0, 0xd0($s0)
.L80050DAC:
/* 519AC 80050DAC 8E090150 */  lw         $t1, 0x150($s0)
/* 519B0 80050DB0 00000000 */  nop
/* 519B4 80050DB4 252AFFFF */  addiu      $t2, $t1, -1
/* 519B8 80050DB8 2941000A */  slti       $at, $t2, 0xa
/* 519BC 80050DBC AE0A0150 */  sw         $t2, 0x150($s0)
/* 519C0 80050DC0 10200005 */  beqz       $at, .L80050DD8
/* 519C4 80050DC4 01401025 */   or        $v0, $t2, $zero
/* 519C8 80050DC8 960B012C */  lhu        $t3, 0x12c($s0)
/* 519CC 80050DCC 01401025 */  or         $v0, $t2, $zero
/* 519D0 80050DD0 356C0004 */  ori        $t4, $t3, 4
/* 519D4 80050DD4 A60C012C */  sh         $t4, 0x12c($s0)
.L80050DD8:
/* 519D8 80050DD8 28410008 */  slti       $at, $v0, 8
/* 519DC 80050DDC 10200008 */  beqz       $at, .L80050E00
/* 519E0 80050DE0 00000000 */   nop
/* 519E4 80050DE4 0C012325 */  jal        func_80048C94
/* 519E8 80050DE8 00002025 */   or        $a0, $zero, $zero
/* 519EC 80050DEC 8E0400EC */  lw         $a0, 0xec($s0)
/* 519F0 80050DF0 00002825 */  or         $a1, $zero, $zero
/* 519F4 80050DF4 0C00A607 */  jal        func_8002981C
/* 519F8 80050DF8 00403025 */   or        $a2, $v0, $zero
/* 519FC 80050DFC AE0200EC */  sw         $v0, 0xec($s0)
.L80050E00:
/* 51A00 80050E00 8E0400EC */  lw         $a0, 0xec($s0)
/* 51A04 80050E04 0C0171B4 */  jal        func_8005C6D0
/* 51A08 80050E08 00000000 */   nop
/* 51A0C 80050E0C 3C010003 */  lui        $at, 3
/* 51A10 80050E10 0041082A */  slt        $at, $v0, $at
/* 51A14 80050E14 1420003B */  bnez       $at, .L80050F04
/* 51A18 80050E18 00000000 */   nop
/* 51A1C 80050E1C 860400A2 */  lh         $a0, 0xa2($s0)
/* 51A20 80050E20 0C0171B4 */  jal        func_8005C6D0
/* 51A24 80050E24 00000000 */   nop
/* 51A28 80050E28 860400A4 */  lh         $a0, 0xa4($s0)
/* 51A2C 80050E2C 0C0171B4 */  jal        func_8005C6D0
/* 51A30 80050E30 AFA20024 */   sw        $v0, 0x24($sp)
/* 51A34 80050E34 8FAD0024 */  lw         $t5, 0x24($sp)
/* 51A38 80050E38 00000000 */  nop
/* 51A3C 80050E3C 01A2082A */  slt        $at, $t5, $v0
/* 51A40 80050E40 10200009 */  beqz       $at, .L80050E68
/* 51A44 80050E44 00000000 */   nop
/* 51A48 80050E48 860E00A4 */  lh         $t6, 0xa4($s0)
/* 51A4C 80050E4C 860F0088 */  lh         $t7, 0x88($s0)
/* 51A50 80050E50 00000000 */  nop
/* 51A54 80050E54 01CF2021 */  addu       $a0, $t6, $t7
/* 51A58 80050E58 24840001 */  addiu      $a0, $a0, 1
/* 51A5C 80050E5C 0004C400 */  sll        $t8, $a0, 0x10
/* 51A60 80050E60 10000008 */  b          .L80050E84
/* 51A64 80050E64 00182403 */   sra       $a0, $t8, 0x10
.L80050E68:
/* 51A68 80050E68 860800A2 */  lh         $t0, 0xa2($s0)
/* 51A6C 80050E6C 86090088 */  lh         $t1, 0x88($s0)
/* 51A70 80050E70 00000000 */  nop
/* 51A74 80050E74 01092021 */  addu       $a0, $t0, $t1
/* 51A78 80050E78 2484FFFF */  addiu      $a0, $a0, -1
/* 51A7C 80050E7C 00045400 */  sll        $t2, $a0, 0x10
/* 51A80 80050E80 000A2403 */  sra        $a0, $t2, 0x10
.L80050E84:
/* 51A84 80050E84 8605008C */  lh         $a1, 0x8c($s0)
/* 51A88 80050E88 0C004AAD */  jal        func_80012AB4
/* 51A8C 80050E8C 00000000 */   nop
/* 51A90 80050E90 304C0080 */  andi       $t4, $v0, 0x80
/* 51A94 80050E94 11800017 */  beqz       $t4, .L80050EF4
/* 51A98 80050E98 00000000 */   nop
/* 51A9C 80050E9C 8E0D00EC */  lw         $t5, 0xec($s0)
/* 51AA0 80050EA0 3C013FE8 */  lui        $at, 0x3fe8
/* 51AA4 80050EA4 000D7023 */  negu       $t6, $t5
/* 51AA8 80050EA8 448E2000 */  mtc1       $t6, $f4
/* 51AAC 80050EAC 44814800 */  mtc1       $at, $f9
/* 51AB0 80050EB0 468021A1 */  cvt.d.w    $f6, $f4
/* 51AB4 80050EB4 44804000 */  mtc1       $zero, $f8
/* 51AB8 80050EB8 24180001 */  addiu      $t8, $zero, 1
/* 51ABC 80050EBC 46283282 */  mul.d      $f10, $f6, $f8
/* 51AC0 80050EC0 24190013 */  addiu      $t9, $zero, 0x13
/* 51AC4 80050EC4 A21800D0 */  sb         $t8, 0xd0($s0)
/* 51AC8 80050EC8 A21900D1 */  sb         $t9, 0xd1($s0)
/* 51ACC 80050ECC 444FF800 */  cfc1       $t7, $31
/* 51AD0 80050ED0 00000000 */  nop
/* 51AD4 80050ED4 35E10003 */  ori        $at, $t7, 3
/* 51AD8 80050ED8 38210002 */  xori       $at, $at, 2
/* 51ADC 80050EDC 44C1F800 */  ctc1       $at, $31
/* 51AE0 80050EE0 00000000 */  nop
/* 51AE4 80050EE4 46205424 */  cvt.w.d    $f16, $f10
/* 51AE8 80050EE8 44CFF800 */  ctc1       $t7, $31
/* 51AEC 80050EEC 1000000F */  b          .L80050F2C
/* 51AF0 80050EF0 E61000EC */   swc1      $f16, 0xec($s0)
.L80050EF4:
/* 51AF4 80050EF4 8E080080 */  lw         $t0, 0x80($s0)
/* 51AF8 80050EF8 00000000 */  nop
/* 51AFC 80050EFC 35090080 */  ori        $t1, $t0, 0x80
/* 51B00 80050F00 AE090080 */  sw         $t1, 0x80($s0)
.L80050F04:
/* 51B04 80050F04 8E0A0150 */  lw         $t2, 0x150($s0)
/* 51B08 80050F08 2401FF7F */  addiu      $at, $zero, -0x81
/* 51B0C 80050F0C 15400007 */  bnez       $t2, .L80050F2C
/* 51B10 80050F10 240F0004 */   addiu     $t7, $zero, 4
/* 51B14 80050F14 8E0B0080 */  lw         $t3, 0x80($s0)
/* 51B18 80050F18 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 51B1C 80050F1C 01616024 */  and        $t4, $t3, $at
/* 51B20 80050F20 AE0C0080 */  sw         $t4, 0x80($s0)
/* 51B24 80050F24 358E0040 */  ori        $t6, $t4, 0x40
/* 51B28 80050F28 AE0E0080 */  sw         $t6, 0x80($s0)
.L80050F2C:
/* 51B2C 80050F2C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 51B30 80050F30 8FB00018 */  lw         $s0, 0x18($sp)
/* 51B34 80050F34 03E00008 */  jr         $ra
/* 51B38 80050F38 27BD0030 */   addiu     $sp, $sp, 0x30
