glabel func_8003F6A4
/* 402A4 8003F6A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 402A8 8003F6A8 AFA70024 */  sw         $a3, 0x24($sp)
/* 402AC 8003F6AC 87A70026 */  lh         $a3, 0x26($sp)
/* 402B0 8003F6B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 402B4 8003F6B4 AFA5001C */  sw         $a1, 0x1c($sp)
/* 402B8 8003F6B8 AFA60020 */  sw         $a2, 0x20($sp)
/* 402BC 8003F6BC 00057400 */  sll        $t6, $a1, 0x10
/* 402C0 8003F6C0 0006C400 */  sll        $t8, $a2, 0x10
/* 402C4 8003F6C4 00183403 */  sra        $a2, $t8, 0x10
/* 402C8 8003F6C8 000E2C03 */  sra        $a1, $t6, 0x10
/* 402CC 8003F6CC E7AC0018 */  swc1       $f12, 0x18($sp)
/* 402D0 8003F6D0 24040130 */  addiu      $a0, $zero, 0x130
/* 402D4 8003F6D4 0C00C4A1 */  jal        func_80031284
/* 402D8 8003F6D8 24E70001 */   addiu     $a3, $a3, 1
/* 402DC 8003F6DC C7AE0018 */  lwc1       $f14, 0x18($sp)
/* 402E0 8003F6E0 1040002B */  beqz       $v0, .L8003F790
/* 402E4 8003F6E4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 402E8 8003F6E8 00024080 */  sll        $t0, $v0, 2
/* 402EC 8003F6EC 01024023 */  subu       $t0, $t0, $v0
/* 402F0 8003F6F0 00084080 */  sll        $t0, $t0, 2
/* 402F4 8003F6F4 01024021 */  addu       $t0, $t0, $v0
/* 402F8 8003F6F8 00084080 */  sll        $t0, $t0, 2
/* 402FC 8003F6FC 01024023 */  subu       $t0, $t0, $v0
/* 40300 8003F700 3C09800F */  lui        $t1, %hi(gActors)
/* 40304 8003F704 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 40308 8003F708 000840C0 */  sll        $t0, $t0, 3
/* 4030C 8003F70C 01091821 */  addu       $v1, $t0, $t1
/* 40310 8003F710 240A0001 */  addiu      $t2, $zero, 1
/* 40314 8003F714 A46A0094 */  sh         $t2, 0x94($v1)
/* 40318 8003F718 E46E00B4 */  swc1       $f14, 0xb4($v1)
/* 4031C 8003F71C E46E00B8 */  swc1       $f14, 0xb8($v1)
/* 40320 8003F720 3C01800F */  lui        $at, %hi(D_800EBC48)
/* 40324 8003F724 C425BC48 */  lwc1       $f5, %lo(D_800EBC48)($at)
/* 40328 8003F728 C424BC4C */  lwc1       $f4, -0x43b4($at)
/* 4032C 8003F72C 46007021 */  cvt.d.s    $f0, $f14
/* 40330 8003F730 46240182 */  mul.d      $f6, $f0, $f4
/* 40334 8003F734 3C01800F */  lui        $at, 0x800f
/* 40338 8003F738 3C0D8003 */  lui        $t5, %hi(func_80030B0C)
/* 4033C 8003F73C 3C0B0002 */  lui        $t3, 2
/* 40340 8003F740 240CE000 */  addiu      $t4, $zero, -0x2000
/* 40344 8003F744 462030A0 */  cvt.s.d    $f2, $f6
/* 40348 8003F748 25AD0B0C */  addiu      $t5, $t5, %lo(func_80030B0C)
/* 4034C 8003F74C E4620110 */  swc1       $f2, 0x110($v1)
/* 40350 8003F750 E4620114 */  swc1       $f2, 0x114($v1)
/* 40354 8003F754 C428BC54 */  lwc1       $f8, -0x43ac($at)
/* 40358 8003F758 C429BC50 */  lwc1       $f9, -0x43b0($at)
/* 4035C 8003F75C 3C0141C0 */  lui        $at, 0x41c0
/* 40360 8003F760 46280282 */  mul.d      $f10, $f0, $f8
/* 40364 8003F764 44818000 */  mtc1       $at, $f16
/* 40368 8003F768 240E0012 */  addiu      $t6, $zero, 0x12
/* 4036C 8003F76C AC6B00F0 */  sw         $t3, 0xf0($v1)
/* 40370 8003F770 AC6C015C */  sw         $t4, 0x15c($v1)
/* 40374 8003F774 46205320 */  cvt.s.d    $f12, $f10
/* 40378 8003F778 AC6D017C */  sw         $t5, 0x17c($v1)
/* 4037C 8003F77C E46C0118 */  swc1       $f12, 0x118($v1)
/* 40380 8003F780 E46C011C */  swc1       $f12, 0x11c($v1)
/* 40384 8003F784 AC6E0104 */  sw         $t6, 0x104($v1)
/* 40388 8003F788 AC600108 */  sw         $zero, 0x108($v1)
/* 4038C 8003F78C E4700148 */  swc1       $f16, 0x148($v1)
.L8003F790:
/* 40390 8003F790 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40394 8003F794 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40398 8003F798 03E00008 */  jr         $ra
/* 4039C 8003F79C 00801025 */   or        $v0, $a0, $zero
