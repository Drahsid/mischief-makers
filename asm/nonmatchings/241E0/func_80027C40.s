glabel func_80027C40
/* 28840 80027C40 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 28844 80027C44 AFBF003C */  sw         $ra, 0x3c($sp)
/* 28848 80027C48 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2884C 80027C4C AFB70034 */  sw         $s7, 0x34($sp)
/* 28850 80027C50 AFB60030 */  sw         $s6, 0x30($sp)
/* 28854 80027C54 AFB5002C */  sw         $s5, 0x2c($sp)
/* 28858 80027C58 AFB40028 */  sw         $s4, 0x28($sp)
/* 2885C 80027C5C AFB30024 */  sw         $s3, 0x24($sp)
/* 28860 80027C60 AFB20020 */  sw         $s2, 0x20($sp)
/* 28864 80027C64 AFB1001C */  sw         $s1, 0x1c($sp)
/* 28868 80027C68 AFB00018 */  sw         $s0, 0x18($sp)
/* 2886C 80027C6C AFA40040 */  sw         $a0, 0x40($sp)
/* 28870 80027C70 AFA60048 */  sw         $a2, 0x48($sp)
/* 28874 80027C74 AFA7004C */  sw         $a3, 0x4c($sp)
/* 28878 80027C78 94A20000 */  lhu        $v0, ($a1)
/* 2887C 80027C7C 34018FFF */  ori        $at, $zero, 0x8fff
/* 28880 80027C80 00A08025 */  or         $s0, $a1, $zero
/* 28884 80027C84 30D1FFFF */  andi       $s1, $a2, 0xffff
/* 28888 80027C88 10410035 */  beq        $v0, $at, .L80027D60
/* 2888C 80027C8C 3092FFFF */   andi      $s2, $a0, 0xffff
/* 28890 80027C90 3C1E800F */  lui        $fp, %hi(gActors)
/* 28894 80027C94 97B70052 */  lhu        $s7, 0x52($sp)
/* 28898 80027C98 93B6005F */  lbu        $s6, 0x5f($sp)
/* 2889C 80027C9C 93B5005B */  lbu        $s5, 0x5b($sp)
/* 288A0 80027CA0 93B40057 */  lbu        $s4, 0x57($sp)
/* 288A4 80027CA4 27DEF510 */  addiu      $fp, $fp, %lo(gActors)
.L80027CA8:
/* 288A8 80027CA8 10400026 */  beqz       $v0, .L80027D44
/* 288AC 80027CAC 3244FFFF */   andi      $a0, $s2, 0xffff
/* 288B0 80027CB0 97A6004E */  lhu        $a2, 0x4e($sp)
/* 288B4 80027CB4 02957025 */  or         $t6, $s4, $s5
/* 288B8 80027CB8 01D69825 */  or         $s3, $t6, $s6
/* 288BC 80027CBC 3225FFFF */  andi       $a1, $s1, 0xffff
/* 288C0 80027CC0 0C009CDC */  jal        func_80027370
/* 288C4 80027CC4 32E7FFFF */   andi      $a3, $s7, 0xffff
/* 288C8 80027CC8 00127880 */  sll        $t7, $s2, 2
/* 288CC 80027CCC 01F27823 */  subu       $t7, $t7, $s2
/* 288D0 80027CD0 000F7880 */  sll        $t7, $t7, 2
/* 288D4 80027CD4 01F27821 */  addu       $t7, $t7, $s2
/* 288D8 80027CD8 000F7880 */  sll        $t7, $t7, 2
/* 288DC 80027CDC 01F27823 */  subu       $t7, $t7, $s2
/* 288E0 80027CE0 000F78C0 */  sll        $t7, $t7, 3
/* 288E4 80027CE4 03CF1021 */  addu       $v0, $fp, $t7
/* 288E8 80027CE8 8C580080 */  lw         $t8, 0x80($v0)
/* 288EC 80027CEC 26520001 */  addiu      $s2, $s2, 1
/* 288F0 80027CF0 37190008 */  ori        $t9, $t8, 8
/* 288F4 80027CF4 AC590080 */  sw         $t9, 0x80($v0)
/* 288F8 80027CF8 96080000 */  lhu        $t0, ($s0)
/* 288FC 80027CFC 324DFFFF */  andi       $t5, $s2, 0xffff
/* 28900 80027D00 00084840 */  sll        $t1, $t0, 1
/* 28904 80027D04 252A02D2 */  addiu      $t2, $t1, 0x2d2
/* 28908 80027D08 12600007 */  beqz       $s3, .L80027D28
/* 2890C 80027D0C A44A0084 */   sh        $t2, 0x84($v0)
/* 28910 80027D10 944B0094 */  lhu        $t3, 0x94($v0)
/* 28914 80027D14 A054009C */  sb         $s4, 0x9c($v0)
/* 28918 80027D18 356C0010 */  ori        $t4, $t3, 0x10
/* 2891C 80027D1C A44C0094 */  sh         $t4, 0x94($v0)
/* 28920 80027D20 A055009D */  sb         $s5, 0x9d($v0)
/* 28924 80027D24 A056009E */  sb         $s6, 0x9e($v0)
.L80027D28:
/* 28928 80027D28 01A09025 */  or         $s2, $t5, $zero
/* 2892C 80027D2C 0C009EA2 */  jal        func_80027A88
/* 28930 80027D30 02002025 */   or        $a0, $s0, $zero
/* 28934 80027D34 02228821 */  addu       $s1, $s1, $v0
/* 28938 80027D38 322EFFFF */  andi       $t6, $s1, 0xffff
/* 2893C 80027D3C 10000004 */  b          .L80027D50
/* 28940 80027D40 01C08825 */   or        $s1, $t6, $zero
.L80027D44:
/* 28944 80027D44 2631000E */  addiu      $s1, $s1, 0xe
/* 28948 80027D48 322FFFFF */  andi       $t7, $s1, 0xffff
/* 2894C 80027D4C 01E08825 */  or         $s1, $t7, $zero
.L80027D50:
/* 28950 80027D50 96020002 */  lhu        $v0, 2($s0)
/* 28954 80027D54 34018FFF */  ori        $at, $zero, 0x8fff
/* 28958 80027D58 1441FFD3 */  bne        $v0, $at, .L80027CA8
/* 2895C 80027D5C 26100002 */   addiu     $s0, $s0, 2
.L80027D60:
/* 28960 80027D60 8FBF003C */  lw         $ra, 0x3c($sp)
/* 28964 80027D64 02401025 */  or         $v0, $s2, $zero
/* 28968 80027D68 8FB20020 */  lw         $s2, 0x20($sp)
/* 2896C 80027D6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 28970 80027D70 8FB1001C */  lw         $s1, 0x1c($sp)
/* 28974 80027D74 8FB30024 */  lw         $s3, 0x24($sp)
/* 28978 80027D78 8FB40028 */  lw         $s4, 0x28($sp)
/* 2897C 80027D7C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 28980 80027D80 8FB60030 */  lw         $s6, 0x30($sp)
/* 28984 80027D84 8FB70034 */  lw         $s7, 0x34($sp)
/* 28988 80027D88 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2898C 80027D8C 03E00008 */  jr         $ra
/* 28990 80027D90 27BD0040 */   addiu     $sp, $sp, 0x40
