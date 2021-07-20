.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

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

glabel func_8009C6AC
/* 9D2AC 8009C6AC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 9D2B0 8009C6B0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9D2B4 8009C6B4 AFA40050 */  sw         $a0, 0x50($sp)
/* 9D2B8 8009C6B8 AFB10018 */  sw         $s1, 0x18($sp)
/* 9D2BC 8009C6BC AFB00014 */  sw         $s0, 0x14($sp)
/* 9D2C0 8009C6C0 8FAE0050 */  lw         $t6, 0x50($sp)
/* 9D2C4 8009C6C4 00000000 */  nop
/* 9D2C8 8009C6C8 AFAE004C */  sw         $t6, 0x4c($sp)
.L8009C6CC:
/* 9D2CC 8009C6CC 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D2D0 8009C6D0 00000000 */  nop
/* 9D2D4 8009C6D4 95F80038 */  lhu        $t8, 0x38($t7)
/* 9D2D8 8009C6D8 00000000 */  nop
/* 9D2DC 8009C6DC 2F010018 */  sltiu      $at, $t8, 0x18
/* 9D2E0 8009C6E0 102001DC */  beqz       $at, .L8009CE54
/* 9D2E4 8009C6E4 00000000 */   nop
/* 9D2E8 8009C6E8 0018C080 */  sll        $t8, $t8, 2
/* 9D2EC 8009C6EC 3C01800F */  lui        $at, %hi(D_800ED6F0)
/* 9D2F0 8009C6F0 00380821 */  addu       $at, $at, $t8
/* 9D2F4 8009C6F4 8C38D6F0 */  lw         $t8, %lo(D_800ED6F0)($at)
/* 9D2F8 8009C6F8 00000000 */  nop
/* 9D2FC 8009C6FC 03000008 */  jr         $t8
/* 9D300 8009C700 00000000 */   nop
/* 9D304 8009C704 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D308 8009C708 0C0273DE */  jal        func_8009CF78
/* 9D30C 8009C70C 00000000 */   nop
/* 9D310 8009C710 100001D0 */  b          .L8009CE54
/* 9D314 8009C714 00000000 */   nop
/* 9D318 8009C718 24190009 */  addiu      $t9, $zero, 9
/* 9D31C 8009C71C A7B9003C */  sh         $t9, 0x3c($sp)
/* 9D320 8009C720 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D324 8009C724 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D328 8009C728 8D06005C */  lw         $a2, 0x5c($t0)
/* 9D32C 8009C72C 0C02B620 */  jal        func_800AD880
/* 9D330 8009C730 25040048 */   addiu     $a0, $t0, 0x48
/* 9D334 8009C734 100001C7 */  b          .L8009CE54
/* 9D338 8009C738 00000000 */   nop
/* 9D33C 8009C73C 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D340 8009C740 00000000 */  nop
/* 9D344 8009C744 8D2A003C */  lw         $t2, 0x3c($t1)
/* 9D348 8009C748 00000000 */  nop
/* 9D34C 8009C74C AFAA0038 */  sw         $t2, 0x38($sp)
/* 9D350 8009C750 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D354 8009C754 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D358 8009C758 8D640014 */  lw         $a0, 0x14($t3)
/* 9D35C 8009C75C 0C02B6F4 */  jal        func_800ADBD0
/* 9D360 8009C760 00000000 */   nop
/* 9D364 8009C764 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D368 8009C768 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D36C 8009C76C 8D840014 */  lw         $a0, 0x14($t4)
/* 9D370 8009C770 0C02B728 */  jal        func_800ADCA0
/* 9D374 8009C774 00000000 */   nop
/* 9D378 8009C778 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9D37C 8009C77C 00000000 */  nop
/* 9D380 8009C780 8DAE0010 */  lw         $t6, 0x10($t5)
/* 9D384 8009C784 00000000 */  nop
/* 9D388 8009C788 AFAE0030 */  sw         $t6, 0x30($sp)
/* 9D38C 8009C78C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9D390 8009C790 00000000 */  nop
/* 9D394 8009C794 91F80037 */  lbu        $t8, 0x37($t7)
/* 9D398 8009C798 00000000 */  nop
/* 9D39C 8009C79C 13000005 */  beqz       $t8, .L8009C7B4
/* 9D3A0 8009C7A0 00000000 */   nop
/* 9D3A4 8009C7A4 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D3A8 8009C7A8 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D3AC 8009C7AC 0C02B56E */  jal        func_800AD5B8
/* 9D3B0 8009C7B0 00000000 */   nop
.L8009C7B4:
/* 9D3B4 8009C7B4 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D3B8 8009C7B8 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D3BC 8009C7BC 0C02B302 */  jal        func_800ACC08
/* 9D3C0 8009C7C0 00000000 */   nop
/* 9D3C4 8009C7C4 100001A3 */  b          .L8009CE54
/* 9D3C8 8009C7C8 00000000 */   nop
/* 9D3CC 8009C7CC 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D3D0 8009C7D0 00000000 */  nop
/* 9D3D4 8009C7D4 8F28003C */  lw         $t0, 0x3c($t9)
/* 9D3D8 8009C7D8 00000000 */  nop
/* 9D3DC 8009C7DC AFA80038 */  sw         $t0, 0x38($sp)
/* 9D3E0 8009C7E0 8FA90038 */  lw         $t1, 0x38($sp)
/* 9D3E4 8009C7E4 00000000 */  nop
/* 9D3E8 8009C7E8 8D2A0010 */  lw         $t2, 0x10($t1)
/* 9D3EC 8009C7EC 00000000 */  nop
/* 9D3F0 8009C7F0 AFAA0030 */  sw         $t2, 0x30($sp)
/* 9D3F4 8009C7F4 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9D3F8 8009C7F8 00000000 */  nop
/* 9D3FC 8009C7FC 916C0034 */  lbu        $t4, 0x34($t3)
/* 9D400 8009C800 00000000 */  nop
/* 9D404 8009C804 15800004 */  bnez       $t4, .L8009C818
/* 9D408 8009C808 00000000 */   nop
/* 9D40C 8009C80C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D410 8009C810 240D0001 */  addiu      $t5, $zero, 1
/* 9D414 8009C814 A1CD0034 */  sb         $t5, 0x34($t6)
.L8009C818:
/* 9D418 8009C818 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D41C 8009C81C 00000000 */  nop
/* 9D420 8009C820 8DF80040 */  lw         $t8, 0x40($t7)
/* 9D424 8009C824 00000000 */  nop
/* 9D428 8009C828 AFB80034 */  sw         $t8, 0x34($sp)
/* 9D42C 8009C82C 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D430 8009C830 8FA90034 */  lw         $t1, 0x34($sp)
/* 9D434 8009C834 8F28001C */  lw         $t0, 0x1c($t9)
/* 9D438 8009C838 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9D43C 8009C83C 01095021 */  addu       $t2, $t0, $t1
/* 9D440 8009C840 AD6A0024 */  sw         $t2, 0x24($t3)
/* 9D444 8009C844 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D448 8009C848 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D44C 8009C84C 918D0044 */  lbu        $t5, 0x44($t4)
/* 9D450 8009C850 00000000 */  nop
/* 9D454 8009C854 A1CD0030 */  sb         $t5, 0x30($t6)
/* 9D458 8009C858 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D45C 8009C85C 8FA5004C */  lw         $a1, 0x4c($sp)
/* 9D460 8009C860 0C02B3CE */  jal        func_800ACF38
/* 9D464 8009C864 00000000 */   nop
/* 9D468 8009C868 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D46C 8009C86C 00028400 */  sll        $s0, $v0, 0x10
/* 9D470 8009C870 00107C03 */  sra        $t7, $s0, 0x10
/* 9D474 8009C874 01E08025 */  or         $s0, $t7, $zero
/* 9D478 8009C878 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D47C 8009C87C 8FA70034 */  lw         $a3, 0x34($sp)
/* 9D480 8009C880 8F040014 */  lw         $a0, 0x14($t8)
/* 9D484 8009C884 0C02B768 */  jal        func_800ADDA0
/* 9D488 8009C888 02003025 */   or        $a2, $s0, $zero
/* 9D48C 8009C88C 10000171 */  b          .L8009CE54
/* 9D490 8009C890 00000000 */   nop
/* 9D494 8009C894 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D498 8009C898 00000000 */  nop
/* 9D49C 8009C89C 8F28003C */  lw         $t0, 0x3c($t9)
/* 9D4A0 8009C8A0 00000000 */  nop
/* 9D4A4 8009C8A4 AFA80030 */  sw         $t0, 0x30($sp)
/* 9D4A8 8009C8A8 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D4AC 8009C8AC 00000000 */  nop
/* 9D4B0 8009C8B0 8D2A0040 */  lw         $t2, 0x40($t1)
/* 9D4B4 8009C8B4 00000000 */  nop
/* 9D4B8 8009C8B8 AFAA002C */  sw         $t2, 0x2c($sp)
/* 9D4BC 8009C8BC 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D4C0 8009C8C0 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9D4C4 8009C8C4 8D790074 */  lw         $t9, 0x74($t3)
/* 9D4C8 8009C8C8 27A50028 */  addiu      $a1, $sp, 0x28
/* 9D4CC 8009C8CC 0320F809 */  jalr       $t9
/* 9D4D0 8009C8D0 00000000 */   nop
/* 9D4D4 8009C8D4 AFA20034 */  sw         $v0, 0x34($sp)
/* 9D4D8 8009C8D8 444CF800 */  cfc1       $t4, $31
/* 9D4DC 8009C8DC 240D0001 */  addiu      $t5, $zero, 1
/* 9D4E0 8009C8E0 44CDF800 */  ctc1       $t5, $31
/* 9D4E4 8009C8E4 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 9D4E8 8009C8E8 00000000 */  nop
/* 9D4EC 8009C8EC 460021A4 */  cvt.w.s    $f6, $f4
/* 9D4F0 8009C8F0 444DF800 */  cfc1       $t5, $31
/* 9D4F4 8009C8F4 00000000 */  nop
/* 9D4F8 8009C8F8 31A10004 */  andi       $at, $t5, 4
/* 9D4FC 8009C8FC 31AD0078 */  andi       $t5, $t5, 0x78
/* 9D500 8009C900 11A00014 */  beqz       $t5, .L8009C954
/* 9D504 8009C904 00000000 */   nop
/* 9D508 8009C908 3C014F00 */  lui        $at, 0x4f00
/* 9D50C 8009C90C 44813000 */  mtc1       $at, $f6
/* 9D510 8009C910 240D0001 */  addiu      $t5, $zero, 1
/* 9D514 8009C914 46062181 */  sub.s      $f6, $f4, $f6
/* 9D518 8009C918 44CDF800 */  ctc1       $t5, $31
/* 9D51C 8009C91C 00000000 */  nop
/* 9D520 8009C920 460031A4 */  cvt.w.s    $f6, $f6
/* 9D524 8009C924 444DF800 */  cfc1       $t5, $31
/* 9D528 8009C928 00000000 */  nop
/* 9D52C 8009C92C 31A10004 */  andi       $at, $t5, 4
/* 9D530 8009C930 31AD0078 */  andi       $t5, $t5, 0x78
/* 9D534 8009C934 15A00005 */  bnez       $t5, .L8009C94C
/* 9D538 8009C938 00000000 */   nop
/* 9D53C 8009C93C 440D3000 */  mfc1       $t5, $f6
/* 9D540 8009C940 3C018000 */  lui        $at, 0x8000
/* 9D544 8009C944 10000007 */  b          .L8009C964
/* 9D548 8009C948 01A16825 */   or        $t5, $t5, $at
.L8009C94C:
/* 9D54C 8009C94C 10000005 */  b          .L8009C964
/* 9D550 8009C950 240DFFFF */   addiu     $t5, $zero, -1
.L8009C954:
/* 9D554 8009C954 440D3000 */  mfc1       $t5, $f6
/* 9D558 8009C958 00000000 */  nop
/* 9D55C 8009C95C 05A0FFFB */  bltz       $t5, .L8009C94C
/* 9D560 8009C960 00000000 */   nop
.L8009C964:
/* 9D564 8009C964 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D568 8009C968 44CCF800 */  ctc1       $t4, $31
/* 9D56C 8009C96C A1CD0036 */  sb         $t5, 0x36($t6)
/* 9D570 8009C970 00000000 */  nop
/* 9D574 8009C974 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D578 8009C978 8FA5004C */  lw         $a1, 0x4c($sp)
/* 9D57C 8009C97C 0C02B3CE */  jal        func_800ACF38
/* 9D580 8009C980 00000000 */   nop
/* 9D584 8009C984 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D588 8009C988 00028400 */  sll        $s0, $v0, 0x10
/* 9D58C 8009C98C 00107C03 */  sra        $t7, $s0, 0x10
/* 9D590 8009C990 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D594 8009C994 8F05001C */  lw         $a1, 0x1c($t8)
/* 9D598 8009C998 0C02B3F9 */  jal        func_800ACFE4
/* 9D59C 8009C99C 01E08025 */   or        $s0, $t7, $zero
/* 9D5A0 8009C9A0 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D5A4 8009C9A4 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D5A8 8009C9A8 00408825 */  or         $s1, $v0, $zero
/* 9D5AC 8009C9AC 8D040014 */  lw         $a0, 0x14($t0)
/* 9D5B0 8009C9B0 02203825 */  or         $a3, $s1, $zero
/* 9D5B4 8009C9B4 02003025 */  or         $a2, $s0, $zero
/* 9D5B8 8009C9B8 0C02B768 */  jal        func_800ADDA0
/* 9D5BC 8009C9BC 24A50004 */   addiu     $a1, $a1, 4
/* 9D5C0 8009C9C0 24090016 */  addiu      $t1, $zero, 0x16
/* 9D5C4 8009C9C4 A7A9003C */  sh         $t1, 0x3c($sp)
/* 9D5C8 8009C9C8 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9D5CC 8009C9CC 00000000 */  nop
/* 9D5D0 8009C9D0 AFAA0040 */  sw         $t2, 0x40($sp)
/* 9D5D4 8009C9D4 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9D5D8 8009C9D8 00000000 */  nop
/* 9D5DC 8009C9DC AFAB0044 */  sw         $t3, 0x44($sp)
/* 9D5E0 8009C9E0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D5E4 8009C9E4 8FA60034 */  lw         $a2, 0x34($sp)
/* 9D5E8 8009C9E8 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D5EC 8009C9EC 0C02B620 */  jal        func_800AD880
/* 9D5F0 8009C9F0 24840048 */   addiu     $a0, $a0, 0x48
/* 9D5F4 8009C9F4 10000117 */  b          .L8009CE54
/* 9D5F8 8009C9F8 00000000 */   nop
/* 9D5FC 8009C9FC 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D600 8009CA00 00000000 */  nop
/* 9D604 8009CA04 8F2C003C */  lw         $t4, 0x3c($t9)
/* 9D608 8009CA08 00000000 */  nop
/* 9D60C 8009CA0C AFAC0030 */  sw         $t4, 0x30($sp)
/* 9D610 8009CA10 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D614 8009CA14 00000000 */  nop
/* 9D618 8009CA18 8DAE0040 */  lw         $t6, 0x40($t5)
/* 9D61C 8009CA1C 00000000 */  nop
/* 9D620 8009CA20 AFAE002C */  sw         $t6, 0x2c($sp)
/* 9D624 8009CA24 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D628 8009CA28 00000000 */  nop
/* 9D62C 8009CA2C 91F80044 */  lbu        $t8, 0x44($t7)
/* 9D630 8009CA30 00000000 */  nop
/* 9D634 8009CA34 A3B80027 */  sb         $t8, 0x27($sp)
/* 9D638 8009CA38 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D63C 8009CA3C 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9D640 8009CA40 8D190074 */  lw         $t9, 0x74($t0)
/* 9D644 8009CA44 27A50028 */  addiu      $a1, $sp, 0x28
/* 9D648 8009CA48 0320F809 */  jalr       $t9
/* 9D64C 8009CA4C 00000000 */   nop
/* 9D650 8009CA50 AFA20034 */  sw         $v0, 0x34($sp)
/* 9D654 8009CA54 C7A80028 */  lwc1       $f8, 0x28($sp)
/* 9D658 8009CA58 8FA90030 */  lw         $t1, 0x30($sp)
/* 9D65C 8009CA5C 00000000 */  nop
/* 9D660 8009CA60 E528002C */  swc1       $f8, 0x2c($t1)
/* 9D664 8009CA64 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9D668 8009CA68 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D66C 8009CA6C 93AD0027 */  lbu        $t5, 0x27($sp)
/* 9D670 8009CA70 C5700028 */  lwc1       $f16, 0x28($t3)
/* 9D674 8009CA74 C572002C */  lwc1       $f18, 0x2c($t3)
/* 9D678 8009CA78 8D4C0060 */  lw         $t4, 0x60($t2)
/* 9D67C 8009CA7C 46128102 */  mul.s      $f4, $f16, $f18
/* 9D680 8009CA80 000D7100 */  sll        $t6, $t5, 4
/* 9D684 8009CA84 018E7821 */  addu       $t7, $t4, $t6
/* 9D688 8009CA88 C5EA000C */  lwc1       $f10, 0xc($t7)
/* 9D68C 8009CA8C 8D440014 */  lw         $a0, 0x14($t2)
/* 9D690 8009CA90 46045182 */  mul.s      $f6, $f10, $f4
/* 9D694 8009CA94 25650004 */  addiu      $a1, $t3, 4
/* 9D698 8009CA98 44063000 */  mfc1       $a2, $f6
/* 9D69C 8009CA9C 0C02B7A4 */  jal        func_800ADE90
/* 9D6A0 8009CAA0 00000000 */   nop
/* 9D6A4 8009CAA4 24180017 */  addiu      $t8, $zero, 0x17
/* 9D6A8 8009CAA8 A7B8003C */  sh         $t8, 0x3c($sp)
/* 9D6AC 8009CAAC 8FA80030 */  lw         $t0, 0x30($sp)
/* 9D6B0 8009CAB0 00000000 */  nop
/* 9D6B4 8009CAB4 AFA80040 */  sw         $t0, 0x40($sp)
/* 9D6B8 8009CAB8 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9D6BC 8009CABC 00000000 */  nop
/* 9D6C0 8009CAC0 AFB90044 */  sw         $t9, 0x44($sp)
/* 9D6C4 8009CAC4 93A90027 */  lbu        $t1, 0x27($sp)
/* 9D6C8 8009CAC8 00000000 */  nop
/* 9D6CC 8009CACC A3A90048 */  sb         $t1, 0x48($sp)
/* 9D6D0 8009CAD0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D6D4 8009CAD4 8FA60034 */  lw         $a2, 0x34($sp)
/* 9D6D8 8009CAD8 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D6DC 8009CADC 0C02B620 */  jal        func_800AD880
/* 9D6E0 8009CAE0 24840048 */   addiu     $a0, $a0, 0x48
/* 9D6E4 8009CAE4 100000DB */  b          .L8009CE54
/* 9D6E8 8009CAE8 00000000 */   nop
/* 9D6EC 8009CAEC 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D6F0 8009CAF0 00000000 */  nop
/* 9D6F4 8009CAF4 01402025 */  or         $a0, $t2, $zero
/* 9D6F8 8009CAF8 0C027425 */  jal        func_8009D094
/* 9D6FC 8009CAFC 25450038 */   addiu     $a1, $t2, 0x38
/* 9D700 8009CB00 100000D4 */  b          .L8009CE54
/* 9D704 8009CB04 00000000 */   nop
/* 9D708 8009CB08 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D70C 8009CB0C 00000000 */  nop
/* 9D710 8009CB10 01A02025 */  or         $a0, $t5, $zero
/* 9D714 8009CB14 0C027790 */  jal        func_8009DE40
/* 9D718 8009CB18 25A50038 */   addiu     $a1, $t5, 0x38
/* 9D71C 8009CB1C 100000CD */  b          .L8009CE54
/* 9D720 8009CB20 00000000 */   nop
/* 9D724 8009CB24 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D728 8009CB28 00000000 */  nop
/* 9D72C 8009CB2C 858E003C */  lh         $t6, 0x3c($t4)
/* 9D730 8009CB30 00000000 */  nop
/* 9D734 8009CB34 A58E0032 */  sh         $t6, 0x32($t4)
/* 9D738 8009CB38 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D73C 8009CB3C 00000000 */  nop
/* 9D740 8009CB40 8DEB0064 */  lw         $t3, 0x64($t7)
/* 9D744 8009CB44 00000000 */  nop
/* 9D748 8009CB48 1160001A */  beqz       $t3, .L8009CBB4
/* 9D74C 8009CB4C AFAB0030 */   sw        $t3, 0x30($sp)
.L8009CB50:
/* 9D750 8009CB50 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D754 8009CB54 8FA5004C */  lw         $a1, 0x4c($sp)
/* 9D758 8009CB58 0C02B3CE */  jal        func_800ACF38
/* 9D75C 8009CB5C 00000000 */   nop
/* 9D760 8009CB60 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D764 8009CB64 00028400 */  sll        $s0, $v0, 0x10
/* 9D768 8009CB68 0010C403 */  sra        $t8, $s0, 0x10
/* 9D76C 8009CB6C 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D770 8009CB70 8D05001C */  lw         $a1, 0x1c($t0)
/* 9D774 8009CB74 0C02B3F9 */  jal        func_800ACFE4
/* 9D778 8009CB78 03008025 */   or        $s0, $t8, $zero
/* 9D77C 8009CB7C 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D780 8009CB80 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D784 8009CB84 00408825 */  or         $s1, $v0, $zero
/* 9D788 8009CB88 8F240014 */  lw         $a0, 0x14($t9)
/* 9D78C 8009CB8C 02203825 */  or         $a3, $s1, $zero
/* 9D790 8009CB90 02003025 */  or         $a2, $s0, $zero
/* 9D794 8009CB94 0C02B768 */  jal        func_800ADDA0
/* 9D798 8009CB98 24A50004 */   addiu     $a1, $a1, 4
/* 9D79C 8009CB9C 8FA90030 */  lw         $t1, 0x30($sp)
/* 9D7A0 8009CBA0 00000000 */  nop
/* 9D7A4 8009CBA4 8D2A0000 */  lw         $t2, ($t1)
/* 9D7A8 8009CBA8 00000000 */  nop
/* 9D7AC 8009CBAC 1540FFE8 */  bnez       $t2, .L8009CB50
/* 9D7B0 8009CBB0 AFAA0030 */   sw        $t2, 0x30($sp)
.L8009CBB4:
/* 9D7B4 8009CBB4 100000A7 */  b          .L8009CE54
/* 9D7B8 8009CBB8 00000000 */   nop
/* 9D7BC 8009CBBC 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D7C0 8009CBC0 24010001 */  addiu      $at, $zero, 1
/* 9D7C4 8009CBC4 8DAE002C */  lw         $t6, 0x2c($t5)
/* 9D7C8 8009CBC8 00000000 */  nop
/* 9D7CC 8009CBCC 11C10007 */  beq        $t6, $at, .L8009CBEC
/* 9D7D0 8009CBD0 00000000 */   nop
/* 9D7D4 8009CBD4 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D7D8 8009CBD8 240C0001 */  addiu      $t4, $zero, 1
/* 9D7DC 8009CBDC ADEC002C */  sw         $t4, 0x2c($t7)
/* 9D7E0 8009CBE0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D7E4 8009CBE4 0C0273B6 */  jal        func_8009CED8
/* 9D7E8 8009CBE8 00000000 */   nop
.L8009CBEC:
/* 9D7EC 8009CBEC 10000099 */  b          .L8009CE54
/* 9D7F0 8009CBF0 00000000 */   nop
/* 9D7F4 8009CBF4 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D7F8 8009CBF8 24010002 */  addiu      $at, $zero, 2
/* 9D7FC 8009CBFC 8D78002C */  lw         $t8, 0x2c($t3)
/* 9D800 8009CC00 00000000 */  nop
/* 9D804 8009CC04 17010028 */  bne        $t8, $at, .L8009CCA8
/* 9D808 8009CC08 00000000 */   nop
/* 9D80C 8009CC0C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D810 8009CC10 00000000 */  nop
/* 9D814 8009CC14 8D190064 */  lw         $t9, 0x64($t0)
/* 9D818 8009CC18 00000000 */  nop
/* 9D81C 8009CC1C 1320001F */  beqz       $t9, .L8009CC9C
/* 9D820 8009CC20 AFB90030 */   sw        $t9, 0x30($sp)
.L8009CC24:
/* 9D824 8009CC24 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D828 8009CC28 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D82C 8009CC2C 8D240014 */  lw         $a0, 0x14($t1)
/* 9D830 8009CC30 0C02B6F4 */  jal        func_800ADBD0
/* 9D834 8009CC34 24A50004 */   addiu     $a1, $a1, 4
/* 9D838 8009CC38 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D83C 8009CC3C 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D840 8009CC40 8D440014 */  lw         $a0, 0x14($t2)
/* 9D844 8009CC44 0C02B728 */  jal        func_800ADCA0
/* 9D848 8009CC48 24A50004 */   addiu     $a1, $a1, 4
/* 9D84C 8009CC4C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9D850 8009CC50 00000000 */  nop
/* 9D854 8009CC54 91AE0037 */  lbu        $t6, 0x37($t5)
/* 9D858 8009CC58 00000000 */  nop
/* 9D85C 8009CC5C 11C00005 */  beqz       $t6, .L8009CC74
/* 9D860 8009CC60 00000000 */   nop
/* 9D864 8009CC64 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D868 8009CC68 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D86C 8009CC6C 0C02B56E */  jal        func_800AD5B8
/* 9D870 8009CC70 00000000 */   nop
.L8009CC74:
/* 9D874 8009CC74 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D878 8009CC78 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D87C 8009CC7C 0C02B302 */  jal        func_800ACC08
/* 9D880 8009CC80 24A50004 */   addiu     $a1, $a1, 4
/* 9D884 8009CC84 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D888 8009CC88 00000000 */  nop
/* 9D88C 8009CC8C 8D8F0064 */  lw         $t7, 0x64($t4)
/* 9D890 8009CC90 00000000 */  nop
/* 9D894 8009CC94 15E0FFE3 */  bnez       $t7, .L8009CC24
/* 9D898 8009CC98 AFAF0030 */   sw        $t7, 0x30($sp)
.L8009CC9C:
/* 9D89C 8009CC9C 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D8A0 8009CCA0 00000000 */  nop
/* 9D8A4 8009CCA4 AD60002C */  sw         $zero, 0x2c($t3)
.L8009CCA8:
/* 9D8A8 8009CCA8 1000006A */  b          .L8009CE54
/* 9D8AC 8009CCAC 00000000 */   nop
/* 9D8B0 8009CCB0 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D8B4 8009CCB4 24010001 */  addiu      $at, $zero, 1
/* 9D8B8 8009CCB8 8F08002C */  lw         $t0, 0x2c($t8)
/* 9D8BC 8009CCBC 00000000 */  nop
/* 9D8C0 8009CCC0 15010030 */  bne        $t0, $at, .L8009CD84
/* 9D8C4 8009CCC4 00000000 */   nop
/* 9D8C8 8009CCC8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D8CC 8009CCCC 00002825 */  or         $a1, $zero, $zero
/* 9D8D0 8009CCD0 0C02B6A4 */  jal        func_800ADA90
/* 9D8D4 8009CCD4 24840048 */   addiu     $a0, $a0, 0x48
/* 9D8D8 8009CCD8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D8DC 8009CCDC 24050015 */  addiu      $a1, $zero, 0x15
/* 9D8E0 8009CCE0 0C02B6A4 */  jal        func_800ADA90
/* 9D8E4 8009CCE4 24840048 */   addiu     $a0, $a0, 0x48
/* 9D8E8 8009CCE8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D8EC 8009CCEC 24050002 */  addiu      $a1, $zero, 2
/* 9D8F0 8009CCF0 0C02B6A4 */  jal        func_800ADA90
/* 9D8F4 8009CCF4 24840048 */   addiu     $a0, $a0, 0x48
/* 9D8F8 8009CCF8 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D8FC 8009CCFC 00000000 */  nop
/* 9D900 8009CD00 8F290064 */  lw         $t1, 0x64($t9)
/* 9D904 8009CD04 00000000 */  nop
/* 9D908 8009CD08 11200013 */  beqz       $t1, .L8009CD58
/* 9D90C 8009CD0C AFA90030 */   sw        $t1, 0x30($sp)
.L8009CD10:
/* 9D910 8009CD10 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D914 8009CD14 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D918 8009CD18 3406C350 */  ori        $a2, $zero, 0xc350
/* 9D91C 8009CD1C 0C02B487 */  jal        func_800AD21C
/* 9D920 8009CD20 24A50004 */   addiu     $a1, $a1, 4
/* 9D924 8009CD24 10400006 */  beqz       $v0, .L8009CD40
/* 9D928 8009CD28 00000000 */   nop
/* 9D92C 8009CD2C 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D930 8009CD30 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D934 8009CD34 3406C350 */  ori        $a2, $zero, 0xc350
/* 9D938 8009CD38 0C02B429 */  jal        func_800AD0A4
/* 9D93C 8009CD3C 24A50004 */   addiu     $a1, $a1, 4
.L8009CD40:
/* 9D940 8009CD40 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9D944 8009CD44 00000000 */  nop
/* 9D948 8009CD48 8D4D0000 */  lw         $t5, ($t2)
/* 9D94C 8009CD4C 00000000 */  nop
/* 9D950 8009CD50 15A0FFEF */  bnez       $t5, .L8009CD10
/* 9D954 8009CD54 AFAD0030 */   sw        $t5, 0x30($sp)
.L8009CD58:
/* 9D958 8009CD58 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D95C 8009CD5C 240E0002 */  addiu      $t6, $zero, 2
/* 9D960 8009CD60 AD8E002C */  sw         $t6, 0x2c($t4)
/* 9D964 8009CD64 240F0010 */  addiu      $t7, $zero, 0x10
/* 9D968 8009CD68 A7AF003C */  sh         $t7, 0x3c($sp)
/* 9D96C 8009CD6C 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D970 8009CD70 3C067FFF */  lui        $a2, 0x7fff
/* 9D974 8009CD74 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 9D978 8009CD78 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D97C 8009CD7C 0C02B620 */  jal        func_800AD880
/* 9D980 8009CD80 24840048 */   addiu     $a0, $a0, 0x48
.L8009CD84:
/* 9D984 8009CD84 10000033 */  b          .L8009CE54
/* 9D988 8009CD88 00000000 */   nop
/* 9D98C 8009CD8C 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D990 8009CD90 00000000 */  nop
/* 9D994 8009CD94 9178003C */  lbu        $t8, 0x3c($t3)
/* 9D998 8009CD98 00000000 */  nop
/* 9D99C 8009CD9C A3B80027 */  sb         $t8, 0x27($sp)
/* 9D9A0 8009CDA0 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D9A4 8009CDA4 93AA0027 */  lbu        $t2, 0x27($sp)
/* 9D9A8 8009CDA8 8D090060 */  lw         $t1, 0x60($t0)
/* 9D9AC 8009CDAC 9119003D */  lbu        $t9, 0x3d($t0)
/* 9D9B0 8009CDB0 000A6900 */  sll        $t5, $t2, 4
/* 9D9B4 8009CDB4 012D7021 */  addu       $t6, $t1, $t5
/* 9D9B8 8009CDB8 A1D90008 */  sb         $t9, 8($t6)
/* 9D9BC 8009CDBC 10000025 */  b          .L8009CE54
/* 9D9C0 8009CDC0 00000000 */   nop
/* 9D9C4 8009CDC4 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D9C8 8009CDC8 00000000 */  nop
/* 9D9CC 8009CDCC 8D8F003C */  lw         $t7, 0x3c($t4)
/* 9D9D0 8009CDD0 00000000 */  nop
/* 9D9D4 8009CDD4 AD8F0018 */  sw         $t7, 0x18($t4)
/* 9D9D8 8009CDD8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D9DC 8009CDDC 3C0548F4 */  lui        $a1, 0x48f4
/* 9D9E0 8009CDE0 0C02788C */  jal        func_8009E230
/* 9D9E4 8009CDE4 34A52400 */   ori       $a1, $a1, 0x2400
/* 9D9E8 8009CDE8 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D9EC 8009CDEC 00000000 */  nop
/* 9D9F0 8009CDF0 8D780020 */  lw         $t8, 0x20($t3)
/* 9D9F4 8009CDF4 00000000 */  nop
/* 9D9F8 8009CDF8 13000006 */  beqz       $t8, .L8009CE14
/* 9D9FC 8009CDFC 00000000 */   nop
/* 9DA00 8009CE00 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9DA04 8009CE04 00000000 */  nop
/* 9DA08 8009CE08 8D050020 */  lw         $a1, 0x20($t0)
/* 9DA0C 8009CE0C 0C02B4CF */  jal        func_800AD33C
/* 9DA10 8009CE10 01002025 */   or        $a0, $t0, $zero
.L8009CE14:
/* 9DA14 8009CE14 1000000F */  b          .L8009CE54
/* 9DA18 8009CE18 00000000 */   nop
/* 9DA1C 8009CE1C 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9DA20 8009CE20 00000000 */  nop
/* 9DA24 8009CE24 8D49003C */  lw         $t1, 0x3c($t2)
/* 9DA28 8009CE28 00000000 */  nop
/* 9DA2C 8009CE2C AD490020 */  sw         $t1, 0x20($t2)
/* 9DA30 8009CE30 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9DA34 8009CE34 00000000 */  nop
/* 9DA38 8009CE38 8DA50020 */  lw         $a1, 0x20($t5)
/* 9DA3C 8009CE3C 0C02B4CF */  jal        func_800AD33C
/* 9DA40 8009CE40 01A02025 */   or        $a0, $t5, $zero
/* 9DA44 8009CE44 10000003 */  b          .L8009CE54
/* 9DA48 8009CE48 00000000 */   nop
/* 9DA4C 8009CE4C 10000001 */  b          .L8009CE54
/* 9DA50 8009CE50 00000000 */   nop
.L8009CE54:
/* 9DA54 8009CE54 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9DA58 8009CE58 00000000 */  nop
/* 9DA5C 8009CE5C 27240048 */  addiu      $a0, $t9, 0x48
/* 9DA60 8009CE60 0C02B5F7 */  jal        func_800AD7DC
/* 9DA64 8009CE64 27250038 */   addiu     $a1, $t9, 0x38
/* 9DA68 8009CE68 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9DA6C 8009CE6C 00000000 */  nop
/* 9DA70 8009CE70 ADC20028 */  sw         $v0, 0x28($t6)
/* 9DA74 8009CE74 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9DA78 8009CE78 00000000 */  nop
/* 9DA7C 8009CE7C 8DEC0028 */  lw         $t4, 0x28($t7)
/* 9DA80 8009CE80 00000000 */  nop
/* 9DA84 8009CE84 1180FE11 */  beqz       $t4, .L8009C6CC
/* 9DA88 8009CE88 00000000 */   nop
/* 9DA8C 8009CE8C 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9DA90 8009CE90 00000000 */  nop
/* 9DA94 8009CE94 8D78001C */  lw         $t8, 0x1c($t3)
/* 9DA98 8009CE98 8D680028 */  lw         $t0, 0x28($t3)
/* 9DA9C 8009CE9C 00000000 */  nop
/* 9DAA0 8009CEA0 03084821 */  addu       $t1, $t8, $t0
/* 9DAA4 8009CEA4 AD69001C */  sw         $t1, 0x1c($t3)
/* 9DAA8 8009CEA8 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9DAAC 8009CEAC 00000000 */  nop
/* 9DAB0 8009CEB0 8D420028 */  lw         $v0, 0x28($t2)
/* 9DAB4 8009CEB4 10000003 */  b          .L8009CEC4
/* 9DAB8 8009CEB8 00000000 */   nop
/* 9DABC 8009CEBC 10000001 */  b          .L8009CEC4
/* 9DAC0 8009CEC0 00000000 */   nop
.L8009CEC4:
/* 9DAC4 8009CEC4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9DAC8 8009CEC8 8FB00014 */  lw         $s0, 0x14($sp)
/* 9DACC 8009CECC 8FB10018 */  lw         $s1, 0x18($sp)
/* 9DAD0 8009CED0 03E00008 */  jr         $ra
/* 9DAD4 8009CED4 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8009CED8
/* 9DAD8 8009CED8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9DADC 8009CEDC AFBF0014 */  sw         $ra, 0x14($sp)
/* 9DAE0 8009CEE0 AFA40030 */  sw         $a0, 0x30($sp)
/* 9DAE4 8009CEE4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9DAE8 8009CEE8 24010001 */  addiu      $at, $zero, 1
/* 9DAEC 8009CEEC 8DCF002C */  lw         $t7, 0x2c($t6)
/* 9DAF0 8009CEF0 00000000 */  nop
/* 9DAF4 8009CEF4 15E10005 */  bne        $t7, $at, .L8009CF0C
/* 9DAF8 8009CEF8 00000000 */   nop
/* 9DAFC 8009CEFC 8DD80018 */  lw         $t8, 0x18($t6)
/* 9DB00 8009CF00 00000000 */  nop
/* 9DB04 8009CF04 17000003 */  bnez       $t8, .L8009CF14
/* 9DB08 8009CF08 00000000 */   nop
.L8009CF0C:
/* 9DB0C 8009CF0C 10000016 */  b          .L8009CF68
/* 9DB10 8009CF10 00000000 */   nop
.L8009CF14:
/* 9DB14 8009CF14 8FB90030 */  lw         $t9, 0x30($sp)
/* 9DB18 8009CF18 27A5001C */  addiu      $a1, $sp, 0x1c
/* 9DB1C 8009CF1C 8F240018 */  lw         $a0, 0x18($t9)
/* 9DB20 8009CF20 0C027C6B */  jal        func_8009F1AC
/* 9DB24 8009CF24 00000000 */   nop
/* 9DB28 8009CF28 14400003 */  bnez       $v0, .L8009CF38
/* 9DB2C 8009CF2C 00000000 */   nop
/* 9DB30 8009CF30 1000000D */  b          .L8009CF68
/* 9DB34 8009CF34 00000000 */   nop
.L8009CF38:
/* 9DB38 8009CF38 A7A00020 */  sh         $zero, 0x20($sp)
/* 9DB3C 8009CF3C 8FA80030 */  lw         $t0, 0x30($sp)
/* 9DB40 8009CF40 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9DB44 8009CF44 8D090024 */  lw         $t1, 0x24($t0)
/* 9DB48 8009CF48 27A50020 */  addiu      $a1, $sp, 0x20
/* 9DB4C 8009CF4C 012A0019 */  multu      $t1, $t2
/* 9DB50 8009CF50 25040048 */  addiu      $a0, $t0, 0x48
/* 9DB54 8009CF54 00003012 */  mflo       $a2
/* 9DB58 8009CF58 0C02B620 */  jal        func_800AD880
/* 9DB5C 8009CF5C 00000000 */   nop
/* 9DB60 8009CF60 10000001 */  b          .L8009CF68
/* 9DB64 8009CF64 00000000 */   nop
.L8009CF68:
/* 9DB68 8009CF68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9DB6C 8009CF6C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9DB70 8009CF70 03E00008 */  jr         $ra
/* 9DB74 8009CF74 00000000 */   nop

