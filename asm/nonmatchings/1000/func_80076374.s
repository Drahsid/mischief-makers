glabel func_80076374
/* 76F74 80076374 308EFFFF */  andi       $t6, $a0, 0xffff
/* 76F78 80076378 000E7880 */  sll        $t7, $t6, 2
/* 76F7C 8007637C 01EE7823 */  subu       $t7, $t7, $t6
/* 76F80 80076380 000F7880 */  sll        $t7, $t7, 2
/* 76F84 80076384 01EE7821 */  addu       $t7, $t7, $t6
/* 76F88 80076388 000F7880 */  sll        $t7, $t7, 2
/* 76F8C 8007638C 01EE7823 */  subu       $t7, $t7, $t6
/* 76F90 80076390 3C18800F */  lui        $t8, %hi(gActors)
/* 76F94 80076394 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 76F98 80076398 000F78C0 */  sll        $t7, $t7, 3
/* 76F9C 8007639C 01F81821 */  addu       $v1, $t7, $t8
/* 76FA0 800763A0 8C6200EC */  lw         $v0, 0xec($v1)
/* 76FA4 800763A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 76FA8 800763A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 76FAC 800763AC 1440000B */  bnez       $v0, .L800763DC
/* 76FB0 800763B0 AFA40020 */   sw        $a0, 0x20($sp)
/* 76FB4 800763B4 0C0005E3 */  jal        func_8000178C
/* 76FB8 800763B8 AFA30018 */   sw        $v1, 0x18($sp)
/* 76FBC 800763BC 8FA30018 */  lw         $v1, 0x18($sp)
/* 76FC0 800763C0 30590001 */  andi       $t9, $v0, 1
/* 76FC4 800763C4 13200003 */  beqz       $t9, .L800763D4
/* 76FC8 800763C8 00000000 */   nop
/* 76FCC 800763CC 10000004 */  b          .L800763E0
/* 76FD0 800763D0 34048000 */   ori       $a0, $zero, 0x8000
.L800763D4:
/* 76FD4 800763D4 10000002 */  b          .L800763E0
/* 76FD8 800763D8 24048000 */   addiu     $a0, $zero, -0x8000
.L800763DC:
/* 76FDC 800763DC 00402025 */  or         $a0, $v0, $zero
.L800763E0:
/* 76FE0 800763E0 8C6500F0 */  lw         $a1, 0xf0($v1)
/* 76FE4 800763E4 0C00A538 */  jal        func_800294E0
/* 76FE8 800763E8 00000000 */   nop
/* 76FEC 800763EC 00024400 */  sll        $t0, $v0, 0x10
/* 76FF0 800763F0 3C010100 */  lui        $at, 0x100
/* 76FF4 800763F4 01011021 */  addu       $v0, $t0, $at
/* 76FF8 800763F8 3C0103FF */  lui        $at, 0x3ff
/* 76FFC 800763FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77000 80076400 3421FFFF */  ori        $at, $at, 0xffff
/* 77004 80076404 00414824 */  and        $t1, $v0, $at
/* 77008 80076408 01201025 */  or         $v0, $t1, $zero
/* 7700C 8007640C 03E00008 */  jr         $ra
/* 77010 80076410 27BD0020 */   addiu     $sp, $sp, 0x20
