glabel func_8006F730
/* 70330 8006F730 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70334 8006F734 AFA40020 */  sw         $a0, 0x20($sp)
/* 70338 8006F738 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7033C 8006F73C 97A40022 */  lhu        $a0, 0x22($sp)
/* 70340 8006F740 0C01B265 */  jal        func_8006C994
/* 70344 8006F744 00000000 */   nop
/* 70348 8006F748 1440003D */  bnez       $v0, .L8006F840
/* 7034C 8006F74C 3C18800F */   lui       $t8, %hi(D_800EF510)
/* 70350 8006F750 97AE0022 */  lhu        $t6, 0x22($sp)
/* 70354 8006F754 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 70358 8006F758 000E7880 */  sll        $t7, $t6, 2
/* 7035C 8006F75C 01EE7823 */  subu       $t7, $t7, $t6
/* 70360 8006F760 000F7880 */  sll        $t7, $t7, 2
/* 70364 8006F764 01EE7821 */  addu       $t7, $t7, $t6
/* 70368 8006F768 000F7880 */  sll        $t7, $t7, 2
/* 7036C 8006F76C 01EE7823 */  subu       $t7, $t7, $t6
/* 70370 8006F770 000F78C0 */  sll        $t7, $t7, 3
/* 70374 8006F774 01F81821 */  addu       $v1, $t7, $t8
/* 70378 8006F778 946200D0 */  lhu        $v0, 0xd0($v1)
/* 7037C 8006F77C 240101A0 */  addiu      $at, $zero, 0x1a0
/* 70380 8006F780 1441000F */  bne        $v0, $at, .L8006F7C0
/* 70384 8006F784 00002825 */   or        $a1, $zero, $zero
/* 70388 8006F788 8C680080 */  lw         $t0, 0x80($v1)
/* 7038C 8006F78C 3C010002 */  lui        $at, 2
/* 70390 8006F790 01014825 */  or         $t1, $t0, $at
/* 70394 8006F794 3C01FFFE */  lui        $at, 0xfffe
/* 70398 8006F798 3421FFFF */  ori        $at, $at, 0xffff
/* 7039C 8006F79C 8C6C0098 */  lw         $t4, 0x98($v1)
/* 703A0 8006F7A0 01215824 */  and        $t3, $t1, $at
/* 703A4 8006F7A4 2401FFDF */  addiu      $at, $zero, -0x21
/* 703A8 8006F7A8 24590001 */  addiu      $t9, $v0, 1
/* 703AC 8006F7AC AC690080 */  sw         $t1, 0x80($v1)
/* 703B0 8006F7B0 01816824 */  and        $t5, $t4, $at
/* 703B4 8006F7B4 A47900D0 */  sh         $t9, 0xd0($v1)
/* 703B8 8006F7B8 AC6D0098 */  sw         $t5, 0x98($v1)
/* 703BC 8006F7BC AC6B0080 */  sw         $t3, 0x80($v1)
.L8006F7C0:
/* 703C0 8006F7C0 8C6400EC */  lw         $a0, 0xec($v1)
/* 703C4 8006F7C4 24061000 */  addiu      $a2, $zero, 0x1000
/* 703C8 8006F7C8 0C00A607 */  jal        func_8002981C
/* 703CC 8006F7CC AFA3001C */   sw        $v1, 0x1c($sp)
/* 703D0 8006F7D0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 703D4 8006F7D4 3C01FFF9 */  lui        $at, 0xfff9
/* 703D8 8006F7D8 8C6400F0 */  lw         $a0, 0xf0($v1)
/* 703DC 8006F7DC 34218001 */  ori        $at, $at, 0x8001
/* 703E0 8006F7E0 0081082A */  slt        $at, $a0, $at
/* 703E4 8006F7E4 14200003 */  bnez       $at, .L8006F7F4
/* 703E8 8006F7E8 AC6200EC */   sw        $v0, 0xec($v1)
/* 703EC 8006F7EC 248EC000 */  addiu      $t6, $a0, -0x4000
/* 703F0 8006F7F0 AC6E00F0 */  sw         $t6, 0xf0($v1)
.L8006F7F4:
/* 703F4 8006F7F4 8C620098 */  lw         $v0, 0x98($v1)
/* 703F8 8006F7F8 24180191 */  addiu      $t8, $zero, 0x191
/* 703FC 8006F7FC 304F0020 */  andi       $t7, $v0, 0x20
/* 70400 8006F800 11E0000F */  beqz       $t7, .L8006F840
/* 70404 8006F804 3C010001 */   lui       $at, 1
/* 70408 8006F808 8C790080 */  lw         $t9, 0x80($v1)
/* 7040C 8006F80C 240C0014 */  addiu      $t4, $zero, 0x14
/* 70410 8006F810 03214025 */  or         $t0, $t9, $at
/* 70414 8006F814 3C01FFFD */  lui        $at, 0xfffd
/* 70418 8006F818 3421FFFF */  ori        $at, $at, 0xffff
/* 7041C 8006F81C 01015024 */  and        $t2, $t0, $at
/* 70420 8006F820 2401FFBF */  addiu      $at, $zero, -0x41
/* 70424 8006F824 00415824 */  and        $t3, $v0, $at
/* 70428 8006F828 AC680080 */  sw         $t0, 0x80($v1)
/* 7042C 8006F82C A47800D0 */  sh         $t8, 0xd0($v1)
/* 70430 8006F830 AC6A0080 */  sw         $t2, 0x80($v1)
/* 70434 8006F834 AC6B0098 */  sw         $t3, 0x98($v1)
/* 70438 8006F838 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 7043C 8006F83C AC6C0158 */  sw         $t4, 0x158($v1)
.L8006F840:
/* 70440 8006F840 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70444 8006F844 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70448 8006F848 03E00008 */  jr         $ra
/* 7044C 8006F84C 00000000 */   nop
