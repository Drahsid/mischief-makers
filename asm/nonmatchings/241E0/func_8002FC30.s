glabel func_8002FC30
/* 30830 8002FC30 3C02800D */  lui        $v0, %hi(D_800D2950)
/* 30834 8002FC34 94422950 */  lhu        $v0, %lo(D_800D2950)($v0)
/* 30838 8002FC38 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3083C 8002FC3C AFA40020 */  sw         $a0, 0x20($sp)
/* 30840 8002FC40 308EFFFF */  andi       $t6, $a0, 0xffff
/* 30844 8002FC44 01C02025 */  or         $a0, $t6, $zero
/* 30848 8002FC48 10400018 */  beqz       $v0, .L8002FCAC
/* 3084C 8002FC4C AFBF001C */   sw        $ra, 0x1c($sp)
/* 30850 8002FC50 00027880 */  sll        $t7, $v0, 2
/* 30854 8002FC54 01E27823 */  subu       $t7, $t7, $v0
/* 30858 8002FC58 000F7880 */  sll        $t7, $t7, 2
/* 3085C 8002FC5C 01E27821 */  addu       $t7, $t7, $v0
/* 30860 8002FC60 000F7880 */  sll        $t7, $t7, 2
/* 30864 8002FC64 01E27823 */  subu       $t7, $t7, $v0
/* 30868 8002FC68 3C18800F */  lui        $t8, %hi(gActors)
/* 3086C 8002FC6C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 30870 8002FC70 000F78C0 */  sll        $t7, $t7, 3
/* 30874 8002FC74 01F8C821 */  addu       $t9, $t7, $t8
/* 30878 8002FC78 872800E0 */  lh         $t0, 0xe0($t9)
/* 3087C 8002FC7C 000E4880 */  sll        $t1, $t6, 2
/* 30880 8002FC80 1500000A */  bnez       $t0, .L8002FCAC
/* 30884 8002FC84 012E4823 */   subu      $t1, $t1, $t6
/* 30888 8002FC88 00094880 */  sll        $t1, $t1, 2
/* 3088C 8002FC8C 012E4821 */  addu       $t1, $t1, $t6
/* 30890 8002FC90 00094880 */  sll        $t1, $t1, 2
/* 30894 8002FC94 012E4823 */  subu       $t1, $t1, $t6
/* 30898 8002FC98 000948C0 */  sll        $t1, $t1, 3
/* 3089C 8002FC9C 01385021 */  addu       $t2, $t1, $t8
/* 308A0 8002FCA0 95420082 */  lhu        $v0, 0x82($t2)
/* 308A4 8002FCA4 10000025 */  b          .L8002FD3C
/* 308A8 8002FCA8 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002FCAC:
/* 308AC 8002FCAC 0C01747A */  jal        func_8005D1E8
/* 308B0 8002FCB0 A7A40022 */   sh        $a0, 0x22($sp)
/* 308B4 8002FCB4 97A40022 */  lhu        $a0, 0x22($sp)
/* 308B8 8002FCB8 10400014 */  beqz       $v0, .L8002FD0C
/* 308BC 8002FCBC 00045880 */   sll       $t3, $a0, 2
/* 308C0 8002FCC0 01645823 */  subu       $t3, $t3, $a0
/* 308C4 8002FCC4 000B5880 */  sll        $t3, $t3, 2
/* 308C8 8002FCC8 01645821 */  addu       $t3, $t3, $a0
/* 308CC 8002FCCC 000B5880 */  sll        $t3, $t3, 2
/* 308D0 8002FCD0 01645823 */  subu       $t3, $t3, $a0
/* 308D4 8002FCD4 3C0C800F */  lui        $t4, %hi(gActors)
/* 308D8 8002FCD8 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 308DC 8002FCDC 000B58C0 */  sll        $t3, $t3, 3
/* 308E0 8002FCE0 016C1021 */  addu       $v0, $t3, $t4
/* 308E4 8002FCE4 844D008C */  lh         $t5, 0x8c($v0)
/* 308E8 8002FCE8 8C46018C */  lw         $a2, 0x18c($v0)
/* 308EC 8002FCEC 84470088 */  lh         $a3, 0x88($v0)
/* 308F0 8002FCF0 AC400080 */  sw         $zero, 0x80($v0)
/* 308F4 8002FCF4 00002825 */  or         $a1, $zero, $zero
/* 308F8 8002FCF8 A7A40022 */  sh         $a0, 0x22($sp)
/* 308FC 8002FCFC 0C00BE4F */  jal        gem_collision
/* 30900 8002FD00 AFAD0010 */   sw        $t5, 0x10($sp)
/* 30904 8002FD04 97A40022 */  lhu        $a0, 0x22($sp)
/* 30908 8002FD08 00000000 */  nop
.L8002FD0C:
/* 3090C 8002FD0C 00047080 */  sll        $t6, $a0, 2
/* 30910 8002FD10 01C47023 */  subu       $t6, $t6, $a0
/* 30914 8002FD14 000E7080 */  sll        $t6, $t6, 2
/* 30918 8002FD18 01C47021 */  addu       $t6, $t6, $a0
/* 3091C 8002FD1C 000E7080 */  sll        $t6, $t6, 2
/* 30920 8002FD20 01C47023 */  subu       $t6, $t6, $a0
/* 30924 8002FD24 000E70C0 */  sll        $t6, $t6, 3
/* 30928 8002FD28 3C02800F */  lui        $v0, %hi(gActors+0x82)
/* 3092C 8002FD2C 004E1021 */  addu       $v0, $v0, $t6
/* 30930 8002FD30 9442F592 */  lhu        $v0, %lo(gActors+0x82)($v0)
/* 30934 8002FD34 00000000 */  nop
/* 30938 8002FD38 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002FD3C:
/* 3093C 8002FD3C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 30940 8002FD40 03E00008 */  jr         $ra
/* 30944 8002FD44 00000000 */   nop
