glabel func_80030BB8
/* 317B8 80030BB8 3087FFFF */  andi       $a3, $a0, 0xffff
/* 317BC 80030BBC 00077080 */  sll        $t6, $a3, 2
/* 317C0 80030BC0 01C77023 */  subu       $t6, $t6, $a3
/* 317C4 80030BC4 000E7080 */  sll        $t6, $t6, 2
/* 317C8 80030BC8 01C77021 */  addu       $t6, $t6, $a3
/* 317CC 80030BCC 000E7080 */  sll        $t6, $t6, 2
/* 317D0 80030BD0 01C77023 */  subu       $t6, $t6, $a3
/* 317D4 80030BD4 3C0F800F */  lui        $t7, %hi(gActors)
/* 317D8 80030BD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 317DC 80030BDC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 317E0 80030BE0 000E70C0 */  sll        $t6, $t6, 3
/* 317E4 80030BE4 AFA40020 */  sw         $a0, 0x20($sp)
/* 317E8 80030BE8 01CF1821 */  addu       $v1, $t6, $t7
/* 317EC 80030BEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 317F0 80030BF0 8C6400EC */  lw         $a0, 0xec($v1)
/* 317F4 80030BF4 AFA3001C */  sw         $v1, 0x1c($sp)
/* 317F8 80030BF8 00002825 */  or         $a1, $zero, $zero
/* 317FC 80030BFC 0C00A607 */  jal        func_8002981C
/* 31800 80030C00 24060800 */   addiu     $a2, $zero, 0x800
/* 31804 80030C04 8FA3001C */  lw         $v1, 0x1c($sp)
/* 31808 80030C08 00000000 */  nop
/* 3180C 80030C0C 8C7800F0 */  lw         $t8, 0xf0($v1)
/* 31810 80030C10 AC6200EC */  sw         $v0, 0xec($v1)
/* 31814 80030C14 2719CC00 */  addiu      $t9, $t8, -0x3400
/* 31818 80030C18 04410006 */  bgez       $v0, .L80030C34
/* 3181C 80030C1C AC7900F0 */   sw        $t9, 0xf0($v1)
/* 31820 80030C20 8C680098 */  lw         $t0, 0x98($v1)
/* 31824 80030C24 00000000 */  nop
/* 31828 80030C28 31090004 */  andi       $t1, $t0, 4
/* 3182C 80030C2C 1520000A */  bnez       $t1, .L80030C58
/* 31830 80030C30 00000000 */   nop
.L80030C34:
/* 31834 80030C34 8C6A00EC */  lw         $t2, 0xec($v1)
/* 31838 80030C38 00000000 */  nop
/* 3183C 80030C3C 1940001C */  blez       $t2, .L80030CB0
/* 31840 80030C40 00000000 */   nop
/* 31844 80030C44 8C6B0098 */  lw         $t3, 0x98($v1)
/* 31848 80030C48 00000000 */  nop
/* 3184C 80030C4C 316C0008 */  andi       $t4, $t3, 8
/* 31850 80030C50 11800017 */  beqz       $t4, .L80030CB0
/* 31854 80030C54 00000000 */   nop
.L80030C58:
/* 31858 80030C58 8C6D00EC */  lw         $t5, 0xec($v1)
/* 3185C 80030C5C 3C01800F */  lui        $at, %hi(D_800EB918)
/* 31860 80030C60 000D7023 */  negu       $t6, $t5
/* 31864 80030C64 448E2000 */  mtc1       $t6, $f4
/* 31868 80030C68 C42BB918 */  lwc1       $f11, %lo(D_800EB918)($at)
/* 3186C 80030C6C 468021A0 */  cvt.s.w    $f6, $f4
/* 31870 80030C70 C42AB91C */  lwc1       $f10, -0x46e4($at)
/* 31874 80030C74 8C780080 */  lw         $t8, 0x80($v1)
/* 31878 80030C78 46003221 */  cvt.d.s    $f8, $f6
/* 3187C 80030C7C 462A4402 */  mul.d      $f16, $f8, $f10
/* 31880 80030C80 3B190020 */  xori       $t9, $t8, 0x20
/* 31884 80030C84 AC790080 */  sw         $t9, 0x80($v1)
/* 31888 80030C88 444FF800 */  cfc1       $t7, $31
/* 3188C 80030C8C 00000000 */  nop
/* 31890 80030C90 35E10003 */  ori        $at, $t7, 3
/* 31894 80030C94 38210002 */  xori       $at, $at, 2
/* 31898 80030C98 44C1F800 */  ctc1       $at, $31
/* 3189C 80030C9C 00000000 */  nop
/* 318A0 80030CA0 462084A4 */  cvt.w.d    $f18, $f16
/* 318A4 80030CA4 44CFF800 */  ctc1       $t7, $31
/* 318A8 80030CA8 E47200EC */  swc1       $f18, 0xec($v1)
/* 318AC 80030CAC 00000000 */  nop
.L80030CB0:
/* 318B0 80030CB0 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 318B4 80030CB4 00000000 */  nop
/* 318B8 80030CB8 1840001C */  blez       $v0, .L80030D2C
/* 318BC 80030CBC 00000000 */   nop
/* 318C0 80030CC0 8C680098 */  lw         $t0, 0x98($v1)
/* 318C4 80030CC4 00025023 */  negu       $t2, $v0
/* 318C8 80030CC8 31090010 */  andi       $t1, $t0, 0x10
/* 318CC 80030CCC 11200017 */  beqz       $t1, .L80030D2C
/* 318D0 80030CD0 00000000 */   nop
/* 318D4 80030CD4 448A2000 */  mtc1       $t2, $f4
/* 318D8 80030CD8 3C013FE0 */  lui        $at, 0x3fe0
/* 318DC 80030CDC 468021A0 */  cvt.s.w    $f6, $f4
/* 318E0 80030CE0 44815800 */  mtc1       $at, $f11
/* 318E4 80030CE4 44805000 */  mtc1       $zero, $f10
/* 318E8 80030CE8 46003221 */  cvt.d.s    $f8, $f6
/* 318EC 80030CEC 462A4402 */  mul.d      $f16, $f8, $f10
/* 318F0 80030CF0 8C6C0080 */  lw         $t4, 0x80($v1)
/* 318F4 80030CF4 00000000 */  nop
/* 318F8 80030CF8 398D0020 */  xori       $t5, $t4, 0x20
/* 318FC 80030CFC AC6D0080 */  sw         $t5, 0x80($v1)
/* 31900 80030D00 444BF800 */  cfc1       $t3, $31
/* 31904 80030D04 00000000 */  nop
/* 31908 80030D08 35610003 */  ori        $at, $t3, 3
/* 3190C 80030D0C 38210002 */  xori       $at, $at, 2
/* 31910 80030D10 44C1F800 */  ctc1       $at, $31
/* 31914 80030D14 00000000 */  nop
/* 31918 80030D18 462084A4 */  cvt.w.d    $f18, $f16
/* 3191C 80030D1C E47200F0 */  swc1       $f18, 0xf0($v1)
/* 31920 80030D20 44CBF800 */  ctc1       $t3, $31
/* 31924 80030D24 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 31928 80030D28 00000000 */  nop
.L80030D2C:
/* 3192C 80030D2C 04410018 */  bgez       $v0, .L80030D90
/* 31930 80030D30 8FBF0014 */   lw        $ra, 0x14($sp)
/* 31934 80030D34 8C6E0098 */  lw         $t6, 0x98($v1)
/* 31938 80030D38 0002C023 */  negu       $t8, $v0
/* 3193C 80030D3C 31CF0020 */  andi       $t7, $t6, 0x20
/* 31940 80030D40 11E00013 */  beqz       $t7, .L80030D90
/* 31944 80030D44 8FBF0014 */   lw        $ra, 0x14($sp)
/* 31948 80030D48 44982000 */  mtc1       $t8, $f4
/* 3194C 80030D4C 3C01800F */  lui        $at, %hi(D_800EB920)
/* 31950 80030D50 468021A0 */  cvt.s.w    $f6, $f4
/* 31954 80030D54 C42BB920 */  lwc1       $f11, %lo(D_800EB920)($at)
/* 31958 80030D58 C42AB924 */  lwc1       $f10, -0x46dc($at)
/* 3195C 80030D5C 46003221 */  cvt.d.s    $f8, $f6
/* 31960 80030D60 462A4402 */  mul.d      $f16, $f8, $f10
/* 31964 80030D64 4459F800 */  cfc1       $t9, $31
/* 31968 80030D68 00000000 */  nop
/* 3196C 80030D6C 37210003 */  ori        $at, $t9, 3
/* 31970 80030D70 38210002 */  xori       $at, $at, 2
/* 31974 80030D74 44C1F800 */  ctc1       $at, $31
/* 31978 80030D78 00000000 */  nop
/* 3197C 80030D7C 462084A4 */  cvt.w.d    $f18, $f16
/* 31980 80030D80 44D9F800 */  ctc1       $t9, $31
/* 31984 80030D84 E47200F0 */  swc1       $f18, 0xf0($v1)
/* 31988 80030D88 00000000 */  nop
/* 3198C 80030D8C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80030D90:
/* 31990 80030D90 27BD0020 */  addiu      $sp, $sp, 0x20
/* 31994 80030D94 03E00008 */  jr         $ra
/* 31998 80030D98 00000000 */   nop
