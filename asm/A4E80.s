.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A4280
/* A4E80 800A4280 AFA40000 */  sw         $a0, ($sp)
/* A4E84 800A4284 AFA50004 */  sw         $a1, 4($sp)
/* A4E88 800A4288 AFA60008 */  sw         $a2, 8($sp)
/* A4E8C 800A428C AFA7000C */  sw         $a3, 0xc($sp)
/* A4E90 800A4290 DFAE0000 */  ld         $t6, ($sp)
/* A4E94 800A4294 DFAF0008 */  ld         $t7, 8($sp)
/* A4E98 800A4298 01EE1016 */  dsrlv      $v0, $t6, $t7
/* A4E9C 800A429C 0002183C */  dsll32     $v1, $v0, 0
/* A4EA0 800A42A0 0003183F */  dsra32     $v1, $v1, 0
/* A4EA4 800A42A4 10000003 */  b          .L800A42B4
/* A4EA8 800A42A8 0002103F */   dsra32    $v0, $v0, 0
/* A4EAC 800A42AC 10000001 */  b          .L800A42B4
/* A4EB0 800A42B0 00000000 */   nop
.L800A42B4:
/* A4EB4 800A42B4 03E00008 */  jr         $ra
/* A4EB8 800A42B8 00000000 */   nop

glabel func_800A42BC
/* A4EBC 800A42BC AFA40000 */  sw         $a0, ($sp)
/* A4EC0 800A42C0 AFA50004 */  sw         $a1, 4($sp)
/* A4EC4 800A42C4 AFA60008 */  sw         $a2, 8($sp)
/* A4EC8 800A42C8 AFA7000C */  sw         $a3, 0xc($sp)
/* A4ECC 800A42CC DFAE0000 */  ld         $t6, ($sp)
/* A4ED0 800A42D0 DFAF0008 */  ld         $t7, 8($sp)
/* A4ED4 800A42D4 01CF001F */  ddivu      $zero, $t6, $t7
/* A4ED8 800A42D8 15E00002 */  bnez       $t7, .L800A42E4
/* A4EDC 800A42DC 00000000 */   nop
/* A4EE0 800A42E0 0007000D */  break      7
.L800A42E4:
/* A4EE4 800A42E4 00001010 */   mfhi      $v0
/* A4EE8 800A42E8 0002183C */  dsll32     $v1, $v0, 0
/* A4EEC 800A42EC 0003183F */  dsra32     $v1, $v1, 0
/* A4EF0 800A42F0 10000003 */  b          .L800A4300
/* A4EF4 800A42F4 0002103F */   dsra32    $v0, $v0, 0
/* A4EF8 800A42F8 10000001 */  b          .L800A4300
/* A4EFC 800A42FC 00000000 */   nop
.L800A4300:
/* A4F00 800A4300 03E00008 */  jr         $ra
/* A4F04 800A4304 00000000 */   nop

glabel func_800A4308
/* A4F08 800A4308 AFA40000 */  sw         $a0, ($sp)
/* A4F0C 800A430C AFA50004 */  sw         $a1, 4($sp)
/* A4F10 800A4310 AFA60008 */  sw         $a2, 8($sp)
/* A4F14 800A4314 AFA7000C */  sw         $a3, 0xc($sp)
/* A4F18 800A4318 DFAE0000 */  ld         $t6, ($sp)
/* A4F1C 800A431C DFAF0008 */  ld         $t7, 8($sp)
/* A4F20 800A4320 01CF001F */  ddivu      $zero, $t6, $t7
/* A4F24 800A4324 15E00002 */  bnez       $t7, .L800A4330
/* A4F28 800A4328 00000000 */   nop
/* A4F2C 800A432C 0007000D */  break      7
.L800A4330:
/* A4F30 800A4330 00001012 */   mflo      $v0
/* A4F34 800A4334 0002183C */  dsll32     $v1, $v0, 0
/* A4F38 800A4338 0003183F */  dsra32     $v1, $v1, 0
/* A4F3C 800A433C 10000003 */  b          .L800A434C
/* A4F40 800A4340 0002103F */   dsra32    $v0, $v0, 0
/* A4F44 800A4344 10000001 */  b          .L800A434C
/* A4F48 800A4348 00000000 */   nop
.L800A434C:
/* A4F4C 800A434C 03E00008 */  jr         $ra
/* A4F50 800A4350 00000000 */   nop

