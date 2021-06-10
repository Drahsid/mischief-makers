glabel func_8009C420
/* 9D020 8009C420 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9D024 8009C424 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9D028 8009C428 AFA40038 */  sw         $a0, 0x38($sp)
/* 9D02C 8009C42C AFA5003C */  sw         $a1, 0x3c($sp)
/* 9D030 8009C430 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9D034 8009C434 00000000 */  nop
/* 9D038 8009C438 8DCF000C */  lw         $t7, 0xc($t6)
/* 9D03C 8009C43C 00000000 */  nop
/* 9D040 8009C440 AFAF0024 */  sw         $t7, 0x24($sp)
/* 9D044 8009C444 8FB80038 */  lw         $t8, 0x38($sp)
/* 9D048 8009C448 00000000 */  nop
/* 9D04C 8009C44C AF000020 */  sw         $zero, 0x20($t8)
/* 9D050 8009C450 8FB90038 */  lw         $t9, 0x38($sp)
/* 9D054 8009C454 00000000 */  nop
/* 9D058 8009C458 AF200018 */  sw         $zero, 0x18($t9)
/* 9D05C 8009C45C 3C08800F */  lui        $t0, %hi(D_800EA520)
/* 9D060 8009C460 8D08A520 */  lw         $t0, %lo(D_800EA520)($t0)
/* 9D064 8009C464 8FA90038 */  lw         $t1, 0x38($sp)
/* 9D068 8009C468 00000000 */  nop
/* 9D06C 8009C46C AD280014 */  sw         $t0, 0x14($t1)
/* 9D070 8009C470 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9D074 8009C474 240A00FF */  addiu      $t2, $zero, 0xff
/* 9D078 8009C478 A56A0030 */  sh         $t2, 0x30($t3)
/* 9D07C 8009C47C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9D080 8009C480 240C01E8 */  addiu      $t4, $zero, 0x1e8
/* 9D084 8009C484 ADAC0024 */  sw         $t4, 0x24($t5)
/* 9D088 8009C488 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9D08C 8009C48C 00000000 */  nop
/* 9D090 8009C490 ADC00028 */  sw         $zero, 0x28($t6)
/* 9D094 8009C494 8FAF0038 */  lw         $t7, 0x38($sp)
/* 9D098 8009C498 00000000 */  nop
/* 9D09C 8009C49C ADE0002C */  sw         $zero, 0x2c($t7)
/* 9D0A0 8009C4A0 8FB90038 */  lw         $t9, 0x38($sp)
/* 9D0A4 8009C4A4 24187FFF */  addiu      $t8, $zero, 0x7fff
/* 9D0A8 8009C4A8 A7380032 */  sh         $t8, 0x32($t9)
/* 9D0AC 8009C4AC 8FA90038 */  lw         $t1, 0x38($sp)
/* 9D0B0 8009C4B0 24083E80 */  addiu      $t0, $zero, 0x3e80
/* 9D0B4 8009C4B4 AD28005C */  sw         $t0, 0x5c($t1)
/* 9D0B8 8009C4B8 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9D0BC 8009C4BC 00000000 */  nop
/* 9D0C0 8009C4C0 AD40001C */  sw         $zero, 0x1c($t2)
/* 9D0C4 8009C4C4 8FAB003C */  lw         $t3, 0x3c($sp)
/* 9D0C8 8009C4C8 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9D0CC 8009C4CC 8D6C0010 */  lw         $t4, 0x10($t3)
/* 9D0D0 8009C4D0 00000000 */  nop
/* 9D0D4 8009C4D4 ADAC0070 */  sw         $t4, 0x70($t5)
/* 9D0D8 8009C4D8 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9D0DC 8009C4DC 8FB80038 */  lw         $t8, 0x38($sp)
/* 9D0E0 8009C4E0 8DCF0014 */  lw         $t7, 0x14($t6)
/* 9D0E4 8009C4E4 00000000 */  nop
/* 9D0E8 8009C4E8 AF0F0074 */  sw         $t7, 0x74($t8)
/* 9D0EC 8009C4EC 8FB9003C */  lw         $t9, 0x3c($sp)
/* 9D0F0 8009C4F0 8FA90038 */  lw         $t1, 0x38($sp)
/* 9D0F4 8009C4F4 8F280018 */  lw         $t0, 0x18($t9)
/* 9D0F8 8009C4F8 00000000 */  nop
/* 9D0FC 8009C4FC AD280078 */  sw         $t0, 0x78($t1)
/* 9D100 8009C500 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9D104 8009C504 240A0009 */  addiu      $t2, $zero, 9
/* 9D108 8009C508 A56A0038 */  sh         $t2, 0x38($t3)
/* 9D10C 8009C50C 8FAC003C */  lw         $t4, 0x3c($sp)
/* 9D110 8009C510 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9D114 8009C514 918D0008 */  lbu        $t5, 8($t4)
/* 9D118 8009C518 00000000 */  nop
/* 9D11C 8009C51C A1CD0034 */  sb         $t5, 0x34($t6)
/* 9D120 8009C520 8FAF003C */  lw         $t7, 0x3c($sp)
/* 9D124 8009C524 8FA60024 */  lw         $a2, 0x24($sp)
/* 9D128 8009C528 24180010 */  addiu      $t8, $zero, 0x10
/* 9D12C 8009C52C 91E70008 */  lbu        $a3, 8($t7)
/* 9D130 8009C530 AFB80010 */  sw         $t8, 0x10($sp)
/* 9D134 8009C534 00002025 */  or         $a0, $zero, $zero
/* 9D138 8009C538 0C026ECC */  jal        func_8009BB30
/* 9D13C 8009C53C 00002825 */   or        $a1, $zero, $zero
/* 9D140 8009C540 8FB90038 */  lw         $t9, 0x38($sp)
/* 9D144 8009C544 00000000 */  nop
/* 9D148 8009C548 AF220060 */  sw         $v0, 0x60($t9)
/* 9D14C 8009C54C 8FA40038 */  lw         $a0, 0x38($sp)
/* 9D150 8009C550 0C02B54F */  jal        func_800AD53C
/* 9D154 8009C554 00000000 */   nop
/* 9D158 8009C558 8FA8003C */  lw         $t0, 0x3c($sp)
/* 9D15C 8009C55C 8FA60024 */  lw         $a2, 0x24($sp)
/* 9D160 8009C560 24090038 */  addiu      $t1, $zero, 0x38
/* 9D164 8009C564 8D070000 */  lw         $a3, ($t0)
/* 9D168 8009C568 AFA90010 */  sw         $t1, 0x10($sp)
/* 9D16C 8009C56C 00002025 */  or         $a0, $zero, $zero
/* 9D170 8009C570 0C026ECC */  jal        func_8009BB30
/* 9D174 8009C574 00002825 */   or        $a1, $zero, $zero
/* 9D178 8009C578 AFA20028 */  sw         $v0, 0x28($sp)
/* 9D17C 8009C57C 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9D180 8009C580 00000000 */  nop
/* 9D184 8009C584 AD40006C */  sw         $zero, 0x6c($t2)
/* 9D188 8009C588 8FAB003C */  lw         $t3, 0x3c($sp)
/* 9D18C 8009C58C AFA00034 */  sw         $zero, 0x34($sp)
/* 9D190 8009C590 8D6C0000 */  lw         $t4, ($t3)
/* 9D194 8009C594 00000000 */  nop
/* 9D198 8009C598 1980001A */  blez       $t4, .L8009C604
/* 9D19C 8009C59C 00000000 */   nop
.L8009C5A0:
/* 9D1A0 8009C5A0 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9D1A4 8009C5A4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9D1A8 8009C5A8 000D70C0 */  sll        $t6, $t5, 3
/* 9D1AC 8009C5AC 01CD7023 */  subu       $t6, $t6, $t5
/* 9D1B0 8009C5B0 000E70C0 */  sll        $t6, $t6, 3
/* 9D1B4 8009C5B4 01CFC021 */  addu       $t8, $t6, $t7
/* 9D1B8 8009C5B8 AFB8002C */  sw         $t8, 0x2c($sp)
/* 9D1BC 8009C5BC 8FB90038 */  lw         $t9, 0x38($sp)
/* 9D1C0 8009C5C0 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9D1C4 8009C5C4 8F28006C */  lw         $t0, 0x6c($t9)
/* 9D1C8 8009C5C8 00000000 */  nop
/* 9D1CC 8009C5CC AD280000 */  sw         $t0, ($t1)
/* 9D1D0 8009C5D0 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9D1D4 8009C5D4 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9D1D8 8009C5D8 00000000 */  nop
/* 9D1DC 8009C5DC AD6A006C */  sw         $t2, 0x6c($t3)
/* 9D1E0 8009C5E0 8FAC0034 */  lw         $t4, 0x34($sp)
/* 9D1E4 8009C5E4 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9D1E8 8009C5E8 258D0001 */  addiu      $t5, $t4, 1
/* 9D1EC 8009C5EC AFAD0034 */  sw         $t5, 0x34($sp)
/* 9D1F0 8009C5F0 8DCF0000 */  lw         $t7, ($t6)
/* 9D1F4 8009C5F4 00000000 */  nop
/* 9D1F8 8009C5F8 01AF082A */  slt        $at, $t5, $t7
/* 9D1FC 8009C5FC 1420FFE8 */  bnez       $at, .L8009C5A0
/* 9D200 8009C600 00000000 */   nop
.L8009C604:
/* 9D204 8009C604 8FB80038 */  lw         $t8, 0x38($sp)
/* 9D208 8009C608 00000000 */  nop
/* 9D20C 8009C60C AF000064 */  sw         $zero, 0x64($t8)
/* 9D210 8009C610 8FB90038 */  lw         $t9, 0x38($sp)
/* 9D214 8009C614 00000000 */  nop
/* 9D218 8009C618 AF200068 */  sw         $zero, 0x68($t9)
/* 9D21C 8009C61C 8FA8003C */  lw         $t0, 0x3c($sp)
/* 9D220 8009C620 8FA60024 */  lw         $a2, 0x24($sp)
/* 9D224 8009C624 2409001C */  addiu      $t1, $zero, 0x1c
/* 9D228 8009C628 8D070004 */  lw         $a3, 4($t0)
/* 9D22C 8009C62C AFA90010 */  sw         $t1, 0x10($sp)
/* 9D230 8009C630 00002025 */  or         $a0, $zero, $zero
/* 9D234 8009C634 0C026ECC */  jal        func_8009BB30
/* 9D238 8009C638 00002825 */   or        $a1, $zero, $zero
/* 9D23C 8009C63C AFA20030 */  sw         $v0, 0x30($sp)
/* 9D240 8009C640 8FAA003C */  lw         $t2, 0x3c($sp)
/* 9D244 8009C644 8FA40038 */  lw         $a0, 0x38($sp)
/* 9D248 8009C648 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D24C 8009C64C 8D460004 */  lw         $a2, 4($t2)
/* 9D250 8009C650 0C02B5D0 */  jal        func_800AD740
/* 9D254 8009C654 24840048 */   addiu     $a0, $a0, 0x48
/* 9D258 8009C658 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9D25C 8009C65C 00000000 */  nop
/* 9D260 8009C660 AD600000 */  sw         $zero, ($t3)
/* 9D264 8009C664 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9D268 8009C668 3C0C800A */  lui        $t4, %hi(func_8009C6AC)
/* 9D26C 8009C66C 258CC6AC */  addiu      $t4, $t4, %lo(func_8009C6AC)
/* 9D270 8009C670 ADCC0008 */  sw         $t4, 8($t6)
/* 9D274 8009C674 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9D278 8009C678 00000000 */  nop
/* 9D27C 8009C67C ADAD0004 */  sw         $t5, 4($t5)
/* 9D280 8009C680 3C04800F */  lui        $a0, %hi(D_800EA520)
/* 9D284 8009C684 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
/* 9D288 8009C688 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D28C 8009C68C 0C02B6D8 */  jal        func_800ADB60
/* 9D290 8009C690 00000000 */   nop
/* 9D294 8009C694 10000001 */  b          .L8009C69C
/* 9D298 8009C698 00000000 */   nop
.L8009C69C:
/* 9D29C 8009C69C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9D2A0 8009C6A0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 9D2A4 8009C6A4 03E00008 */  jr         $ra
/* 9D2A8 8009C6A8 00000000 */   nop
