glabel func_800330A4
/* 33CA4 800330A4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 33CA8 800330A8 24090198 */  addiu      $t1, $zero, 0x198
/* 33CAC 800330AC 01C90019 */  multu      $t6, $t1
/* 33CB0 800330B0 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 33CB4 800330B4 3C08800F */  lui        $t0, %hi(gActors)
/* 33CB8 800330B8 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 33CBC 800330BC 3C01800F */  lui        $at, 0x800f
/* 33CC0 800330C0 44876000 */  mtc1       $a3, $f12
/* 33CC4 800330C4 AFA60008 */  sw         $a2, 8($sp)
/* 33CC8 800330C8 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 33CCC 800330CC 03003025 */  or         $a2, $t8, $zero
/* 33CD0 800330D0 AFA40000 */  sw         $a0, ($sp)
/* 33CD4 800330D4 AFA50004 */  sw         $a1, 4($sp)
/* 33CD8 800330D8 0000C812 */  mflo       $t9
/* 33CDC 800330DC 01191021 */  addu       $v0, $t0, $t9
/* 33CE0 800330E0 8C4C0080 */  lw         $t4, 0x80($v0)
/* 33CE4 800330E4 01E90019 */  multu      $t7, $t1
/* 33CE8 800330E8 318D0020 */  andi       $t5, $t4, 0x20
/* 33CEC 800330EC 00005012 */  mflo       $t2
/* 33CF0 800330F0 010A1821 */  addu       $v1, $t0, $t2
/* 33CF4 800330F4 C46400C4 */  lwc1       $f4, 0xc4($v1)
/* 33CF8 800330F8 00000000 */  nop
/* 33CFC 800330FC E44400C4 */  swc1       $f4, 0xc4($v0)
/* 33D00 80033100 C46600C4 */  lwc1       $f6, 0xc4($v1)
/* 33D04 80033104 C42AB944 */  lwc1       $f10, -0x46bc($at)
/* 33D08 80033108 C42BB940 */  lwc1       $f11, -0x46c0($at)
/* 33D0C 8003310C 46003221 */  cvt.d.s    $f8, $f6
/* 33D10 80033110 00000000 */  nop
/* 33D14 80033114 462A4403 */  div.d      $f16, $f8, $f10
/* 33D18 80033118 444BF800 */  cfc1       $t3, $31
/* 33D1C 8003311C 00000000 */  nop
/* 33D20 80033120 35610003 */  ori        $at, $t3, 3
/* 33D24 80033124 38210002 */  xori       $at, $at, 2
/* 33D28 80033128 44C1F800 */  ctc1       $at, $31
/* 33D2C 8003312C 00000000 */  nop
/* 33D30 80033130 462084A4 */  cvt.w.d    $f18, $f16
/* 33D34 80033134 44079000 */  mfc1       $a3, $f18
/* 33D38 80033138 44CBF800 */  ctc1       $t3, $31
/* 33D3C 8003313C 11A00006 */  beqz       $t5, .L80033158
/* 33D40 80033140 00C72021 */   addu      $a0, $a2, $a3
/* 33D44 80033144 00F82023 */  subu       $a0, $a3, $t8
/* 33D48 80033148 24840200 */  addiu      $a0, $a0, 0x200
/* 33D4C 8003314C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 33D50 80033150 10000003 */  b          .L80033160
/* 33D54 80033154 01C02025 */   or        $a0, $t6, $zero
.L80033158:
/* 33D58 80033158 308FFFFF */  andi       $t7, $a0, 0xffff
/* 33D5C 8003315C 01E02025 */  or         $a0, $t7, $zero
.L80033160:
/* 33D60 80033160 3C06800C */  lui        $a2, %hi(D_800BCCD0)
/* 33D64 80033164 309803FF */  andi       $t8, $a0, 0x3ff
/* 33D68 80033168 24C6CCD0 */  addiu      $a2, $a2, %lo(D_800BCCD0)
/* 33D6C 8003316C 0018C880 */  sll        $t9, $t8, 2
/* 33D70 80033170 00D95021 */  addu       $t2, $a2, $t9
/* 33D74 80033174 C5440000 */  lwc1       $f4, ($t2)
/* 33D78 80033178 3C014780 */  lui        $at, 0x4780
/* 33D7C 8003317C 460C2182 */  mul.s      $f6, $f4, $f12
/* 33D80 80033180 44811000 */  mtc1       $at, $f2
/* 33D84 80033184 248FFF00 */  addiu      $t7, $a0, -0x100
/* 33D88 80033188 31F803FF */  andi       $t8, $t7, 0x3ff
/* 33D8C 8003318C 46023002 */  mul.s      $f0, $f6, $f2
/* 33D90 80033190 0018C880 */  sll        $t9, $t8, 2
/* 33D94 80033194 00D95021 */  addu       $t2, $a2, $t9
/* 33D98 80033198 C54A0000 */  lwc1       $f10, ($t2)
/* 33D9C 8003319C 444CF800 */  cfc1       $t4, $31
/* 33DA0 800331A0 8C6B0088 */  lw         $t3, 0x88($v1)
/* 33DA4 800331A4 35810003 */  ori        $at, $t4, 3
/* 33DA8 800331A8 38210002 */  xori       $at, $at, 2
/* 33DAC 800331AC 44C1F800 */  ctc1       $at, $31
/* 33DB0 800331B0 00000000 */  nop
/* 33DB4 800331B4 46000224 */  cvt.w.s    $f8, $f0
/* 33DB8 800331B8 44CCF800 */  ctc1       $t4, $31
/* 33DBC 800331BC 440D4000 */  mfc1       $t5, $f8
/* 33DC0 800331C0 460C5402 */  mul.s      $f16, $f10, $f12
/* 33DC4 800331C4 016D7021 */  addu       $t6, $t3, $t5
/* 33DC8 800331C8 AC4E0088 */  sw         $t6, 0x88($v0)
/* 33DCC 800331CC 8C6C008C */  lw         $t4, 0x8c($v1)
/* 33DD0 800331D0 46028002 */  mul.s      $f0, $f16, $f2
/* 33DD4 800331D4 444BF800 */  cfc1       $t3, $31
/* 33DD8 800331D8 00000000 */  nop
/* 33DDC 800331DC 35610003 */  ori        $at, $t3, 3
/* 33DE0 800331E0 38210002 */  xori       $at, $at, 2
/* 33DE4 800331E4 44C1F800 */  ctc1       $at, $31
/* 33DE8 800331E8 00000000 */  nop
/* 33DEC 800331EC 460004A4 */  cvt.w.s    $f18, $f0
/* 33DF0 800331F0 440D9000 */  mfc1       $t5, $f18
/* 33DF4 800331F4 44CBF800 */  ctc1       $t3, $31
/* 33DF8 800331F8 018D7021 */  addu       $t6, $t4, $t5
/* 33DFC 800331FC 03E00008 */  jr         $ra
/* 33E00 80033200 AC4E008C */   sw        $t6, 0x8c($v0)
