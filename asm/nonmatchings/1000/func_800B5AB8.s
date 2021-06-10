glabel func_800B5AB8
/* B66B8 800B5AB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B66BC 800B5ABC AFBF0014 */  sw         $ra, 0x14($sp)
/* B66C0 800B5AC0 AFA40018 */  sw         $a0, 0x18($sp)
/* B66C4 800B5AC4 0C02A45C */  jal        func_800A9170
/* B66C8 800B5AC8 3C040408 */   lui       $a0, 0x408
/* B66CC 800B5ACC 3C018019 */  lui        $at, %hi(D_8018B760)
/* B66D0 800B5AD0 AC22B760 */  sw         $v0, %lo(D_8018B760)($at)
/* B66D4 800B5AD4 3C040400 */  lui        $a0, 0x400
/* B66D8 800B5AD8 0C02A45C */  jal        func_800A9170
/* B66DC 800B5ADC 34841000 */   ori       $a0, $a0, 0x1000
/* B66E0 800B5AE0 3C018019 */  lui        $at, %hi(D_8018B764)
/* B66E4 800B5AE4 AC22B764 */  sw         $v0, %lo(D_8018B764)($at)
/* B66E8 800B5AE8 0C02A45C */  jal        func_800A9170
/* B66EC 800B5AEC 3C040400 */   lui       $a0, 0x400
/* B66F0 800B5AF0 3C0E8019 */  lui        $t6, %hi(D_8018B768)
/* B66F4 800B5AF4 25CEB768 */  addiu      $t6, $t6, %lo(D_8018B768)
/* B66F8 800B5AF8 ADC20000 */  sw         $v0, ($t6)
/* B66FC 800B5AFC 8FAF0018 */  lw         $t7, 0x18($sp)
/* B6700 800B5B00 11E00013 */  beqz       $t7, .L800B5B50
/* B6704 800B5B04 00000000 */   nop
/* B6708 800B5B08 3C040400 */  lui        $a0, 0x400
/* B670C 800B5B0C 0C02A45C */  jal        func_800A9170
/* B6710 800B5B10 34840004 */   ori       $a0, $a0, 4
/* B6714 800B5B14 3C188019 */  lui        $t8, %hi(D_8018B768)
/* B6718 800B5B18 2718B768 */  addiu      $t8, $t8, %lo(D_8018B768)
/* B671C 800B5B1C AF020004 */  sw         $v0, 4($t8)
/* B6720 800B5B20 3C040400 */  lui        $a0, 0x400
/* B6724 800B5B24 0C02A45C */  jal        func_800A9170
/* B6728 800B5B28 34840008 */   ori       $a0, $a0, 8
/* B672C 800B5B2C 3C198019 */  lui        $t9, %hi(D_8018B768)
/* B6730 800B5B30 2739B768 */  addiu      $t9, $t9, %lo(D_8018B768)
/* B6734 800B5B34 AF220008 */  sw         $v0, 8($t9)
/* B6738 800B5B38 3C040400 */  lui        $a0, 0x400
/* B673C 800B5B3C 0C02A45C */  jal        func_800A9170
/* B6740 800B5B40 3484000C */   ori       $a0, $a0, 0xc
/* B6744 800B5B44 3C088019 */  lui        $t0, %hi(D_8018B768)
/* B6748 800B5B48 2508B768 */  addiu      $t0, $t0, %lo(D_8018B768)
/* B674C 800B5B4C AD02000C */  sw         $v0, 0xc($t0)
.L800B5B50:
/* B6750 800B5B50 10000001 */  b          .L800B5B58
/* B6754 800B5B54 00000000 */   nop
.L800B5B58:
/* B6758 800B5B58 8FBF0014 */  lw         $ra, 0x14($sp)
/* B675C 800B5B5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B6760 800B5B60 03E00008 */  jr         $ra
/* B6764 800B5B64 00000000 */   nop