glabel func_8009CF78
/* 9DB78 8009CF78 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9DB7C 8009CF7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9DB80 8009CF80 AFA40028 */  sw         $a0, 0x28($sp)
/* 9DB84 8009CF84 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9DB88 8009CF88 00000000 */  nop
/* 9DB8C 8009CF8C 8DCF0018 */  lw         $t7, 0x18($t6)
/* 9DB90 8009CF90 00000000 */  nop
/* 9DB94 8009CF94 15E00003 */  bnez       $t7, .L8009CFA4
/* 9DB98 8009CF98 00000000 */   nop
/* 9DB9C 8009CF9C 10000039 */  b          .L8009D084
/* 9DBA0 8009CFA0 00000000 */   nop
.L8009CFA4:
/* 9DBA4 8009CFA4 8FB80028 */  lw         $t8, 0x28($sp)
/* 9DBA8 8009CFA8 27A50018 */  addiu      $a1, $sp, 0x18
/* 9DBAC 8009CFAC 8F040018 */  lw         $a0, 0x18($t8)
/* 9DBB0 8009CFB0 0C027C07 */  jal        func_8009F01C
/* 9DBB4 8009CFB4 00000000 */   nop
/* 9DBB8 8009CFB8 87B90018 */  lh         $t9, 0x18($sp)
/* 9DBBC 8009CFBC 00000000 */  nop
/* 9DBC0 8009CFC0 2728FFFF */  addiu      $t0, $t9, -1
/* 9DBC4 8009CFC4 2D010014 */  sltiu      $at, $t0, 0x14
/* 9DBC8 8009CFC8 1020002A */  beqz       $at, .L8009D074
/* 9DBCC 8009CFCC 00000000 */   nop
/* 9DBD0 8009CFD0 00084080 */  sll        $t0, $t0, 2
/* 9DBD4 8009CFD4 3C01800F */  lui        $at, %hi(D_800ED750)
/* 9DBD8 8009CFD8 00280821 */  addu       $at, $at, $t0
/* 9DBDC 8009CFDC 8C28D750 */  lw         $t0, %lo(D_800ED750)($at)
/* 9DBE0 8009CFE0 00000000 */  nop
/* 9DBE4 8009CFE4 01000008 */  jr         $t0
/* 9DBE8 8009CFE8 00000000 */   nop
/* 9DBEC 8009CFEC 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DBF0 8009CFF0 0C027425 */  jal        func_8009D094
/* 9DBF4 8009CFF4 27A50018 */   addiu     $a1, $sp, 0x18
/* 9DBF8 8009CFF8 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DBFC 8009CFFC 0C0273B6 */  jal        func_8009CED8
/* 9DC00 8009D000 00000000 */   nop
/* 9DC04 8009D004 1000001D */  b          .L8009D07C
/* 9DC08 8009D008 00000000 */   nop
/* 9DC0C 8009D00C 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DC10 8009D010 0C027790 */  jal        func_8009DE40
/* 9DC14 8009D014 27A50018 */   addiu     $a1, $sp, 0x18
/* 9DC18 8009D018 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DC1C 8009D01C 0C0273B6 */  jal        func_8009CED8
/* 9DC20 8009D020 00000000 */   nop
/* 9DC24 8009D024 10000015 */  b          .L8009D07C
/* 9DC28 8009D028 00000000 */   nop
/* 9DC2C 8009D02C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9DC30 8009D030 24090002 */  addiu      $t1, $zero, 2
/* 9DC34 8009D034 AD49002C */  sw         $t1, 0x2c($t2)
/* 9DC38 8009D038 240B0010 */  addiu      $t3, $zero, 0x10
/* 9DC3C 8009D03C A7AB0018 */  sh         $t3, 0x18($sp)
/* 9DC40 8009D040 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DC44 8009D044 3C067FFF */  lui        $a2, 0x7fff
/* 9DC48 8009D048 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 9DC4C 8009D04C 27A50018 */  addiu      $a1, $sp, 0x18
/* 9DC50 8009D050 0C02B620 */  jal        func_800AD880
/* 9DC54 8009D054 24840048 */   addiu     $a0, $a0, 0x48
/* 9DC58 8009D058 10000008 */  b          .L8009D07C
/* 9DC5C 8009D05C 00000000 */   nop
/* 9DC60 8009D060 8FA40028 */  lw         $a0, 0x28($sp)
/* 9DC64 8009D064 0C0273B6 */  jal        func_8009CED8
/* 9DC68 8009D068 00000000 */   nop
/* 9DC6C 8009D06C 10000003 */  b          .L8009D07C
/* 9DC70 8009D070 00000000 */   nop
.L8009D074:
/* 9DC74 8009D074 10000001 */  b          .L8009D07C
/* 9DC78 8009D078 00000000 */   nop
.L8009D07C:
/* 9DC7C 8009D07C 10000001 */  b          .L8009D084
/* 9DC80 8009D080 00000000 */   nop
.L8009D084:
/* 9DC84 8009D084 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9DC88 8009D088 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9DC8C 8009D08C 03E00008 */  jr         $ra
/* 9DC90 8009D090 00000000 */   nop

