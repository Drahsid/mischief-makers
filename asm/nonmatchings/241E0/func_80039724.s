glabel func_80039724
/* 3A324 80039724 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3A328 80039728 000E7880 */  sll        $t7, $t6, 2
/* 3A32C 8003972C 01EE7823 */  subu       $t7, $t7, $t6
/* 3A330 80039730 000F7880 */  sll        $t7, $t7, 2
/* 3A334 80039734 01EE7821 */  addu       $t7, $t7, $t6
/* 3A338 80039738 000F7880 */  sll        $t7, $t7, 2
/* 3A33C 8003973C 01EE7823 */  subu       $t7, $t7, $t6
/* 3A340 80039740 3C18800F */  lui        $t8, %hi(gActors)
/* 3A344 80039744 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 3A348 80039748 000F78C0 */  sll        $t7, $t7, 3
/* 3A34C 8003974C 01F81021 */  addu       $v0, $t7, $t8
/* 3A350 80039750 945900D0 */  lhu        $t9, 0xd0($v0)
/* 3A354 80039754 3C09800C */  lui        $t1, %hi(D_800BE5D0)
/* 3A358 80039758 27280001 */  addiu      $t0, $t9, 1
/* 3A35C 8003975C A44800D0 */  sh         $t0, 0xd0($v0)
/* 3A360 80039760 9529E5D0 */  lhu        $t1, %lo(D_800BE5D0)($t1)
/* 3A364 80039764 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A368 80039768 AFA40018 */  sw         $a0, 0x18($sp)
/* 3A36C 8003976C 24010035 */  addiu      $at, $zero, 0x35
/* 3A370 80039770 01C02025 */  or         $a0, $t6, $zero
/* 3A374 80039774 1521000C */  bne        $t1, $at, .L800397A8
/* 3A378 80039778 AFBF0014 */   sw        $ra, 0x14($sp)
/* 3A37C 8003977C 444AF800 */  cfc1       $t2, $31
/* 3A380 80039780 C4440110 */  lwc1       $f4, 0x110($v0)
/* 3A384 80039784 35410003 */  ori        $at, $t2, 3
/* 3A388 80039788 38210002 */  xori       $at, $at, 2
/* 3A38C 8003978C 44C1F800 */  ctc1       $at, $31
/* 3A390 80039790 00000000 */  nop
/* 3A394 80039794 460021A4 */  cvt.w.s    $f6, $f4
/* 3A398 80039798 440B3000 */  mfc1       $t3, $f6
/* 3A39C 8003979C 44CAF800 */  ctc1       $t2, $31
/* 3A3A0 800397A0 1000000C */  b          .L800397D4
/* 3A3A4 800397A4 AC4B0150 */   sw        $t3, 0x150($v0)
.L800397A8:
/* 3A3A8 800397A8 444CF800 */  cfc1       $t4, $31
/* 3A3AC 800397AC C4480110 */  lwc1       $f8, 0x110($v0)
/* 3A3B0 800397B0 35810003 */  ori        $at, $t4, 3
/* 3A3B4 800397B4 38210002 */  xori       $at, $at, 2
/* 3A3B8 800397B8 44C1F800 */  ctc1       $at, $31
/* 3A3BC 800397BC 2401EFFF */  addiu      $at, $zero, -0x1001
/* 3A3C0 800397C0 460042A4 */  cvt.w.s    $f10, $f8
/* 3A3C4 800397C4 440D5000 */  mfc1       $t5, $f10
/* 3A3C8 800397C8 44CCF800 */  ctc1       $t4, $31
/* 3A3CC 800397CC 01A17024 */  and        $t6, $t5, $at
/* 3A3D0 800397D0 AC4E0150 */  sw         $t6, 0x150($v0)
.L800397D4:
/* 3A3D4 800397D4 8C430150 */  lw         $v1, 0x150($v0)
/* 3A3D8 800397D8 240F1003 */  addiu      $t7, $zero, 0x1003
/* 3A3DC 800397DC 30780700 */  andi       $t8, $v1, 0x700
/* 3A3E0 800397E0 AC4F0080 */  sw         $t7, 0x80($v0)
/* 3A3E4 800397E4 1300000E */  beqz       $t8, .L80039820
/* 3A3E8 800397E8 03001825 */   or        $v1, $t8, $zero
/* 3A3EC 800397EC 94590094 */  lhu        $t9, 0x94($v0)
/* 3A3F0 800397F0 3C0B800D */  lui        $t3, 0x800d
/* 3A3F4 800397F4 37280200 */  ori        $t0, $t9, 0x200
/* 3A3F8 800397F8 A4480094 */  sh         $t0, 0x94($v0)
/* 3A3FC 800397FC 04610003 */  bgez       $v1, .L8003980C
/* 3A400 80039800 00034A03 */   sra       $t1, $v1, 8
/* 3A404 80039804 246100FF */  addiu      $at, $v1, 0xff
/* 3A408 80039808 00014A03 */  sra        $t1, $at, 8
.L8003980C:
/* 3A40C 8003980C 00095080 */  sll        $t2, $t1, 2
/* 3A410 80039810 016A5821 */  addu       $t3, $t3, $t2
/* 3A414 80039814 8D6B26E0 */  lw         $t3, 0x26e0($t3)
/* 3A418 80039818 00000000 */  nop
/* 3A41C 8003981C AC4B018C */  sw         $t3, 0x18c($v0)
.L80039820:
/* 3A420 80039820 0C00AB0C */  jal        func_8002AC30
/* 3A424 80039824 2405000E */   addiu     $a1, $zero, 0xe
/* 3A428 80039828 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A42C 8003982C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3A430 80039830 03E00008 */  jr         $ra
/* 3A434 80039834 00000000 */   nop
