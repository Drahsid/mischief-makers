glabel func_8005A320
/* 5AF20 8005A320 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5AF24 8005A324 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5AF28 8005A328 AFA40020 */  sw         $a0, 0x20($sp)
/* 5AF2C 8005A32C AFA60028 */  sw         $a2, 0x28($sp)
/* 5AF30 8005A330 8CAF0008 */  lw         $t7, 8($a1)
/* 5AF34 8005A334 8CB9000C */  lw         $t9, 0xc($a1)
/* 5AF38 8005A338 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5AF3C 8005A33C 44876000 */  mtc1       $a3, $f12
/* 5AF40 8005A340 25F8FFFF */  addiu      $t8, $t7, -1
/* 5AF44 8005A344 01C02025 */  or         $a0, $t6, $zero
/* 5AF48 8005A348 17200003 */  bnez       $t9, .L8005A358
/* 5AF4C 8005A34C ACB80008 */   sw        $t8, 8($a1)
/* 5AF50 8005A350 2408018E */  addiu      $t0, $zero, 0x18e
/* 5AF54 8005A354 ACA8000C */  sw         $t0, 0xc($a1)
.L8005A358:
/* 5AF58 8005A358 8FA90028 */  lw         $t1, 0x28($sp)
/* 5AF5C 8005A35C 8FA60028 */  lw         $a2, 0x28($sp)
/* 5AF60 8005A360 15200008 */  bnez       $t1, .L8005A384
/* 5AF64 8005A364 240A0014 */   addiu     $t2, $zero, 0x14
/* 5AF68 8005A368 44066000 */  mfc1       $a2, $f12
/* 5AF6C 8005A36C 24070014 */  addiu      $a3, $zero, 0x14
/* 5AF70 8005A370 0C0167CC */  jal        func_80059F30
/* 5AF74 8005A374 E7AC002C */   swc1      $f12, 0x2c($sp)
/* 5AF78 8005A378 C7AC002C */  lwc1       $f12, 0x2c($sp)
/* 5AF7C 8005A37C 10000007 */  b          .L8005A39C
/* 5AF80 8005A380 3045FFFF */   andi      $a1, $v0, 0xffff
.L8005A384:
/* 5AF84 8005A384 44076000 */  mfc1       $a3, $f12
/* 5AF88 8005A388 AFAA0010 */  sw         $t2, 0x10($sp)
/* 5AF8C 8005A38C 0C01681A */  jal        func_8005A068
/* 5AF90 8005A390 E7AC002C */   swc1      $f12, 0x2c($sp)
/* 5AF94 8005A394 C7AC002C */  lwc1       $f12, 0x2c($sp)
/* 5AF98 8005A398 3045FFFF */  andi       $a1, $v0, 0xffff
.L8005A39C:
/* 5AF9C 8005A39C 14400003 */  bnez       $v0, .L8005A3AC
/* 5AFA0 8005A3A0 3C06800C */   lui       $a2, 0x800c
/* 5AFA4 8005A3A4 1000003E */  b          .L8005A4A0
/* 5AFA8 8005A3A8 00A01025 */   or        $v0, $a1, $zero
.L8005A3AC:
/* 5AFAC 8005A3AC 8FA40028 */  lw         $a0, 0x28($sp)
/* 5AFB0 8005A3B0 3C014000 */  lui        $at, 0x4000
/* 5AFB4 8005A3B4 44811000 */  mtc1       $at, $f2
/* 5AFB8 8005A3B8 44802000 */  mtc1       $zero, $f4
/* 5AFBC 8005A3BC 24C6CCD0 */  addiu      $a2, $a2, -0x3330
/* 5AFC0 8005A3C0 460C2002 */  mul.s      $f0, $f4, $f12
/* 5AFC4 8005A3C4 00055880 */  sll        $t3, $a1, 2
/* 5AFC8 8005A3C8 01655823 */  subu       $t3, $t3, $a1
/* 5AFCC 8005A3CC 000B5880 */  sll        $t3, $t3, 2
/* 5AFD0 8005A3D0 01655821 */  addu       $t3, $t3, $a1
/* 5AFD4 8005A3D4 000B5880 */  sll        $t3, $t3, 2
/* 5AFD8 8005A3D8 01655823 */  subu       $t3, $t3, $a1
/* 5AFDC 8005A3DC 3C0C800F */  lui        $t4, %hi(gActors)
/* 5AFE0 8005A3E0 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 5AFE4 8005A3E4 000B58C0 */  sll        $t3, $t3, 3
/* 5AFE8 8005A3E8 016C1821 */  addu       $v1, $t3, $t4
/* 5AFEC 8005A3EC 04810004 */  bgez       $a0, .L8005A400
/* 5AFF0 8005A3F0 00046C03 */   sra       $t5, $a0, 0x10
/* 5AFF4 8005A3F4 3401FFFF */  ori        $at, $zero, 0xffff
/* 5AFF8 8005A3F8 00240821 */  addu       $at, $at, $a0
/* 5AFFC 8005A3FC 00016C03 */  sra        $t5, $at, 0x10
.L8005A400:
/* 5B000 8005A400 25AEFF00 */  addiu      $t6, $t5, -0x100
/* 5B004 8005A404 31CF03FF */  andi       $t7, $t6, 0x3ff
/* 5B008 8005A408 000FC080 */  sll        $t8, $t7, 2
/* 5B00C 8005A40C 00D8C821 */  addu       $t9, $a2, $t8
/* 5B010 8005A410 C7260000 */  lwc1       $f6, ($t9)
/* 5B014 8005A414 31AA03FF */  andi       $t2, $t5, 0x3ff
/* 5B018 8005A418 46003202 */  mul.s      $f8, $f6, $f0
/* 5B01C 8005A41C 000A5880 */  sll        $t3, $t2, 2
/* 5B020 8005A420 00CB6021 */  addu       $t4, $a2, $t3
/* 5B024 8005A424 C5900000 */  lwc1       $f16, ($t4)
/* 5B028 8005A428 4448F800 */  cfc1       $t0, $31
/* 5B02C 8005A42C 00A01025 */  or         $v0, $a1, $zero
/* 5B030 8005A430 35010003 */  ori        $at, $t0, 3
/* 5B034 8005A434 38210002 */  xori       $at, $at, 2
/* 5B038 8005A438 44C1F800 */  ctc1       $at, $31
/* 5B03C 8005A43C 00000000 */  nop
/* 5B040 8005A440 460042A4 */  cvt.w.s    $f10, $f8
/* 5B044 8005A444 44C8F800 */  ctc1       $t0, $31
/* 5B048 8005A448 44095000 */  mfc1       $t1, $f10
/* 5B04C 8005A44C 46000487 */  neg.s      $f18, $f0
/* 5B050 8005A450 46128102 */  mul.s      $f4, $f16, $f18
/* 5B054 8005A454 C472011C */  lwc1       $f18, 0x11c($v1)
/* 5B058 8005A458 AC6900EC */  sw         $t1, 0xec($v1)
/* 5B05C 8005A45C 444DF800 */  cfc1       $t5, $31
/* 5B060 8005A460 00000000 */  nop
/* 5B064 8005A464 35A10003 */  ori        $at, $t5, 3
/* 5B068 8005A468 38210002 */  xori       $at, $at, 2
/* 5B06C 8005A46C 44C1F800 */  ctc1       $at, $31
/* 5B070 8005A470 3C014080 */  lui        $at, 0x4080
/* 5B074 8005A474 460021A4 */  cvt.w.s    $f6, $f4
/* 5B078 8005A478 44815000 */  mtc1       $at, $f10
/* 5B07C 8005A47C 44CDF800 */  ctc1       $t5, $31
/* 5B080 8005A480 440E3000 */  mfc1       $t6, $f6
/* 5B084 8005A484 46026203 */  div.s      $f8, $f12, $f2
/* 5B088 8005A488 46029102 */  mul.s      $f4, $f18, $f2
/* 5B08C 8005A48C AC6E00F0 */  sw         $t6, 0xf0($v1)
/* 5B090 8005A490 E464011C */  swc1       $f4, 0x11c($v1)
/* 5B094 8005A494 460A6403 */  div.s      $f16, $f12, $f10
/* 5B098 8005A498 E46800B4 */  swc1       $f8, 0xb4($v1)
/* 5B09C 8005A49C E47000B8 */  swc1       $f16, 0xb8($v1)
.L8005A4A0:
/* 5B0A0 8005A4A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5B0A4 8005A4A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5B0A8 8005A4A8 03E00008 */  jr         $ra
/* 5B0AC 8005A4AC 00000000 */   nop
