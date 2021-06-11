glabel func_800199DC
/* 1A5DC 800199DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A5E0 800199E0 AFA40020 */  sw         $a0, 0x20($sp)
/* 1A5E4 800199E4 3C03800F */  lui        $v1, %hi(gActors)
/* 1A5E8 800199E8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A5EC 800199EC 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 1A5F0 800199F0 24040198 */  addiu      $a0, $zero, 0x198
/* 1A5F4 800199F4 2402008C */  addiu      $v0, $zero, 0x8c
.L800199F8:
/* 1A5F8 800199F8 00440019 */  multu      $v0, $a0
/* 1A5FC 800199FC 24420001 */  addiu      $v0, $v0, 1
/* 1A600 80019A00 3058FFFF */  andi       $t8, $v0, 0xffff
/* 1A604 80019A04 2B01009C */  slti       $at, $t8, 0x9c
/* 1A608 80019A08 03001025 */  or         $v0, $t8, $zero
/* 1A60C 80019A0C 00007012 */  mflo       $t6
/* 1A610 80019A10 006E7821 */  addu       $t7, $v1, $t6
/* 1A614 80019A14 1420FFF8 */  bnez       $at, .L800199F8
/* 1A618 80019A18 ADE00080 */   sw        $zero, 0x80($t7)
/* 1A61C 80019A1C 3C028018 */  lui        $v0, %hi(D_8017815C)
/* 1A620 80019A20 9442815C */  lhu        $v0, %lo(D_8017815C)($v0)
/* 1A624 80019A24 97A90022 */  lhu        $t1, 0x22($sp)
/* 1A628 80019A28 0002C880 */  sll        $t9, $v0, 2
/* 1A62C 80019A2C 3C08800D */  lui        $t0, %hi(D_800C8CE8)
/* 1A630 80019A30 3C0C800D */  lui        $t4, %hi(D_800C8D6C)
/* 1A634 80019A34 01996021 */  addu       $t4, $t4, $t9
/* 1A638 80019A38 01194021 */  addu       $t0, $t0, $t9
/* 1A63C 80019A3C 8D088CE8 */  lw         $t0, %lo(D_800C8CE8)($t0)
/* 1A640 80019A40 8D8C8D6C */  lw         $t4, %lo(D_800C8D6C)($t4)
/* 1A644 80019A44 00095080 */  sll        $t2, $t1, 2
/* 1A648 80019A48 00096840 */  sll        $t5, $t1, 1
/* 1A64C 80019A4C 010A5821 */  addu       $t3, $t0, $t2
/* 1A650 80019A50 018D7021 */  addu       $t6, $t4, $t5
/* 1A654 80019A54 95C60000 */  lhu        $a2, ($t6)
/* 1A658 80019A58 8D650000 */  lw         $a1, ($t3)
/* 1A65C 80019A5C AFA00010 */  sw         $zero, 0x10($sp)
/* 1A660 80019A60 03201025 */  or         $v0, $t9, $zero
/* 1A664 80019A64 2404008C */  addiu      $a0, $zero, 0x8c
/* 1A668 80019A68 0C00A007 */  jal        func_8002801C
/* 1A66C 80019A6C 3407FFB4 */   ori       $a3, $zero, 0xffb4
/* 1A670 80019A70 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A674 80019A74 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A678 80019A78 03E00008 */  jr         $ra
/* 1A67C 80019A7C 00000000 */   nop