glabel func_8009D094
/* 9DC94 8009D094 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* 9DC98 8009D098 AFBF002C */  sw         $ra, 0x2c($sp)
/* 9DC9C 8009D09C AFA400A8 */  sw         $a0, 0xa8($sp)
/* 9DCA0 8009D0A0 AFA500AC */  sw         $a1, 0xac($sp)
/* 9DCA4 8009D0A4 AFB10028 */  sw         $s1, 0x28($sp)
/* 9DCA8 8009D0A8 AFB00024 */  sw         $s0, 0x24($sp)
/* 9DCAC 8009D0AC 8FAE00AC */  lw         $t6, 0xac($sp)
/* 9DCB0 8009D0B0 00000000 */  nop
/* 9DCB4 8009D0B4 25CF0004 */  addiu      $t7, $t6, 4
/* 9DCB8 8009D0B8 AFAF0090 */  sw         $t7, 0x90($sp)
/* 9DCBC 8009D0BC 8FB80090 */  lw         $t8, 0x90($sp)
/* 9DCC0 8009D0C0 00000000 */  nop
/* 9DCC4 8009D0C4 93190004 */  lbu        $t9, 4($t8)
/* 9DCC8 8009D0C8 00000000 */  nop
/* 9DCCC 8009D0CC 332800F0 */  andi       $t0, $t9, 0xf0
/* 9DCD0 8009D0D0 AFA8009C */  sw         $t0, 0x9c($sp)
/* 9DCD4 8009D0D4 8FA90090 */  lw         $t1, 0x90($sp)
/* 9DCD8 8009D0D8 00000000 */  nop
/* 9DCDC 8009D0DC 912A0004 */  lbu        $t2, 4($t1)
/* 9DCE0 8009D0E0 00000000 */  nop
/* 9DCE4 8009D0E4 314B000F */  andi       $t3, $t2, 0xf
/* 9DCE8 8009D0E8 A3AB009B */  sb         $t3, 0x9b($sp)
/* 9DCEC 8009D0EC 8FAC0090 */  lw         $t4, 0x90($sp)
/* 9DCF0 8009D0F0 00000000 */  nop
/* 9DCF4 8009D0F4 918D0005 */  lbu        $t5, 5($t4)
/* 9DCF8 8009D0F8 00000000 */  nop
/* 9DCFC 8009D0FC A3AD009A */  sb         $t5, 0x9a($sp)
/* 9DD00 8009D100 A3AD0098 */  sb         $t5, 0x98($sp)
/* 9DD04 8009D104 8FAE0090 */  lw         $t6, 0x90($sp)
/* 9DD08 8009D108 00000000 */  nop
/* 9DD0C 8009D10C 91CF0006 */  lbu        $t7, 6($t6)
/* 9DD10 8009D110 00000000 */  nop
/* 9DD14 8009D114 A3AF0099 */  sb         $t7, 0x99($sp)
/* 9DD18 8009D118 A3AF0097 */  sb         $t7, 0x97($sp)
/* 9DD1C 8009D11C 8FB8009C */  lw         $t8, 0x9c($sp)
/* 9DD20 8009D120 00000000 */  nop
/* 9DD24 8009D124 2719FF80 */  addiu      $t9, $t8, -0x80
/* 9DD28 8009D128 2F210061 */  sltiu      $at, $t9, 0x61
/* 9DD2C 8009D12C 1020033B */  beqz       $at, .L8009DE1C
/* 9DD30 8009D130 00000000 */   nop
/* 9DD34 8009D134 0019C880 */  sll        $t9, $t9, 2
/* 9DD38 8009D138 3C01800F */  lui        $at, %hi(D_800ED7A0)
/* 9DD3C 8009D13C 00390821 */  addu       $at, $at, $t9
/* 9DD40 8009D140 8C39D7A0 */  lw         $t9, %lo(D_800ED7A0)($at)
/* 9DD44 8009D144 00000000 */  nop
/* 9DD48 8009D148 03200008 */  jr         $t9
/* 9DD4C 8009D14C 00000000 */   nop
/* 9DD50 8009D150 93A80099 */  lbu        $t0, 0x99($sp)
/* 9DD54 8009D154 00000000 */  nop
/* 9DD58 8009D158 11000181 */  beqz       $t0, .L8009D760
/* 9DD5C 8009D15C 00000000 */   nop
/* 9DD60 8009D160 8FA900A8 */  lw         $t1, 0xa8($sp)
/* 9DD64 8009D164 24010001 */  addiu      $at, $zero, 1
/* 9DD68 8009D168 8D2A002C */  lw         $t2, 0x2c($t1)
/* 9DD6C 8009D16C 00000000 */  nop
/* 9DD70 8009D170 11410003 */  beq        $t2, $at, .L8009D180
/* 9DD74 8009D174 00000000 */   nop
/* 9DD78 8009D178 1000032A */  b          .L8009DE24
/* 9DD7C 8009D17C 00000000 */   nop
.L8009D180:
/* 9DD80 8009D180 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DD84 8009D184 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9DD88 8009D188 93A60099 */  lbu        $a2, 0x99($sp)
/* 9DD8C 8009D18C 93A7009B */  lbu        $a3, 0x9b($sp)
/* 9DD90 8009D190 0C02B35F */  jal        func_800ACD7C
/* 9DD94 8009D194 00000000 */   nop
/* 9DD98 8009D198 AFA20060 */  sw         $v0, 0x60($sp)
/* 9DD9C 8009D19C 8FAB0060 */  lw         $t3, 0x60($sp)
/* 9DDA0 8009D1A0 00000000 */  nop
/* 9DDA4 8009D1A4 15600003 */  bnez       $t3, .L8009D1B4
/* 9DDA8 8009D1A8 00000000 */   nop
/* 9DDAC 8009D1AC 1000031F */  b          .L8009DE2C
/* 9DDB0 8009D1B0 00000000 */   nop
.L8009D1B4:
/* 9DDB4 8009D1B4 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9DDB8 8009D1B8 93AE009B */  lbu        $t6, 0x9b($sp)
/* 9DDBC 8009D1BC 8D8D0060 */  lw         $t5, 0x60($t4)
/* 9DDC0 8009D1C0 000E7900 */  sll        $t7, $t6, 4
/* 9DDC4 8009D1C4 01AFC021 */  addu       $t8, $t5, $t7
/* 9DDC8 8009D1C8 93190008 */  lbu        $t9, 8($t8)
/* 9DDCC 8009D1CC 00000000 */  nop
/* 9DDD0 8009D1D0 A7B90064 */  sh         $t9, 0x64($sp)
/* 9DDD4 8009D1D4 A7A00066 */  sh         $zero, 0x66($sp)
/* 9DDD8 8009D1D8 A3A00068 */  sb         $zero, 0x68($sp)
/* 9DDDC 8009D1DC 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DDE0 8009D1E0 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9DDE4 8009D1E4 93A60099 */  lbu        $a2, 0x99($sp)
/* 9DDE8 8009D1E8 93A7009B */  lbu        $a3, 0x9b($sp)
/* 9DDEC 8009D1EC 0C02B2DB */  jal        func_800ACB6C
/* 9DDF0 8009D1F0 00000000 */   nop
/* 9DDF4 8009D1F4 AFA20074 */  sw         $v0, 0x74($sp)
/* 9DDF8 8009D1F8 8FA80074 */  lw         $t0, 0x74($sp)
/* 9DDFC 8009D1FC 00000000 */  nop
/* 9DE00 8009D200 15000003 */  bnez       $t0, .L8009D210
/* 9DE04 8009D204 00000000 */   nop
/* 9DE08 8009D208 10000308 */  b          .L8009DE2C
/* 9DE0C 8009D20C 00000000 */   nop
.L8009D210:
/* 9DE10 8009D210 8FA90074 */  lw         $t1, 0x74($sp)
/* 9DE14 8009D214 00000000 */  nop
/* 9DE18 8009D218 252A0004 */  addiu      $t2, $t1, 4
/* 9DE1C 8009D21C AFAA00A4 */  sw         $t2, 0xa4($sp)
/* 9DE20 8009D220 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9DE24 8009D224 8FA500A4 */  lw         $a1, 0xa4($sp)
/* 9DE28 8009D228 8D640014 */  lw         $a0, 0x14($t3)
/* 9DE2C 8009D22C 0C02B7DC */  jal        func_800ADF70
/* 9DE30 8009D230 27A60064 */   addiu     $a2, $sp, 0x64
/* 9DE34 8009D234 8FAC0060 */  lw         $t4, 0x60($sp)
/* 9DE38 8009D238 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DE3C 8009D23C 00000000 */  nop
/* 9DE40 8009D240 ADCC0020 */  sw         $t4, 0x20($t6)
/* 9DE44 8009D244 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9DE48 8009D248 00000000 */  nop
/* 9DE4C 8009D24C A1A00034 */  sb         $zero, 0x34($t5)
/* 9DE50 8009D250 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* 9DE54 8009D254 93B9009B */  lbu        $t9, 0x9b($sp)
/* 9DE58 8009D258 8DF80060 */  lw         $t8, 0x60($t7)
/* 9DE5C 8009D25C 00194100 */  sll        $t0, $t9, 4
/* 9DE60 8009D260 03084821 */  addu       $t1, $t8, $t0
/* 9DE64 8009D264 912A000B */  lbu        $t2, 0xb($t1)
/* 9DE68 8009D268 00000000 */  nop
/* 9DE6C 8009D26C 29410040 */  slti       $at, $t2, 0x40
/* 9DE70 8009D270 14200005 */  bnez       $at, .L8009D288
/* 9DE74 8009D274 00000000 */   nop
/* 9DE78 8009D278 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DE7C 8009D27C 240B0002 */  addiu      $t3, $zero, 2
/* 9DE80 8009D280 10000004 */  b          .L8009D294
/* 9DE84 8009D284 A18B0035 */   sb        $t3, 0x35($t4)
.L8009D288:
/* 9DE88 8009D288 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DE8C 8009D28C 00000000 */  nop
/* 9DE90 8009D290 A1C00035 */  sb         $zero, 0x35($t6)
.L8009D294:
/* 9DE94 8009D294 8FAF0060 */  lw         $t7, 0x60($sp)
/* 9DE98 8009D298 93AD009A */  lbu        $t5, 0x9a($sp)
/* 9DE9C 8009D29C 8DF90004 */  lw         $t9, 4($t7)
/* 9DEA0 8009D2A0 00000000 */  nop
/* 9DEA4 8009D2A4 93380004 */  lbu        $t8, 4($t9)
/* 9DEA8 8009D2A8 832A0005 */  lb         $t2, 5($t9)
/* 9DEAC 8009D2AC 01B84023 */  subu       $t0, $t5, $t8
/* 9DEB0 8009D2B0 00084880 */  sll        $t1, $t0, 2
/* 9DEB4 8009D2B4 01284823 */  subu       $t1, $t1, $t0
/* 9DEB8 8009D2B8 000948C0 */  sll        $t1, $t1, 3
/* 9DEBC 8009D2BC 01284821 */  addu       $t1, $t1, $t0
/* 9DEC0 8009D2C0 00094880 */  sll        $t1, $t1, 2
/* 9DEC4 8009D2C4 012A5821 */  addu       $t3, $t1, $t2
/* 9DEC8 8009D2C8 A7AB005E */  sh         $t3, 0x5e($sp)
/* 9DECC 8009D2CC 87A4005E */  lh         $a0, 0x5e($sp)
/* 9DED0 8009D2D0 0C02B8B4 */  jal        func_800AE2D0
/* 9DED4 8009D2D4 00000000 */   nop
/* 9DED8 8009D2D8 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DEDC 8009D2DC 00000000 */  nop
/* 9DEE0 8009D2E0 E5800028 */  swc1       $f0, 0x28($t4)
/* 9DEE4 8009D2E4 8FAE0060 */  lw         $t6, 0x60($sp)
/* 9DEE8 8009D2E8 8FB80074 */  lw         $t8, 0x74($sp)
/* 9DEEC 8009D2EC 8DCF0000 */  lw         $t7, ($t6)
/* 9DEF0 8009D2F0 00000000 */  nop
/* 9DEF4 8009D2F4 91ED000C */  lbu        $t5, 0xc($t7)
/* 9DEF8 8009D2F8 00000000 */  nop
/* 9DEFC 8009D2FC A30D0030 */  sb         $t5, 0x30($t8)
/* 9DF00 8009D300 8FA90060 */  lw         $t1, 0x60($sp)
/* 9DF04 8009D304 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9DF08 8009D308 8D2A0000 */  lw         $t2, ($t1)
/* 9DF0C 8009D30C 8D19001C */  lw         $t9, 0x1c($t0)
/* 9DF10 8009D310 8D4B0000 */  lw         $t3, ($t2)
/* 9DF14 8009D314 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DF18 8009D318 032B6021 */  addu       $t4, $t9, $t3
/* 9DF1C 8009D31C ADCC0024 */  sw         $t4, 0x24($t6)
/* 9DF20 8009D320 8FAF0074 */  lw         $t7, 0x74($sp)
/* 9DF24 8009D324 00000000 */  nop
/* 9DF28 8009D328 A1E00037 */  sb         $zero, 0x37($t7)
/* 9DF2C 8009D32C 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9DF30 8009D330 93A8009B */  lbu        $t0, 0x9b($sp)
/* 9DF34 8009D334 8DB80060 */  lw         $t8, 0x60($t5)
/* 9DF38 8009D338 00084900 */  sll        $t1, $t0, 4
/* 9DF3C 8009D33C 03095021 */  addu       $t2, $t8, $t1
/* 9DF40 8009D340 8D590000 */  lw         $t9, ($t2)
/* 9DF44 8009D344 00000000 */  nop
/* 9DF48 8009D348 AFB90048 */  sw         $t9, 0x48($sp)
/* 9DF4C 8009D34C 3C0142FE */  lui        $at, 0x42fe
/* 9DF50 8009D350 44812000 */  mtc1       $at, $f4
/* 9DF54 8009D354 00000000 */  nop
/* 9DF58 8009D358 E7A40054 */  swc1       $f4, 0x54($sp)
/* 9DF5C 8009D35C 8FAB0048 */  lw         $t3, 0x48($sp)
/* 9DF60 8009D360 00000000 */  nop
/* 9DF64 8009D364 916C0004 */  lbu        $t4, 4($t3)
/* 9DF68 8009D368 00000000 */  nop
/* 9DF6C 8009D36C 1180002C */  beqz       $t4, .L8009D420
/* 9DF70 8009D370 00000000 */   nop
/* 9DF74 8009D374 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9DF78 8009D378 00000000 */  nop
/* 9DF7C 8009D37C 8DCF0070 */  lw         $t7, 0x70($t6)
/* 9DF80 8009D380 00000000 */  nop
/* 9DF84 8009D384 11E00026 */  beqz       $t7, .L8009D420
/* 9DF88 8009D388 00000000 */   nop
/* 9DF8C 8009D38C 8FAD0048 */  lw         $t5, 0x48($sp)
/* 9DF90 8009D390 8FA900A8 */  lw         $t1, 0xa8($sp)
/* 9DF94 8009D394 91A80006 */  lbu        $t0, 6($t5)
/* 9DF98 8009D398 91A60004 */  lbu        $a2, 4($t5)
/* 9DF9C 8009D39C 91A70005 */  lbu        $a3, 5($t5)
/* 9DFA0 8009D3A0 AFA80010 */  sw         $t0, 0x10($sp)
/* 9DFA4 8009D3A4 91B80007 */  lbu        $t8, 7($t5)
/* 9DFA8 8009D3A8 27A4004C */  addiu      $a0, $sp, 0x4c
/* 9DFAC 8009D3AC AFB80014 */  sw         $t8, 0x14($sp)
/* 9DFB0 8009D3B0 8D390070 */  lw         $t9, 0x70($t1)
/* 9DFB4 8009D3B4 27A50054 */  addiu      $a1, $sp, 0x54
/* 9DFB8 8009D3B8 0320F809 */  jalr       $t9
/* 9DFBC 8009D3BC 00000000 */   nop
/* 9DFC0 8009D3C0 AFA20078 */  sw         $v0, 0x78($sp)
/* 9DFC4 8009D3C4 8FAA0078 */  lw         $t2, 0x78($sp)
/* 9DFC8 8009D3C8 00000000 */  nop
/* 9DFCC 8009D3CC 11400014 */  beqz       $t2, .L8009D420
/* 9DFD0 8009D3D0 00000000 */   nop
/* 9DFD4 8009D3D4 240B0016 */  addiu      $t3, $zero, 0x16
/* 9DFD8 8009D3D8 A7AB007C */  sh         $t3, 0x7c($sp)
/* 9DFDC 8009D3DC 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DFE0 8009D3E0 00000000 */  nop
/* 9DFE4 8009D3E4 AFAC0080 */  sw         $t4, 0x80($sp)
/* 9DFE8 8009D3E8 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9DFEC 8009D3EC 00000000 */  nop
/* 9DFF0 8009D3F0 AFAE0084 */  sw         $t6, 0x84($sp)
/* 9DFF4 8009D3F4 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DFF8 8009D3F8 8FA60078 */  lw         $a2, 0x78($sp)
/* 9DFFC 8009D3FC 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9E000 8009D400 0C02B620 */  jal        func_800AD880
/* 9E004 8009D404 24840048 */   addiu     $a0, $a0, 0x48
/* 9E008 8009D408 8FAF0074 */  lw         $t7, 0x74($sp)
/* 9E00C 8009D40C 00000000 */  nop
/* 9E010 8009D410 91E80037 */  lbu        $t0, 0x37($t7)
/* 9E014 8009D414 00000000 */  nop
/* 9E018 8009D418 350D0001 */  ori        $t5, $t0, 1
/* 9E01C 8009D41C A1ED0037 */  sb         $t5, 0x37($t7)
.L8009D420:
/* 9E020 8009D420 4458F800 */  cfc1       $t8, $31
/* 9E024 8009D424 24090001 */  addiu      $t1, $zero, 1
/* 9E028 8009D428 44C9F800 */  ctc1       $t1, $31
/* 9E02C 8009D42C C7A60054 */  lwc1       $f6, 0x54($sp)
/* 9E030 8009D430 00000000 */  nop
/* 9E034 8009D434 46003224 */  cvt.w.s    $f8, $f6
/* 9E038 8009D438 4449F800 */  cfc1       $t1, $31
/* 9E03C 8009D43C 00000000 */  nop
/* 9E040 8009D440 31210004 */  andi       $at, $t1, 4
/* 9E044 8009D444 31290078 */  andi       $t1, $t1, 0x78
/* 9E048 8009D448 11200014 */  beqz       $t1, .L8009D49C
/* 9E04C 8009D44C 00000000 */   nop
/* 9E050 8009D450 3C014F00 */  lui        $at, 0x4f00
/* 9E054 8009D454 44814000 */  mtc1       $at, $f8
/* 9E058 8009D458 24090001 */  addiu      $t1, $zero, 1
/* 9E05C 8009D45C 46083201 */  sub.s      $f8, $f6, $f8
/* 9E060 8009D460 44C9F800 */  ctc1       $t1, $31
/* 9E064 8009D464 00000000 */  nop
/* 9E068 8009D468 46004224 */  cvt.w.s    $f8, $f8
/* 9E06C 8009D46C 4449F800 */  cfc1       $t1, $31
/* 9E070 8009D470 00000000 */  nop
/* 9E074 8009D474 31210004 */  andi       $at, $t1, 4
/* 9E078 8009D478 31290078 */  andi       $t1, $t1, 0x78
/* 9E07C 8009D47C 15200005 */  bnez       $t1, .L8009D494
/* 9E080 8009D480 00000000 */   nop
/* 9E084 8009D484 44094000 */  mfc1       $t1, $f8
/* 9E088 8009D488 3C018000 */  lui        $at, 0x8000
/* 9E08C 8009D48C 10000007 */  b          .L8009D4AC
/* 9E090 8009D490 01214825 */   or        $t1, $t1, $at
.L8009D494:
/* 9E094 8009D494 10000005 */  b          .L8009D4AC
/* 9E098 8009D498 2409FFFF */   addiu     $t1, $zero, -1
.L8009D49C:
/* 9E09C 8009D49C 44094000 */  mfc1       $t1, $f8
/* 9E0A0 8009D4A0 00000000 */  nop
/* 9E0A4 8009D4A4 0520FFFB */  bltz       $t1, .L8009D494
/* 9E0A8 8009D4A8 00000000 */   nop
.L8009D4AC:
/* 9E0AC 8009D4AC 8FB90074 */  lw         $t9, 0x74($sp)
/* 9E0B0 8009D4B0 44D8F800 */  ctc1       $t8, $31
/* 9E0B4 8009D4B4 A3290036 */  sb         $t1, 0x36($t9)
/* 9E0B8 8009D4B8 00000000 */  nop
/* 9E0BC 8009D4BC 3C013F80 */  lui        $at, 0x3f80
/* 9E0C0 8009D4C0 44815000 */  mtc1       $at, $f10
/* 9E0C4 8009D4C4 00000000 */  nop
/* 9E0C8 8009D4C8 E7AA0054 */  swc1       $f10, 0x54($sp)
/* 9E0CC 8009D4CC 8FAA0048 */  lw         $t2, 0x48($sp)
/* 9E0D0 8009D4D0 00000000 */  nop
/* 9E0D4 8009D4D4 914B0008 */  lbu        $t3, 8($t2)
/* 9E0D8 8009D4D8 00000000 */  nop
/* 9E0DC 8009D4DC 1160002F */  beqz       $t3, .L8009D59C
/* 9E0E0 8009D4E0 00000000 */   nop
/* 9E0E4 8009D4E4 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E0E8 8009D4E8 00000000 */  nop
/* 9E0EC 8009D4EC 8D8E0070 */  lw         $t6, 0x70($t4)
/* 9E0F0 8009D4F0 00000000 */  nop
/* 9E0F4 8009D4F4 11C00029 */  beqz       $t6, .L8009D59C
/* 9E0F8 8009D4F8 00000000 */   nop
/* 9E0FC 8009D4FC 8FA80048 */  lw         $t0, 0x48($sp)
/* 9E100 8009D500 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E104 8009D504 910D000A */  lbu        $t5, 0xa($t0)
/* 9E108 8009D508 91060008 */  lbu        $a2, 8($t0)
/* 9E10C 8009D50C 91070009 */  lbu        $a3, 9($t0)
/* 9E110 8009D510 AFAD0010 */  sw         $t5, 0x10($sp)
/* 9E114 8009D514 910F000B */  lbu        $t7, 0xb($t0)
/* 9E118 8009D518 27A4004C */  addiu      $a0, $sp, 0x4c
/* 9E11C 8009D51C AFAF0014 */  sw         $t7, 0x14($sp)
/* 9E120 8009D520 8F190070 */  lw         $t9, 0x70($t8)
/* 9E124 8009D524 27A50054 */  addiu      $a1, $sp, 0x54
/* 9E128 8009D528 0320F809 */  jalr       $t9
/* 9E12C 8009D52C 00000000 */   nop
/* 9E130 8009D530 AFA20078 */  sw         $v0, 0x78($sp)
/* 9E134 8009D534 8FA90078 */  lw         $t1, 0x78($sp)
/* 9E138 8009D538 00000000 */  nop
/* 9E13C 8009D53C 11200017 */  beqz       $t1, .L8009D59C
/* 9E140 8009D540 00000000 */   nop
/* 9E144 8009D544 240A0017 */  addiu      $t2, $zero, 0x17
/* 9E148 8009D548 A7AA007C */  sh         $t2, 0x7c($sp)
/* 9E14C 8009D54C 8FAB0074 */  lw         $t3, 0x74($sp)
/* 9E150 8009D550 00000000 */  nop
/* 9E154 8009D554 AFAB0080 */  sw         $t3, 0x80($sp)
/* 9E158 8009D558 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9E15C 8009D55C 00000000 */  nop
/* 9E160 8009D560 AFAC0084 */  sw         $t4, 0x84($sp)
/* 9E164 8009D564 93AE009B */  lbu        $t6, 0x9b($sp)
/* 9E168 8009D568 00000000 */  nop
/* 9E16C 8009D56C A3AE0088 */  sb         $t6, 0x88($sp)
/* 9E170 8009D570 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E174 8009D574 8FA60078 */  lw         $a2, 0x78($sp)
/* 9E178 8009D578 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9E17C 8009D57C 0C02B620 */  jal        func_800AD880
/* 9E180 8009D580 24840048 */   addiu     $a0, $a0, 0x48
/* 9E184 8009D584 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9E188 8009D588 00000000 */  nop
/* 9E18C 8009D58C 91A80037 */  lbu        $t0, 0x37($t5)
/* 9E190 8009D590 00000000 */  nop
/* 9E194 8009D594 350F0002 */  ori        $t7, $t0, 2
/* 9E198 8009D598 A1AF0037 */  sb         $t7, 0x37($t5)
.L8009D59C:
/* 9E19C 8009D59C C7B00054 */  lwc1       $f16, 0x54($sp)
/* 9E1A0 8009D5A0 8FB80074 */  lw         $t8, 0x74($sp)
/* 9E1A4 8009D5A4 00000000 */  nop
/* 9E1A8 8009D5A8 E710002C */  swc1       $f16, 0x2c($t8)
/* 9E1AC 8009D5AC 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E1B0 8009D5B0 93AA009B */  lbu        $t2, 0x9b($sp)
/* 9E1B4 8009D5B4 8F290060 */  lw         $t1, 0x60($t9)
/* 9E1B8 8009D5B8 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9E1BC 8009D5BC 000A5900 */  sll        $t3, $t2, 4
/* 9E1C0 8009D5C0 012B6021 */  addu       $t4, $t1, $t3
/* 9E1C4 8009D5C4 C592000C */  lwc1       $f18, 0xc($t4)
/* 9E1C8 8009D5C8 C5C40028 */  lwc1       $f4, 0x28($t6)
/* 9E1CC 8009D5CC C5C8002C */  lwc1       $f8, 0x2c($t6)
/* 9E1D0 8009D5D0 46049182 */  mul.s      $f6, $f18, $f4
/* 9E1D4 8009D5D4 00000000 */  nop
/* 9E1D8 8009D5D8 46083282 */  mul.s      $f10, $f6, $f8
/* 9E1DC 8009D5DC E7AA0058 */  swc1       $f10, 0x58($sp)
/* 9E1E0 8009D5E0 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9E1E4 8009D5E4 93AD009B */  lbu        $t5, 0x9b($sp)
/* 9E1E8 8009D5E8 8D0F0060 */  lw         $t7, 0x60($t0)
/* 9E1EC 8009D5EC 000DC100 */  sll        $t8, $t5, 4
/* 9E1F0 8009D5F0 01F8C821 */  addu       $t9, $t7, $t8
/* 9E1F4 8009D5F4 932A000A */  lbu        $t2, 0xa($t9)
/* 9E1F8 8009D5F8 00000000 */  nop
/* 9E1FC 8009D5FC A3AA0053 */  sb         $t2, 0x53($sp)
/* 9E200 8009D600 8FA40074 */  lw         $a0, 0x74($sp)
/* 9E204 8009D604 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E208 8009D608 0C02B40A */  jal        func_800AD028
/* 9E20C 8009D60C 00000000 */   nop
/* 9E210 8009D610 A3A20073 */  sb         $v0, 0x73($sp)
/* 9E214 8009D614 8FA40074 */  lw         $a0, 0x74($sp)
/* 9E218 8009D618 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E21C 8009D61C 0C02B3CE */  jal        func_800ACF38
/* 9E220 8009D620 00000000 */   nop
/* 9E224 8009D624 A7A2008E */  sh         $v0, 0x8e($sp)
/* 9E228 8009D628 8FA90060 */  lw         $t1, 0x60($sp)
/* 9E22C 8009D62C 00000000 */  nop
/* 9E230 8009D630 8D2B0000 */  lw         $t3, ($t1)
/* 9E234 8009D634 00000000 */  nop
/* 9E238 8009D638 8D6C0000 */  lw         $t4, ($t3)
/* 9E23C 8009D63C 00000000 */  nop
/* 9E240 8009D640 AFAC0078 */  sw         $t4, 0x78($sp)
/* 9E244 8009D644 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E248 8009D648 8FA80060 */  lw         $t0, 0x60($sp)
/* 9E24C 8009D64C 8DC40014 */  lw         $a0, 0x14($t6)
/* 9E250 8009D650 8D060008 */  lw         $a2, 8($t0)
/* 9E254 8009D654 87AD008E */  lh         $t5, 0x8e($sp)
/* 9E258 8009D658 93AF0073 */  lbu        $t7, 0x73($sp)
/* 9E25C 8009D65C 93B80053 */  lbu        $t8, 0x53($sp)
/* 9E260 8009D660 8FB90078 */  lw         $t9, 0x78($sp)
/* 9E264 8009D664 8FA500A4 */  lw         $a1, 0xa4($sp)
/* 9E268 8009D668 8FA70058 */  lw         $a3, 0x58($sp)
/* 9E26C 8009D66C AFAD0010 */  sw         $t5, 0x10($sp)
/* 9E270 8009D670 AFAF0014 */  sw         $t7, 0x14($sp)
/* 9E274 8009D674 AFB80018 */  sw         $t8, 0x18($sp)
/* 9E278 8009D678 0C02B8DC */  jal        func_800AE370
/* 9E27C 8009D67C AFB9001C */   sw        $t9, 0x1c($sp)
/* 9E280 8009D680 240A0006 */  addiu      $t2, $zero, 6
/* 9E284 8009D684 A7AA007C */  sh         $t2, 0x7c($sp)
/* 9E288 8009D688 8FA900A4 */  lw         $t1, 0xa4($sp)
/* 9E28C 8009D68C 00000000 */  nop
/* 9E290 8009D690 AFA90080 */  sw         $t1, 0x80($sp)
/* 9E294 8009D694 8FAB0060 */  lw         $t3, 0x60($sp)
/* 9E298 8009D698 00000000 */  nop
/* 9E29C 8009D69C 8D6C0000 */  lw         $t4, ($t3)
/* 9E2A0 8009D6A0 00000000 */  nop
/* 9E2A4 8009D6A4 918E000D */  lbu        $t6, 0xd($t4)
/* 9E2A8 8009D6A8 00000000 */  nop
/* 9E2AC 8009D6AC A3AE0088 */  sb         $t6, 0x88($sp)
/* 9E2B0 8009D6B0 8FA80060 */  lw         $t0, 0x60($sp)
/* 9E2B4 8009D6B4 00000000 */  nop
/* 9E2B8 8009D6B8 8D0D0000 */  lw         $t5, ($t0)
/* 9E2BC 8009D6BC 00000000 */  nop
/* 9E2C0 8009D6C0 8DAF0004 */  lw         $t7, 4($t5)
/* 9E2C4 8009D6C4 00000000 */  nop
/* 9E2C8 8009D6C8 AFAF0084 */  sw         $t7, 0x84($sp)
/* 9E2CC 8009D6CC 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E2D0 8009D6D0 8FA60078 */  lw         $a2, 0x78($sp)
/* 9E2D4 8009D6D4 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9E2D8 8009D6D8 0C02B620 */  jal        func_800AD880
/* 9E2DC 8009D6DC 24840048 */   addiu     $a0, $a0, 0x48
/* 9E2E0 8009D6E0 8FB80090 */  lw         $t8, 0x90($sp)
/* 9E2E4 8009D6E4 00000000 */  nop
/* 9E2E8 8009D6E8 8F190008 */  lw         $t9, 8($t8)
/* 9E2EC 8009D6EC 00000000 */  nop
/* 9E2F0 8009D6F0 13200019 */  beqz       $t9, .L8009D758
/* 9E2F4 8009D6F4 00000000 */   nop
/* 9E2F8 8009D6F8 240A0015 */  addiu      $t2, $zero, 0x15
/* 9E2FC 8009D6FC A7AA007C */  sh         $t2, 0x7c($sp)
/* 9E300 8009D700 93A9009B */  lbu        $t1, 0x9b($sp)
/* 9E304 8009D704 00000000 */  nop
/* 9E308 8009D708 352B0080 */  ori        $t3, $t1, 0x80
/* 9E30C 8009D70C A3AB0084 */  sb         $t3, 0x84($sp)
/* 9E310 8009D710 93AC009A */  lbu        $t4, 0x9a($sp)
/* 9E314 8009D714 00000000 */  nop
/* 9E318 8009D718 A3AC0085 */  sb         $t4, 0x85($sp)
/* 9E31C 8009D71C A3A00086 */  sb         $zero, 0x86($sp)
/* 9E320 8009D720 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E324 8009D724 8FAD0090 */  lw         $t5, 0x90($sp)
/* 9E328 8009D728 8DC80024 */  lw         $t0, 0x24($t6)
/* 9E32C 8009D72C 8DAF0008 */  lw         $t7, 8($t5)
/* 9E330 8009D730 00000000 */  nop
/* 9E334 8009D734 010F0019 */  multu      $t0, $t7
/* 9E338 8009D738 0000C012 */  mflo       $t8
/* 9E33C 8009D73C AFB80078 */  sw         $t8, 0x78($sp)
/* 9E340 8009D740 00000000 */  nop
/* 9E344 8009D744 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E348 8009D748 8FA60078 */  lw         $a2, 0x78($sp)
/* 9E34C 8009D74C 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9E350 8009D750 0C02B620 */  jal        func_800AD880
/* 9E354 8009D754 24840048 */   addiu     $a0, $a0, 0x48
.L8009D758:
/* 9E358 8009D758 100001B2 */  b          .L8009DE24
/* 9E35C 8009D75C 00000000 */   nop
.L8009D760:
/* 9E360 8009D760 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E364 8009D764 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9E368 8009D768 93A6009B */  lbu        $a2, 0x9b($sp)
/* 9E36C 8009D76C 0C02B33D */  jal        func_800ACCF4
/* 9E370 8009D770 00000000 */   nop
/* 9E374 8009D774 AFA20074 */  sw         $v0, 0x74($sp)
/* 9E378 8009D778 8FB90074 */  lw         $t9, 0x74($sp)
/* 9E37C 8009D77C 00000000 */  nop
/* 9E380 8009D780 17200003 */  bnez       $t9, .L8009D790
/* 9E384 8009D784 00000000 */   nop
/* 9E388 8009D788 100001A8 */  b          .L8009DE2C
/* 9E38C 8009D78C 00000000 */   nop
.L8009D790:
/* 9E390 8009D790 8FAA0074 */  lw         $t2, 0x74($sp)
/* 9E394 8009D794 24010002 */  addiu      $at, $zero, 2
/* 9E398 8009D798 91490035 */  lbu        $t1, 0x35($t2)
/* 9E39C 8009D79C 00000000 */  nop
/* 9E3A0 8009D7A0 15210005 */  bne        $t1, $at, .L8009D7B8
/* 9E3A4 8009D7A4 00000000 */   nop
/* 9E3A8 8009D7A8 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9E3AC 8009D7AC 240B0004 */  addiu      $t3, $zero, 4
/* 9E3B0 8009D7B0 1000000D */  b          .L8009D7E8
/* 9E3B4 8009D7B4 A18B0035 */   sb        $t3, 0x35($t4)
.L8009D7B8:
/* 9E3B8 8009D7B8 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9E3BC 8009D7BC 240E0003 */  addiu      $t6, $zero, 3
/* 9E3C0 8009D7C0 A1AE0035 */  sb         $t6, 0x35($t5)
/* 9E3C4 8009D7C4 8FA80074 */  lw         $t0, 0x74($sp)
/* 9E3C8 8009D7C8 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E3CC 8009D7CC 8D0F0020 */  lw         $t7, 0x20($t0)
/* 9E3D0 8009D7D0 25050004 */  addiu      $a1, $t0, 4
/* 9E3D4 8009D7D4 8DF80000 */  lw         $t8, ($t7)
/* 9E3D8 8009D7D8 00000000 */  nop
/* 9E3DC 8009D7DC 8F060008 */  lw         $a2, 8($t8)
/* 9E3E0 8009D7E0 0C02B429 */  jal        func_800AD0A4
/* 9E3E4 8009D7E4 00000000 */   nop
.L8009D7E8:
/* 9E3E8 8009D7E8 1000018E */  b          .L8009DE24
/* 9E3EC 8009D7EC 00000000 */   nop
/* 9E3F0 8009D7F0 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E3F4 8009D7F4 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9E3F8 8009D7F8 93A6009B */  lbu        $a2, 0x9b($sp)
/* 9E3FC 8009D7FC 0C02B33D */  jal        func_800ACCF4
/* 9E400 8009D800 00000000 */   nop
/* 9E404 8009D804 AFA20074 */  sw         $v0, 0x74($sp)
/* 9E408 8009D808 8FB90074 */  lw         $t9, 0x74($sp)
/* 9E40C 8009D80C 00000000 */  nop
/* 9E410 8009D810 17200003 */  bnez       $t9, .L8009D820
/* 9E414 8009D814 00000000 */   nop
/* 9E418 8009D818 10000184 */  b          .L8009DE2C
/* 9E41C 8009D81C 00000000 */   nop
.L8009D820:
/* 9E420 8009D820 93AA0097 */  lbu        $t2, 0x97($sp)
/* 9E424 8009D824 8FA90074 */  lw         $t1, 0x74($sp)
/* 9E428 8009D828 00000000 */  nop
/* 9E42C 8009D82C A12A0033 */  sb         $t2, 0x33($t1)
/* 9E430 8009D830 8FA40074 */  lw         $a0, 0x74($sp)
/* 9E434 8009D834 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E438 8009D838 0C02B3CE */  jal        func_800ACF38
/* 9E43C 8009D83C 00000000 */   nop
/* 9E440 8009D840 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E444 8009D844 00028C00 */  sll        $s1, $v0, 0x10
/* 9E448 8009D848 00115C03 */  sra        $t3, $s1, 0x10
/* 9E44C 8009D84C 8FA40074 */  lw         $a0, 0x74($sp)
/* 9E450 8009D850 8D85001C */  lw         $a1, 0x1c($t4)
/* 9E454 8009D854 0C02B3F9 */  jal        func_800ACFE4
/* 9E458 8009D858 01608825 */   or        $s1, $t3, $zero
/* 9E45C 8009D85C 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E460 8009D860 8FA50074 */  lw         $a1, 0x74($sp)
/* 9E464 8009D864 00408025 */  or         $s0, $v0, $zero
/* 9E468 8009D868 8DC40014 */  lw         $a0, 0x14($t6)
/* 9E46C 8009D86C 02003825 */  or         $a3, $s0, $zero
/* 9E470 8009D870 02203025 */  or         $a2, $s1, $zero
/* 9E474 8009D874 0C02B768 */  jal        func_800ADDA0
/* 9E478 8009D878 24A50004 */   addiu     $a1, $a1, 4
/* 9E47C 8009D87C 10000169 */  b          .L8009DE24
/* 9E480 8009D880 00000000 */   nop
/* 9E484 8009D884 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9E488 8009D888 00000000 */  nop
/* 9E48C 8009D88C 8DA80064 */  lw         $t0, 0x64($t5)
/* 9E490 8009D890 00000000 */  nop
/* 9E494 8009D894 11000024 */  beqz       $t0, .L8009D928
/* 9E498 8009D898 AFA800A0 */   sw        $t0, 0xa0($sp)
.L8009D89C:
/* 9E49C 8009D89C 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* 9E4A0 8009D8A0 93B9009B */  lbu        $t9, 0x9b($sp)
/* 9E4A4 8009D8A4 91F80031 */  lbu        $t8, 0x31($t7)
/* 9E4A8 8009D8A8 00000000 */  nop
/* 9E4AC 8009D8AC 17190018 */  bne        $t8, $t9, .L8009D910
/* 9E4B0 8009D8B0 00000000 */   nop
/* 9E4B4 8009D8B4 93AA0098 */  lbu        $t2, 0x98($sp)
/* 9E4B8 8009D8B8 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 9E4BC 8009D8BC 00000000 */  nop
/* 9E4C0 8009D8C0 A12A0033 */  sb         $t2, 0x33($t1)
/* 9E4C4 8009D8C4 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E4C8 8009D8C8 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E4CC 8009D8CC 0C02B3CE */  jal        func_800ACF38
/* 9E4D0 8009D8D0 00000000 */   nop
/* 9E4D4 8009D8D4 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E4D8 8009D8D8 00028C00 */  sll        $s1, $v0, 0x10
/* 9E4DC 8009D8DC 00115C03 */  sra        $t3, $s1, 0x10
/* 9E4E0 8009D8E0 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E4E4 8009D8E4 8D85001C */  lw         $a1, 0x1c($t4)
/* 9E4E8 8009D8E8 0C02B3F9 */  jal        func_800ACFE4
/* 9E4EC 8009D8EC 01608825 */   or        $s1, $t3, $zero
/* 9E4F0 8009D8F0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E4F4 8009D8F4 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E4F8 8009D8F8 00408025 */  or         $s0, $v0, $zero
/* 9E4FC 8009D8FC 8DC40014 */  lw         $a0, 0x14($t6)
/* 9E500 8009D900 02003825 */  or         $a3, $s0, $zero
/* 9E504 8009D904 02203025 */  or         $a2, $s1, $zero
/* 9E508 8009D908 0C02B768 */  jal        func_800ADDA0
/* 9E50C 8009D90C 24A50004 */   addiu     $a1, $a1, 4
.L8009D910:
/* 9E510 8009D910 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E514 8009D914 00000000 */  nop
/* 9E518 8009D918 8DA80000 */  lw         $t0, ($t5)
/* 9E51C 8009D91C 00000000 */  nop
/* 9E520 8009D920 1500FFDE */  bnez       $t0, .L8009D89C
/* 9E524 8009D924 AFA800A0 */   sw        $t0, 0xa0($sp)
.L8009D928:
/* 9E528 8009D928 1000013E */  b          .L8009DE24
/* 9E52C 8009D92C 00000000 */   nop
/* 9E530 8009D930 93B00098 */  lbu        $s0, 0x98($sp)
/* 9E534 8009D934 24010007 */  addiu      $at, $zero, 7
/* 9E538 8009D938 12010035 */  beq        $s0, $at, .L8009DA10
/* 9E53C 8009D93C 00000000 */   nop
/* 9E540 8009D940 2401000A */  addiu      $at, $zero, 0xa
/* 9E544 8009D944 1201000C */  beq        $s0, $at, .L8009D978
/* 9E548 8009D948 00000000 */   nop
/* 9E54C 8009D94C 24010010 */  addiu      $at, $zero, 0x10
/* 9E550 8009D950 12010060 */  beq        $s0, $at, .L8009DAD4
/* 9E554 8009D954 00000000 */   nop
/* 9E558 8009D958 24010040 */  addiu      $at, $zero, 0x40
/* 9E55C 8009D95C 12010066 */  beq        $s0, $at, .L8009DAF8
/* 9E560 8009D960 00000000 */   nop
/* 9E564 8009D964 2401005B */  addiu      $at, $zero, 0x5b
/* 9E568 8009D968 120100AD */  beq        $s0, $at, .L8009DC20
/* 9E56C 8009D96C 00000000 */   nop
/* 9E570 8009D970 100000CC */  b          .L8009DCA4
/* 9E574 8009D974 00000000 */   nop
.L8009D978:
/* 9E578 8009D978 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E57C 8009D97C 93AA009B */  lbu        $t2, 0x9b($sp)
/* 9E580 8009D980 8F190060 */  lw         $t9, 0x60($t8)
/* 9E584 8009D984 93AF0097 */  lbu        $t7, 0x97($sp)
/* 9E588 8009D988 000A4900 */  sll        $t1, $t2, 4
/* 9E58C 8009D98C 03295821 */  addu       $t3, $t9, $t1
/* 9E590 8009D990 A16F0007 */  sb         $t7, 7($t3)
/* 9E594 8009D994 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E598 8009D998 00000000 */  nop
/* 9E59C 8009D99C 8D8E0064 */  lw         $t6, 0x64($t4)
/* 9E5A0 8009D9A0 00000000 */  nop
/* 9E5A4 8009D9A4 11C00018 */  beqz       $t6, .L8009DA08
/* 9E5A8 8009D9A8 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009D9AC:
/* 9E5AC 8009D9AC 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E5B0 8009D9B0 93B8009B */  lbu        $t8, 0x9b($sp)
/* 9E5B4 8009D9B4 91A80031 */  lbu        $t0, 0x31($t5)
/* 9E5B8 8009D9B8 00000000 */  nop
/* 9E5BC 8009D9BC 1518000C */  bne        $t0, $t8, .L8009D9F0
/* 9E5C0 8009D9C0 00000000 */   nop
/* 9E5C4 8009D9C4 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E5C8 8009D9C8 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E5CC 8009D9CC 0C02B40A */  jal        func_800AD028
/* 9E5D0 8009D9D0 00000000 */   nop
/* 9E5D4 8009D9D4 A3A20073 */  sb         $v0, 0x73($sp)
/* 9E5D8 8009D9D8 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E5DC 8009D9DC 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E5E0 8009D9E0 93A60073 */  lbu        $a2, 0x73($sp)
/* 9E5E4 8009D9E4 8D440014 */  lw         $a0, 0x14($t2)
/* 9E5E8 8009D9E8 0C02B930 */  jal        func_800AE4C0
/* 9E5EC 8009D9EC 24A50004 */   addiu     $a1, $a1, 4
.L8009D9F0:
/* 9E5F0 8009D9F0 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E5F4 8009D9F4 00000000 */  nop
/* 9E5F8 8009D9F8 8F290000 */  lw         $t1, ($t9)
/* 9E5FC 8009D9FC 00000000 */  nop
/* 9E600 8009DA00 1520FFEA */  bnez       $t1, .L8009D9AC
/* 9E604 8009DA04 AFA900A0 */   sw        $t1, 0xa0($sp)
.L8009DA08:
/* 9E608 8009DA08 100000A8 */  b          .L8009DCAC
/* 9E60C 8009DA0C 00000000 */   nop
.L8009DA10:
/* 9E610 8009DA10 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9E614 8009DA14 93AE009B */  lbu        $t6, 0x9b($sp)
/* 9E618 8009DA18 8D6C0060 */  lw         $t4, 0x60($t3)
/* 9E61C 8009DA1C 93AF0097 */  lbu        $t7, 0x97($sp)
/* 9E620 8009DA20 000E6900 */  sll        $t5, $t6, 4
/* 9E624 8009DA24 018D4021 */  addu       $t0, $t4, $t5
/* 9E628 8009DA28 A10F0009 */  sb         $t7, 9($t0)
/* 9E62C 8009DA2C 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E630 8009DA30 00000000 */  nop
/* 9E634 8009DA34 8F0A0064 */  lw         $t2, 0x64($t8)
/* 9E638 8009DA38 00000000 */  nop
/* 9E63C 8009DA3C 11400023 */  beqz       $t2, .L8009DACC
/* 9E640 8009DA40 AFAA00A0 */   sw        $t2, 0xa0($sp)
.L8009DA44:
/* 9E644 8009DA44 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E648 8009DA48 93AB009B */  lbu        $t3, 0x9b($sp)
/* 9E64C 8009DA4C 93290031 */  lbu        $t1, 0x31($t9)
/* 9E650 8009DA50 00000000 */  nop
/* 9E654 8009DA54 152B0017 */  bne        $t1, $t3, .L8009DAB4
/* 9E658 8009DA58 00000000 */   nop
/* 9E65C 8009DA5C 932E0034 */  lbu        $t6, 0x34($t9)
/* 9E660 8009DA60 24010003 */  addiu      $at, $zero, 3
/* 9E664 8009DA64 11C10013 */  beq        $t6, $at, .L8009DAB4
/* 9E668 8009DA68 00000000 */   nop
/* 9E66C 8009DA6C 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E670 8009DA70 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E674 8009DA74 0C02B3CE */  jal        func_800ACF38
/* 9E678 8009DA78 00000000 */   nop
/* 9E67C 8009DA7C A7A2008E */  sh         $v0, 0x8e($sp)
/* 9E680 8009DA80 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E684 8009DA84 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E688 8009DA88 8D85001C */  lw         $a1, 0x1c($t4)
/* 9E68C 8009DA8C 0C02B3F9 */  jal        func_800ACFE4
/* 9E690 8009DA90 00000000 */   nop
/* 9E694 8009DA94 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9E698 8009DA98 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E69C 8009DA9C 00408025 */  or         $s0, $v0, $zero
/* 9E6A0 8009DAA0 87A6008E */  lh         $a2, 0x8e($sp)
/* 9E6A4 8009DAA4 8DA40014 */  lw         $a0, 0x14($t5)
/* 9E6A8 8009DAA8 02003825 */  or         $a3, $s0, $zero
/* 9E6AC 8009DAAC 0C02B768 */  jal        func_800ADDA0
/* 9E6B0 8009DAB0 24A50004 */   addiu     $a1, $a1, 4
.L8009DAB4:
/* 9E6B4 8009DAB4 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* 9E6B8 8009DAB8 00000000 */  nop
/* 9E6BC 8009DABC 8DE80000 */  lw         $t0, ($t7)
/* 9E6C0 8009DAC0 00000000 */  nop
/* 9E6C4 8009DAC4 1500FFDF */  bnez       $t0, .L8009DA44
/* 9E6C8 8009DAC8 AFA800A0 */   sw        $t0, 0xa0($sp)
.L8009DACC:
/* 9E6CC 8009DACC 10000077 */  b          .L8009DCAC
/* 9E6D0 8009DAD0 00000000 */   nop
.L8009DAD4:
/* 9E6D4 8009DAD4 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E6D8 8009DAD8 93AB009B */  lbu        $t3, 0x9b($sp)
/* 9E6DC 8009DADC 8D490060 */  lw         $t1, 0x60($t2)
/* 9E6E0 8009DAE0 93B80097 */  lbu        $t8, 0x97($sp)
/* 9E6E4 8009DAE4 000BC900 */  sll        $t9, $t3, 4
/* 9E6E8 8009DAE8 01397021 */  addu       $t6, $t1, $t9
/* 9E6EC 8009DAEC A1D80008 */  sb         $t8, 8($t6)
/* 9E6F0 8009DAF0 1000006E */  b          .L8009DCAC
/* 9E6F4 8009DAF4 00000000 */   nop
.L8009DAF8:
/* 9E6F8 8009DAF8 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9E6FC 8009DAFC 93A8009B */  lbu        $t0, 0x9b($sp)
/* 9E700 8009DB00 8DAF0060 */  lw         $t7, 0x60($t5)
/* 9E704 8009DB04 93AC0097 */  lbu        $t4, 0x97($sp)
/* 9E708 8009DB08 00085100 */  sll        $t2, $t0, 4
/* 9E70C 8009DB0C 01EA5821 */  addu       $t3, $t7, $t2
/* 9E710 8009DB10 A16C000B */  sb         $t4, 0xb($t3)
/* 9E714 8009DB14 8FA900A8 */  lw         $t1, 0xa8($sp)
/* 9E718 8009DB18 00000000 */  nop
/* 9E71C 8009DB1C 8D390064 */  lw         $t9, 0x64($t1)
/* 9E720 8009DB20 00000000 */  nop
/* 9E724 8009DB24 1320003C */  beqz       $t9, .L8009DC18
/* 9E728 8009DB28 AFB900A0 */   sw        $t9, 0xa0($sp)
.L8009DB2C:
/* 9E72C 8009DB2C 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9E730 8009DB30 93AD009B */  lbu        $t5, 0x9b($sp)
/* 9E734 8009DB34 930E0031 */  lbu        $t6, 0x31($t8)
/* 9E738 8009DB38 00000000 */  nop
/* 9E73C 8009DB3C 15CD0030 */  bne        $t6, $t5, .L8009DC00
/* 9E740 8009DB40 00000000 */   nop
/* 9E744 8009DB44 93080035 */  lbu        $t0, 0x35($t8)
/* 9E748 8009DB48 24010003 */  addiu      $at, $zero, 3
/* 9E74C 8009DB4C 1101002C */  beq        $t0, $at, .L8009DC00
/* 9E750 8009DB50 00000000 */   nop
/* 9E754 8009DB54 93AF0097 */  lbu        $t7, 0x97($sp)
/* 9E758 8009DB58 00000000 */  nop
/* 9E75C 8009DB5C 29E10040 */  slti       $at, $t7, 0x40
/* 9E760 8009DB60 1420000C */  bnez       $at, .L8009DB94
/* 9E764 8009DB64 00000000 */   nop
/* 9E768 8009DB68 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 9E76C 8009DB6C 00000000 */  nop
/* 9E770 8009DB70 914C0035 */  lbu        $t4, 0x35($t2)
/* 9E774 8009DB74 00000000 */  nop
/* 9E778 8009DB78 15800004 */  bnez       $t4, .L8009DB8C
/* 9E77C 8009DB7C 00000000 */   nop
/* 9E780 8009DB80 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 9E784 8009DB84 240B0002 */  addiu      $t3, $zero, 2
/* 9E788 8009DB88 A12B0035 */  sb         $t3, 0x35($t1)
.L8009DB8C:
/* 9E78C 8009DB8C 1000001C */  b          .L8009DC00
/* 9E790 8009DB90 00000000 */   nop
.L8009DB94:
/* 9E794 8009DB94 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E798 8009DB98 24010002 */  addiu      $at, $zero, 2
/* 9E79C 8009DB9C 932E0035 */  lbu        $t6, 0x35($t9)
/* 9E7A0 8009DBA0 00000000 */  nop
/* 9E7A4 8009DBA4 15C10004 */  bne        $t6, $at, .L8009DBB8
/* 9E7A8 8009DBA8 00000000 */   nop
/* 9E7AC 8009DBAC 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E7B0 8009DBB0 10000013 */  b          .L8009DC00
/* 9E7B4 8009DBB4 A1A00035 */   sb        $zero, 0x35($t5)
.L8009DBB8:
/* 9E7B8 8009DBB8 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9E7BC 8009DBBC 24010004 */  addiu      $at, $zero, 4
/* 9E7C0 8009DBC0 93080035 */  lbu        $t0, 0x35($t8)
/* 9E7C4 8009DBC4 00000000 */  nop
/* 9E7C8 8009DBC8 1501000D */  bne        $t0, $at, .L8009DC00
/* 9E7CC 8009DBCC 00000000 */   nop
/* 9E7D0 8009DBD0 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 9E7D4 8009DBD4 240F0003 */  addiu      $t7, $zero, 3
/* 9E7D8 8009DBD8 A14F0035 */  sb         $t7, 0x35($t2)
/* 9E7DC 8009DBDC 8FAC00A0 */  lw         $t4, 0xa0($sp)
/* 9E7E0 8009DBE0 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E7E4 8009DBE4 8D8B0020 */  lw         $t3, 0x20($t4)
/* 9E7E8 8009DBE8 25850004 */  addiu      $a1, $t4, 4
/* 9E7EC 8009DBEC 8D690000 */  lw         $t1, ($t3)
/* 9E7F0 8009DBF0 00000000 */  nop
/* 9E7F4 8009DBF4 8D260008 */  lw         $a2, 8($t1)
/* 9E7F8 8009DBF8 0C02B429 */  jal        func_800AD0A4
/* 9E7FC 8009DBFC 00000000 */   nop
.L8009DC00:
/* 9E800 8009DC00 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E804 8009DC04 00000000 */  nop
/* 9E808 8009DC08 8F2E0000 */  lw         $t6, ($t9)
/* 9E80C 8009DC0C 00000000 */  nop
/* 9E810 8009DC10 15C0FFC6 */  bnez       $t6, .L8009DB2C
/* 9E814 8009DC14 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009DC18:
/* 9E818 8009DC18 10000024 */  b          .L8009DCAC
/* 9E81C 8009DC1C 00000000 */   nop
.L8009DC20:
/* 9E820 8009DC20 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E824 8009DC24 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9E828 8009DC28 8F080060 */  lw         $t0, 0x60($t8)
/* 9E82C 8009DC2C 93AD0097 */  lbu        $t5, 0x97($sp)
/* 9E830 8009DC30 000F5100 */  sll        $t2, $t7, 4
/* 9E834 8009DC34 010A6021 */  addu       $t4, $t0, $t2
/* 9E838 8009DC38 A18D000A */  sb         $t5, 0xa($t4)
/* 9E83C 8009DC3C 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9E840 8009DC40 00000000 */  nop
/* 9E844 8009DC44 8D690064 */  lw         $t1, 0x64($t3)
/* 9E848 8009DC48 00000000 */  nop
/* 9E84C 8009DC4C 11200013 */  beqz       $t1, .L8009DC9C
/* 9E850 8009DC50 AFA900A0 */   sw        $t1, 0xa0($sp)
.L8009DC54:
/* 9E854 8009DC54 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E858 8009DC58 93B8009B */  lbu        $t8, 0x9b($sp)
/* 9E85C 8009DC5C 932E0031 */  lbu        $t6, 0x31($t9)
/* 9E860 8009DC60 00000000 */  nop
/* 9E864 8009DC64 15D80007 */  bne        $t6, $t8, .L8009DC84
/* 9E868 8009DC68 00000000 */   nop
/* 9E86C 8009DC6C 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* 9E870 8009DC70 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E874 8009DC74 93A60097 */  lbu        $a2, 0x97($sp)
/* 9E878 8009DC78 8DE40014 */  lw         $a0, 0x14($t7)
/* 9E87C 8009DC7C 0C02B968 */  jal        func_800AE5A0
/* 9E880 8009DC80 24A50004 */   addiu     $a1, $a1, 4
.L8009DC84:
/* 9E884 8009DC84 8FA800A0 */  lw         $t0, 0xa0($sp)
/* 9E888 8009DC88 00000000 */  nop
/* 9E88C 8009DC8C 8D0A0000 */  lw         $t2, ($t0)
/* 9E890 8009DC90 00000000 */  nop
/* 9E894 8009DC94 1540FFEF */  bnez       $t2, .L8009DC54
/* 9E898 8009DC98 AFAA00A0 */   sw        $t2, 0xa0($sp)
.L8009DC9C:
/* 9E89C 8009DC9C 10000003 */  b          .L8009DCAC
/* 9E8A0 8009DCA0 00000000 */   nop
.L8009DCA4:
/* 9E8A4 8009DCA4 10000001 */  b          .L8009DCAC
/* 9E8A8 8009DCA8 00000000 */   nop
.L8009DCAC:
/* 9E8AC 8009DCAC 1000005D */  b          .L8009DE24
/* 9E8B0 8009DCB0 00000000 */   nop
/* 9E8B4 8009DCB4 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E8B8 8009DCB8 93AD009A */  lbu        $t5, 0x9a($sp)
/* 9E8BC 8009DCBC 8D8B0020 */  lw         $t3, 0x20($t4)
/* 9E8C0 8009DCC0 00000000 */  nop
/* 9E8C4 8009DCC4 85690000 */  lh         $t1, ($t3)
/* 9E8C8 8009DCC8 00000000 */  nop
/* 9E8CC 8009DCCC 01A9082A */  slt        $at, $t5, $t1
/* 9E8D0 8009DCD0 10200010 */  beqz       $at, .L8009DD14
/* 9E8D4 8009DCD4 00000000 */   nop
/* 9E8D8 8009DCD8 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E8DC 8009DCDC 93B8009A */  lbu        $t8, 0x9a($sp)
/* 9E8E0 8009DCE0 8F2E0020 */  lw         $t6, 0x20($t9)
/* 9E8E4 8009DCE4 00187880 */  sll        $t7, $t8, 2
/* 9E8E8 8009DCE8 01CF4021 */  addu       $t0, $t6, $t7
/* 9E8EC 8009DCEC 8D0A000C */  lw         $t2, 0xc($t0)
/* 9E8F0 8009DCF0 00000000 */  nop
/* 9E8F4 8009DCF4 AFAA0044 */  sw         $t2, 0x44($sp)
/* 9E8F8 8009DCF8 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E8FC 8009DCFC 8FA50044 */  lw         $a1, 0x44($sp)
/* 9E900 8009DD00 93A6009B */  lbu        $a2, 0x9b($sp)
/* 9E904 8009DD04 0C02B509 */  jal        func_800AD424
/* 9E908 8009DD08 00000000 */   nop
/* 9E90C 8009DD0C 10000001 */  b          .L8009DD14
/* 9E910 8009DD10 00000000 */   nop
.L8009DD14:
/* 9E914 8009DD14 10000043 */  b          .L8009DE24
/* 9E918 8009DD18 00000000 */   nop
/* 9E91C 8009DD1C 93AC0097 */  lbu        $t4, 0x97($sp)
/* 9E920 8009DD20 93AD0098 */  lbu        $t5, 0x98($sp)
/* 9E924 8009DD24 000C59C0 */  sll        $t3, $t4, 7
/* 9E928 8009DD28 016D4821 */  addu       $t1, $t3, $t5
/* 9E92C 8009DD2C 2539E000 */  addiu      $t9, $t1, -0x2000
/* 9E930 8009DD30 AFB90040 */  sw         $t9, 0x40($sp)
/* 9E934 8009DD34 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E938 8009DD38 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9E93C 8009DD3C 8F0E0060 */  lw         $t6, 0x60($t8)
/* 9E940 8009DD40 000F4100 */  sll        $t0, $t7, 4
/* 9E944 8009DD44 01C85021 */  addu       $t2, $t6, $t0
/* 9E948 8009DD48 854C0004 */  lh         $t4, 4($t2)
/* 9E94C 8009DD4C 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9E950 8009DD50 00000000 */  nop
/* 9E954 8009DD54 018B0019 */  multu      $t4, $t3
/* 9E958 8009DD58 00006812 */  mflo       $t5
/* 9E95C 8009DD5C 05A10003 */  bgez       $t5, .L8009DD6C
/* 9E960 8009DD60 000D4B43 */   sra       $t1, $t5, 0xd
/* 9E964 8009DD64 25A11FFF */  addiu      $at, $t5, 0x1fff
/* 9E968 8009DD68 00014B43 */  sra        $t1, $at, 0xd
.L8009DD6C:
/* 9E96C 8009DD6C AFA90038 */  sw         $t1, 0x38($sp)
/* 9E970 8009DD70 8FA40038 */  lw         $a0, 0x38($sp)
/* 9E974 8009DD74 0C02B8B4 */  jal        func_800AE2D0
/* 9E978 8009DD78 00000000 */   nop
/* 9E97C 8009DD7C E7A0003C */  swc1       $f0, 0x3c($sp)
/* 9E980 8009DD80 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E984 8009DD84 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9E988 8009DD88 8F380060 */  lw         $t8, 0x60($t9)
/* 9E98C 8009DD8C C7B0003C */  lwc1       $f16, 0x3c($sp)
/* 9E990 8009DD90 000F7100 */  sll        $t6, $t7, 4
/* 9E994 8009DD94 030E4021 */  addu       $t0, $t8, $t6
/* 9E998 8009DD98 E510000C */  swc1       $f16, 0xc($t0)
/* 9E99C 8009DD9C 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E9A0 8009DDA0 00000000 */  nop
/* 9E9A4 8009DDA4 8D4C0064 */  lw         $t4, 0x64($t2)
/* 9E9A8 8009DDA8 00000000 */  nop
/* 9E9AC 8009DDAC 11800019 */  beqz       $t4, .L8009DE14
/* 9E9B0 8009DDB0 AFAC00A0 */   sw        $t4, 0xa0($sp)
.L8009DDB4:
/* 9E9B4 8009DDB4 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* 9E9B8 8009DDB8 93A9009B */  lbu        $t1, 0x9b($sp)
/* 9E9BC 8009DDBC 916D0031 */  lbu        $t5, 0x31($t3)
/* 9E9C0 8009DDC0 00000000 */  nop
/* 9E9C4 8009DDC4 15A9000D */  bne        $t5, $t1, .L8009DDFC
/* 9E9C8 8009DDC8 00000000 */   nop
/* 9E9CC 8009DDCC 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* 9E9D0 8009DDD0 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* 9E9D4 8009DDD4 C5F20028 */  lwc1       $f18, 0x28($t7)
/* 9E9D8 8009DDD8 C5E8002C */  lwc1       $f8, 0x2c($t7)
/* 9E9DC 8009DDDC 46049182 */  mul.s      $f6, $f18, $f4
/* 9E9E0 8009DDE0 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E9E4 8009DDE4 25E50004 */  addiu      $a1, $t7, 4
/* 9E9E8 8009DDE8 8F240014 */  lw         $a0, 0x14($t9)
/* 9E9EC 8009DDEC 46083282 */  mul.s      $f10, $f6, $f8
/* 9E9F0 8009DDF0 44065000 */  mfc1       $a2, $f10
/* 9E9F4 8009DDF4 0C02B7A4 */  jal        func_800ADE90
/* 9E9F8 8009DDF8 00000000 */   nop
.L8009DDFC:
/* 9E9FC 8009DDFC 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9EA00 8009DE00 00000000 */  nop
/* 9EA04 8009DE04 8F0E0000 */  lw         $t6, ($t8)
/* 9EA08 8009DE08 00000000 */  nop
/* 9EA0C 8009DE0C 15C0FFE9 */  bnez       $t6, .L8009DDB4
/* 9EA10 8009DE10 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009DE14:
/* 9EA14 8009DE14 10000003 */  b          .L8009DE24
/* 9EA18 8009DE18 00000000 */   nop
.L8009DE1C:
/* 9EA1C 8009DE1C 10000001 */  b          .L8009DE24
/* 9EA20 8009DE20 00000000 */   nop
.L8009DE24:
/* 9EA24 8009DE24 10000001 */  b          .L8009DE2C
/* 9EA28 8009DE28 00000000 */   nop
.L8009DE2C:
/* 9EA2C 8009DE2C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 9EA30 8009DE30 8FB00024 */  lw         $s0, 0x24($sp)
/* 9EA34 8009DE34 8FB10028 */  lw         $s1, 0x28($sp)
/* 9EA38 8009DE38 03E00008 */  jr         $ra
/* 9EA3C 8009DE3C 27BD00A8 */   addiu     $sp, $sp, 0xa8

