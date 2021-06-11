glabel func_8006A64C
/* 6B24C 8006A64C 3087FFFF */  andi       $a3, $a0, 0xffff
/* 6B250 8006A650 00077080 */  sll        $t6, $a3, 2
/* 6B254 8006A654 01C77023 */  subu       $t6, $t6, $a3
/* 6B258 8006A658 000E7080 */  sll        $t6, $t6, 2
/* 6B25C 8006A65C 01C77021 */  addu       $t6, $t6, $a3
/* 6B260 8006A660 000E7080 */  sll        $t6, $t6, 2
/* 6B264 8006A664 01C77023 */  subu       $t6, $t6, $a3
/* 6B268 8006A668 3C0F800F */  lui        $t7, %hi(gActors)
/* 6B26C 8006A66C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6B270 8006A670 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6B274 8006A674 000E70C0 */  sll        $t6, $t6, 3
/* 6B278 8006A678 AFA40020 */  sw         $a0, 0x20($sp)
/* 6B27C 8006A67C 01CF1821 */  addu       $v1, $t6, $t7
/* 6B280 8006A680 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B284 8006A684 8C6400EC */  lw         $a0, 0xec($v1)
/* 6B288 8006A688 AFA3001C */  sw         $v1, 0x1c($sp)
/* 6B28C 8006A68C 00002825 */  or         $a1, $zero, $zero
/* 6B290 8006A690 0C00A607 */  jal        func_8002981C
/* 6B294 8006A694 24061000 */   addiu     $a2, $zero, 0x1000
/* 6B298 8006A698 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6B29C 8006A69C 3C01480C */  lui        $at, 0x480c
/* 6B2A0 8006A6A0 847800E6 */  lh         $t8, 0xe6($v1)
/* 6B2A4 8006A6A4 240B0001 */  addiu      $t3, $zero, 1
/* 6B2A8 8006A6A8 1700001A */  bnez       $t8, .L8006A714
/* 6B2AC 8006A6AC AC6200EC */   sw        $v0, 0xec($v1)
/* 6B2B0 8006A6B0 C4640148 */  lwc1       $f4, 0x148($v1)
/* 6B2B4 8006A6B4 44813000 */  mtc1       $at, $f6
/* 6B2B8 8006A6B8 94620084 */  lhu        $v0, 0x84($v1)
/* 6B2BC 8006A6BC 46062202 */  mul.s      $f8, $f4, $f6
/* 6B2C0 8006A6C0 3C09800E */  lui        $t1, %hi(D_800E1CE8)
/* 6B2C4 8006A6C4 3C0A800E */  lui        $t2, %hi(D_800E1CC4)
/* 6B2C8 8006A6C8 25291CE8 */  addiu      $t1, $t1, %lo(D_800E1CE8)
/* 6B2CC 8006A6CC 4459F800 */  cfc1       $t9, $31
/* 6B2D0 8006A6D0 254A1CC4 */  addiu      $t2, $t2, %lo(D_800E1CC4)
/* 6B2D4 8006A6D4 37210003 */  ori        $at, $t9, 3
/* 6B2D8 8006A6D8 38210002 */  xori       $at, $at, 2
/* 6B2DC 8006A6DC 44C1F800 */  ctc1       $at, $31
/* 6B2E0 8006A6E0 240168A3 */  addiu      $at, $zero, 0x68a3
/* 6B2E4 8006A6E4 460042A4 */  cvt.w.s    $f10, $f8
/* 6B2E8 8006A6E8 44085000 */  mfc1       $t0, $f10
/* 6B2EC 8006A6EC 44D9F800 */  ctc1       $t9, $31
/* 6B2F0 8006A6F0 14410003 */  bne        $v0, $at, .L8006A700
/* 6B2F4 8006A6F4 AC6800EC */   sw        $t0, 0xec($v1)
/* 6B2F8 8006A6F8 94620084 */  lhu        $v0, 0x84($v1)
/* 6B2FC 8006A6FC AC6900E8 */  sw         $t1, 0xe8($v1)
.L8006A700:
/* 6B300 8006A700 2401689B */  addiu      $at, $zero, 0x689b
/* 6B304 8006A704 14410002 */  bne        $v0, $at, .L8006A710
/* 6B308 8006A708 00000000 */   nop
/* 6B30C 8006A70C AC6A00E8 */  sw         $t2, 0xe8($v1)
.L8006A710:
/* 6B310 8006A710 A46B00E6 */  sh         $t3, 0xe6($v1)
.L8006A714:
/* 6B314 8006A714 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B318 8006A718 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6B31C 8006A71C 03E00008 */  jr         $ra
/* 6B320 8006A720 00000000 */   nop
