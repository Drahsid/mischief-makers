glabel func_800284B8
/* 290B8 800284B8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 290BC 800284BC 30A2FFFF */  andi       $v0, $a1, 0xffff
/* 290C0 800284C0 AFA40000 */  sw         $a0, ($sp)
/* 290C4 800284C4 01C2082A */  slt        $at, $t6, $v0
/* 290C8 800284C8 01C02025 */  or         $a0, $t6, $zero
/* 290CC 800284CC 10200013 */  beqz       $at, .L8002851C
/* 290D0 800284D0 AFA50004 */   sw        $a1, 4($sp)
/* 290D4 800284D4 3C03800F */  lui        $v1, %hi(gActors)
/* 290D8 800284D8 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 290DC 800284DC 24050198 */  addiu      $a1, $zero, 0x198
.L800284E0:
/* 290E0 800284E0 00850019 */  multu      $a0, $a1
/* 290E4 800284E4 0000C012 */  mflo       $t8
/* 290E8 800284E8 0078C821 */  addu       $t9, $v1, $t8
/* 290EC 800284EC 8F280080 */  lw         $t0, 0x80($t9)
/* 290F0 800284F0 00000000 */  nop
/* 290F4 800284F4 31090002 */  andi       $t1, $t0, 2
/* 290F8 800284F8 15200003 */  bnez       $t1, .L80028508
/* 290FC 800284FC 00000000 */   nop
/* 29100 80028500 03E00008 */  jr         $ra
/* 29104 80028504 00801025 */   or        $v0, $a0, $zero
.L80028508:
/* 29108 80028508 24840001 */  addiu      $a0, $a0, 1
/* 2910C 8002850C 308AFFFF */  andi       $t2, $a0, 0xffff
/* 29110 80028510 0142082A */  slt        $at, $t2, $v0
/* 29114 80028514 1420FFF2 */  bnez       $at, .L800284E0
/* 29118 80028518 01402025 */   or        $a0, $t2, $zero
.L8002851C:
/* 2911C 8002851C 00001025 */  or         $v0, $zero, $zero
/* 29120 80028520 03E00008 */  jr         $ra
/* 29124 80028524 00000000 */   nop