glabel func_8009DE40
/* 9EA40 8009DE40 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 9EA44 8009DE44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9EA48 8009DE48 AFA40050 */  sw         $a0, 0x50($sp)
/* 9EA4C 8009DE4C AFA50054 */  sw         $a1, 0x54($sp)
/* 9EA50 8009DE50 8FAE0054 */  lw         $t6, 0x54($sp)
/* 9EA54 8009DE54 00000000 */  nop
/* 9EA58 8009DE58 25CF0004 */  addiu      $t7, $t6, 4
/* 9EA5C 8009DE5C AFAF004C */  sw         $t7, 0x4c($sp)
/* 9EA60 8009DE60 AFA00028 */  sw         $zero, 0x28($sp)
/* 9EA64 8009DE64 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9EA68 8009DE68 8FB80054 */  lw         $t8, 0x54($sp)
/* 9EA6C 8009DE6C 240100FF */  addiu      $at, $zero, 0xff
/* 9EA70 8009DE70 93190008 */  lbu        $t9, 8($t8)
/* 9EA74 8009DE74 00000000 */  nop
/* 9EA78 8009DE78 1721009D */  bne        $t9, $at, .L8009E0F0
/* 9EA7C 8009DE7C 00000000 */   nop
/* 9EA80 8009DE80 8FA80054 */  lw         $t0, 0x54($sp)
/* 9EA84 8009DE84 24010051 */  addiu      $at, $zero, 0x51
/* 9EA88 8009DE88 91090009 */  lbu        $t1, 9($t0)
/* 9EA8C 8009DE8C 00000000 */  nop
/* 9EA90 8009DE90 15210097 */  bne        $t1, $at, .L8009E0F0
/* 9EA94 8009DE94 00000000 */   nop
/* 9EA98 8009DE98 8FAA0050 */  lw         $t2, 0x50($sp)
/* 9EA9C 8009DE9C 00000000 */  nop
/* 9EAA0 8009DEA0 8D4B0024 */  lw         $t3, 0x24($t2)
/* 9EAA4 8009DEA4 00000000 */  nop
/* 9EAA8 8009DEA8 AFAB0034 */  sw         $t3, 0x34($sp)
/* 9EAAC 8009DEAC 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9EAB0 8009DEB0 00000000 */  nop
/* 9EAB4 8009DEB4 918D0007 */  lbu        $t5, 7($t4)
/* 9EAB8 8009DEB8 918F0008 */  lbu        $t7, 8($t4)
/* 9EABC 8009DEBC 91880009 */  lbu        $t0, 9($t4)
/* 9EAC0 8009DEC0 000D7400 */  sll        $t6, $t5, 0x10
/* 9EAC4 8009DEC4 000FC200 */  sll        $t8, $t7, 8
/* 9EAC8 8009DEC8 01D8C825 */  or         $t9, $t6, $t8
/* 9EACC 8009DECC 03284825 */  or         $t1, $t9, $t0
/* 9EAD0 8009DED0 AFA90038 */  sw         $t1, 0x38($sp)
/* 9EAD4 8009DED4 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9EAD8 8009DED8 8FA40050 */  lw         $a0, 0x50($sp)
/* 9EADC 8009DEDC 448A2000 */  mtc1       $t2, $f4
/* 9EAE0 8009DEE0 00000000 */  nop
/* 9EAE4 8009DEE4 46802120 */  cvt.s.w    $f4, $f4
/* 9EAE8 8009DEE8 44052000 */  mfc1       $a1, $f4
/* 9EAEC 8009DEEC 0C02788C */  jal        func_8009E230
/* 9EAF0 8009DEF0 00000000 */   nop
/* 9EAF4 8009DEF4 8FAB0050 */  lw         $t3, 0x50($sp)
/* 9EAF8 8009DEF8 00000000 */  nop
/* 9EAFC 8009DEFC 8D6D0050 */  lw         $t5, 0x50($t3)
/* 9EB00 8009DF00 00000000 */  nop
/* 9EB04 8009DF04 AFAD0024 */  sw         $t5, 0x24($sp)
/* 9EB08 8009DF08 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9EB0C 8009DF0C 00000000 */  nop
/* 9EB10 8009DF10 11E00047 */  beqz       $t7, .L8009E030
/* 9EB14 8009DF14 00000000 */   nop
.L8009DF18:
/* 9EB18 8009DF18 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EB1C 8009DF1C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9EB20 8009DF20 8F0C0008 */  lw         $t4, 8($t8)
/* 9EB24 8009DF24 00000000 */  nop
/* 9EB28 8009DF28 01CCC821 */  addu       $t9, $t6, $t4
/* 9EB2C 8009DF2C AFB90028 */  sw         $t9, 0x28($sp)
/* 9EB30 8009DF30 8FA80024 */  lw         $t0, 0x24($sp)
/* 9EB34 8009DF34 00000000 */  nop
/* 9EB38 8009DF38 8D090000 */  lw         $t1, ($t0)
/* 9EB3C 8009DF3C 00000000 */  nop
/* 9EB40 8009DF40 AFA90020 */  sw         $t1, 0x20($sp)
/* 9EB44 8009DF44 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9EB48 8009DF48 24010015 */  addiu      $at, $zero, 0x15
/* 9EB4C 8009DF4C 854B000C */  lh         $t3, 0xc($t2)
/* 9EB50 8009DF50 00000000 */  nop
/* 9EB54 8009DF54 1561002F */  bne        $t3, $at, .L8009E014
/* 9EB58 8009DF58 00000000 */   nop
/* 9EB5C 8009DF5C 8FA40024 */  lw         $a0, 0x24($sp)
/* 9EB60 8009DF60 0C026EBB */  jal        func_8009BAEC
/* 9EB64 8009DF64 00000000 */   nop
/* 9EB68 8009DF68 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9EB6C 8009DF6C 00000000 */  nop
/* 9EB70 8009DF70 11A00007 */  beqz       $t5, .L8009DF90
/* 9EB74 8009DF74 00000000 */   nop
/* 9EB78 8009DF78 8FA40024 */  lw         $a0, 0x24($sp)
/* 9EB7C 8009DF7C 8FA5001C */  lw         $a1, 0x1c($sp)
/* 9EB80 8009DF80 0C026EAE */  jal        func_8009BAB8
/* 9EB84 8009DF84 00000000 */   nop
/* 9EB88 8009DF88 1000000A */  b          .L8009DFB4
/* 9EB8C 8009DF8C 00000000 */   nop
.L8009DF90:
/* 9EB90 8009DF90 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9EB94 8009DF94 00000000 */  nop
/* 9EB98 8009DF98 ADE00000 */  sw         $zero, ($t7)
/* 9EB9C 8009DF9C 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EBA0 8009DFA0 00000000 */  nop
/* 9EBA4 8009DFA4 AF000004 */  sw         $zero, 4($t8)
/* 9EBA8 8009DFA8 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9EBAC 8009DFAC 00000000 */  nop
/* 9EBB0 8009DFB0 AFAE001C */  sw         $t6, 0x1c($sp)
.L8009DFB4:
/* 9EBB4 8009DFB4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9EBB8 8009DFB8 00000000 */  nop
/* 9EBBC 8009DFBC AFAC002C */  sw         $t4, 0x2c($sp)
/* 9EBC0 8009DFC0 8FB90020 */  lw         $t9, 0x20($sp)
/* 9EBC4 8009DFC4 00000000 */  nop
/* 9EBC8 8009DFC8 1320000E */  beqz       $t9, .L8009E004
/* 9EBCC 8009DFCC 00000000 */   nop
/* 9EBD0 8009DFD0 8FA90024 */  lw         $t1, 0x24($sp)
/* 9EBD4 8009DFD4 8FA80028 */  lw         $t0, 0x28($sp)
/* 9EBD8 8009DFD8 8D2A0008 */  lw         $t2, 8($t1)
/* 9EBDC 8009DFDC 00000000 */  nop
/* 9EBE0 8009DFE0 010A5823 */  subu       $t3, $t0, $t2
/* 9EBE4 8009DFE4 AFAB0028 */  sw         $t3, 0x28($sp)
/* 9EBE8 8009DFE8 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9EBEC 8009DFEC 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EBF0 8009DFF0 8DAF0008 */  lw         $t7, 8($t5)
/* 9EBF4 8009DFF4 8F0E0008 */  lw         $t6, 8($t8)
/* 9EBF8 8009DFF8 00000000 */  nop
/* 9EBFC 8009DFFC 01EE6021 */  addu       $t4, $t7, $t6
/* 9EC00 8009E000 ADAC0008 */  sw         $t4, 8($t5)
.L8009E004:
/* 9EC04 8009E004 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9EC08 8009E008 8FA90024 */  lw         $t1, 0x24($sp)
/* 9EC0C 8009E00C 00000000 */  nop
/* 9EC10 8009E010 AD390008 */  sw         $t9, 8($t1)
.L8009E014:
/* 9EC14 8009E014 8FA80020 */  lw         $t0, 0x20($sp)
/* 9EC18 8009E018 00000000 */  nop
/* 9EC1C 8009E01C AFA80024 */  sw         $t0, 0x24($sp)
/* 9EC20 8009E020 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9EC24 8009E024 00000000 */  nop
/* 9EC28 8009E028 1540FFBB */  bnez       $t2, .L8009DF18
/* 9EC2C 8009E02C 00000000 */   nop
.L8009E030:
/* 9EC30 8009E030 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9EC34 8009E034 00000000 */  nop
/* 9EC38 8009E038 AFAB0024 */  sw         $t3, 0x24($sp)
/* 9EC3C 8009E03C 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EC40 8009E040 00000000 */  nop
/* 9EC44 8009E044 1300002A */  beqz       $t8, .L8009E0F0
/* 9EC48 8009E048 00000000 */   nop
.L8009E04C:
/* 9EC4C 8009E04C 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9EC50 8009E050 00000000 */  nop
/* 9EC54 8009E054 8DEE0000 */  lw         $t6, ($t7)
/* 9EC58 8009E058 00000000 */  nop
/* 9EC5C 8009E05C AFAE0020 */  sw         $t6, 0x20($sp)
/* 9EC60 8009E060 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9EC64 8009E064 8FB90034 */  lw         $t9, 0x34($sp)
/* 9EC68 8009E068 8D8D0008 */  lw         $t5, 8($t4)
/* 9EC6C 8009E06C 00000000 */  nop
/* 9EC70 8009E070 01B9001A */  div        $zero, $t5, $t9
/* 9EC74 8009E074 17200002 */  bnez       $t9, .L8009E080
/* 9EC78 8009E078 00000000 */   nop
/* 9EC7C 8009E07C 0007000D */  break      7
.L8009E080:
/* 9EC80 8009E080 2401FFFF */   addiu     $at, $zero, -1
/* 9EC84 8009E084 17210004 */  bne        $t9, $at, .L8009E098
/* 9EC88 8009E088 3C018000 */   lui       $at, 0x8000
/* 9EC8C 8009E08C 15A10002 */  bne        $t5, $at, .L8009E098
/* 9EC90 8009E090 00000000 */   nop
/* 9EC94 8009E094 0006000D */  break      6
.L8009E098:
/* 9EC98 8009E098 00004812 */   mflo      $t1
/* 9EC9C 8009E09C AFA90030 */  sw         $t1, 0x30($sp)
/* 9ECA0 8009E0A0 00000000 */  nop
/* 9ECA4 8009E0A4 8FA80050 */  lw         $t0, 0x50($sp)
/* 9ECA8 8009E0A8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9ECAC 8009E0AC 8D0A0024 */  lw         $t2, 0x24($t0)
/* 9ECB0 8009E0B0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9ECB4 8009E0B4 014B0019 */  multu      $t2, $t3
/* 9ECB8 8009E0B8 0000C012 */  mflo       $t8
/* 9ECBC 8009E0BC ADF80008 */  sw         $t8, 8($t7)
/* 9ECC0 8009E0C0 00000000 */  nop
/* 9ECC4 8009E0C4 8FA40050 */  lw         $a0, 0x50($sp)
/* 9ECC8 8009E0C8 8FA50024 */  lw         $a1, 0x24($sp)
/* 9ECCC 8009E0CC 0C027842 */  jal        func_8009E108
/* 9ECD0 8009E0D0 24840048 */   addiu     $a0, $a0, 0x48
/* 9ECD4 8009E0D4 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9ECD8 8009E0D8 00000000 */  nop
/* 9ECDC 8009E0DC AFAE0024 */  sw         $t6, 0x24($sp)
/* 9ECE0 8009E0E0 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9ECE4 8009E0E4 00000000 */  nop
/* 9ECE8 8009E0E8 1580FFD8 */  bnez       $t4, .L8009E04C
/* 9ECEC 8009E0EC 00000000 */   nop
.L8009E0F0:
/* 9ECF0 8009E0F0 10000001 */  b          .L8009E0F8
/* 9ECF4 8009E0F4 00000000 */   nop
.L8009E0F8:
/* 9ECF8 8009E0F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9ECFC 8009E0FC 27BD0050 */  addiu      $sp, $sp, 0x50
/* 9ED00 8009E100 03E00008 */  jr         $ra
/* 9ED04 8009E104 00000000 */   nop

