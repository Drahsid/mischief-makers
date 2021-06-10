glabel func_80012AB4
/* 136B4 80012AB4 3C08800C */  lui        $t0, %hi(D_800BE558)
/* 136B8 80012AB8 8508E558 */  lh         $t0, %lo(D_800BE558)($t0)
/* 136BC 80012ABC 3C0B800C */  lui        $t3, %hi(D_800BE55C)
/* 136C0 80012AC0 856BE55C */  lh         $t3, %lo(D_800BE55C)($t3)
/* 136C4 80012AC4 3C0A800C */  lui        $t2, %hi(D_800BE648)
/* 136C8 80012AC8 954AE648 */  lhu        $t2, %lo(D_800BE648)($t2)
/* 136CC 80012ACC 01041821 */  addu       $v1, $t0, $a0
/* 136D0 80012AD0 3069FFFF */  andi       $t1, $v1, 0xffff
/* 136D4 80012AD4 01656021 */  addu       $t4, $t3, $a1
/* 136D8 80012AD8 00097103 */  sra        $t6, $t1, 4
/* 136DC 80012ADC 3C19800C */  lui        $t9, %hi(D_800BE660)
/* 136E0 80012AE0 014C3023 */  subu       $a2, $t2, $t4
/* 136E4 80012AE4 9739E660 */  lhu        $t9, %lo(D_800BE660)($t9)
/* 136E8 80012AE8 24C6FFFF */  addiu      $a2, $a2, -1
/* 136EC 80012AEC 3C09800C */  lui        $t1, %hi(D_800BE65C)
/* 136F0 80012AF0 3C0F800C */  lui        $t7, %hi(D_800BE658)
/* 136F4 80012AF4 95EFE658 */  lhu        $t7, %lo(D_800BE658)($t7)
/* 136F8 80012AF8 9529E65C */  lhu        $t1, %lo(D_800BE65C)($t1)
/* 136FC 80012AFC 30CDFFFF */  andi       $t5, $a2, 0xffff
/* 13700 80012B00 032D4004 */  sllv       $t0, $t5, $t9
/* 13704 80012B04 01CFC024 */  and        $t8, $t6, $t7
/* 13708 80012B08 01095824 */  and        $t3, $t0, $t1
/* 1370C 80012B0C 030B5021 */  addu       $t2, $t8, $t3
/* 13710 80012B10 3C028011 */  lui        $v0, %hi(D_8010CDF0)
/* 13714 80012B14 004A1021 */  addu       $v0, $v0, $t2
/* 13718 80012B18 9042CDF0 */  lbu        $v0, %lo(D_8010CDF0)($v0)
/* 1371C 80012B1C AFA40000 */  sw         $a0, ($sp)
/* 13720 80012B20 03E00008 */  jr         $ra
/* 13724 80012B24 AFA50004 */   sw        $a1, 4($sp)
