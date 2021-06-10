glabel func_800B2FE0
/* B3BE0 800B2FE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B3BE4 800B2FE4 E7AC0038 */  swc1       $f12, 0x38($sp)
/* B3BE8 800B2FE8 27AE0038 */  addiu      $t6, $sp, 0x38
/* B3BEC 800B2FEC 8DCF0000 */  lw         $t7, ($t6)
/* B3BF0 800B2FF0 AFAF0004 */  sw         $t7, 4($sp)
/* B3BF4 800B2FF4 8FB80004 */  lw         $t8, 4($sp)
/* B3BF8 800B2FF8 0018CD83 */  sra        $t9, $t8, 0x16
/* B3BFC 800B2FFC AFB90000 */  sw         $t9, ($sp)
/* B3C00 800B3000 8FA80000 */  lw         $t0, ($sp)
/* B3C04 800B3004 310901FF */  andi       $t1, $t0, 0x1ff
/* B3C08 800B3008 AFA90000 */  sw         $t1, ($sp)
/* B3C0C 800B300C 8FAA0000 */  lw         $t2, ($sp)
/* B3C10 800B3010 294100FF */  slti       $at, $t2, 0xff
/* B3C14 800B3014 10200026 */  beqz       $at, .L800B30B0
/* B3C18 800B3018 00000000 */   nop
/* B3C1C 800B301C C7A40038 */  lwc1       $f4, 0x38($sp)
/* B3C20 800B3020 460021A1 */  cvt.d.s    $f6, $f4
/* B3C24 800B3024 F7A60030 */  sdc1       $f6, 0x30($sp)
/* B3C28 800B3028 8FAB0000 */  lw         $t3, ($sp)
/* B3C2C 800B302C 296100E6 */  slti       $at, $t3, 0xe6
/* B3C30 800B3030 1420001D */  bnez       $at, .L800B30A8
/* B3C34 800B3034 00000000 */   nop
/* B3C38 800B3038 D7A80030 */  ldc1       $f8, 0x30($sp)
/* B3C3C 800B303C 46284282 */  mul.d      $f10, $f8, $f8
/* B3C40 800B3040 F7AA0028 */  sdc1       $f10, 0x28($sp)
/* B3C44 800B3044 3C0C800F */  lui        $t4, %hi(D_800EE670)
/* B3C48 800B3048 258CE670 */  addiu      $t4, $t4, %lo(D_800EE670)
/* B3C4C 800B304C D5900020 */  ldc1       $f16, 0x20($t4)
/* B3C50 800B3050 D7B20028 */  ldc1       $f18, 0x28($sp)
/* B3C54 800B3054 D5860018 */  ldc1       $f6, 0x18($t4)
/* B3C58 800B3058 46328102 */  mul.d      $f4, $f16, $f18
/* B3C5C 800B305C D5900010 */  ldc1       $f16, 0x10($t4)
/* B3C60 800B3060 46262200 */  add.d      $f8, $f4, $f6
/* B3C64 800B3064 46324282 */  mul.d      $f10, $f8, $f18
/* B3C68 800B3068 D5880008 */  ldc1       $f8, 8($t4)
/* B3C6C 800B306C 46305100 */  add.d      $f4, $f10, $f16
/* B3C70 800B3070 46322182 */  mul.d      $f6, $f4, $f18
/* B3C74 800B3074 46264280 */  add.d      $f10, $f8, $f6
/* B3C78 800B3078 F7AA0020 */  sdc1       $f10, 0x20($sp)
/* B3C7C 800B307C D7B00030 */  ldc1       $f16, 0x30($sp)
/* B3C80 800B3080 D7A40028 */  ldc1       $f4, 0x28($sp)
/* B3C84 800B3084 D7A80020 */  ldc1       $f8, 0x20($sp)
/* B3C88 800B3088 46248482 */  mul.d      $f18, $f16, $f4
/* B3C8C 800B308C 00000000 */  nop
/* B3C90 800B3090 46289182 */  mul.d      $f6, $f18, $f8
/* B3C94 800B3094 46303280 */  add.d      $f10, $f6, $f16
/* B3C98 800B3098 F7AA0008 */  sdc1       $f10, 8($sp)
/* B3C9C 800B309C D7A40008 */  ldc1       $f4, 8($sp)
/* B3CA0 800B30A0 1000006B */  b          .L800B3250
/* B3CA4 800B30A4 46202020 */   cvt.s.d   $f0, $f4
.L800B30A8:
/* B3CA8 800B30A8 10000069 */  b          .L800B3250
/* B3CAC 800B30AC C7A00038 */   lwc1      $f0, 0x38($sp)
.L800B30B0:
/* B3CB0 800B30B0 8FAD0000 */  lw         $t5, ($sp)
/* B3CB4 800B30B4 29A10136 */  slti       $at, $t5, 0x136
/* B3CB8 800B30B8 10200058 */  beqz       $at, .L800B321C
/* B3CBC 800B30BC 00000000 */   nop
/* B3CC0 800B30C0 C7B20038 */  lwc1       $f18, 0x38($sp)
/* B3CC4 800B30C4 46009221 */  cvt.d.s    $f8, $f18
/* B3CC8 800B30C8 F7A80030 */  sdc1       $f8, 0x30($sp)
/* B3CCC 800B30CC 3C01800F */  lui        $at, %hi(D_800EE698)
/* B3CD0 800B30D0 D430E698 */  ldc1       $f16, %lo(D_800EE698)($at)
/* B3CD4 800B30D4 D7A60030 */  ldc1       $f6, 0x30($sp)
/* B3CD8 800B30D8 46303282 */  mul.d      $f10, $f6, $f16
/* B3CDC 800B30DC F7AA0018 */  sdc1       $f10, 0x18($sp)
/* B3CE0 800B30E0 D7A40018 */  ldc1       $f4, 0x18($sp)
/* B3CE4 800B30E4 44809800 */  mtc1       $zero, $f19
/* B3CE8 800B30E8 44809000 */  mtc1       $zero, $f18
/* B3CEC 800B30EC 00000000 */  nop
/* B3CF0 800B30F0 4624903E */  c.le.d     $f18, $f4
/* B3CF4 800B30F4 00000000 */  nop
/* B3CF8 800B30F8 45000009 */  bc1f       .L800B3120
/* B3CFC 800B30FC 00000000 */   nop
/* B3D00 800B3100 3C013FE0 */  lui        $at, 0x3fe0
/* B3D04 800B3104 44814800 */  mtc1       $at, $f9
/* B3D08 800B3108 44804000 */  mtc1       $zero, $f8
/* B3D0C 800B310C 00000000 */  nop
/* B3D10 800B3110 46282180 */  add.d      $f6, $f4, $f8
/* B3D14 800B3114 4620340D */  trunc.w.d  $f16, $f6
/* B3D18 800B3118 10000009 */  b          .L800B3140
/* B3D1C 800B311C E7B00014 */   swc1      $f16, 0x14($sp)
.L800B3120:
/* B3D20 800B3120 3C013FE0 */  lui        $at, 0x3fe0
/* B3D24 800B3124 44819800 */  mtc1       $at, $f19
/* B3D28 800B3128 D7AA0018 */  ldc1       $f10, 0x18($sp)
/* B3D2C 800B312C 44809000 */  mtc1       $zero, $f18
/* B3D30 800B3130 00000000 */  nop
/* B3D34 800B3134 46325101 */  sub.d      $f4, $f10, $f18
/* B3D38 800B3138 4620220D */  trunc.w.d  $f8, $f4
/* B3D3C 800B313C E7A80014 */  swc1       $f8, 0x14($sp)
.L800B3140:
/* B3D40 800B3140 8FB80014 */  lw         $t8, 0x14($sp)
/* B3D44 800B3144 44983000 */  mtc1       $t8, $f6
/* B3D48 800B3148 00000000 */  nop
/* B3D4C 800B314C 46803421 */  cvt.d.w    $f16, $f6
/* B3D50 800B3150 F7B00018 */  sdc1       $f16, 0x18($sp)
/* B3D54 800B3154 3C01800F */  lui        $at, %hi(D_800EE6A0)
/* B3D58 800B3158 D432E6A0 */  ldc1       $f18, %lo(D_800EE6A0)($at)
/* B3D5C 800B315C D7AA0018 */  ldc1       $f10, 0x18($sp)
/* B3D60 800B3160 D7A80030 */  ldc1       $f8, 0x30($sp)
/* B3D64 800B3164 46325102 */  mul.d      $f4, $f10, $f18
/* B3D68 800B3168 46244181 */  sub.d      $f6, $f8, $f4
/* B3D6C 800B316C F7A60030 */  sdc1       $f6, 0x30($sp)
/* B3D70 800B3170 3C01800F */  lui        $at, %hi(D_800EE6A8)
/* B3D74 800B3174 D42AE6A8 */  ldc1       $f10, %lo(D_800EE6A8)($at)
/* B3D78 800B3178 D7B00018 */  ldc1       $f16, 0x18($sp)
/* B3D7C 800B317C D7A80030 */  ldc1       $f8, 0x30($sp)
/* B3D80 800B3180 462A8482 */  mul.d      $f18, $f16, $f10
/* B3D84 800B3184 46324101 */  sub.d      $f4, $f8, $f18
/* B3D88 800B3188 F7A40030 */  sdc1       $f4, 0x30($sp)
/* B3D8C 800B318C D7A60030 */  ldc1       $f6, 0x30($sp)
/* B3D90 800B3190 46263402 */  mul.d      $f16, $f6, $f6
/* B3D94 800B3194 F7B00028 */  sdc1       $f16, 0x28($sp)
/* B3D98 800B3198 3C19800F */  lui        $t9, %hi(D_800EE670)
/* B3D9C 800B319C 2739E670 */  addiu      $t9, $t9, %lo(D_800EE670)
/* B3DA0 800B31A0 D72A0020 */  ldc1       $f10, 0x20($t9)
/* B3DA4 800B31A4 D7A80028 */  ldc1       $f8, 0x28($sp)
/* B3DA8 800B31A8 D7240018 */  ldc1       $f4, 0x18($t9)
/* B3DAC 800B31AC 46285482 */  mul.d      $f18, $f10, $f8
/* B3DB0 800B31B0 D72A0010 */  ldc1       $f10, 0x10($t9)
/* B3DB4 800B31B4 46249180 */  add.d      $f6, $f18, $f4
/* B3DB8 800B31B8 46283402 */  mul.d      $f16, $f6, $f8
/* B3DBC 800B31BC D7260008 */  ldc1       $f6, 8($t9)
/* B3DC0 800B31C0 462A8480 */  add.d      $f18, $f16, $f10
/* B3DC4 800B31C4 46289102 */  mul.d      $f4, $f18, $f8
/* B3DC8 800B31C8 46243400 */  add.d      $f16, $f6, $f4
/* B3DCC 800B31CC F7B00020 */  sdc1       $f16, 0x20($sp)
/* B3DD0 800B31D0 D7AA0030 */  ldc1       $f10, 0x30($sp)
/* B3DD4 800B31D4 D7B20028 */  ldc1       $f18, 0x28($sp)
/* B3DD8 800B31D8 D7A60020 */  ldc1       $f6, 0x20($sp)
/* B3DDC 800B31DC 46325202 */  mul.d      $f8, $f10, $f18
/* B3DE0 800B31E0 00000000 */  nop
/* B3DE4 800B31E4 46264102 */  mul.d      $f4, $f8, $f6
/* B3DE8 800B31E8 462A2400 */  add.d      $f16, $f4, $f10
/* B3DEC 800B31EC F7B00008 */  sdc1       $f16, 8($sp)
/* B3DF0 800B31F0 8FA80014 */  lw         $t0, 0x14($sp)
/* B3DF4 800B31F4 31090001 */  andi       $t1, $t0, 1
/* B3DF8 800B31F8 15200004 */  bnez       $t1, .L800B320C
/* B3DFC 800B31FC 00000000 */   nop
/* B3E00 800B3200 D7B20008 */  ldc1       $f18, 8($sp)
/* B3E04 800B3204 10000012 */  b          .L800B3250
/* B3E08 800B3208 46209020 */   cvt.s.d   $f0, $f18
.L800B320C:
/* B3E0C 800B320C D7A80008 */  ldc1       $f8, 8($sp)
/* B3E10 800B3210 46204020 */  cvt.s.d    $f0, $f8
/* B3E14 800B3214 1000000E */  b          .L800B3250
/* B3E18 800B3218 46000007 */   neg.s     $f0, $f0
.L800B321C:
/* B3E1C 800B321C C7A60038 */  lwc1       $f6, 0x38($sp)
/* B3E20 800B3220 46063032 */  c.eq.s     $f6, $f6
/* B3E24 800B3224 00000000 */  nop
/* B3E28 800B3228 45010004 */  bc1t       .L800B323C
/* B3E2C 800B322C 00000000 */   nop
/* B3E30 800B3230 3C01800F */  lui        $at, %hi(D_800EE9A0)
/* B3E34 800B3234 10000006 */  b          .L800B3250
/* B3E38 800B3238 C420E9A0 */   lwc1      $f0, %lo(D_800EE9A0)($at)
.L800B323C:
/* B3E3C 800B323C 3C01800F */  lui        $at, %hi(D_800EE6B0)
/* B3E40 800B3240 10000003 */  b          .L800B3250
/* B3E44 800B3244 C420E6B0 */   lwc1      $f0, %lo(D_800EE6B0)($at)
/* B3E48 800B3248 10000001 */  b          .L800B3250
/* B3E4C 800B324C 00000000 */   nop
.L800B3250:
/* B3E50 800B3250 03E00008 */  jr         $ra
/* B3E54 800B3254 27BD0038 */   addiu     $sp, $sp, 0x38
/* B3E58 800B3258 00000000 */  nop
/* B3E5C 800B325C 00000000 */  nop
