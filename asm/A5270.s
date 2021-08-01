.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A4670
/* A5270 800A4670 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A5274 800A4674 AFBF0024 */  sw         $ra, 0x24($sp)
/* A5278 800A4678 AFA40040 */  sw         $a0, 0x40($sp)
/* A527C 800A467C AFA50044 */  sw         $a1, 0x44($sp)
/* A5280 800A4680 AFA60048 */  sw         $a2, 0x48($sp)
/* A5284 800A4684 AFA7004C */  sw         $a3, 0x4c($sp)
/* A5288 800A4688 AFA0003C */  sw         $zero, 0x3c($sp)
/* A528C 800A468C 93AE0047 */  lbu        $t6, 0x47($sp)
/* A5290 800A4690 29C10041 */  slti       $at, $t6, 0x41
/* A5294 800A4694 14200003 */  bnez       $at, .L800A46A4
/* A5298 800A4698 00000000 */   nop
/* A529C 800A469C 10000043 */  b          .L800A47AC
/* A52A0 800A46A0 2402FFFF */   addiu     $v0, $zero, -1
.L800A46A4:
/* A52A4 800A46A4 8FAF004C */  lw         $t7, 0x4c($sp)
/* A52A8 800A46A8 19E0003C */  blez       $t7, .L800A479C
/* A52AC 800A46AC 00000000 */   nop
.L800A46B0:
/* A52B0 800A46B0 8FA40040 */  lw         $a0, 0x40($sp)
/* A52B4 800A46B4 93A50047 */  lbu        $a1, 0x47($sp)
/* A52B8 800A46B8 0C02C9D0 */  jal        osEepromRead
/* A52BC 800A46BC 8FA60048 */   lw        $a2, 0x48($sp)
/* A52C0 800A46C0 AFA2003C */  sw         $v0, 0x3c($sp)
/* A52C4 800A46C4 8FB8003C */  lw         $t8, 0x3c($sp)
/* A52C8 800A46C8 13000003 */  beqz       $t8, .L800A46D8
/* A52CC 800A46CC 00000000 */   nop
/* A52D0 800A46D0 10000036 */  b          .L800A47AC
/* A52D4 800A46D4 8FA2003C */   lw        $v0, 0x3c($sp)
.L800A46D8:
/* A52D8 800A46D8 8FB9004C */  lw         $t9, 0x4c($sp)
/* A52DC 800A46DC 2728FFF8 */  addiu      $t0, $t9, -8
/* A52E0 800A46E0 AFA8004C */  sw         $t0, 0x4c($sp)
/* A52E4 800A46E4 93A90047 */  lbu        $t1, 0x47($sp)
/* A52E8 800A46E8 252A0001 */  addiu      $t2, $t1, 1
/* A52EC 800A46EC A3AA0047 */  sb         $t2, 0x47($sp)
/* A52F0 800A46F0 8FAB0048 */  lw         $t3, 0x48($sp)
/* A52F4 800A46F4 256C0008 */  addiu      $t4, $t3, 8
/* A52F8 800A46F8 AFAC0048 */  sw         $t4, 0x48($sp)
/* A52FC 800A46FC 3C06800F */  lui        $a2, %hi(D_800E9770)
/* A5300 800A4700 3C07800F */  lui        $a3, %hi(D_800E9774)
/* A5304 800A4704 8CE79774 */  lw         $a3, %lo(D_800E9774)($a3)
/* A5308 800A4708 8CC69770 */  lw         $a2, %lo(D_800E9770)($a2)
/* A530C 800A470C 24040000 */  addiu      $a0, $zero, 0
/* A5310 800A4710 0C029112 */  jal        __ll_mul
/* A5314 800A4714 24052EE0 */   addiu     $a1, $zero, 0x2ee0
/* A5318 800A4718 AFA20028 */  sw         $v0, 0x28($sp)
/* A531C 800A471C AFA3002C */  sw         $v1, 0x2c($sp)
/* A5320 800A4720 3C07000F */  lui        $a3, 0xf
/* A5324 800A4724 34E74240 */  ori        $a3, $a3, 0x4240
/* A5328 800A4728 8FA5002C */  lw         $a1, 0x2c($sp)
/* A532C 800A472C 8FA40028 */  lw         $a0, 0x28($sp)
/* A5330 800A4730 0C0290C2 */  jal        __ull_div
/* A5334 800A4734 24060000 */   addiu     $a2, $zero, 0
/* A5338 800A4738 3C0D8018 */  lui        $t5, %hi(D_80185698)
/* A533C 800A473C 3C188018 */  lui        $t8, %hi(D_801856B0)
/* A5340 800A4740 271856B0 */  addiu      $t8, $t8, %lo(D_801856B0)
/* A5344 800A4744 25AD5698 */  addiu      $t5, $t5, %lo(D_80185698)
/* A5348 800A4748 AFA20030 */  sw         $v0, 0x30($sp)
/* A534C 800A474C AFA30034 */  sw         $v1, 0x34($sp)
/* A5350 800A4750 3C048018 */  lui        $a0, %hi(D_80185678)
/* A5354 800A4754 240E0000 */  addiu      $t6, $zero, 0
/* A5358 800A4758 240F0000 */  addiu      $t7, $zero, 0
/* A535C 800A475C AFAF0014 */  sw         $t7, 0x14($sp)
/* A5360 800A4760 AFAE0010 */  sw         $t6, 0x10($sp)
/* A5364 800A4764 24845678 */  addiu      $a0, $a0, %lo(D_80185678)
/* A5368 800A4768 8FA70034 */  lw         $a3, 0x34($sp)
/* A536C 800A476C 8FA60030 */  lw         $a2, 0x30($sp)
/* A5370 800A4770 AFAD0018 */  sw         $t5, 0x18($sp)
/* A5374 800A4774 0C02ABD0 */  jal        osSetTimer
/* A5378 800A4778 AFB8001C */   sw        $t8, 0x1c($sp)
/* A537C 800A477C 3C048018 */  lui        $a0, %hi(D_80185698)
/* A5380 800A4780 24845698 */  addiu      $a0, $a0, %lo(D_80185698)
/* A5384 800A4784 00002825 */  or         $a1, $zero, $zero
/* A5388 800A4788 0C026B44 */  jal        osRecvMesg
/* A538C 800A478C 24060001 */   addiu     $a2, $zero, 1
/* A5390 800A4790 8FB9004C */  lw         $t9, 0x4c($sp)
/* A5394 800A4794 1F20FFC6 */  bgtz       $t9, .L800A46B0
/* A5398 800A4798 00000000 */   nop
.L800A479C:
/* A539C 800A479C 10000003 */  b          .L800A47AC
/* A53A0 800A47A0 8FA2003C */   lw        $v0, 0x3c($sp)
/* A53A4 800A47A4 10000001 */  b          .L800A47AC
/* A53A8 800A47A8 00000000 */   nop
.L800A47AC:
/* A53AC 800A47AC 8FBF0024 */  lw         $ra, 0x24($sp)
/* A53B0 800A47B0 27BD0040 */  addiu      $sp, $sp, 0x40
/* A53B4 800A47B4 03E00008 */  jr         $ra
/* A53B8 800A47B8 00000000 */   nop
/* A53BC 800A47BC 00000000 */  nop