glabel func_800A4354
/* A4F54 800A4354 AFA40000 */  sw         $a0, ($sp)
/* A4F58 800A4358 AFA50004 */  sw         $a1, 4($sp)
/* A4F5C 800A435C AFA60008 */  sw         $a2, 8($sp)
/* A4F60 800A4360 AFA7000C */  sw         $a3, 0xc($sp)
/* A4F64 800A4364 DFAE0000 */  ld         $t6, ($sp)
/* A4F68 800A4368 DFAF0008 */  ld         $t7, 8($sp)
/* A4F6C 800A436C 01EE1014 */  dsllv      $v0, $t6, $t7
/* A4F70 800A4370 0002183C */  dsll32     $v1, $v0, 0
/* A4F74 800A4374 0003183F */  dsra32     $v1, $v1, 0
/* A4F78 800A4378 10000003 */  b          .L800A4388
/* A4F7C 800A437C 0002103F */   dsra32    $v0, $v0, 0
/* A4F80 800A4380 10000001 */  b          .L800A4388
/* A4F84 800A4384 00000000 */   nop
.L800A4388:
/* A4F88 800A4388 03E00008 */  jr         $ra
/* A4F8C 800A438C 00000000 */   nop

glabel func_800A4390
/* A4F90 800A4390 AFA40000 */  sw         $a0, ($sp)
/* A4F94 800A4394 AFA50004 */  sw         $a1, 4($sp)
/* A4F98 800A4398 AFA60008 */  sw         $a2, 8($sp)
/* A4F9C 800A439C AFA7000C */  sw         $a3, 0xc($sp)
/* A4FA0 800A43A0 DFAE0000 */  ld         $t6, ($sp)
/* A4FA4 800A43A4 DFAF0008 */  ld         $t7, 8($sp)
/* A4FA8 800A43A8 01CF001F */  ddivu      $zero, $t6, $t7
/* A4FAC 800A43AC 15E00002 */  bnez       $t7, .L800A43B8
/* A4FB0 800A43B0 00000000 */   nop
/* A4FB4 800A43B4 0007000D */  break      7
.L800A43B8:
/* A4FB8 800A43B8 00001010 */   mfhi      $v0
/* A4FBC 800A43BC 0002183C */  dsll32     $v1, $v0, 0
/* A4FC0 800A43C0 0003183F */  dsra32     $v1, $v1, 0
/* A4FC4 800A43C4 10000003 */  b          .L800A43D4
/* A4FC8 800A43C8 0002103F */   dsra32    $v0, $v0, 0
/* A4FCC 800A43CC 10000001 */  b          .L800A43D4
/* A4FD0 800A43D0 00000000 */   nop
.L800A43D4:
/* A4FD4 800A43D4 03E00008 */  jr         $ra
/* A4FD8 800A43D8 00000000 */   nop

glabel func_800A43DC
/* A4FDC 800A43DC AFA40000 */  sw         $a0, ($sp)
/* A4FE0 800A43E0 AFA50004 */  sw         $a1, 4($sp)
/* A4FE4 800A43E4 AFA60008 */  sw         $a2, 8($sp)
/* A4FE8 800A43E8 AFA7000C */  sw         $a3, 0xc($sp)
/* A4FEC 800A43EC DFAE0000 */  ld         $t6, ($sp)
/* A4FF0 800A43F0 DFAF0008 */  ld         $t7, 8($sp)
/* A4FF4 800A43F4 01CF001E */  ddiv       $zero, $t6, $t7
/* A4FF8 800A43F8 00000000 */  nop
/* A4FFC 800A43FC 15E00002 */  bnez       $t7, .L800A4408
/* A5000 800A4400 00000000 */   nop
/* A5004 800A4404 0007000D */  break      7
.L800A4408:
/* A5008 800A4408 6401FFFF */   daddiu    $at, $zero, -1
/* A500C 800A440C 15E10005 */  bne        $t7, $at, .L800A4424
/* A5010 800A4410 64010001 */   daddiu    $at, $zero, 1
/* A5014 800A4414 00010FFC */  dsll32     $at, $at, 0x1f
/* A5018 800A4418 15C10002 */  bne        $t6, $at, .L800A4424
/* A501C 800A441C 00000000 */   nop
/* A5020 800A4420 0006000D */  break      6
.L800A4424:
/* A5024 800A4424 00001012 */   mflo      $v0
/* A5028 800A4428 0002183C */  dsll32     $v1, $v0, 0
/* A502C 800A442C 0003183F */  dsra32     $v1, $v1, 0
/* A5030 800A4430 10000003 */  b          .L800A4440
/* A5034 800A4434 0002103F */   dsra32    $v0, $v0, 0
/* A5038 800A4438 10000001 */  b          .L800A4440
/* A503C 800A443C 00000000 */   nop
.L800A4440:
/* A5040 800A4440 03E00008 */  jr         $ra
/* A5044 800A4444 00000000 */   nop