glabel func_8009E108
/* 9ED08 8009E108 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9ED0C 8009E10C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9ED10 8009E110 AFA40028 */  sw         $a0, 0x28($sp)
/* 9ED14 8009E114 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9ED18 8009E118 0C02B9A8 */  jal        func_800AE6A0
/* 9ED1C 8009E11C 24040001 */   addiu     $a0, $zero, 1
/* 9ED20 8009E120 AFA20024 */  sw         $v0, 0x24($sp)
/* 9ED24 8009E124 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9ED28 8009E128 00000000 */  nop
/* 9ED2C 8009E12C 25CF0008 */  addiu      $t7, $t6, 8
/* 9ED30 8009E130 11E00036 */  beqz       $t7, .L8009E20C
/* 9ED34 8009E134 AFAF0020 */   sw        $t7, 0x20($sp)
.L8009E138:
/* 9ED38 8009E138 8FB80020 */  lw         $t8, 0x20($sp)
/* 9ED3C 8009E13C 00000000 */  nop
/* 9ED40 8009E140 8F190000 */  lw         $t9, ($t8)
/* 9ED44 8009E144 00000000 */  nop
/* 9ED48 8009E148 17200009 */  bnez       $t9, .L8009E170
/* 9ED4C 8009E14C 00000000 */   nop
/* 9ED50 8009E150 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9ED54 8009E154 8FA50020 */  lw         $a1, 0x20($sp)
/* 9ED58 8009E158 0C026EAE */  jal        func_8009BAB8
/* 9ED5C 8009E15C 00000000 */   nop
/* 9ED60 8009E160 1000002A */  b          .L8009E20C
/* 9ED64 8009E164 00000000 */   nop
/* 9ED68 8009E168 10000022 */  b          .L8009E1F4
/* 9ED6C 8009E16C 00000000 */   nop
.L8009E170:
/* 9ED70 8009E170 8FA80020 */  lw         $t0, 0x20($sp)
/* 9ED74 8009E174 00000000 */  nop
/* 9ED78 8009E178 8D090000 */  lw         $t1, ($t0)
/* 9ED7C 8009E17C 00000000 */  nop
/* 9ED80 8009E180 AFA9001C */  sw         $t1, 0x1c($sp)
/* 9ED84 8009E184 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9ED88 8009E188 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9ED8C 8009E18C 8D4B0008 */  lw         $t3, 8($t2)
/* 9ED90 8009E190 8D8D0008 */  lw         $t5, 8($t4)
/* 9ED94 8009E194 00000000 */  nop
/* 9ED98 8009E198 016D082A */  slt        $at, $t3, $t5
/* 9ED9C 8009E19C 1020000E */  beqz       $at, .L8009E1D8
/* 9EDA0 8009E1A0 00000000 */   nop
/* 9EDA4 8009E1A4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9EDA8 8009E1A8 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9EDAC 8009E1AC 8DCF0008 */  lw         $t7, 8($t6)
/* 9EDB0 8009E1B0 8F190008 */  lw         $t9, 8($t8)
/* 9EDB4 8009E1B4 00000000 */  nop
/* 9EDB8 8009E1B8 01F94023 */  subu       $t0, $t7, $t9
/* 9EDBC 8009E1BC ADC80008 */  sw         $t0, 8($t6)
/* 9EDC0 8009E1C0 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9EDC4 8009E1C4 8FA50020 */  lw         $a1, 0x20($sp)
/* 9EDC8 8009E1C8 0C026EAE */  jal        func_8009BAB8
/* 9EDCC 8009E1CC 00000000 */   nop
/* 9EDD0 8009E1D0 1000000E */  b          .L8009E20C
/* 9EDD4 8009E1D4 00000000 */   nop
.L8009E1D8:
/* 9EDD8 8009E1D8 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9EDDC 8009E1DC 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9EDE0 8009E1E0 8D2A0008 */  lw         $t2, 8($t1)
/* 9EDE4 8009E1E4 8D8B0008 */  lw         $t3, 8($t4)
/* 9EDE8 8009E1E8 00000000 */  nop
/* 9EDEC 8009E1EC 014B6823 */  subu       $t5, $t2, $t3
/* 9EDF0 8009E1F0 AD2D0008 */  sw         $t5, 8($t1)
.L8009E1F4:
/* 9EDF4 8009E1F4 8FB80020 */  lw         $t8, 0x20($sp)
/* 9EDF8 8009E1F8 00000000 */  nop
/* 9EDFC 8009E1FC 8F0F0000 */  lw         $t7, ($t8)
/* 9EE00 8009E200 00000000 */  nop
/* 9EE04 8009E204 15E0FFCC */  bnez       $t7, .L8009E138
/* 9EE08 8009E208 AFAF0020 */   sw        $t7, 0x20($sp)
.L8009E20C:
/* 9EE0C 8009E20C 8FA40024 */  lw         $a0, 0x24($sp)
/* 9EE10 8009E210 0C02B9A8 */  jal        func_800AE6A0
/* 9EE14 8009E214 00000000 */   nop
/* 9EE18 8009E218 10000001 */  b          .L8009E220
/* 9EE1C 8009E21C 00000000 */   nop
.L8009E220:
/* 9EE20 8009E220 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9EE24 8009E224 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9EE28 8009E228 03E00008 */  jr         $ra
/* 9EE2C 8009E22C 00000000 */   nop

