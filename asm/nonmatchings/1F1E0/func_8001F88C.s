glabel func_8001F88C
/* 2048C 8001F88C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20490 8001F890 3C0E8013 */  lui        $t6, %hi(D_80137458)
/* 20494 8001F894 8DCE7458 */  lw         $t6, %lo(D_80137458)($t6)
/* 20498 8001F898 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2049C 8001F89C 31CF0010 */  andi       $t7, $t6, 0x10
/* 204A0 8001F8A0 AFBE0028 */  sw         $fp, 0x28($sp)
/* 204A4 8001F8A4 AFB70024 */  sw         $s7, 0x24($sp)
/* 204A8 8001F8A8 AFB60020 */  sw         $s6, 0x20($sp)
/* 204AC 8001F8AC AFB5001C */  sw         $s5, 0x1c($sp)
/* 204B0 8001F8B0 AFB40018 */  sw         $s4, 0x18($sp)
/* 204B4 8001F8B4 AFB30014 */  sw         $s3, 0x14($sp)
/* 204B8 8001F8B8 AFB20010 */  sw         $s2, 0x10($sp)
/* 204BC 8001F8BC AFB1000C */  sw         $s1, 0xc($sp)
/* 204C0 8001F8C0 15E00061 */  bnez       $t7, .L8001FA48
/* 204C4 8001F8C4 AFB00008 */   sw        $s0, 8($sp)
/* 204C8 8001F8C8 3C05800C */  lui        $a1, %hi(D_800BE4D0)
/* 204CC 8001F8CC 3C06800C */  lui        $a2, %hi(D_800BE4D4)
/* 204D0 8001F8D0 24C6E4D4 */  addiu      $a2, $a2, %lo(D_800BE4D4)
/* 204D4 8001F8D4 24A5E4D0 */  addiu      $a1, $a1, %lo(D_800BE4D0)
/* 204D8 8001F8D8 3C158012 */  lui        $s5, 0x8012
/* 204DC 8001F8DC 3C148012 */  lui        $s4, 0x8012
/* 204E0 8001F8E0 3C138012 */  lui        $s3, 0x8012
/* 204E4 8001F8E4 3C128012 */  lui        $s2, 0x8012
/* 204E8 8001F8E8 3C118012 */  lui        $s1, 0x8012
/* 204EC 8001F8EC 3C108012 */  lui        $s0, 0x8012
/* 204F0 8001F8F0 3C0D8012 */  lui        $t5, 0x8012
/* 204F4 8001F8F4 3C0C8012 */  lui        $t4, 0x8012
/* 204F8 8001F8F8 3C0B8012 */  lui        $t3, %hi(D_8011D170)
/* 204FC 8001F8FC 3C0A8012 */  lui        $t2, %hi(D_8011CF20)
/* 20500 8001F900 3C07800F */  lui        $a3, %hi(gActors)
/* 20504 8001F904 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 20508 8001F908 254ACF20 */  addiu      $t2, $t2, %lo(D_8011CF20)
/* 2050C 8001F90C 256BD170 */  addiu      $t3, $t3, %lo(D_8011D170)
/* 20510 8001F910 258CD3D0 */  addiu      $t4, $t4, -0x2c30
/* 20514 8001F914 25ADD610 */  addiu      $t5, $t5, -0x29f0
/* 20518 8001F918 2610D850 */  addiu      $s0, $s0, -0x27b0
/* 2051C 8001F91C 2631CDF8 */  addiu      $s1, $s1, -0x3208
/* 20520 8001F920 2652D048 */  addiu      $s2, $s2, -0x2fb8
/* 20524 8001F924 2673D290 */  addiu      $s3, $s3, -0x2d70
/* 20528 8001F928 2694D4F0 */  addiu      $s4, $s4, -0x2b10
/* 2052C 8001F92C 26B5D730 */  addiu      $s5, $s5, -0x28d0
/* 20530 8001F930 A4A00000 */  sh         $zero, ($a1)
/* 20534 8001F934 A4C00000 */  sh         $zero, ($a2)
/* 20538 8001F938 00002025 */  or         $a0, $zero, $zero
/* 2053C 8001F93C 3C090004 */  lui        $t1, 4
/* 20540 8001F940 24080198 */  addiu      $t0, $zero, 0x198
.L8001F944:
/* 20544 8001F944 00880019 */  multu      $a0, $t0
/* 20548 8001F948 0000C012 */  mflo       $t8
/* 2054C 8001F94C 00F81021 */  addu       $v0, $a3, $t8
/* 20550 8001F950 8C560080 */  lw         $s6, 0x80($v0)
/* 20554 8001F954 00000000 */  nop
/* 20558 8001F958 02C9C824 */  and        $t9, $s6, $t1
/* 2055C 8001F95C 1320001B */  beqz       $t9, .L8001F9CC
/* 20560 8001F960 32D82000 */   andi      $t8, $s6, 0x2000
/* 20564 8001F964 94B70000 */  lhu        $s7, ($a1)
/* 20568 8001F968 00000000 */  nop
/* 2056C 8001F96C 0017F040 */  sll        $fp, $s7, 1
/* 20570 8001F970 015E7021 */  addu       $t6, $t2, $fp
/* 20574 8001F974 A5C40000 */  sh         $a0, ($t6)
/* 20578 8001F978 844F00AC */  lh         $t7, 0xac($v0)
/* 2057C 8001F97C 84430088 */  lh         $v1, 0x88($v0)
/* 20580 8001F980 017EC821 */  addu       $t9, $t3, $fp
/* 20584 8001F984 01E3C021 */  addu       $t8, $t7, $v1
/* 20588 8001F988 A7380000 */  sh         $t8, ($t9)
/* 2058C 8001F98C 844E00AA */  lh         $t6, 0xaa($v0)
/* 20590 8001F990 019EC021 */  addu       $t8, $t4, $fp
/* 20594 8001F994 01C37821 */  addu       $t7, $t6, $v1
/* 20598 8001F998 A70F0000 */  sh         $t7, ($t8)
/* 2059C 8001F99C 845900AE */  lh         $t9, 0xae($v0)
/* 205A0 8001F9A0 845F008C */  lh         $ra, 0x8c($v0)
/* 205A4 8001F9A4 01BE7821 */  addu       $t7, $t5, $fp
/* 205A8 8001F9A8 033F7021 */  addu       $t6, $t9, $ra
/* 205AC 8001F9AC A5EE0000 */  sh         $t6, ($t7)
/* 205B0 8001F9B0 845800B0 */  lh         $t8, 0xb0($v0)
/* 205B4 8001F9B4 021E7021 */  addu       $t6, $s0, $fp
/* 205B8 8001F9B8 031FC821 */  addu       $t9, $t8, $ra
/* 205BC 8001F9BC A5D90000 */  sh         $t9, ($t6)
/* 205C0 8001F9C0 26EF0001 */  addiu      $t7, $s7, 1
/* 205C4 8001F9C4 A4AF0000 */  sh         $t7, ($a1)
/* 205C8 8001F9C8 32D82000 */  andi       $t8, $s6, 0x2000
.L8001F9CC:
/* 205CC 8001F9CC 13000019 */  beqz       $t8, .L8001FA34
/* 205D0 8001F9D0 00000000 */   nop
/* 205D4 8001F9D4 94D70000 */  lhu        $s7, ($a2)
/* 205D8 8001F9D8 00000000 */  nop
/* 205DC 8001F9DC 0017F040 */  sll        $fp, $s7, 1
/* 205E0 8001F9E0 023EC821 */  addu       $t9, $s1, $fp
/* 205E4 8001F9E4 A7240000 */  sh         $a0, ($t9)
/* 205E8 8001F9E8 844E00AC */  lh         $t6, 0xac($v0)
/* 205EC 8001F9EC 84430088 */  lh         $v1, 0x88($v0)
/* 205F0 8001F9F0 025EC021 */  addu       $t8, $s2, $fp
/* 205F4 8001F9F4 01C37821 */  addu       $t7, $t6, $v1
/* 205F8 8001F9F8 A70F0000 */  sh         $t7, ($t8)
/* 205FC 8001F9FC 845900AA */  lh         $t9, 0xaa($v0)
/* 20600 8001FA00 027E7821 */  addu       $t7, $s3, $fp
/* 20604 8001FA04 03237021 */  addu       $t6, $t9, $v1
/* 20608 8001FA08 A5EE0000 */  sh         $t6, ($t7)
/* 2060C 8001FA0C 8459008C */  lh         $t9, 0x8c($v0)
/* 20610 8001FA10 845800AE */  lh         $t8, 0xae($v0)
/* 20614 8001FA14 029E7021 */  addu       $t6, $s4, $fp
/* 20618 8001FA18 0319B021 */  addu       $s6, $t8, $t9
/* 2061C 8001FA1C A5D60000 */  sh         $s6, ($t6)
/* 20620 8001FA20 26CFFFF8 */  addiu      $t7, $s6, -8
/* 20624 8001FA24 02BEC021 */  addu       $t8, $s5, $fp
/* 20628 8001FA28 A70F0000 */  sh         $t7, ($t8)
/* 2062C 8001FA2C 26F90001 */  addiu      $t9, $s7, 1
/* 20630 8001FA30 A4D90000 */  sh         $t9, ($a2)
.L8001FA34:
/* 20634 8001FA34 24840001 */  addiu      $a0, $a0, 1
/* 20638 8001FA38 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2063C 8001FA3C 29C10090 */  slti       $at, $t6, 0x90
/* 20640 8001FA40 1420FFC0 */  bnez       $at, .L8001F944
/* 20644 8001FA44 01C02025 */   or        $a0, $t6, $zero
.L8001FA48:
/* 20648 8001FA48 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2064C 8001FA4C 8FB00008 */  lw         $s0, 8($sp)
/* 20650 8001FA50 8FB1000C */  lw         $s1, 0xc($sp)
/* 20654 8001FA54 8FB20010 */  lw         $s2, 0x10($sp)
/* 20658 8001FA58 8FB30014 */  lw         $s3, 0x14($sp)
/* 2065C 8001FA5C 8FB40018 */  lw         $s4, 0x18($sp)
/* 20660 8001FA60 8FB5001C */  lw         $s5, 0x1c($sp)
/* 20664 8001FA64 8FB60020 */  lw         $s6, 0x20($sp)
/* 20668 8001FA68 8FB70024 */  lw         $s7, 0x24($sp)
/* 2066C 8001FA6C 8FBE0028 */  lw         $fp, 0x28($sp)
/* 20670 8001FA70 03E00008 */  jr         $ra
/* 20674 8001FA74 27BD0030 */   addiu     $sp, $sp, 0x30