glabel func_800A4448
/* A5048 800A4448 AFA40000 */  sw         $a0, ($sp)
/* A504C 800A444C AFA50004 */  sw         $a1, 4($sp)
/* A5050 800A4450 AFA60008 */  sw         $a2, 8($sp)
/* A5054 800A4454 AFA7000C */  sw         $a3, 0xc($sp)
/* A5058 800A4458 DFAE0000 */  ld         $t6, ($sp)
/* A505C 800A445C DFAF0008 */  ld         $t7, 8($sp)
/* A5060 800A4460 01CF001D */  dmultu     $t6, $t7
/* A5064 800A4464 00001012 */  mflo       $v0
/* A5068 800A4468 0002183C */  dsll32     $v1, $v0, 0
/* A506C 800A446C 0003183F */  dsra32     $v1, $v1, 0
/* A5070 800A4470 10000003 */  b          .L800A4480
/* A5074 800A4474 0002103F */   dsra32    $v0, $v0, 0
/* A5078 800A4478 10000001 */  b          .L800A4480
/* A507C 800A447C 00000000 */   nop
.L800A4480:
/* A5080 800A4480 03E00008 */  jr         $ra
/* A5084 800A4484 00000000 */   nop

glabel func_800A4488
/* A5088 800A4488 AFA60008 */  sw         $a2, 8($sp)
/* A508C 800A448C AFA7000C */  sw         $a3, 0xc($sp)
/* A5090 800A4490 87AF0012 */  lh         $t7, 0x12($sp)
/* A5094 800A4494 DFAE0008 */  ld         $t6, 8($sp)
/* A5098 800A4498 01E0C025 */  or         $t8, $t7, $zero
/* A509C 800A449C 0300C825 */  or         $t9, $t8, $zero
/* A50A0 800A44A0 01D9001F */  ddivu      $zero, $t6, $t9
/* A50A4 800A44A4 17200002 */  bnez       $t9, .L800A44B0
/* A50A8 800A44A8 00000000 */   nop
/* A50AC 800A44AC 0007000D */  break      7
.L800A44B0:
/* A50B0 800A44B0 00004012 */   mflo      $t0
/* A50B4 800A44B4 FC880000 */  sd         $t0, ($a0)
/* A50B8 800A44B8 00000000 */  nop
/* A50BC 800A44BC 87AA0012 */  lh         $t2, 0x12($sp)
/* A50C0 800A44C0 DFA90008 */  ld         $t1, 8($sp)
/* A50C4 800A44C4 01405825 */  or         $t3, $t2, $zero
/* A50C8 800A44C8 01606025 */  or         $t4, $t3, $zero
/* A50CC 800A44CC 012C001F */  ddivu      $zero, $t1, $t4
/* A50D0 800A44D0 15800002 */  bnez       $t4, .L800A44DC
/* A50D4 800A44D4 00000000 */   nop
/* A50D8 800A44D8 0007000D */  break      7
.L800A44DC:
/* A50DC 800A44DC 00006810 */   mfhi      $t5
/* A50E0 800A44E0 FCAD0000 */  sd         $t5, ($a1)
/* A50E4 800A44E4 00000000 */  nop
/* A50E8 800A44E8 10000001 */  b          .L800A44F0
/* A50EC 800A44EC 00000000 */   nop
.L800A44F0:
/* A50F0 800A44F0 03E00008 */  jr         $ra
/* A50F4 800A44F4 00000000 */   nop