glabel func_8009E230
/* 9EE30 8009E230 AFA50004 */  sw         $a1, 4($sp)
/* 9EE34 8009E234 8C8E0018 */  lw         $t6, 0x18($a0)
/* 9EE38 8009E238 00000000 */  nop
/* 9EE3C 8009E23C 11C00011 */  beqz       $t6, .L8009E284
/* 9EE40 8009E240 00000000 */   nop
/* 9EE44 8009E244 8C8F0018 */  lw         $t7, 0x18($a0)
/* 9EE48 8009E248 C7A40004 */  lwc1       $f4, 4($sp)
/* 9EE4C 8009E24C C5E60008 */  lwc1       $f6, 8($t7)
/* 9EE50 8009E250 00000000 */  nop
/* 9EE54 8009E254 46062202 */  mul.s      $f8, $f4, $f6
/* 9EE58 8009E258 4458F800 */  cfc1       $t8, $31
/* 9EE5C 8009E25C 00000000 */  nop
/* 9EE60 8009E260 37010003 */  ori        $at, $t8, 3
/* 9EE64 8009E264 38210002 */  xori       $at, $at, 2
/* 9EE68 8009E268 44C1F800 */  ctc1       $at, $31
/* 9EE6C 8009E26C 00000000 */  nop
/* 9EE70 8009E270 460042A4 */  cvt.w.s    $f10, $f8
/* 9EE74 8009E274 44195000 */  mfc1       $t9, $f10
/* 9EE78 8009E278 44D8F800 */  ctc1       $t8, $31
/* 9EE7C 8009E27C 10000003 */  b          .L8009E28C
/* 9EE80 8009E280 AC990024 */   sw        $t9, 0x24($a0)
.L8009E284:
/* 9EE84 8009E284 240801E8 */  addiu      $t0, $zero, 0x1e8
/* 9EE88 8009E288 AC880024 */  sw         $t0, 0x24($a0)
.L8009E28C:
/* 9EE8C 8009E28C 10000001 */  b          .L8009E294
/* 9EE90 8009E290 00000000 */   nop
.L8009E294:
/* 9EE94 8009E294 03E00008 */  jr         $ra
/* 9EE98 8009E298 00000000 */   nop
/* 9EE9C 8009E29C 00000000 */  nop
