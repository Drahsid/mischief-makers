glabel func_800017D0
/* 23D0 800017D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 23D4 800017D4 3C088017 */  lui        $t0, %hi(D_8016D9A8)
/* 23D8 800017D8 2508D9A8 */  addiu      $t0, $t0, %lo(D_8016D9A8)
/* 23DC 800017DC AFB00024 */  sw         $s0, 0x24($sp)
/* 23E0 800017E0 8D100004 */  lw         $s0, 4($t0)
/* 23E4 800017E4 AFB10028 */  sw         $s1, 0x28($sp)
/* 23E8 800017E8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 23EC 800017EC AFA60040 */  sw         $a2, 0x40($sp)
/* 23F0 800017F0 00803825 */  or         $a3, $a0, $zero
/* 23F4 800017F4 12000016 */  beqz       $s0, .L80001850
/* 23F8 800017F8 00008825 */   or        $s1, $zero, $zero
.L800017FC:
/* 23FC 800017FC 8E020008 */  lw         $v0, 8($s0)
/* 2400 80001800 00E57021 */  addu       $t6, $a3, $a1
/* 2404 80001804 00E2082A */  slt        $at, $a3, $v0
/* 2408 80001808 14200011 */  bnez       $at, .L80001850
/* 240C 8000180C 24430270 */   addiu     $v1, $v0, 0x270
/* 2410 80001810 006E082A */  slt        $at, $v1, $t6
/* 2414 80001814 1420000A */  bnez       $at, .L80001840
/* 2418 80001818 02008825 */   or        $s1, $s0, $zero
/* 241C 8000181C 8E180010 */  lw         $t8, 0x10($s0)
/* 2420 80001820 3C0F8017 */  lui        $t7, %hi(D_8016DEB8)
/* 2424 80001824 8DEFDEB8 */  lw         $t7, %lo(D_8016DEB8)($t7)
/* 2428 80001828 0307C821 */  addu       $t9, $t8, $a3
/* 242C 8000182C 03222023 */  subu       $a0, $t9, $v0
/* 2430 80001830 0C026964 */  jal        func_8009A590
/* 2434 80001834 AE0F000C */   sw        $t7, 0xc($s0)
/* 2438 80001838 1000004F */  b          .L80001978
/* 243C 8000183C 8FBF002C */   lw        $ra, 0x2c($sp)
.L80001840:
/* 2440 80001840 8E100000 */  lw         $s0, ($s0)
/* 2444 80001844 00000000 */  nop
/* 2448 80001848 1600FFEC */  bnez       $s0, .L800017FC
/* 244C 8000184C 00000000 */   nop
.L80001850:
/* 2450 80001850 8D100008 */  lw         $s0, 8($t0)
/* 2454 80001854 3C04800F */  lui        $a0, %hi(D_800EAEFC)
/* 2458 80001858 16000009 */  bnez       $s0, .L80001880
/* 245C 8000185C 2484AEFC */   addiu     $a0, $a0, %lo(D_800EAEFC)
/* 2460 80001860 3C05800F */  lui        $a1, %hi(D_800EAF04)
/* 2464 80001864 24A5AF04 */  addiu      $a1, $a1, %lo(D_800EAF04)
/* 2468 80001868 240600C3 */  addiu      $a2, $zero, 0xc3
/* 246C 8000186C 0C026E74 */  jal        func_8009B9D0
/* 2470 80001870 AFA70038 */   sw        $a3, 0x38($sp)
/* 2474 80001874 3C088017 */  lui        $t0, %hi(D_8016D9A8)
/* 2478 80001878 8FA70038 */  lw         $a3, 0x38($sp)
/* 247C 8000187C 2508D9A8 */  addiu      $t0, $t0, %lo(D_8016D9A8)
.L80001880:
/* 2480 80001880 8E090000 */  lw         $t1, ($s0)
/* 2484 80001884 AFA70038 */  sw         $a3, 0x38($sp)
/* 2488 80001888 02002025 */  or         $a0, $s0, $zero
/* 248C 8000188C 0C026EBB */  jal        func_8009BAEC
/* 2490 80001890 AD090008 */   sw        $t1, 8($t0)
/* 2494 80001894 8FA70038 */  lw         $a3, 0x38($sp)
/* 2498 80001898 3C088017 */  lui        $t0, %hi(D_8016D9A8)
/* 249C 8000189C 12200008 */  beqz       $s1, .L800018C0
/* 24A0 800018A0 2508D9A8 */   addiu     $t0, $t0, %lo(D_8016D9A8)
/* 24A4 800018A4 02002025 */  or         $a0, $s0, $zero
/* 24A8 800018A8 02202825 */  or         $a1, $s1, $zero
/* 24AC 800018AC 0C026EAE */  jal        func_8009BAB8
/* 24B0 800018B0 AFA70038 */   sw        $a3, 0x38($sp)
/* 24B4 800018B4 8FA70038 */  lw         $a3, 0x38($sp)
/* 24B8 800018B8 1000000E */  b          .L800018F4
/* 24BC 800018BC 30E20001 */   andi      $v0, $a3, 1
.L800018C0:
/* 24C0 800018C0 8D020004 */  lw         $v0, 4($t0)
/* 24C4 800018C4 00000000 */  nop
/* 24C8 800018C8 10400006 */  beqz       $v0, .L800018E4
/* 24CC 800018CC 00000000 */   nop
/* 24D0 800018D0 AD100004 */  sw         $s0, 4($t0)
/* 24D4 800018D4 AE020000 */  sw         $v0, ($s0)
/* 24D8 800018D8 AE000004 */  sw         $zero, 4($s0)
/* 24DC 800018DC 10000004 */  b          .L800018F0
/* 24E0 800018E0 AC500004 */   sw        $s0, 4($v0)
.L800018E4:
/* 24E4 800018E4 AD100004 */  sw         $s0, 4($t0)
/* 24E8 800018E8 AE000000 */  sw         $zero, ($s0)
/* 24EC 800018EC AE000004 */  sw         $zero, 4($s0)
.L800018F0:
/* 24F0 800018F0 30E20001 */  andi       $v0, $a3, 1
.L800018F4:
/* 24F4 800018F4 8E110010 */  lw         $s1, 0x10($s0)
/* 24F8 800018F8 AFA20030 */  sw         $v0, 0x30($sp)
/* 24FC 800018FC 00E23823 */  subu       $a3, $a3, $v0
/* 2500 80001900 AE070008 */  sw         $a3, 8($s0)
/* 2504 80001904 3C0A8017 */  lui        $t2, %hi(D_8016DEB8)
/* 2508 80001908 8D4ADEB8 */  lw         $t2, %lo(D_8016DEB8)($t2)
/* 250C 8000190C 3C08800C */  lui        $t0, %hi(D_800C3830)
/* 2510 80001910 25083830 */  addiu      $t0, $t0, %lo(D_800C3830)
/* 2514 80001914 AE0A000C */  sw         $t2, 0xc($s0)
/* 2518 80001918 8D030000 */  lw         $v1, ($t0)
/* 251C 8000191C 3C0C8013 */  lui        $t4, 0x8013
/* 2520 80001920 00035880 */  sll        $t3, $v1, 2
/* 2524 80001924 3C0E8013 */  lui        $t6, %hi(D_801377B8)
/* 2528 80001928 01635823 */  subu       $t3, $t3, $v1
/* 252C 8000192C 000B58C0 */  sll        $t3, $t3, 3
/* 2530 80001930 25CE77B8 */  addiu      $t6, $t6, %lo(D_801377B8)
/* 2534 80001934 258C78E0 */  addiu      $t4, $t4, 0x78e0
/* 2538 80001938 240D0270 */  addiu      $t5, $zero, 0x270
/* 253C 8000193C 246F0001 */  addiu      $t7, $v1, 1
/* 2540 80001940 AD0F0000 */  sw         $t7, ($t0)
/* 2544 80001944 AFAD0014 */  sw         $t5, 0x14($sp)
/* 2548 80001948 016C2021 */  addu       $a0, $t3, $t4
/* 254C 8000194C AFAE0018 */  sw         $t6, 0x18($sp)
/* 2550 80001950 00002825 */  or         $a1, $zero, $zero
/* 2554 80001954 00003025 */  or         $a2, $zero, $zero
/* 2558 80001958 0C026DE4 */  jal        func_8009B790
/* 255C 8000195C AFB10010 */   sw        $s1, 0x10($sp)
/* 2560 80001960 0C026964 */  jal        func_8009A590
/* 2564 80001964 02202025 */   or        $a0, $s1, $zero
/* 2568 80001968 8FB80030 */  lw         $t8, 0x30($sp)
/* 256C 8000196C 00000000 */  nop
/* 2570 80001970 00581021 */  addu       $v0, $v0, $t8
/* 2574 80001974 8FBF002C */  lw         $ra, 0x2c($sp)
.L80001978:
/* 2578 80001978 8FB00024 */  lw         $s0, 0x24($sp)
/* 257C 8000197C 8FB10028 */  lw         $s1, 0x28($sp)
/* 2580 80001980 03E00008 */  jr         $ra
/* 2584 80001984 27BD0038 */   addiu     $sp, $sp, 0x38
