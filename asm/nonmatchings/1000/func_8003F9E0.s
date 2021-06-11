glabel func_8003F9E0
/* 405E0 8003F9E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 405E4 8003F9E4 AFA7002C */  sw         $a3, 0x2c($sp)
/* 405E8 8003F9E8 87A7002E */  lh         $a3, 0x2e($sp)
/* 405EC 8003F9EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 405F0 8003F9F0 AFA50024 */  sw         $a1, 0x24($sp)
/* 405F4 8003F9F4 AFA60028 */  sw         $a2, 0x28($sp)
/* 405F8 8003F9F8 00057400 */  sll        $t6, $a1, 0x10
/* 405FC 8003F9FC 0006C400 */  sll        $t8, $a2, 0x10
/* 40600 8003FA00 00183403 */  sra        $a2, $t8, 0x10
/* 40604 8003FA04 000E2C03 */  sra        $a1, $t6, 0x10
/* 40608 8003FA08 E7AC0020 */  swc1       $f12, 0x20($sp)
/* 4060C 8003FA0C 240401F0 */  addiu      $a0, $zero, 0x1f0
/* 40610 8003FA10 0C00C4A1 */  jal        func_80031284
/* 40614 8003FA14 24E70001 */   addiu     $a3, $a3, 1
/* 40618 8003FA18 1040003D */  beqz       $v0, .L8003FB10
/* 4061C 8003FA1C A7A2001E */   sh        $v0, 0x1e($sp)
/* 40620 8003FA20 3048FFFF */  andi       $t0, $v0, 0xffff
/* 40624 8003FA24 00084880 */  sll        $t1, $t0, 2
/* 40628 8003FA28 01284823 */  subu       $t1, $t1, $t0
/* 4062C 8003FA2C 00094880 */  sll        $t1, $t1, 2
/* 40630 8003FA30 01284821 */  addu       $t1, $t1, $t0
/* 40634 8003FA34 00094880 */  sll        $t1, $t1, 2
/* 40638 8003FA38 01284823 */  subu       $t1, $t1, $t0
/* 4063C 8003FA3C 3C0A800F */  lui        $t2, %hi(gActors)
/* 40640 8003FA40 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 40644 8003FA44 000948C0 */  sll        $t1, $t1, 3
/* 40648 8003FA48 012A1821 */  addu       $v1, $t1, $t2
/* 4064C 8003FA4C 240B0201 */  addiu      $t3, $zero, 0x201
/* 40650 8003FA50 A46B0094 */  sh         $t3, 0x94($v1)
/* 40654 8003FA54 0C0005E3 */  jal        func_8000178C
/* 40658 8003FA58 AFA30018 */   sw        $v1, 0x18($sp)
/* 4065C 8003FA5C 8FA30018 */  lw         $v1, 0x18($sp)
/* 40660 8003FA60 304C0001 */  andi       $t4, $v0, 1
/* 40664 8003FA64 11800005 */  beqz       $t4, .L8003FA7C
/* 40668 8003FA68 240FFFF4 */   addiu     $t7, $zero, -0xc
/* 4066C 8003FA6C 8C6D0080 */  lw         $t5, 0x80($v1)
/* 40670 8003FA70 00000000 */  nop
/* 40674 8003FA74 35AE0020 */  ori        $t6, $t5, 0x20
/* 40678 8003FA78 AC6E0080 */  sw         $t6, 0x80($v1)
.L8003FA7C:
/* 4067C 8003FA7C 3C188022 */  lui        $t8, 0x8022
/* 40680 8003FA80 3718D4E8 */  ori        $t8, $t8, 0xd4e8
/* 40684 8003FA84 97A4001E */  lhu        $a0, 0x1e($sp)
/* 40688 8003FA88 AC6F0154 */  sw         $t7, 0x154($v1)
/* 4068C 8003FA8C AC78018C */  sw         $t8, 0x18c($v1)
/* 40690 8003FA90 24050030 */  addiu      $a1, $zero, 0x30
/* 40694 8003FA94 0C00ABAD */  jal        func_8002AEB4
/* 40698 8003FA98 AFA30018 */   sw        $v1, 0x18($sp)
/* 4069C 8003FA9C C7A40020 */  lwc1       $f4, 0x20($sp)
/* 406A0 8003FAA0 3C013FE0 */  lui        $at, 0x3fe0
/* 406A4 8003FAA4 44813800 */  mtc1       $at, $f7
/* 406A8 8003FAA8 44803000 */  mtc1       $zero, $f6
/* 406AC 8003FAAC 46002021 */  cvt.d.s    $f0, $f4
/* 406B0 8003FAB0 46260202 */  mul.d      $f8, $f0, $f6
/* 406B4 8003FAB4 8FA30018 */  lw         $v1, 0x18($sp)
/* 406B8 8003FAB8 3C01800F */  lui        $at, %hi(D_800EBC7C)
/* 406BC 8003FABC 3C190001 */  lui        $t9, 1
/* 406C0 8003FAC0 462040A0 */  cvt.s.d    $f2, $f8
/* 406C4 8003FAC4 E46200B4 */  swc1       $f2, 0xb4($v1)
/* 406C8 8003FAC8 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 406CC 8003FACC C42ABC7C */  lwc1       $f10, %lo(D_800EBC7C)($at)
/* 406D0 8003FAD0 C42BBC78 */  lwc1       $f11, -0x4388($at)
/* 406D4 8003FAD4 3C01800F */  lui        $at, %hi(D_800EBC84)
/* 406D8 8003FAD8 462A0402 */  mul.d      $f16, $f0, $f10
/* 406DC 8003FADC 46208320 */  cvt.s.d    $f12, $f16
/* 406E0 8003FAE0 E46C0110 */  swc1       $f12, 0x110($v1)
/* 406E4 8003FAE4 E46C0114 */  swc1       $f12, 0x114($v1)
/* 406E8 8003FAE8 C432BC84 */  lwc1       $f18, %lo(D_800EBC84)($at)
/* 406EC 8003FAEC C433BC80 */  lwc1       $f19, -0x4380($at)
/* 406F0 8003FAF0 3C014180 */  lui        $at, 0x4180
/* 406F4 8003FAF4 46320102 */  mul.d      $f4, $f0, $f18
/* 406F8 8003FAF8 44813000 */  mtc1       $at, $f6
/* 406FC 8003FAFC AC7900F4 */  sw         $t9, 0xf4($v1)
/* 40700 8003FB00 E4660148 */  swc1       $f6, 0x148($v1)
/* 40704 8003FB04 462023A0 */  cvt.s.d    $f14, $f4
/* 40708 8003FB08 E46E0118 */  swc1       $f14, 0x118($v1)
/* 4070C 8003FB0C E46E011C */  swc1       $f14, 0x11c($v1)
.L8003FB10:
/* 40710 8003FB10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40714 8003FB14 97A2001E */  lhu        $v0, 0x1e($sp)
/* 40718 8003FB18 03E00008 */  jr         $ra
/* 4071C 8003FB1C 27BD0020 */   addiu     $sp, $sp, 0x20