glabel func_800A44F8
/* A50F8 800A44F8 27BDFFF8 */  addiu      $sp, $sp, -8
/* A50FC 800A44FC AFA40008 */  sw         $a0, 8($sp)
/* A5100 800A4500 AFA5000C */  sw         $a1, 0xc($sp)
/* A5104 800A4504 AFA60010 */  sw         $a2, 0x10($sp)
/* A5108 800A4508 AFA70014 */  sw         $a3, 0x14($sp)
/* A510C 800A450C DFAE0008 */  ld         $t6, 8($sp)
/* A5110 800A4510 DFAF0010 */  ld         $t7, 0x10($sp)
/* A5114 800A4514 01CF001E */  ddiv       $zero, $t6, $t7
/* A5118 800A4518 00000000 */  nop
/* A511C 800A451C 15E00002 */  bnez       $t7, .L800A4528
/* A5120 800A4520 00000000 */   nop
/* A5124 800A4524 0007000D */  break      7
.L800A4528:
/* A5128 800A4528 6401FFFF */   daddiu    $at, $zero, -1
/* A512C 800A452C 15E10005 */  bne        $t7, $at, .L800A4544
/* A5130 800A4530 64010001 */   daddiu    $at, $zero, 1
/* A5134 800A4534 00010FFC */  dsll32     $at, $at, 0x1f
/* A5138 800A4538 15C10002 */  bne        $t6, $at, .L800A4544
/* A513C 800A453C 00000000 */   nop
/* A5140 800A4540 0006000D */  break      6
.L800A4544:
/* A5144 800A4544 0000C010 */   mfhi      $t8
/* A5148 800A4548 FFB80000 */  sd         $t8, ($sp)
/* A514C 800A454C 00000000 */  nop
/* A5150 800A4550 DFB90000 */  ld         $t9, ($sp)
/* A5154 800A4554 07210004 */  bgez       $t9, .L800A4568
/* A5158 800A4558 00000000 */   nop
/* A515C 800A455C DFA80010 */  ld         $t0, 0x10($sp)
/* A5160 800A4560 1D000007 */  bgtz       $t0, .L800A4580
/* A5164 800A4564 00000000 */   nop
.L800A4568:
/* A5168 800A4568 DFA90000 */  ld         $t1, ($sp)
/* A516C 800A456C 19200008 */  blez       $t1, .L800A4590
/* A5170 800A4570 00000000 */   nop
/* A5174 800A4574 DFAA0010 */  ld         $t2, 0x10($sp)
/* A5178 800A4578 05410005 */  bgez       $t2, .L800A4590
/* A517C 800A457C 00000000 */   nop
.L800A4580:
/* A5180 800A4580 DFAB0000 */  ld         $t3, ($sp)
/* A5184 800A4584 DFAC0010 */  ld         $t4, 0x10($sp)
/* A5188 800A4588 016C682D */  daddu      $t5, $t3, $t4
/* A518C 800A458C FFAD0000 */  sd         $t5, ($sp)
.L800A4590:
/* A5190 800A4590 8FA20000 */  lw         $v0, ($sp)
/* A5194 800A4594 10000003 */  b          .L800A45A4
/* A5198 800A4598 8FA30004 */   lw        $v1, 4($sp)
/* A519C 800A459C 10000001 */  b          .L800A45A4
/* A51A0 800A45A0 00000000 */   nop
.L800A45A4:
/* A51A4 800A45A4 03E00008 */  jr         $ra
/* A51A8 800A45A8 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A45AC
/* A51AC 800A45AC AFA40000 */  sw         $a0, ($sp)
/* A51B0 800A45B0 AFA50004 */  sw         $a1, 4($sp)
/* A51B4 800A45B4 AFA60008 */  sw         $a2, 8($sp)
/* A51B8 800A45B8 AFA7000C */  sw         $a3, 0xc($sp)
/* A51BC 800A45BC DFAE0000 */  ld         $t6, ($sp)
/* A51C0 800A45C0 DFAF0008 */  ld         $t7, 8($sp)
/* A51C4 800A45C4 01EE1017 */  dsrav      $v0, $t6, $t7
/* A51C8 800A45C8 0002183C */  dsll32     $v1, $v0, 0
/* A51CC 800A45CC 0003183F */  dsra32     $v1, $v1, 0
/* A51D0 800A45D0 10000003 */  b          .L800A45E0
/* A51D4 800A45D4 0002103F */   dsra32    $v0, $v0, 0
/* A51D8 800A45D8 10000001 */  b          .L800A45E0
/* A51DC 800A45DC 00000000 */   nop
.L800A45E0:
/* A51E0 800A45E0 03E00008 */  jr         $ra
/* A51E4 800A45E4 00000000 */   nop
/* A51E8 800A45E8 00000000 */  nop
/* A51EC 800A45EC 00000000 */  nop
