glabel func_80039134
/* 39D34 80039134 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 39D38 80039138 AFB00018 */  sw         $s0, 0x18($sp)
/* 39D3C 8003913C 3090FFFF */  andi       $s0, $a0, 0xffff
/* 39D40 80039140 AFBF001C */  sw         $ra, 0x1c($sp)
/* 39D44 80039144 AFA40030 */  sw         $a0, 0x30($sp)
/* 39D48 80039148 0C00E325 */  jal        func_80038C94
/* 39D4C 8003914C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 39D50 80039150 00107080 */  sll        $t6, $s0, 2
/* 39D54 80039154 01D07023 */  subu       $t6, $t6, $s0
/* 39D58 80039158 000E7080 */  sll        $t6, $t6, 2
/* 39D5C 8003915C 01D07021 */  addu       $t6, $t6, $s0
/* 39D60 80039160 000E7080 */  sll        $t6, $t6, 2
/* 39D64 80039164 01D07023 */  subu       $t6, $t6, $s0
/* 39D68 80039168 3C0F800F */  lui        $t7, %hi(gActors)
/* 39D6C 8003916C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 39D70 80039170 000E70C0 */  sll        $t6, $t6, 3
/* 39D74 80039174 01CF1821 */  addu       $v1, $t6, $t7
/* 39D78 80039178 946200D0 */  lhu        $v0, 0xd0($v1)
/* 39D7C 8003917C 24010001 */  addiu      $at, $zero, 1
/* 39D80 80039180 10400005 */  beqz       $v0, .L80039198
/* 39D84 80039184 3204FFFF */   andi      $a0, $s0, 0xffff
/* 39D88 80039188 10410016 */  beq        $v0, $at, .L800391E4
/* 39D8C 8003918C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 39D90 80039190 1000003C */  b          .L80039284
/* 39D94 80039194 00000000 */   nop
.L80039198:
/* 39D98 80039198 0C00E387 */  jal        func_80038E1C
/* 39D9C 8003919C AFA30024 */   sw        $v1, 0x24($sp)
/* 39DA0 800391A0 8FA30024 */  lw         $v1, 0x24($sp)
/* 39DA4 800391A4 3C09800D */  lui        $t1, %hi(D_800D2504)
/* 39DA8 800391A8 946400D8 */  lhu        $a0, 0xd8($v1)
/* 39DAC 800391AC 25292504 */  addiu      $t1, $t1, %lo(D_800D2504)
/* 39DB0 800391B0 0004C040 */  sll        $t8, $a0, 1
/* 39DB4 800391B4 3319FFFF */  andi       $t9, $t8, 0xffff
/* 39DB8 800391B8 00194080 */  sll        $t0, $t9, 2
/* 39DBC 800391BC 01091021 */  addu       $v0, $t0, $t1
/* 39DC0 800391C0 8C4A0000 */  lw         $t2, ($v0)
/* 39DC4 800391C4 8C4B0004 */  lw         $t3, 4($v0)
/* 39DC8 800391C8 448A2000 */  mtc1       $t2, $f4
/* 39DCC 800391CC 448B4000 */  mtc1       $t3, $f8
/* 39DD0 800391D0 468021A0 */  cvt.s.w    $f6, $f4
/* 39DD4 800391D4 468042A0 */  cvt.s.w    $f10, $f8
/* 39DD8 800391D8 E4660114 */  swc1       $f6, 0x114($v1)
/* 39DDC 800391DC E46A0140 */  swc1       $f10, 0x140($v1)
/* 39DE0 800391E0 3204FFFF */  andi       $a0, $s0, 0xffff
.L800391E4:
/* 39DE4 800391E4 0C00E1C1 */  jal        func_80038704
/* 39DE8 800391E8 AFA30024 */   sw        $v1, 0x24($sp)
/* 39DEC 800391EC 8FA30024 */  lw         $v1, 0x24($sp)
/* 39DF0 800391F0 444CF800 */  cfc1       $t4, $31
/* 39DF4 800391F4 24050001 */  addiu      $a1, $zero, 1
/* 39DF8 800391F8 44C5F800 */  ctc1       $a1, $31
/* 39DFC 800391FC C4700114 */  lwc1       $f16, 0x114($v1)
/* 39E00 80039200 3204FFFF */  andi       $a0, $s0, 0xffff
/* 39E04 80039204 460084A4 */  cvt.w.s    $f18, $f16
/* 39E08 80039208 3C014F00 */  lui        $at, 0x4f00
/* 39E0C 8003920C 4445F800 */  cfc1       $a1, $31
/* 39E10 80039210 00000000 */  nop
/* 39E14 80039214 30A50078 */  andi       $a1, $a1, 0x78
/* 39E18 80039218 10A00012 */  beqz       $a1, .L80039264
/* 39E1C 8003921C 00000000 */   nop
/* 39E20 80039220 44819000 */  mtc1       $at, $f18
/* 39E24 80039224 24050001 */  addiu      $a1, $zero, 1
/* 39E28 80039228 46128481 */  sub.s      $f18, $f16, $f18
/* 39E2C 8003922C 3C018000 */  lui        $at, 0x8000
/* 39E30 80039230 44C5F800 */  ctc1       $a1, $31
/* 39E34 80039234 00000000 */  nop
/* 39E38 80039238 460094A4 */  cvt.w.s    $f18, $f18
/* 39E3C 8003923C 4445F800 */  cfc1       $a1, $31
/* 39E40 80039240 00000000 */  nop
/* 39E44 80039244 30A50078 */  andi       $a1, $a1, 0x78
/* 39E48 80039248 14A00004 */  bnez       $a1, .L8003925C
/* 39E4C 8003924C 00000000 */   nop
/* 39E50 80039250 44059000 */  mfc1       $a1, $f18
/* 39E54 80039254 10000007 */  b          .L80039274
/* 39E58 80039258 00A12825 */   or        $a1, $a1, $at
.L8003925C:
/* 39E5C 8003925C 10000005 */  b          .L80039274
/* 39E60 80039260 2405FFFF */   addiu     $a1, $zero, -1
.L80039264:
/* 39E64 80039264 44059000 */  mfc1       $a1, $f18
/* 39E68 80039268 00000000 */  nop
/* 39E6C 8003926C 04A0FFFB */  bltz       $a1, .L8003925C
/* 39E70 80039270 00000000 */   nop
.L80039274:
/* 39E74 80039274 44CCF800 */  ctc1       $t4, $31
/* 39E78 80039278 30ADFFFF */  andi       $t5, $a1, 0xffff
/* 39E7C 8003927C 0C00E21A */  jal        func_80038868
/* 39E80 80039280 01A02825 */   or        $a1, $t5, $zero
.L80039284:
/* 39E84 80039284 0C00E347 */  jal        func_80038D1C
/* 39E88 80039288 3204FFFF */   andi      $a0, $s0, 0xffff
/* 39E8C 8003928C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 39E90 80039290 8FB00018 */  lw         $s0, 0x18($sp)
/* 39E94 80039294 03E00008 */  jr         $ra
/* 39E98 80039298 27BD0030 */   addiu     $sp, $sp, 0x30
