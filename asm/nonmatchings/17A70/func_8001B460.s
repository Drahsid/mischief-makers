glabel func_8001B460
/* 1C060 8001B460 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1C064 8001B464 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1C068 8001B468 0C006C8F */  jal        func_8001B23C
/* 1C06C 8001B46C 00000000 */   nop
/* 1C070 8001B470 00002025 */  or         $a0, $zero, $zero
/* 1C074 8001B474 2405001F */  addiu      $a1, $zero, 0x1f
/* 1C078 8001B478 2406001F */  addiu      $a2, $zero, 0x1f
/* 1C07C 8001B47C 0C009D62 */  jal        func_80027588
/* 1C080 8001B480 2407001F */   addiu     $a3, $zero, 0x1f
/* 1C084 8001B484 24040001 */  addiu      $a0, $zero, 1
/* 1C088 8001B488 24050010 */  addiu      $a1, $zero, 0x10
/* 1C08C 8001B48C 2406001F */  addiu      $a2, $zero, 0x1f
/* 1C090 8001B490 0C009D62 */  jal        func_80027588
/* 1C094 8001B494 2407001F */   addiu     $a3, $zero, 0x1f
/* 1C098 8001B498 3C09800C */  lui        $t1, %hi(gGameSubState)
/* 1C09C 8001B49C 2529E4F4 */  addiu      $t1, $t1, %lo(gGameSubState)
/* 1C0A0 8001B4A0 95280000 */  lhu        $t0, ($t1)
/* 1C0A4 8001B4A4 00000000 */  nop
/* 1C0A8 8001B4A8 2901008A */  slti       $at, $t0, 0x8a
/* 1C0AC 8001B4AC 01002825 */  or         $a1, $t0, $zero
/* 1C0B0 8001B4B0 14200008 */  bnez       $at, .L8001B4D4
/* 1C0B4 8001B4B4 01002025 */   or        $a0, $t0, $zero
/* 1C0B8 8001B4B8 2401008A */  addiu      $at, $zero, 0x8a
/* 1C0BC 8001B4BC 108101E3 */  beq        $a0, $at, L8001BC4C_1C84C
/* 1C0C0 8001B4C0 2401008B */   addiu     $at, $zero, 0x8b
/* 1C0C4 8001B4C4 1081010F */  beq        $a0, $at, L8001B904_1C504
/* 1C0C8 8001B4C8 00000000 */   nop
/* 1C0CC 8001B4CC 100004B2 */  b          .L8001C798
/* 1C0D0 8001B4D0 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001B4D4:
/* 1C0D4 8001B4D4 28810043 */  slti       $at, $a0, 0x43
/* 1C0D8 8001B4D8 14200005 */  bnez       $at, .L8001B4F0
/* 1C0DC 8001B4DC 24010089 */   addiu     $at, $zero, 0x89
/* 1C0E0 8001B4E0 10810078 */  beq        $a0, $at, .L8001B6C4
/* 1C0E4 8001B4E4 24010009 */   addiu     $at, $zero, 9
/* 1C0E8 8001B4E8 100004AB */  b          .L8001C798
/* 1C0EC 8001B4EC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001B4F0:
/* 1C0F0 8001B4F0 2C810043 */  sltiu      $at, $a0, 0x43
/* 1C0F4 8001B4F4 102004A7 */  beqz       $at, L8001C794_1D394
/* 1C0F8 8001B4F8 00047080 */   sll       $t6, $a0, 2
/* 1C0FC 8001B4FC 3C01800F */  lui        $at, %hi(jtbl_800EB3F4)
/* 1C100 8001B500 002E0821 */  addu       $at, $at, $t6
/* 1C104 8001B504 8C2EB3F4 */  lw         $t6, %lo(jtbl_800EB3F4)($at)
/* 1C108 8001B508 00000000 */  nop
/* 1C10C 8001B50C 01C00008 */  jr         $t6
/* 1C110 8001B510 00000000 */   nop
glabel L8001B514_1C114
/* 1C114 8001B514 0C011BAF */  jal        func_80046EBC
/* 1C118 8001B518 00000000 */   nop
/* 1C11C 8001B51C 1040049D */  beqz       $v0, L8001C794_1D394
/* 1C120 8001B520 3C0F8017 */   lui       $t7, %hi(gWorldProgress)
/* 1C124 8001B524 91EF1B18 */  lbu        $t7, %lo(gWorldProgress)($t7)
/* 1C128 8001B528 3C018018 */  lui        $at, %hi(gCurrentStage)
/* 1C12C 8001B52C A42F8162 */  sh         $t7, %lo(gCurrentStage)($at)
/* 1C130 8001B530 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C134 8001B534 24180007 */  addiu      $t8, $zero, 7
/* 1C138 8001B538 10000496 */  b          L8001C794_1D394
/* 1C13C 8001B53C A438E4F4 */   sh        $t8, %lo(gGameSubState)($at)
glabel L8001B540_1C140
/* 1C140 8001B540 3C048017 */  lui        $a0, %hi(gWorldProgress)
/* 1C144 8001B544 3C078018 */  lui        $a3, %hi(D_80178154)
/* 1C148 8001B548 90841B18 */  lbu        $a0, %lo(gWorldProgress)($a0)
/* 1C14C 8001B54C 3C058018 */  lui        $a1, 0x8018
/* 1C150 8001B550 3C068018 */  lui        $a2, %hi(D_80178156)
/* 1C154 8001B554 24E78154 */  addiu      $a3, $a3, %lo(D_80178154)
/* 1C158 8001B558 A7A80026 */  sh         $t0, 0x26($sp)
/* 1C15C 8001B55C 24C68156 */  addiu      $a2, $a2, %lo(D_80178156)
/* 1C160 8001B560 0C006C1E */  jal        func_8001B078
/* 1C164 8001B564 24A5815C */   addiu     $a1, $a1, -0x7ea4
/* 1C168 8001B568 3C028018 */  lui        $v0, %hi(D_8017815C)
/* 1C16C 8001B56C 9442815C */  lhu        $v0, %lo(D_8017815C)($v0)
/* 1C170 8001B570 3C078018 */  lui        $a3, %hi(D_80178154)
/* 1C174 8001B574 24010006 */  addiu      $at, $zero, 6
/* 1C178 8001B578 1441000E */  bne        $v0, $at, .L8001B5B4
/* 1C17C 8001B57C 24E78154 */   addiu     $a3, $a3, %lo(D_80178154)
/* 1C180 8001B580 3C048017 */  lui        $a0, %hi(gWorldProgress)
/* 1C184 8001B584 90841B18 */  lbu        $a0, %lo(gWorldProgress)($a0)
/* 1C188 8001B588 3C058018 */  lui        $a1, 0x8018
/* 1C18C 8001B58C 24840001 */  addiu      $a0, $a0, 1
/* 1C190 8001B590 3099FFFF */  andi       $t9, $a0, 0xffff
/* 1C194 8001B594 3C068018 */  lui        $a2, %hi(D_80178156)
/* 1C198 8001B598 24C68156 */  addiu      $a2, $a2, %lo(D_80178156)
/* 1C19C 8001B59C 03202025 */  or         $a0, $t9, $zero
/* 1C1A0 8001B5A0 0C006C1E */  jal        func_8001B078
/* 1C1A4 8001B5A4 24A5815C */   addiu     $a1, $a1, -0x7ea4
/* 1C1A8 8001B5A8 3C028018 */  lui        $v0, %hi(D_8017815C)
/* 1C1AC 8001B5AC 9442815C */  lhu        $v0, %lo(D_8017815C)($v0)
/* 1C1B0 8001B5B0 00000000 */  nop
.L8001B5B4:
/* 1C1B4 8001B5B4 3C018018 */  lui        $at, %hi(D_8017815E)
/* 1C1B8 8001B5B8 3C0A8018 */  lui        $t2, %hi(D_80178156)
/* 1C1BC 8001B5BC 954A8156 */  lhu        $t2, %lo(D_80178156)($t2)
/* 1C1C0 8001B5C0 A422815E */  sh         $v0, %lo(D_8017815E)($at)
/* 1C1C4 8001B5C4 3C018018 */  lui        $at, %hi(D_80178158)
/* 1C1C8 8001B5C8 0C006C68 */  jal        func_8001B1A0
/* 1C1CC 8001B5CC A42A8158 */   sh        $t2, %lo(D_80178158)($at)
/* 1C1D0 8001B5D0 3C018018 */  lui        $at, %hi(D_80178152)
/* 1C1D4 8001B5D4 3C05800C */  lui        $a1, %hi(gGameSubState)
/* 1C1D8 8001B5D8 94A5E4F4 */  lhu        $a1, %lo(gGameSubState)($a1)
/* 1C1DC 8001B5DC A4208152 */  sh         $zero, %lo(D_80178152)($at)
/* 1C1E0 8001B5E0 24010008 */  addiu      $at, $zero, 8
/* 1C1E4 8001B5E4 14A1000C */  bne        $a1, $at, .L8001B618
/* 1C1E8 8001B5E8 3C0B8018 */   lui       $t3, %hi(D_8017815C)
/* 1C1EC 8001B5EC 956B815C */  lhu        $t3, %lo(D_8017815C)($t3)
/* 1C1F0 8001B5F0 24010004 */  addiu      $at, $zero, 4
/* 1C1F4 8001B5F4 15610008 */  bne        $t3, $at, .L8001B618
/* 1C1F8 8001B5F8 3C0C8018 */   lui       $t4, %hi(D_80178156)
/* 1C1FC 8001B5FC 958C8156 */  lhu        $t4, %lo(D_80178156)($t4)
/* 1C200 8001B600 240D0041 */  addiu      $t5, $zero, 0x41
/* 1C204 8001B604 29810008 */  slti       $at, $t4, 8
/* 1C208 8001B608 14200003 */  bnez       $at, .L8001B618
/* 1C20C 8001B60C 3C01800C */   lui       $at, %hi(gGameSubState)
/* 1C210 8001B610 A42DE4F4 */  sh         $t5, %lo(gGameSubState)($at)
/* 1C214 8001B614 24050041 */  addiu      $a1, $zero, 0x41
.L8001B618:
/* 1C218 8001B618 24010041 */  addiu      $at, $zero, 0x41
/* 1C21C 8001B61C 14A1001C */  bne        $a1, $at, .L8001B690
/* 1C220 8001B620 3C0B800D */   lui       $t3, 0x800d
/* 1C224 8001B624 3C0E8018 */  lui        $t6, %hi(gCurrentStage)
/* 1C228 8001B628 95CE8162 */  lhu        $t6, %lo(gCurrentStage)($t6)
/* 1C22C 8001B62C 97B80026 */  lhu        $t8, 0x26($sp)
/* 1C230 8001B630 15C00007 */  bnez       $t6, .L8001B650
/* 1C234 8001B634 24010007 */   addiu     $at, $zero, 7
/* 1C238 8001B638 0C006C7E */  jal        func_8001B1F8
/* 1C23C 8001B63C 00000000 */   nop
/* 1C240 8001B640 240F0041 */  addiu      $t7, $zero, 0x41
/* 1C244 8001B644 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C248 8001B648 1000001A */  b          .L8001B6B4
/* 1C24C 8001B64C A42FE4F4 */   sh        $t7, %lo(gGameSubState)($at)
.L8001B650:
/* 1C250 8001B650 17010007 */  bne        $t8, $at, .L8001B670
/* 1C254 8001B654 24040001 */   addiu     $a0, $zero, 1
/* 1C258 8001B658 0C000FC9 */  jal        func_80003F24
/* 1C25C 8001B65C 24050018 */   addiu     $a1, $zero, 0x18
/* 1C260 8001B660 24190042 */  addiu      $t9, $zero, 0x42
/* 1C264 8001B664 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C268 8001B668 10000012 */  b          .L8001B6B4
/* 1C26C 8001B66C A439E4F4 */   sh        $t9, %lo(gGameSubState)($at)
.L8001B670:
/* 1C270 8001B670 0C006CBD */  jal        func_8001B2F4
/* 1C274 8001B674 00000000 */   nop
/* 1C278 8001B678 0C006C7E */  jal        func_8001B1F8
/* 1C27C 8001B67C 00000000 */   nop
/* 1C280 8001B680 240A001E */  addiu      $t2, $zero, 0x1e
/* 1C284 8001B684 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C288 8001B688 1000000A */  b          .L8001B6B4
/* 1C28C 8001B68C A42AE4F4 */   sh        $t2, %lo(gGameSubState)($at)
.L8001B690:
/* 1C290 8001B690 956BBF40 */  lhu        $t3, -0x40c0($t3)
/* 1C294 8001B694 240D0009 */  addiu      $t5, $zero, 9
/* 1C298 8001B698 11600005 */  beqz       $t3, .L8001B6B0
/* 1C29C 8001B69C 3C01800C */   lui       $at, 0x800c
/* 1C2A0 8001B6A0 240C001E */  addiu      $t4, $zero, 0x1e
/* 1C2A4 8001B6A4 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C2A8 8001B6A8 10000002 */  b          .L8001B6B4
/* 1C2AC 8001B6AC A42CE4F4 */   sh        $t4, %lo(gGameSubState)($at)
.L8001B6B0:
/* 1C2B0 8001B6B0 A42DE4F4 */  sh         $t5, -0x1b0c($at)
.L8001B6B4:
/* 1C2B4 8001B6B4 3C01800D */  lui        $at, %hi(D_800CBF40)
/* 1C2B8 8001B6B8 10000436 */  b          L8001C794_1D394
/* 1C2BC 8001B6BC A420BF40 */   sh        $zero, %lo(D_800CBF40)($at)
glabel L8001B6C0_1C2C0
/* 1C2C0 8001B6C0 24010009 */  addiu      $at, $zero, 9
.L8001B6C4:
/* 1C2C4 8001B6C4 14A10003 */  bne        $a1, $at, .L8001B6D4
/* 1C2C8 8001B6C8 00000000 */   nop
/* 1C2CC 8001B6CC 0C006CBD */  jal        func_8001B2F4
/* 1C2D0 8001B6D0 00000000 */   nop
.L8001B6D4:
/* 1C2D4 8001B6D4 0C020C43 */  jal        func_8008310C
/* 1C2D8 8001B6D8 00000000 */   nop
/* 1C2DC 8001B6DC 0C020D15 */  jal        func_80083454
/* 1C2E0 8001B6E0 00000000 */   nop
/* 1C2E4 8001B6E4 0C00662D */  jal        func_800198B4
/* 1C2E8 8001B6E8 00000000 */   nop
/* 1C2EC 8001B6EC 3C0E8018 */  lui        $t6, %hi(D_8017815C)
/* 1C2F0 8001B6F0 95CE815C */  lhu        $t6, %lo(D_8017815C)($t6)
/* 1C2F4 8001B6F4 3C18800D */  lui        $t8, %hi(D_800C8268)
/* 1C2F8 8001B6F8 000E7840 */  sll        $t7, $t6, 1
/* 1C2FC 8001B6FC 030FC021 */  addu       $t8, $t8, $t7
/* 1C300 8001B700 97188268 */  lhu        $t8, %lo(D_800C8268)($t8)
/* 1C304 8001B704 3C078018 */  lui        $a3, %hi(D_80178154)
/* 1C308 8001B708 24E78154 */  addiu      $a3, $a3, %lo(D_80178154)
/* 1C30C 8001B70C 3C028018 */  lui        $v0, %hi(gCurrentStage)
/* 1C310 8001B710 A4F80000 */  sh         $t8, ($a3)
/* 1C314 8001B714 94428162 */  lhu        $v0, %lo(gCurrentStage)($v0)
/* 1C318 8001B718 3C048018 */  lui        $a0, 0x8018
/* 1C31C 8001B71C 28410038 */  slti       $at, $v0, 0x38
/* 1C320 8001B720 14200005 */  bnez       $at, .L8001B738
/* 1C324 8001B724 00585023 */   subu      $t2, $v0, $t8
/* 1C328 8001B728 254BFFFF */  addiu      $t3, $t2, -1
/* 1C32C 8001B72C 3C018018 */  lui        $at, %hi(D_80178156)
/* 1C330 8001B730 10000005 */  b          .L8001B748
/* 1C334 8001B734 A42B8156 */   sh        $t3, %lo(D_80178156)($at)
.L8001B738:
/* 1C338 8001B738 94EC0000 */  lhu        $t4, ($a3)
/* 1C33C 8001B73C 3C018018 */  lui        $at, %hi(D_80178156)
/* 1C340 8001B740 004C6823 */  subu       $t5, $v0, $t4
/* 1C344 8001B744 A42D8156 */  sh         $t5, %lo(D_80178156)($at)
.L8001B748:
/* 1C348 8001B748 94848156 */  lhu        $a0, -0x7eaa($a0)
/* 1C34C 8001B74C 0C006677 */  jal        func_800199DC
/* 1C350 8001B750 00000000 */   nop
/* 1C354 8001B754 0C006792 */  jal        func_80019E48
/* 1C358 8001B758 00000000 */   nop
/* 1C35C 8001B75C 3C06800D */  lui        $a2, %hi(D_800C94E0)
/* 1C360 8001B760 24C694E0 */  addiu      $a2, $a2, %lo(D_800C94E0)
/* 1C364 8001B764 00002025 */  or         $a0, $zero, $zero
/* 1C368 8001B768 24050005 */  addiu      $a1, $zero, 5
/* 1C36C 8001B76C 0C020E04 */  jal        func_80083810
/* 1C370 8001B770 00003825 */   or        $a3, $zero, $zero
/* 1C374 8001B774 3C06800D */  lui        $a2, %hi(D_800C9500)
/* 1C378 8001B778 24C69500 */  addiu      $a2, $a2, %lo(D_800C9500)
/* 1C37C 8001B77C 00002025 */  or         $a0, $zero, $zero
/* 1C380 8001B780 24050006 */  addiu      $a1, $zero, 6
/* 1C384 8001B784 0C020E04 */  jal        func_80083810
/* 1C388 8001B788 00003825 */   or        $a3, $zero, $zero
/* 1C38C 8001B78C 0C006A24 */  jal        func_8001A890
/* 1C390 8001B790 00000000 */   nop
/* 1C394 8001B794 0C006A5B */  jal        func_8001A96C
/* 1C398 8001B798 00000000 */   nop
/* 1C39C 8001B79C 0C006C01 */  jal        func_8001B004
/* 1C3A0 8001B7A0 00000000 */   nop
/* 1C3A4 8001B7A4 3C06800D */  lui        $a2, %hi(D_800CA26C)
/* 1C3A8 8001B7A8 24C6A26C */  addiu      $a2, $a2, %lo(D_800CA26C)
/* 1C3AC 8001B7AC 24040005 */  addiu      $a0, $zero, 5
/* 1C3B0 8001B7B0 00002825 */  or         $a1, $zero, $zero
/* 1C3B4 8001B7B4 0C020E04 */  jal        func_80083810
/* 1C3B8 8001B7B8 00003825 */   or        $a3, $zero, $zero
/* 1C3BC 8001B7BC 3C06800D */  lui        $a2, %hi(D_800C952C)
/* 1C3C0 8001B7C0 24C6952C */  addiu      $a2, $a2, %lo(D_800C952C)
/* 1C3C4 8001B7C4 24040005 */  addiu      $a0, $zero, 5
/* 1C3C8 8001B7C8 24050001 */  addiu      $a1, $zero, 1
/* 1C3CC 8001B7CC 0C020E04 */  jal        func_80083810
/* 1C3D0 8001B7D0 00003825 */   or        $a3, $zero, $zero
/* 1C3D4 8001B7D4 3C05800D */  lui        $a1, %hi(D_800C962C)
/* 1C3D8 8001B7D8 240E0001 */  addiu      $t6, $zero, 1
/* 1C3DC 8001B7DC AFAE0010 */  sw         $t6, 0x10($sp)
/* 1C3E0 8001B7E0 24A5962C */  addiu      $a1, $a1, %lo(D_800C962C)
/* 1C3E4 8001B7E4 24040078 */  addiu      $a0, $zero, 0x78
/* 1C3E8 8001B7E8 3406FFC8 */  ori        $a2, $zero, 0xffc8
/* 1C3EC 8001B7EC 0C009D44 */  jal        func_80027510
/* 1C3F0 8001B7F0 3407FFEF */   ori       $a3, $zero, 0xffef
/* 1C3F4 8001B7F4 3C048018 */  lui        $a0, %hi(gCurrentStage)
/* 1C3F8 8001B7F8 94848162 */  lhu        $a0, %lo(gCurrentStage)($a0)
/* 1C3FC 8001B7FC 0C0071FC */  jal        YellowGem_getFlag
/* 1C400 8001B800 00000000 */   nop
/* 1C404 8001B804 14400002 */  bnez       $v0, .L8001B810
/* 1C408 8001B808 24040051 */   addiu     $a0, $zero, 0x51
/* 1C40C 8001B80C 1060000F */  beqz       $v1, .L8001B84C
.L8001B810:
/* 1C410 8001B810 3C05800E */   lui       $a1, %hi(D_800E13DC)
/* 1C414 8001B814 340FFFFF */  ori        $t7, $zero, 0xffff
/* 1C418 8001B818 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1C41C 8001B81C 24A513DC */  addiu      $a1, $a1, %lo(D_800E13DC)
/* 1C420 8001B820 3406FFA8 */  ori        $a2, $zero, 0xffa8
/* 1C424 8001B824 0C009D44 */  jal        func_80027510
/* 1C428 8001B828 2407003A */   addiu     $a3, $zero, 0x3a
/* 1C42C 8001B82C 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1C430 8001B830 24C67510 */  addiu      $a2, $a2, %lo(D_800F7510)
/* 1C434 8001B834 94D801AC */  lhu        $t8, 0x1ac($a2)
/* 1C438 8001B838 3C0A800E */  lui        $t2, %hi(Data_YellowGem)
/* 1C43C 8001B83C 254A8C78 */  addiu      $t2, $t2, %lo(Data_YellowGem)
/* 1C440 8001B840 37190240 */  ori        $t9, $t8, 0x240
/* 1C444 8001B844 A4D901AC */  sh         $t9, 0x1ac($a2)
/* 1C448 8001B848 ACCA02A4 */  sw         $t2, 0x2a4($a2)
.L8001B84C:
/* 1C44C 8001B84C 3C08800F */  lui        $t0, %hi(gActors)
/* 1C450 8001B850 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1C454 8001B854 24040030 */  addiu      $a0, $zero, 0x30
/* 1C458 8001B858 24030198 */  addiu      $v1, $zero, 0x198
/* 1C45C 8001B85C 2402004F */  addiu      $v0, $zero, 0x4f
.L8001B860:
/* 1C460 8001B860 00830019 */  multu      $a0, $v1
/* 1C464 8001B864 24840001 */  addiu      $a0, $a0, 1
/* 1C468 8001B868 308DFFFF */  andi       $t5, $a0, 0xffff
/* 1C46C 8001B86C 29A10090 */  slti       $at, $t5, 0x90
/* 1C470 8001B870 01A02025 */  or         $a0, $t5, $zero
/* 1C474 8001B874 00005812 */  mflo       $t3
/* 1C478 8001B878 010B6021 */  addu       $t4, $t0, $t3
/* 1C47C 8001B87C 1420FFF8 */  bnez       $at, .L8001B860
/* 1C480 8001B880 A182009F */   sb        $v0, 0x9f($t4)
/* 1C484 8001B884 3C028010 */  lui        $v0, %hi(D_80104098)
/* 1C488 8001B888 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 1C48C 8001B88C 00002025 */  or         $a0, $zero, $zero
/* 1C490 8001B890 240500FE */  addiu      $a1, $zero, 0xfe
/* 1C494 8001B894 240300A0 */  addiu      $v1, $zero, 0xa0
.L8001B898:
/* 1C498 8001B898 00830019 */  multu      $a0, $v1
/* 1C49C 8001B89C 24840001 */  addiu      $a0, $a0, 1
/* 1C4A0 8001B8A0 3098FFFF */  andi       $t8, $a0, 0xffff
/* 1C4A4 8001B8A4 2B010040 */  slti       $at, $t8, 0x40
/* 1C4A8 8001B8A8 03002025 */  or         $a0, $t8, $zero
/* 1C4AC 8001B8AC 00007012 */  mflo       $t6
/* 1C4B0 8001B8B0 004E7821 */  addu       $t7, $v0, $t6
/* 1C4B4 8001B8B4 1420FFF8 */  bnez       $at, .L8001B898
/* 1C4B8 8001B8B8 A1E50094 */   sb        $a1, 0x94($t7)
/* 1C4BC 8001B8BC 3C06800C */  lui        $a2, %hi(D_800BE6F0)
/* 1C4C0 8001B8C0 24C6E6F0 */  addiu      $a2, $a2, %lo(D_800BE6F0)
/* 1C4C4 8001B8C4 240500FF */  addiu      $a1, $zero, 0xff
/* 1C4C8 8001B8C8 A0C50000 */  sb         $a1, ($a2)
/* 1C4CC 8001B8CC 3C08800C */  lui        $t0, %hi(gGameSubState)
/* 1C4D0 8001B8D0 9508E4F4 */  lhu        $t0, %lo(gGameSubState)($t0)
/* 1C4D4 8001B8D4 24010009 */  addiu      $at, $zero, 9
/* 1C4D8 8001B8D8 11010006 */  beq        $t0, $at, .L8001B8F4
/* 1C4DC 8001B8DC 24040001 */   addiu     $a0, $zero, 1
/* 1C4E0 8001B8E0 0C000FC9 */  jal        func_80003F24
/* 1C4E4 8001B8E4 24050028 */   addiu     $a1, $zero, 0x28
/* 1C4E8 8001B8E8 3C08800C */  lui        $t0, %hi(gGameSubState)
/* 1C4EC 8001B8EC 9508E4F4 */  lhu        $t0, %lo(gGameSubState)($t0)
/* 1C4F0 8001B8F0 00000000 */  nop
.L8001B8F4:
/* 1C4F4 8001B8F4 25190001 */  addiu      $t9, $t0, 1
/* 1C4F8 8001B8F8 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C4FC 8001B8FC 100003A5 */  b          L8001C794_1D394
/* 1C500 8001B900 A439E4F4 */   sh        $t9, %lo(gGameSubState)($at)
glabel L8001B904_1C504
/* 1C504 8001B904 0C006A24 */  jal        func_8001A890
/* 1C508 8001B908 00000000 */   nop
/* 1C50C 8001B90C 0C006A5B */  jal        func_8001A96C
/* 1C510 8001B910 00000000 */   nop
/* 1C514 8001B914 3C04800C */  lui        $a0, %hi(gButtonPress)
/* 1C518 8001B918 3C0A800C */  lui        $t2, %hi(gButton_DUp)
/* 1C51C 8001B91C 954AE504 */  lhu        $t2, %lo(gButton_DUp)($t2)
/* 1C520 8001B920 9484E4FC */  lhu        $a0, %lo(gButtonPress)($a0)
/* 1C524 8001B924 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1C528 8001B928 008A5824 */  and        $t3, $a0, $t2
/* 1C52C 8001B92C 1160000F */  beqz       $t3, .L8001B96C
/* 1C530 8001B930 24C67510 */   addiu     $a2, $a2, %lo(D_800F7510)
/* 1C534 8001B934 84CC3FCC */  lh         $t4, 0x3fcc($a2)
/* 1C538 8001B938 2401FFEF */  addiu      $at, $zero, -0x11
/* 1C53C 8001B93C 1181000B */  beq        $t4, $at, .L8001B96C
/* 1C540 8001B940 00000000 */   nop
/* 1C544 8001B944 0C000CD3 */  jal        SFX_Play_1
/* 1C548 8001B948 24040022 */   addiu     $a0, $zero, 0x22
/* 1C54C 8001B94C 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1C550 8001B950 24C67510 */  addiu      $a2, $a2, %lo(D_800F7510)
/* 1C554 8001B954 84CD3FCC */  lh         $t5, 0x3fcc($a2)
/* 1C558 8001B958 3C04800C */  lui        $a0, %hi(gButtonPress)
/* 1C55C 8001B95C 25AE0014 */  addiu      $t6, $t5, 0x14
/* 1C560 8001B960 A4CE3FCC */  sh         $t6, 0x3fcc($a2)
/* 1C564 8001B964 9484E4FC */  lhu        $a0, %lo(gButtonPress)($a0)
/* 1C568 8001B968 00000000 */  nop
.L8001B96C:
/* 1C56C 8001B96C 3C0F800C */  lui        $t7, %hi(gButton_DDown)
/* 1C570 8001B970 95EFE508 */  lhu        $t7, %lo(gButton_DDown)($t7)
/* 1C574 8001B974 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1C578 8001B978 008FC024 */  and        $t8, $a0, $t7
/* 1C57C 8001B97C 1300000F */  beqz       $t8, .L8001B9BC
/* 1C580 8001B980 24C67510 */   addiu     $a2, $a2, %lo(D_800F7510)
/* 1C584 8001B984 84D93FCC */  lh         $t9, 0x3fcc($a2)
/* 1C588 8001B988 2401FFDB */  addiu      $at, $zero, -0x25
/* 1C58C 8001B98C 1321000B */  beq        $t9, $at, .L8001B9BC
/* 1C590 8001B990 00000000 */   nop
/* 1C594 8001B994 0C000CD3 */  jal        SFX_Play_1
/* 1C598 8001B998 24040022 */   addiu     $a0, $zero, 0x22
/* 1C59C 8001B99C 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1C5A0 8001B9A0 24C67510 */  addiu      $a2, $a2, %lo(D_800F7510)
/* 1C5A4 8001B9A4 84CA3FCC */  lh         $t2, 0x3fcc($a2)
/* 1C5A8 8001B9A8 3C04800C */  lui        $a0, %hi(gButtonPress)
/* 1C5AC 8001B9AC 254BFFEC */  addiu      $t3, $t2, -0x14
/* 1C5B0 8001B9B0 A4CB3FCC */  sh         $t3, 0x3fcc($a2)
/* 1C5B4 8001B9B4 9484E4FC */  lhu        $a0, %lo(gButtonPress)($a0)
/* 1C5B8 8001B9B8 00000000 */  nop
.L8001B9BC:
/* 1C5BC 8001B9BC 3C0C800C */  lui        $t4, %hi(gButton_Start)
/* 1C5C0 8001B9C0 958CE500 */  lhu        $t4, %lo(gButton_Start)($t4)
/* 1C5C4 8001B9C4 3C0E800C */  lui        $t6, %hi(gButton_A)
/* 1C5C8 8001B9C8 008C6824 */  and        $t5, $a0, $t4
/* 1C5CC 8001B9CC 15A00006 */  bnez       $t5, .L8001B9E8
/* 1C5D0 8001B9D0 00000000 */   nop
/* 1C5D4 8001B9D4 95CEE518 */  lhu        $t6, %lo(gButton_A)($t6)
/* 1C5D8 8001B9D8 00000000 */  nop
/* 1C5DC 8001B9DC 008E7824 */  and        $t7, $a0, $t6
/* 1C5E0 8001B9E0 11E0036D */  beqz       $t7, .L8001C798
/* 1C5E4 8001B9E4 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001B9E8:
/* 1C5E8 8001B9E8 84D83FCC */  lh         $t8, 0x3fcc($a2)
/* 1C5EC 8001B9EC 2401FFEF */  addiu      $at, $zero, -0x11
/* 1C5F0 8001B9F0 17010007 */  bne        $t8, $at, .L8001BA10
/* 1C5F4 8001B9F4 240A0030 */   addiu     $t2, $zero, 0x30
/* 1C5F8 8001B9F8 0C000CD3 */  jal        SFX_Play_1
/* 1C5FC 8001B9FC 24040048 */   addiu     $a0, $zero, 0x48
/* 1C600 8001BA00 2419000D */  addiu      $t9, $zero, 0xd
/* 1C604 8001BA04 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C608 8001BA08 10000362 */  b          L8001C794_1D394
/* 1C60C 8001BA0C A439E4F4 */   sh        $t9, %lo(gGameSubState)($at)
.L8001BA10:
/* 1C610 8001BA10 ACCA4094 */  sw         $t2, 0x4094($a2)
/* 1C614 8001BA14 24040001 */  addiu      $a0, $zero, 1
/* 1C618 8001BA18 0C000FC9 */  jal        func_80003F24
/* 1C61C 8001BA1C 24050030 */   addiu     $a1, $zero, 0x30
/* 1C620 8001BA20 0C000CD3 */  jal        SFX_Play_1
/* 1C624 8001BA24 24040023 */   addiu     $a0, $zero, 0x23
/* 1C628 8001BA28 240B000C */  addiu      $t3, $zero, 0xc
/* 1C62C 8001BA2C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C630 8001BA30 10000358 */  b          L8001C794_1D394
/* 1C634 8001BA34 A42BE4F4 */   sh        $t3, %lo(gGameSubState)($at)
glabel L8001BA38_1C638
/* 1C638 8001BA38 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1C63C 8001BA3C 24C67510 */  addiu      $a2, $a2, %lo(D_800F7510)
/* 1C640 8001BA40 8CC24094 */  lw         $v0, 0x4094($a2)
/* 1C644 8001BA44 3C01800C */  lui        $at, %hi(gGameState)
/* 1C648 8001BA48 2C440001 */  sltiu      $a0, $v0, 1
/* 1C64C 8001BA4C 244CFFFF */  addiu      $t4, $v0, -1
/* 1C650 8001BA50 10800350 */  beqz       $a0, L8001C794_1D394
/* 1C654 8001BA54 ACCC4094 */   sw        $t4, 0x4094($a2)
/* 1C658 8001BA58 A420E4F0 */  sh         $zero, %lo(gGameState)($at)
/* 1C65C 8001BA5C 1000034D */  b          L8001C794_1D394
/* 1C660 8001BA60 A5200000 */   sh        $zero, ($t1)
glabel L8001BA64_1C664
/* 1C664 8001BA64 0C006A24 */  jal        func_8001A890
/* 1C668 8001BA68 00000000 */   nop
/* 1C66C 8001BA6C 0C006A5B */  jal        func_8001A96C
/* 1C670 8001BA70 00000000 */   nop
/* 1C674 8001BA74 3C08800F */  lui        $t0, %hi(gActors)
/* 1C678 8001BA78 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1C67C 8001BA7C 24040030 */  addiu      $a0, $zero, 0x30
/* 1C680 8001BA80 24030198 */  addiu      $v1, $zero, 0x198
.L8001BA84:
/* 1C684 8001BA84 00830019 */  multu      $a0, $v1
/* 1C688 8001BA88 24840001 */  addiu      $a0, $a0, 1
/* 1C68C 8001BA8C 3098FFFF */  andi       $t8, $a0, 0xffff
/* 1C690 8001BA90 2B0100BC */  slti       $at, $t8, 0xbc
/* 1C694 8001BA94 03002025 */  or         $a0, $t8, $zero
/* 1C698 8001BA98 00006812 */  mflo       $t5
/* 1C69C 8001BA9C 010D1021 */  addu       $v0, $t0, $t5
/* 1C6A0 8001BAA0 844E0088 */  lh         $t6, 0x88($v0)
/* 1C6A4 8001BAA4 00000000 */  nop
/* 1C6A8 8001BAA8 25CFFFE0 */  addiu      $t7, $t6, -0x20
/* 1C6AC 8001BAAC 1420FFF5 */  bnez       $at, .L8001BA84
/* 1C6B0 8001BAB0 A44F0088 */   sh        $t7, 0x88($v0)
/* 1C6B4 8001BAB4 85195038 */  lh         $t9, 0x5038($t0)
/* 1C6B8 8001BAB8 2401FEE0 */  addiu      $at, $zero, -0x120
/* 1C6BC 8001BABC 17210336 */  bne        $t9, $at, .L8001C798
/* 1C6C0 8001BAC0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 1C6C4 8001BAC4 0C006C7E */  jal        func_8001B1F8
/* 1C6C8 8001BAC8 00000000 */   nop
/* 1C6CC 8001BACC 3C05800C */  lui        $a1, %hi(gGameSubState)
/* 1C6D0 8001BAD0 94A5E4F4 */  lhu        $a1, %lo(gGameSubState)($a1)
/* 1C6D4 8001BAD4 2401000D */  addiu      $at, $zero, 0xd
/* 1C6D8 8001BAD8 14A10018 */  bne        $a1, $at, .L8001BB3C
/* 1C6DC 8001BADC 24010041 */   addiu     $at, $zero, 0x41
/* 1C6E0 8001BAE0 0C0067B1 */  jal        func_80019EC4
/* 1C6E4 8001BAE4 00000000 */   nop
/* 1C6E8 8001BAE8 3C08800F */  lui        $t0, %hi(gActors)
/* 1C6EC 8001BAEC 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1C6F0 8001BAF0 24030198 */  addiu      $v1, $zero, 0x198
/* 1C6F4 8001BAF4 24040030 */  addiu      $a0, $zero, 0x30
.L8001BAF8:
/* 1C6F8 8001BAF8 00830019 */  multu      $a0, $v1
/* 1C6FC 8001BAFC 24840001 */  addiu      $a0, $a0, 1
/* 1C700 8001BB00 308DFFFF */  andi       $t5, $a0, 0xffff
/* 1C704 8001BB04 29A100BC */  slti       $at, $t5, 0xbc
/* 1C708 8001BB08 01A02025 */  or         $a0, $t5, $zero
/* 1C70C 8001BB0C 00005012 */  mflo       $t2
/* 1C710 8001BB10 010A1021 */  addu       $v0, $t0, $t2
/* 1C714 8001BB14 844B0088 */  lh         $t3, 0x88($v0)
/* 1C718 8001BB18 00000000 */  nop
/* 1C71C 8001BB1C 256C0100 */  addiu      $t4, $t3, 0x100
/* 1C720 8001BB20 1420FFF5 */  bnez       $at, .L8001BAF8
/* 1C724 8001BB24 A44C0088 */   sh        $t4, 0x88($v0)
/* 1C728 8001BB28 240E000E */  addiu      $t6, $zero, 0xe
/* 1C72C 8001BB2C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C730 8001BB30 10000318 */  b          L8001C794_1D394
/* 1C734 8001BB34 A42EE4F4 */   sh        $t6, %lo(gGameSubState)($at)
/* 1C738 8001BB38 24010041 */  addiu      $at, $zero, 0x41
.L8001BB3C:
/* 1C73C 8001BB3C 14A10315 */  bne        $a1, $at, L8001C794_1D394
/* 1C740 8001BB40 24040001 */   addiu     $a0, $zero, 1
/* 1C744 8001BB44 0C000FC9 */  jal        func_80003F24
/* 1C748 8001BB48 24050018 */   addiu     $a1, $zero, 0x18
/* 1C74C 8001BB4C 240F0042 */  addiu      $t7, $zero, 0x42
/* 1C750 8001BB50 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C754 8001BB54 1000030F */  b          L8001C794_1D394
/* 1C758 8001BB58 A42FE4F4 */   sh        $t7, %lo(gGameSubState)($at)
glabel L8001BB5C_1C75C
/* 1C75C 8001BB5C 3C08800F */  lui        $t0, %hi(gActors)
/* 1C760 8001BB60 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1C764 8001BB64 24040030 */  addiu      $a0, $zero, 0x30
/* 1C768 8001BB68 24030198 */  addiu      $v1, $zero, 0x198
.L8001BB6C:
/* 1C76C 8001BB6C 00830019 */  multu      $a0, $v1
/* 1C770 8001BB70 24840001 */  addiu      $a0, $a0, 1
/* 1C774 8001BB74 308BFFFF */  andi       $t3, $a0, 0xffff
/* 1C778 8001BB78 296100BC */  slti       $at, $t3, 0xbc
/* 1C77C 8001BB7C 01602025 */  or         $a0, $t3, $zero
/* 1C780 8001BB80 0000C012 */  mflo       $t8
/* 1C784 8001BB84 01181021 */  addu       $v0, $t0, $t8
/* 1C788 8001BB88 84590088 */  lh         $t9, 0x88($v0)
/* 1C78C 8001BB8C 00000000 */  nop
/* 1C790 8001BB90 272AFFE0 */  addiu      $t2, $t9, -0x20
/* 1C794 8001BB94 1420FFF5 */  bnez       $at, .L8001BB6C
/* 1C798 8001BB98 A44A0088 */   sh        $t2, 0x88($v0)
/* 1C79C 8001BB9C 850C5038 */  lh         $t4, 0x5038($t0)
/* 1C7A0 8001BBA0 240D0020 */  addiu      $t5, $zero, 0x20
/* 1C7A4 8001BBA4 1D8002FC */  bgtz       $t4, .L8001C798
/* 1C7A8 8001BBA8 8FBF001C */   lw        $ra, 0x1c($sp)
/* 1C7AC 8001BBAC 100002F9 */  b          L8001C794_1D394
/* 1C7B0 8001BBB0 A52D0000 */   sh        $t5, ($t1)
glabel L8001BBB4_1C7B4
/* 1C7B4 8001BBB4 0C0067B1 */  jal        func_80019EC4
/* 1C7B8 8001BBB8 00000000 */   nop
/* 1C7BC 8001BBBC 3C08800F */  lui        $t0, %hi(gActors)
/* 1C7C0 8001BBC0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1C7C4 8001BBC4 24040030 */  addiu      $a0, $zero, 0x30
/* 1C7C8 8001BBC8 24030198 */  addiu      $v1, $zero, 0x198
/* 1C7CC 8001BBCC 2402004F */  addiu      $v0, $zero, 0x4f
.L8001BBD0:
/* 1C7D0 8001BBD0 00830019 */  multu      $a0, $v1
/* 1C7D4 8001BBD4 24840001 */  addiu      $a0, $a0, 1
/* 1C7D8 8001BBD8 3098FFFF */  andi       $t8, $a0, 0xffff
/* 1C7DC 8001BBDC 2B010090 */  slti       $at, $t8, 0x90
/* 1C7E0 8001BBE0 03002025 */  or         $a0, $t8, $zero
/* 1C7E4 8001BBE4 00007012 */  mflo       $t6
/* 1C7E8 8001BBE8 010E7821 */  addu       $t7, $t0, $t6
/* 1C7EC 8001BBEC 1420FFF8 */  bnez       $at, .L8001BBD0
/* 1C7F0 8001BBF0 A1E2009F */   sb        $v0, 0x9f($t7)
/* 1C7F4 8001BBF4 3C028010 */  lui        $v0, %hi(D_80104098)
/* 1C7F8 8001BBF8 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 1C7FC 8001BBFC 00002025 */  or         $a0, $zero, $zero
/* 1C800 8001BC00 240500FE */  addiu      $a1, $zero, 0xfe
/* 1C804 8001BC04 240300A0 */  addiu      $v1, $zero, 0xa0
.L8001BC08:
/* 1C808 8001BC08 00830019 */  multu      $a0, $v1
/* 1C80C 8001BC0C 24840001 */  addiu      $a0, $a0, 1
/* 1C810 8001BC10 308BFFFF */  andi       $t3, $a0, 0xffff
/* 1C814 8001BC14 29610040 */  slti       $at, $t3, 0x40
/* 1C818 8001BC18 01602025 */  or         $a0, $t3, $zero
/* 1C81C 8001BC1C 0000C812 */  mflo       $t9
/* 1C820 8001BC20 00595021 */  addu       $t2, $v0, $t9
/* 1C824 8001BC24 1420FFF8 */  bnez       $at, .L8001BC08
/* 1C828 8001BC28 A1450094 */   sb        $a1, 0x94($t2)
/* 1C82C 8001BC2C 3C06800C */  lui        $a2, %hi(D_800BE6F0)
/* 1C830 8001BC30 24C6E6F0 */  addiu      $a2, $a2, %lo(D_800BE6F0)
/* 1C834 8001BC34 240500FF */  addiu      $a1, $zero, 0xff
/* 1C838 8001BC38 A0C50000 */  sb         $a1, ($a2)
/* 1C83C 8001BC3C 240C001F */  addiu      $t4, $zero, 0x1f
/* 1C840 8001BC40 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1C844 8001BC44 100002D3 */  b          L8001C794_1D394
/* 1C848 8001BC48 A42CE4F4 */   sh        $t4, %lo(gGameSubState)($at)
glabel L8001BC4C_1C84C
/* 1C84C 8001BC4C 0C006A24 */  jal        func_8001A890
/* 1C850 8001BC50 00000000 */   nop
/* 1C854 8001BC54 0C006A5B */  jal        func_8001A96C
/* 1C858 8001BC58 00000000 */   nop
glabel L8001BC5C_1C85C
/* 1C85C 8001BC5C 3C06800C */  lui        $a2, %hi(D_800BE6F0)
/* 1C860 8001BC60 24C6E6F0 */  addiu      $a2, $a2, %lo(D_800BE6F0)
/* 1C864 8001BC64 90CD0000 */  lbu        $t5, ($a2)
/* 1C868 8001BC68 3C08800F */  lui        $t0, %hi(gActors)
/* 1C86C 8001BC6C 25AEFFFC */  addiu      $t6, $t5, -4
/* 1C870 8001BC70 A0CE0000 */  sb         $t6, ($a2)
/* 1C874 8001BC74 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1C878 8001BC78 24040030 */  addiu      $a0, $zero, 0x30
/* 1C87C 8001BC7C 24030198 */  addiu      $v1, $zero, 0x198
.L8001BC80:
/* 1C880 8001BC80 00830019 */  multu      $a0, $v1
/* 1C884 8001BC84 24840001 */  addiu      $a0, $a0, 1
/* 1C888 8001BC88 308AFFFF */  andi       $t2, $a0, 0xffff
/* 1C88C 8001BC8C 29410090 */  slti       $at, $t2, 0x90
/* 1C890 8001BC90 01402025 */  or         $a0, $t2, $zero
/* 1C894 8001BC94 00007812 */  mflo       $t7
/* 1C898 8001BC98 010F1021 */  addu       $v0, $t0, $t7
/* 1C89C 8001BC9C 9058009F */  lbu        $t8, 0x9f($v0)
/* 1C8A0 8001BCA0 00000000 */  nop
/* 1C8A4 8001BCA4 27190004 */  addiu      $t9, $t8, 4
/* 1C8A8 8001BCA8 1420FFF5 */  bnez       $at, .L8001BC80
/* 1C8AC 8001BCAC A059009F */   sb        $t9, 0x9f($v0)
/* 1C8B0 8001BCB0 90CB0000 */  lbu        $t3, ($a2)
/* 1C8B4 8001BCB4 2401004F */  addiu      $at, $zero, 0x4f
/* 1C8B8 8001BCB8 156102B6 */  bne        $t3, $at, L8001C794_1D394
/* 1C8BC 8001BCBC 24040010 */   addiu     $a0, $zero, 0x10
/* 1C8C0 8001BCC0 3C018013 */  lui        $at, %hi(D_80137D90)
/* 1C8C4 8001BCC4 0C000AD4 */  jal        BGM_Play
/* 1C8C8 8001BCC8 A4207D90 */   sh        $zero, %lo(D_80137D90)($at)
/* 1C8CC 8001BCCC 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 1C8D0 8001BCD0 340CFFFF */  ori        $t4, $zero, 0xffff
/* 1C8D4 8001BCD4 3C01800D */  lui        $at, %hi(D_800C81E0)
/* 1C8D8 8001BCD8 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 1C8DC 8001BCDC A42C81E0 */  sh         $t4, %lo(D_800C81E0)($at)
/* 1C8E0 8001BCE0 944D0000 */  lhu        $t5, ($v0)
/* 1C8E4 8001BCE4 00000000 */  nop
/* 1C8E8 8001BCE8 25AE0001 */  addiu      $t6, $t5, 1
/* 1C8EC 8001BCEC 100002A9 */  b          L8001C794_1D394
/* 1C8F0 8001BCF0 A44E0000 */   sh        $t6, ($v0)
glabel L8001BCF4_1C8F4
/* 1C8F4 8001BCF4 3C0F8018 */  lui        $t7, %hi(D_80178152)
/* 1C8F8 8001BCF8 95EF8152 */  lhu        $t7, %lo(D_80178152)($t7)
/* 1C8FC 8001BCFC 3C06800F */  lui        $a2, 0x800f
/* 1C900 8001BD00 11E0005F */  beqz       $t7, .L8001BE80
/* 1C904 8001BD04 250D0001 */   addiu     $t5, $t0, 1
/* 1C908 8001BD08 3C188018 */  lui        $t8, %hi(D_80178156)
/* 1C90C 8001BD0C 97188156 */  lhu        $t8, %lo(D_80178156)($t8)
/* 1C910 8001BD10 3C0A800D */  lui        $t2, %hi(D_800C95F4)
/* 1C914 8001BD14 0018C840 */  sll        $t9, $t8, 1
/* 1C918 8001BD18 24C67510 */  addiu      $a2, $a2, 0x7510
/* 1C91C 8001BD1C 01595021 */  addu       $t2, $t2, $t9
/* 1C920 8001BD20 854A95F4 */  lh         $t2, %lo(D_800C95F4)($t2)
/* 1C924 8001BD24 84C23FC8 */  lh         $v0, 0x3fc8($a2)
/* 1C928 8001BD28 00000000 */  nop
/* 1C92C 8001BD2C 004A082A */  slt        $at, $v0, $t2
/* 1C930 8001BD30 10200004 */  beqz       $at, .L8001BD44
/* 1C934 8001BD34 244B0001 */   addiu     $t3, $v0, 1
/* 1C938 8001BD38 A4CB3FC8 */  sh         $t3, 0x3fc8($a2)
/* 1C93C 8001BD3C 84C23FC8 */  lh         $v0, 0x3fc8($a2)
/* 1C940 8001BD40 00000000 */  nop
.L8001BD44:
/* 1C944 8001BD44 24440081 */  addiu      $a0, $v0, 0x81
/* 1C948 8001BD48 24010017 */  addiu      $at, $zero, 0x17
/* 1C94C 8001BD4C 0081001A */  div        $zero, $a0, $at
/* 1C950 8001BD50 00006012 */  mflo       $t4
/* 1C954 8001BD54 3184FFFF */  andi       $a0, $t4, 0xffff
/* 1C958 8001BD58 0C006857 */  jal        func_8001A15C
/* 1C95C 8001BD5C A7A40026 */   sh        $a0, 0x26($sp)
/* 1C960 8001BD60 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1C964 8001BD64 24C67510 */  addiu      $a2, $a2, %lo(D_800F7510)
/* 1C968 8001BD68 84C23FC8 */  lh         $v0, 0x3fc8($a2)
/* 1C96C 8001BD6C 24010017 */  addiu      $at, $zero, 0x17
/* 1C970 8001BD70 244E000E */  addiu      $t6, $v0, 0xe
/* 1C974 8001BD74 01C1001A */  div        $zero, $t6, $at
/* 1C978 8001BD78 97A40026 */  lhu        $a0, 0x26($sp)
/* 1C97C 8001BD7C 00007810 */  mfhi       $t7
/* 1C980 8001BD80 15E00016 */  bnez       $t7, .L8001BDDC
/* 1C984 8001BD84 00000000 */   nop
/* 1C988 8001BD88 0C0067C1 */  jal        func_80019F04
/* 1C98C 8001BD8C 00000000 */   nop
/* 1C990 8001BD90 3C08800F */  lui        $t0, %hi(gActors)
/* 1C994 8001BD94 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1C998 8001BD98 2404008C */  addiu      $a0, $zero, 0x8c
/* 1C99C 8001BD9C 24030198 */  addiu      $v1, $zero, 0x198
.L8001BDA0:
/* 1C9A0 8001BDA0 00830019 */  multu      $a0, $v1
/* 1C9A4 8001BDA4 24840001 */  addiu      $a0, $a0, 1
/* 1C9A8 8001BDA8 308AFFFF */  andi       $t2, $a0, 0xffff
/* 1C9AC 8001BDAC 2941009B */  slti       $at, $t2, 0x9b
/* 1C9B0 8001BDB0 01402025 */  or         $a0, $t2, $zero
/* 1C9B4 8001BDB4 0000C012 */  mflo       $t8
/* 1C9B8 8001BDB8 0118C821 */  addu       $t9, $t0, $t8
/* 1C9BC 8001BDBC 1420FFF8 */  bnez       $at, .L8001BDA0
/* 1C9C0 8001BDC0 AF200080 */   sw        $zero, 0x80($t9)
/* 1C9C4 8001BDC4 97A40026 */  lhu        $a0, 0x26($sp)
/* 1C9C8 8001BDC8 0C006677 */  jal        func_800199DC
/* 1C9CC 8001BDCC 00000000 */   nop
/* 1C9D0 8001BDD0 3C028010 */  lui        $v0, %hi(D_800FB4D8)
/* 1C9D4 8001BDD4 8442B4D8 */  lh         $v0, %lo(D_800FB4D8)($v0)
/* 1C9D8 8001BDD8 00000000 */  nop
.L8001BDDC:
/* 1C9DC 8001BDDC 3C0B8018 */  lui        $t3, %hi(D_80178156)
/* 1C9E0 8001BDE0 956B8156 */  lhu        $t3, %lo(D_80178156)($t3)
/* 1C9E4 8001BDE4 3C0D800D */  lui        $t5, %hi(D_800C95F4)
/* 1C9E8 8001BDE8 000B6040 */  sll        $t4, $t3, 1
/* 1C9EC 8001BDEC 01AC6821 */  addu       $t5, $t5, $t4
/* 1C9F0 8001BDF0 85AD95F4 */  lh         $t5, %lo(D_800C95F4)($t5)
/* 1C9F4 8001BDF4 3C08800F */  lui        $t0, %hi(gActors)
/* 1C9F8 8001BDF8 004D082A */  slt        $at, $v0, $t5
/* 1C9FC 8001BDFC 14200265 */  bnez       $at, L8001C794_1D394
/* 1CA00 8001BE00 2508F510 */   addiu     $t0, $t0, %lo(gActors)
/* 1CA04 8001BE04 3C0E800D */  lui        $t6, %hi(D_800C81E0)
/* 1CA08 8001BE08 95CE81E0 */  lhu        $t6, %lo(D_800C81E0)($t6)
/* 1CA0C 8001BE0C 3C014334 */  lui        $at, 0x4334
/* 1CA10 8001BE10 000E7880 */  sll        $t7, $t6, 2
/* 1CA14 8001BE14 01EE7823 */  subu       $t7, $t7, $t6
/* 1CA18 8001BE18 000F7880 */  sll        $t7, $t7, 2
/* 1CA1C 8001BE1C 01EE7821 */  addu       $t7, $t7, $t6
/* 1CA20 8001BE20 000F7880 */  sll        $t7, $t7, 2
/* 1CA24 8001BE24 01EE7823 */  subu       $t7, $t7, $t6
/* 1CA28 8001BE28 000F78C0 */  sll        $t7, $t7, 3
/* 1CA2C 8001BE2C 010FC021 */  addu       $t8, $t0, $t7
/* 1CA30 8001BE30 C7060254 */  lwc1       $f6, 0x254($t8)
/* 1CA34 8001BE34 44812000 */  mtc1       $at, $f4
/* 1CA38 8001BE38 3C018018 */  lui        $at, 0x8018
/* 1CA3C 8001BE3C 46062032 */  c.eq.s     $f4, $f6
/* 1CA40 8001BE40 3C198018 */  lui        $t9, %hi(D_8017815A)
/* 1CA44 8001BE44 45000253 */  bc1f       L8001C794_1D394
/* 1CA48 8001BE48 3C0A8018 */   lui       $t2, %hi(D_80178160)
/* 1CA4C 8001BE4C 9739815A */  lhu        $t9, %lo(D_8017815A)($t9)
/* 1CA50 8001BE50 A4208152 */  sh         $zero, -0x7eae($at)
/* 1CA54 8001BE54 3C018018 */  lui        $at, %hi(D_80178158)
/* 1CA58 8001BE58 954A8160 */  lhu        $t2, %lo(D_80178160)($t2)
/* 1CA5C 8001BE5C 3C0B800C */  lui        $t3, %hi(gGameSubState)
/* 1CA60 8001BE60 A4398158 */  sh         $t9, %lo(D_80178158)($at)
/* 1CA64 8001BE64 956BE4F4 */  lhu        $t3, %lo(gGameSubState)($t3)
/* 1CA68 8001BE68 3C018018 */  lui        $at, %hi(D_8017815E)
/* 1CA6C 8001BE6C A42A815E */  sh         $t2, %lo(D_8017815E)($at)
/* 1CA70 8001BE70 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1CA74 8001BE74 256C0001 */  addiu      $t4, $t3, 1
/* 1CA78 8001BE78 10000246 */  b          L8001C794_1D394
/* 1CA7C 8001BE7C A42CE4F4 */   sh        $t4, %lo(gGameSubState)($at)
.L8001BE80:
/* 1CA80 8001BE80 10000244 */  b          L8001C794_1D394
/* 1CA84 8001BE84 A52D0000 */   sh        $t5, ($t1)
glabel L8001BE88_1CA88
/* 1CA88 8001BE88 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1CA8C 8001BE8C 24C67510 */  addiu      $a2, $a2, %lo(D_800F7510)
/* 1CA90 8001BE90 84C43FC8 */  lh         $a0, 0x3fc8($a2)
/* 1CA94 8001BE94 24010017 */  addiu      $at, $zero, 0x17
/* 1CA98 8001BE98 24840081 */  addiu      $a0, $a0, 0x81
/* 1CA9C 8001BE9C 0081001A */  div        $zero, $a0, $at
/* 1CAA0 8001BEA0 00007012 */  mflo       $t6
/* 1CAA4 8001BEA4 31C4FFFF */  andi       $a0, $t6, 0xffff
/* 1CAA8 8001BEA8 0C006857 */  jal        func_8001A15C
/* 1CAAC 8001BEAC 00000000 */   nop
/* 1CAB0 8001BEB0 3C188018 */  lui        $t8, %hi(D_80178156)
/* 1CAB4 8001BEB4 97188156 */  lhu        $t8, %lo(D_80178156)($t8)
/* 1CAB8 8001BEB8 3C04800C */  lui        $a0, %hi(gButton_DLeft)
/* 1CABC 8001BEBC 9484E50C */  lhu        $a0, %lo(gButton_DLeft)($a0)
/* 1CAC0 8001BEC0 3C05800F */  lui        $a1, %hi(D_800F059E)
/* 1CAC4 8001BEC4 24A5059E */  addiu      $a1, $a1, %lo(D_800F059E)
/* 1CAC8 8001BEC8 0C005DA0 */  jal        func_80017680
/* 1CACC 8001BECC A7B80026 */   sh        $t8, 0x26($sp)
/* 1CAD0 8001BED0 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1CAD4 8001BED4 10400006 */  beqz       $v0, .L8001BEF0
/* 1CAD8 8001BED8 24C67510 */   addiu     $a2, $a2, %lo(D_800F7510)
/* 1CADC 8001BEDC 97B90026 */  lhu        $t9, 0x26($sp)
/* 1CAE0 8001BEE0 00000000 */  nop
/* 1CAE4 8001BEE4 272AFFFF */  addiu      $t2, $t9, -1
/* 1CAE8 8001BEE8 1000000D */  b          .L8001BF20
/* 1CAEC 8001BEEC A7AA0026 */   sh        $t2, 0x26($sp)
.L8001BEF0:
/* 1CAF0 8001BEF0 3C04800C */  lui        $a0, %hi(gButton_DRight)
/* 1CAF4 8001BEF4 9484E510 */  lhu        $a0, %lo(gButton_DRight)($a0)
/* 1CAF8 8001BEF8 3C05800F */  lui        $a1, %hi(D_800F0736)
/* 1CAFC 8001BEFC 0C005DA0 */  jal        func_80017680
/* 1CB00 8001BF00 24A50736 */   addiu     $a1, $a1, %lo(D_800F0736)
/* 1CB04 8001BF04 3C06800F */  lui        $a2, %hi(D_800F7510)
/* 1CB08 8001BF08 10400005 */  beqz       $v0, .L8001BF20
/* 1CB0C 8001BF0C 24C67510 */   addiu     $a2, $a2, %lo(D_800F7510)
/* 1CB10 8001BF10 97AB0026 */  lhu        $t3, 0x26($sp)
/* 1CB14 8001BF14 00000000 */  nop
/* 1CB18 8001BF18 256C0001 */  addiu      $t4, $t3, 1
/* 1CB1C 8001BF1C A7AC0026 */  sh         $t4, 0x26($sp)
.L8001BF20:
/* 1CB20 8001BF20 97A20026 */  lhu        $v0, 0x26($sp)
/* 1CB24 8001BF24 3401FFFF */  ori        $at, $zero, 0xffff
/* 1CB28 8001BF28 14410003 */  bne        $v0, $at, .L8001BF38
/* 1CB2C 8001BF2C 3C088018 */   lui       $t0, %hi(D_8017815C)
/* 1CB30 8001BF30 00001025 */  or         $v0, $zero, $zero
/* 1CB34 8001BF34 A7A00026 */  sh         $zero, 0x26($sp)
.L8001BF38:
/* 1CB38 8001BF38 2508815C */  addiu      $t0, $t0, %lo(D_8017815C)
/* 1CB3C 8001BF3C 950D0000 */  lhu        $t5, ($t0)
/* 1CB40 8001BF40 3C03800D */  lui        $v1, %hi(D_800C8C04)
/* 1CB44 8001BF44 000D7040 */  sll        $t6, $t5, 1
/* 1CB48 8001BF48 006E1821 */  addu       $v1, $v1, $t6
/* 1CB4C 8001BF4C 94638C04 */  lhu        $v1, %lo(D_800C8C04)($v1)
/* 1CB50 8001BF50 97A50026 */  lhu        $a1, 0x26($sp)
/* 1CB54 8001BF54 0043082A */  slt        $at, $v0, $v1
/* 1CB58 8001BF58 14200004 */  bnez       $at, .L8001BF6C
/* 1CB5C 8001BF5C 3C078018 */   lui       $a3, 0x8018
/* 1CB60 8001BF60 2465FFFF */  addiu      $a1, $v1, -1
/* 1CB64 8001BF64 30A2FFFF */  andi       $v0, $a1, 0xffff
/* 1CB68 8001BF68 00402825 */  or         $a1, $v0, $zero
.L8001BF6C:
/* 1CB6C 8001BF6C 3C038017 */  lui        $v1, %hi(gWorldProgress)
/* 1CB70 8001BF70 90631B18 */  lbu        $v1, %lo(gWorldProgress)($v1)
/* 1CB74 8001BF74 24E78154 */  addiu      $a3, $a3, -0x7eac
/* 1CB78 8001BF78 28610038 */  slti       $at, $v1, 0x38
/* 1CB7C 8001BF7C 1420000A */  bnez       $at, .L8001BFA8
/* 1CB80 8001BF80 00000000 */   nop
/* 1CB84 8001BF84 3C078018 */  lui        $a3, %hi(D_80178154)
/* 1CB88 8001BF88 24E78154 */  addiu      $a3, $a3, %lo(D_80178154)
/* 1CB8C 8001BF8C 94F80000 */  lhu        $t8, ($a3)
/* 1CB90 8001BF90 00000000 */  nop
/* 1CB94 8001BF94 00782023 */  subu       $a0, $v1, $t8
/* 1CB98 8001BF98 2484FFFF */  addiu      $a0, $a0, -1
/* 1CB9C 8001BF9C 3099FFFF */  andi       $t9, $a0, 0xffff
/* 1CBA0 8001BFA0 10000006 */  b          .L8001BFBC
/* 1CBA4 8001BFA4 03202025 */   or        $a0, $t9, $zero
.L8001BFA8:
/* 1CBA8 8001BFA8 94EA0000 */  lhu        $t2, ($a3)
/* 1CBAC 8001BFAC 00000000 */  nop
/* 1CBB0 8001BFB0 006A2023 */  subu       $a0, $v1, $t2
/* 1CBB4 8001BFB4 308BFFFF */  andi       $t3, $a0, 0xffff
/* 1CBB8 8001BFB8 01602025 */  or         $a0, $t3, $zero
.L8001BFBC:
/* 1CBBC 8001BFBC 0082082A */  slt        $at, $a0, $v0
/* 1CBC0 8001BFC0 14200020 */  bnez       $at, .L8001C044
/* 1CBC4 8001BFC4 3C038018 */   lui       $v1, %hi(D_80178156)
/* 1CBC8 8001BFC8 24638156 */  addiu      $v1, $v1, %lo(D_80178156)
/* 1CBCC 8001BFCC 946C0000 */  lhu        $t4, ($v1)
/* 1CBD0 8001BFD0 30ADFFFF */  andi       $t5, $a1, 0xffff
/* 1CBD4 8001BFD4 1182001B */  beq        $t4, $v0, .L8001C044
/* 1CBD8 8001BFD8 000D7040 */   sll       $t6, $t5, 1
/* 1CBDC 8001BFDC 3C0F800D */  lui        $t7, %hi(D_800C95F4)
/* 1CBE0 8001BFE0 A4650000 */  sh         $a1, ($v1)
/* 1CBE4 8001BFE4 01EE7821 */  addu       $t7, $t7, $t6
/* 1CBE8 8001BFE8 85EF95F4 */  lh         $t7, %lo(D_800C95F4)($t7)
/* 1CBEC 8001BFEC 24040022 */  addiu      $a0, $zero, 0x22
/* 1CBF0 8001BFF0 0C000CE0 */  jal        SFX_Play_2
/* 1CBF4 8001BFF4 A4CF3FC8 */   sh        $t7, 0x3fc8($a2)
/* 1CBF8 8001BFF8 3C08800F */  lui        $t0, %hi(gActors)
/* 1CBFC 8001BFFC 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1CC00 8001C000 2404008C */  addiu      $a0, $zero, 0x8c
/* 1CC04 8001C004 24030198 */  addiu      $v1, $zero, 0x198
.L8001C008:
/* 1CC08 8001C008 00830019 */  multu      $a0, $v1
/* 1CC0C 8001C00C 24840001 */  addiu      $a0, $a0, 1
/* 1CC10 8001C010 308AFFFF */  andi       $t2, $a0, 0xffff
/* 1CC14 8001C014 2941009B */  slti       $at, $t2, 0x9b
/* 1CC18 8001C018 01402025 */  or         $a0, $t2, $zero
/* 1CC1C 8001C01C 0000C012 */  mflo       $t8
/* 1CC20 8001C020 0118C821 */  addu       $t9, $t0, $t8
/* 1CC24 8001C024 1420FFF8 */  bnez       $at, .L8001C008
/* 1CC28 8001C028 AF200080 */   sw        $zero, 0x80($t9)
/* 1CC2C 8001C02C 3C048018 */  lui        $a0, %hi(D_80178156)
/* 1CC30 8001C030 94848156 */  lhu        $a0, %lo(D_80178156)($a0)
/* 1CC34 8001C034 0C006677 */  jal        func_800199DC
/* 1CC38 8001C038 00000000 */   nop
/* 1CC3C 8001C03C 3C088018 */  lui        $t0, %hi(D_8017815C)
/* 1CC40 8001C040 2508815C */  addiu      $t0, $t0, %lo(D_8017815C)
.L8001C044:
/* 1CC44 8001C044 3C04800C */  lui        $a0, %hi(gButtonPress)
/* 1CC48 8001C048 3C0B800C */  lui        $t3, %hi(gButton_Start)
/* 1CC4C 8001C04C 956BE500 */  lhu        $t3, %lo(gButton_Start)($t3)
/* 1CC50 8001C050 9484E4FC */  lhu        $a0, %lo(gButtonPress)($a0)
/* 1CC54 8001C054 3C0D800C */  lui        $t5, %hi(gButton_A)
/* 1CC58 8001C058 008B6024 */  and        $t4, $a0, $t3
/* 1CC5C 8001C05C 15800006 */  bnez       $t4, .L8001C078
/* 1CC60 8001C060 24050050 */   addiu     $a1, $zero, 0x50
/* 1CC64 8001C064 95ADE518 */  lhu        $t5, %lo(gButton_A)($t5)
/* 1CC68 8001C068 3C18800C */  lui        $t8, 0x800c
/* 1CC6C 8001C06C 008D7024 */  and        $t6, $a0, $t5
/* 1CC70 8001C070 11C00009 */  beqz       $t6, .L8001C098
/* 1CC74 8001C074 00000000 */   nop
.L8001C078:
/* 1CC78 8001C078 0C000FC9 */  jal        func_80003F24
/* 1CC7C 8001C07C 24040081 */   addiu     $a0, $zero, 0x81
/* 1CC80 8001C080 0C000CD3 */  jal        SFX_Play_1
/* 1CC84 8001C084 240400D2 */   addiu     $a0, $zero, 0xd2
/* 1CC88 8001C088 240F0030 */  addiu      $t7, $zero, 0x30
/* 1CC8C 8001C08C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1CC90 8001C090 100001C0 */  b          L8001C794_1D394
/* 1CC94 8001C094 A42FE4F4 */   sh        $t7, %lo(gGameSubState)($at)
.L8001C098:
/* 1CC98 8001C098 9718E514 */  lhu        $t8, -0x1aec($t8)
/* 1CC9C 8001C09C 3C0B800C */  lui        $t3, 0x800c
/* 1CCA0 8001C0A0 0098C824 */  and        $t9, $a0, $t8
/* 1CCA4 8001C0A4 13200007 */  beqz       $t9, .L8001C0C4
/* 1CCA8 8001C0A8 00000000 */   nop
/* 1CCAC 8001C0AC 0C000CD3 */  jal        SFX_Play_1
/* 1CCB0 8001C0B0 24040048 */   addiu     $a0, $zero, 0x48
/* 1CCB4 8001C0B4 240A0022 */  addiu      $t2, $zero, 0x22
/* 1CCB8 8001C0B8 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1CCBC 8001C0BC 100001B5 */  b          L8001C794_1D394
/* 1CCC0 8001C0C0 A42AE4F4 */   sh        $t2, %lo(gGameSubState)($at)
.L8001C0C4:
/* 1CCC4 8001C0C4 956BE530 */  lhu        $t3, -0x1ad0($t3)
/* 1CCC8 8001C0C8 3C0F800C */  lui        $t7, 0x800c
/* 1CCCC 8001C0CC 008B6024 */  and        $t4, $a0, $t3
/* 1CCD0 8001C0D0 1180000B */  beqz       $t4, .L8001C100
/* 1CCD4 8001C0D4 00000000 */   nop
/* 1CCD8 8001C0D8 950D0000 */  lhu        $t5, ($t0)
/* 1CCDC 8001C0DC 00000000 */  nop
/* 1CCE0 8001C0E0 11A00007 */  beqz       $t5, .L8001C100
/* 1CCE4 8001C0E4 00000000 */   nop
/* 1CCE8 8001C0E8 0C000CD3 */  jal        SFX_Play_1
/* 1CCEC 8001C0EC 24040048 */   addiu     $a0, $zero, 0x48
/* 1CCF0 8001C0F0 240E0025 */  addiu      $t6, $zero, 0x25
/* 1CCF4 8001C0F4 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1CCF8 8001C0F8 100001A6 */  b          L8001C794_1D394
/* 1CCFC 8001C0FC A42EE4F4 */   sh        $t6, %lo(gGameSubState)($at)
.L8001C100:
/* 1CD00 8001C100 95EFE534 */  lhu        $t7, -0x1acc($t7)
/* 1CD04 8001C104 3C0A8018 */  lui        $t2, %hi(D_8017815E)
/* 1CD08 8001C108 008FC024 */  and        $t8, $a0, $t7
/* 1CD0C 8001C10C 130001A2 */  beqz       $t8, .L8001C798
/* 1CD10 8001C110 8FBF001C */   lw        $ra, 0x1c($sp)
/* 1CD14 8001C114 95190000 */  lhu        $t9, ($t0)
/* 1CD18 8001C118 954A815E */  lhu        $t2, %lo(D_8017815E)($t2)
/* 1CD1C 8001C11C 00000000 */  nop
/* 1CD20 8001C120 032A082A */  slt        $at, $t9, $t2
/* 1CD24 8001C124 1020019C */  beqz       $at, .L8001C798
/* 1CD28 8001C128 8FBF001C */   lw        $ra, 0x1c($sp)
/* 1CD2C 8001C12C 0C000CD3 */  jal        SFX_Play_1
/* 1CD30 8001C130 24040048 */   addiu     $a0, $zero, 0x48
/* 1CD34 8001C134 240B0027 */  addiu      $t3, $zero, 0x27
/* 1CD38 8001C138 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1CD3C 8001C13C 10000195 */  b          L8001C794_1D394
/* 1CD40 8001C140 A42BE4F4 */   sh        $t3, %lo(gGameSubState)($at)
glabel L8001C144_1CD44
/* 1CD44 8001C144 3C08800F */  lui        $t0, %hi(gActors)
/* 1CD48 8001C148 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1CD4C 8001C14C 24040030 */  addiu      $a0, $zero, 0x30
/* 1CD50 8001C150 24030198 */  addiu      $v1, $zero, 0x198
.L8001C154:
/* 1CD54 8001C154 00830019 */  multu      $a0, $v1
/* 1CD58 8001C158 24840001 */  addiu      $a0, $a0, 1
/* 1CD5C 8001C15C 308FFFFF */  andi       $t7, $a0, 0xffff
/* 1CD60 8001C160 29E100BC */  slti       $at, $t7, 0xbc
/* 1CD64 8001C164 01E02025 */  or         $a0, $t7, $zero
/* 1CD68 8001C168 00006012 */  mflo       $t4
/* 1CD6C 8001C16C 010C1021 */  addu       $v0, $t0, $t4
/* 1CD70 8001C170 844D0088 */  lh         $t5, 0x88($v0)
/* 1CD74 8001C174 00000000 */  nop
/* 1CD78 8001C178 25AE0020 */  addiu      $t6, $t5, 0x20
/* 1CD7C 8001C17C 1420FFF5 */  bnez       $at, .L8001C154
/* 1CD80 8001C180 A44E0088 */   sh        $t6, 0x88($v0)
/* 1CD84 8001C184 85184D08 */  lh         $t8, 0x4d08($t0)
/* 1CD88 8001C188 2419000E */  addiu      $t9, $zero, 0xe
/* 1CD8C 8001C18C 2B010121 */  slti       $at, $t8, 0x121
/* 1CD90 8001C190 14200180 */  bnez       $at, L8001C794_1D394
/* 1CD94 8001C194 3C01800C */   lui       $at, %hi(gGameState)
/* 1CD98 8001C198 A439E4F0 */  sh         $t9, %lo(gGameState)($at)
/* 1CD9C 8001C19C 1000017D */  b          L8001C794_1D394
/* 1CDA0 8001C1A0 A5200000 */   sh        $zero, ($t1)
glabel L8001C1A4_1CDA4
/* 1CDA4 8001C1A4 3C08800F */  lui        $t0, %hi(gActors)
/* 1CDA8 8001C1A8 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1CDAC 8001C1AC 24040030 */  addiu      $a0, $zero, 0x30
/* 1CDB0 8001C1B0 24030198 */  addiu      $v1, $zero, 0x198
.L8001C1B4:
/* 1CDB4 8001C1B4 00830019 */  multu      $a0, $v1
/* 1CDB8 8001C1B8 24840001 */  addiu      $a0, $a0, 1
/* 1CDBC 8001C1BC 308CFFFF */  andi       $t4, $a0, 0xffff
/* 1CDC0 8001C1C0 298100BC */  slti       $at, $t4, 0xbc
/* 1CDC4 8001C1C4 01802025 */  or         $a0, $t4, $zero
/* 1CDC8 8001C1C8 00005012 */  mflo       $t2
/* 1CDCC 8001C1CC 010A5821 */  addu       $t3, $t0, $t2
/* 1CDD0 8001C1D0 1420FFF8 */  bnez       $at, .L8001C1B4
/* 1CDD4 8001C1D4 AD600080 */   sw        $zero, 0x80($t3)
/* 1CDD8 8001C1D8 0C0067B1 */  jal        func_80019EC4
/* 1CDDC 8001C1DC 00000000 */   nop
/* 1CDE0 8001C1E0 3C08800F */  lui        $t0, %hi(gActors)
/* 1CDE4 8001C1E4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1CDE8 8001C1E8 24030198 */  addiu      $v1, $zero, 0x198
/* 1CDEC 8001C1EC 24040030 */  addiu      $a0, $zero, 0x30
.L8001C1F0:
/* 1CDF0 8001C1F0 00830019 */  multu      $a0, $v1
/* 1CDF4 8001C1F4 24840001 */  addiu      $a0, $a0, 1
/* 1CDF8 8001C1F8 3098FFFF */  andi       $t8, $a0, 0xffff
/* 1CDFC 8001C1FC 2B0100BC */  slti       $at, $t8, 0xbc
/* 1CE00 8001C200 03002025 */  or         $a0, $t8, $zero
/* 1CE04 8001C204 00006812 */  mflo       $t5
/* 1CE08 8001C208 010D1021 */  addu       $v0, $t0, $t5
/* 1CE0C 8001C20C 844E0088 */  lh         $t6, 0x88($v0)
/* 1CE10 8001C210 00000000 */  nop
/* 1CE14 8001C214 25CF0120 */  addiu      $t7, $t6, 0x120
/* 1CE18 8001C218 1420FFF5 */  bnez       $at, .L8001C1F0
/* 1CE1C 8001C21C A44F0088 */   sh        $t7, 0x88($v0)
/* 1CE20 8001C220 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 1CE24 8001C224 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 1CE28 8001C228 94590000 */  lhu        $t9, ($v0)
/* 1CE2C 8001C22C 00000000 */  nop
/* 1CE30 8001C230 272A0001 */  addiu      $t2, $t9, 1
/* 1CE34 8001C234 10000157 */  b          L8001C794_1D394
/* 1CE38 8001C238 A44A0000 */   sh        $t2, ($v0)
glabel L8001C23C_1CE3C
/* 1CE3C 8001C23C 3C08800F */  lui        $t0, %hi(gActors)
/* 1CE40 8001C240 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1CE44 8001C244 24040030 */  addiu      $a0, $zero, 0x30
/* 1CE48 8001C248 24030198 */  addiu      $v1, $zero, 0x198
.L8001C24C:
/* 1CE4C 8001C24C 00830019 */  multu      $a0, $v1
/* 1CE50 8001C250 24840001 */  addiu      $a0, $a0, 1
/* 1CE54 8001C254 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1CE58 8001C258 29C100BC */  slti       $at, $t6, 0xbc
/* 1CE5C 8001C25C 01C02025 */  or         $a0, $t6, $zero
/* 1CE60 8001C260 00005812 */  mflo       $t3
/* 1CE64 8001C264 010B1021 */  addu       $v0, $t0, $t3
/* 1CE68 8001C268 844C0088 */  lh         $t4, 0x88($v0)
/* 1CE6C 8001C26C 00000000 */  nop
/* 1CE70 8001C270 258DFFE0 */  addiu      $t5, $t4, -0x20
/* 1CE74 8001C274 1420FFF5 */  bnez       $at, .L8001C24C
/* 1CE78 8001C278 A44D0088 */   sh        $t5, 0x88($v0)
/* 1CE7C 8001C27C 850F4D08 */  lh         $t7, 0x4d08($t0)
/* 1CE80 8001C280 00000000 */  nop
/* 1CE84 8001C284 15E00143 */  bnez       $t7, L8001C794_1D394
/* 1CE88 8001C288 3418FFFF */   ori       $t8, $zero, 0xffff
/* 1CE8C 8001C28C 3C01800D */  lui        $at, %hi(D_800C81E0)
/* 1CE90 8001C290 A43881E0 */  sh         $t8, %lo(D_800C81E0)($at)
/* 1CE94 8001C294 24190021 */  addiu      $t9, $zero, 0x21
/* 1CE98 8001C298 1000013E */  b          L8001C794_1D394
/* 1CE9C 8001C29C A5390000 */   sh        $t9, ($t1)
glabel L8001C2A0_1CEA0
/* 1CEA0 8001C2A0 3C08800F */  lui        $t0, %hi(gActors)
/* 1CEA4 8001C2A4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1CEA8 8001C2A8 24040030 */  addiu      $a0, $zero, 0x30
/* 1CEAC 8001C2AC 24030198 */  addiu      $v1, $zero, 0x198
.L8001C2B0:
/* 1CEB0 8001C2B0 00830019 */  multu      $a0, $v1
/* 1CEB4 8001C2B4 24840001 */  addiu      $a0, $a0, 1
/* 1CEB8 8001C2B8 308DFFFF */  andi       $t5, $a0, 0xffff
/* 1CEBC 8001C2BC 29A100BC */  slti       $at, $t5, 0xbc
/* 1CEC0 8001C2C0 01A02025 */  or         $a0, $t5, $zero
/* 1CEC4 8001C2C4 00005012 */  mflo       $t2
/* 1CEC8 8001C2C8 010A1021 */  addu       $v0, $t0, $t2
/* 1CECC 8001C2CC 844B0088 */  lh         $t3, 0x88($v0)
/* 1CED0 8001C2D0 00000000 */  nop
/* 1CED4 8001C2D4 256C0020 */  addiu      $t4, $t3, 0x20
/* 1CED8 8001C2D8 1420FFF5 */  bnez       $at, .L8001C2B0
/* 1CEDC 8001C2DC A44C0088 */   sh        $t4, 0x88($v0)
/* 1CEE0 8001C2E0 850E4D08 */  lh         $t6, 0x4d08($t0)
/* 1CEE4 8001C2E4 3C028018 */  lui        $v0, %hi(D_8017815C)
/* 1CEE8 8001C2E8 29C10121 */  slti       $at, $t6, 0x121
/* 1CEEC 8001C2EC 14200129 */  bnez       $at, L8001C794_1D394
/* 1CEF0 8001C2F0 2442815C */   addiu     $v0, $v0, %lo(D_8017815C)
/* 1CEF4 8001C2F4 944F0000 */  lhu        $t7, ($v0)
/* 1CEF8 8001C2F8 3C0A800D */  lui        $t2, 0x800d
/* 1CEFC 8001C2FC 25F8FFFF */  addiu      $t8, $t7, -1
/* 1CF00 8001C300 3305FFFF */  andi       $a1, $t8, 0xffff
/* 1CF04 8001C304 0005C840 */  sll        $t9, $a1, 1
/* 1CF08 8001C308 A4580000 */  sh         $t8, ($v0)
/* 1CF0C 8001C30C 01595021 */  addu       $t2, $t2, $t9
/* 1CF10 8001C310 954A8268 */  lhu        $t2, -0x7d98($t2)
/* 1CF14 8001C314 3C078018 */  lui        $a3, %hi(D_80178154)
/* 1CF18 8001C318 24E78154 */  addiu      $a3, $a3, %lo(D_80178154)
/* 1CF1C 8001C31C 3C0B800D */  lui        $t3, %hi(D_800C8C04)
/* 1CF20 8001C320 01795821 */  addu       $t3, $t3, $t9
/* 1CF24 8001C324 A4EA0000 */  sh         $t2, ($a3)
/* 1CF28 8001C328 956B8C04 */  lhu        $t3, %lo(D_800C8C04)($t3)
/* 1CF2C 8001C32C 3C018018 */  lui        $at, %hi(D_80178156)
/* 1CF30 8001C330 256CFFFF */  addiu      $t4, $t3, -1
/* 1CF34 8001C334 A42C8156 */  sh         $t4, %lo(D_80178156)($at)
/* 1CF38 8001C338 24040030 */  addiu      $a0, $zero, 0x30
.L8001C33C:
/* 1CF3C 8001C33C 00830019 */  multu      $a0, $v1
/* 1CF40 8001C340 24840001 */  addiu      $a0, $a0, 1
/* 1CF44 8001C344 308FFFFF */  andi       $t7, $a0, 0xffff
/* 1CF48 8001C348 29E100BC */  slti       $at, $t7, 0xbc
/* 1CF4C 8001C34C 01E02025 */  or         $a0, $t7, $zero
/* 1CF50 8001C350 00006812 */  mflo       $t5
/* 1CF54 8001C354 010D7021 */  addu       $t6, $t0, $t5
/* 1CF58 8001C358 1420FFF8 */  bnez       $at, .L8001C33C
/* 1CF5C 8001C35C ADC00080 */   sw        $zero, 0x80($t6)
/* 1CF60 8001C360 0C0067B1 */  jal        func_80019EC4
/* 1CF64 8001C364 00000000 */   nop
/* 1CF68 8001C368 3C08800F */  lui        $t0, %hi(gActors)
/* 1CF6C 8001C36C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1CF70 8001C370 24030198 */  addiu      $v1, $zero, 0x198
/* 1CF74 8001C374 24040030 */  addiu      $a0, $zero, 0x30
.L8001C378:
/* 1CF78 8001C378 00830019 */  multu      $a0, $v1
/* 1CF7C 8001C37C 24840001 */  addiu      $a0, $a0, 1
/* 1CF80 8001C380 308BFFFF */  andi       $t3, $a0, 0xffff
/* 1CF84 8001C384 296100BC */  slti       $at, $t3, 0xbc
/* 1CF88 8001C388 01602025 */  or         $a0, $t3, $zero
/* 1CF8C 8001C38C 0000C012 */  mflo       $t8
/* 1CF90 8001C390 01181021 */  addu       $v0, $t0, $t8
/* 1CF94 8001C394 84590088 */  lh         $t9, 0x88($v0)
/* 1CF98 8001C398 00000000 */  nop
/* 1CF9C 8001C39C 272AFEE0 */  addiu      $t2, $t9, -0x120
/* 1CFA0 8001C3A0 1420FFF5 */  bnez       $at, .L8001C378
/* 1CFA4 8001C3A4 A44A0088 */   sh        $t2, 0x88($v0)
/* 1CFA8 8001C3A8 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 1CFAC 8001C3AC 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 1CFB0 8001C3B0 944C0000 */  lhu        $t4, ($v0)
/* 1CFB4 8001C3B4 00000000 */  nop
/* 1CFB8 8001C3B8 258D0001 */  addiu      $t5, $t4, 1
/* 1CFBC 8001C3BC 100000F5 */  b          L8001C794_1D394
/* 1CFC0 8001C3C0 A44D0000 */   sh        $t5, ($v0)
glabel L8001C3C4_1CFC4
/* 1CFC4 8001C3C4 3C08800F */  lui        $t0, %hi(gActors)
/* 1CFC8 8001C3C8 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1CFCC 8001C3CC 24040030 */  addiu      $a0, $zero, 0x30
/* 1CFD0 8001C3D0 24030198 */  addiu      $v1, $zero, 0x198
.L8001C3D4:
/* 1CFD4 8001C3D4 00830019 */  multu      $a0, $v1
/* 1CFD8 8001C3D8 24840001 */  addiu      $a0, $a0, 1
/* 1CFDC 8001C3DC 3099FFFF */  andi       $t9, $a0, 0xffff
/* 1CFE0 8001C3E0 2B2100BC */  slti       $at, $t9, 0xbc
/* 1CFE4 8001C3E4 03202025 */  or         $a0, $t9, $zero
/* 1CFE8 8001C3E8 00007012 */  mflo       $t6
/* 1CFEC 8001C3EC 010E1021 */  addu       $v0, $t0, $t6
/* 1CFF0 8001C3F0 844F0088 */  lh         $t7, 0x88($v0)
/* 1CFF4 8001C3F4 00000000 */  nop
/* 1CFF8 8001C3F8 25F80020 */  addiu      $t8, $t7, 0x20
/* 1CFFC 8001C3FC 1420FFF5 */  bnez       $at, .L8001C3D4
/* 1D000 8001C400 A4580088 */   sh        $t8, 0x88($v0)
/* 1D004 8001C404 850A4D08 */  lh         $t2, 0x4d08($t0)
/* 1D008 8001C408 340BFFFF */  ori        $t3, $zero, 0xffff
/* 1D00C 8001C40C 154000E1 */  bnez       $t2, L8001C794_1D394
/* 1D010 8001C410 3C01800D */   lui       $at, %hi(D_800C81E0)
/* 1D014 8001C414 A42B81E0 */  sh         $t3, %lo(D_800C81E0)($at)
/* 1D018 8001C418 240C0021 */  addiu      $t4, $zero, 0x21
/* 1D01C 8001C41C 100000DD */  b          L8001C794_1D394
/* 1D020 8001C420 A52C0000 */   sh        $t4, ($t1)
glabel L8001C424_1D024
/* 1D024 8001C424 3C08800F */  lui        $t0, %hi(gActors)
/* 1D028 8001C428 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1D02C 8001C42C 24040030 */  addiu      $a0, $zero, 0x30
/* 1D030 8001C430 24030198 */  addiu      $v1, $zero, 0x198
.L8001C434:
/* 1D034 8001C434 00830019 */  multu      $a0, $v1
/* 1D038 8001C438 24840001 */  addiu      $a0, $a0, 1
/* 1D03C 8001C43C 3098FFFF */  andi       $t8, $a0, 0xffff
/* 1D040 8001C440 2B0100BC */  slti       $at, $t8, 0xbc
/* 1D044 8001C444 03002025 */  or         $a0, $t8, $zero
/* 1D048 8001C448 00006812 */  mflo       $t5
/* 1D04C 8001C44C 010D1021 */  addu       $v0, $t0, $t5
/* 1D050 8001C450 844E0088 */  lh         $t6, 0x88($v0)
/* 1D054 8001C454 00000000 */  nop
/* 1D058 8001C458 25CFFFE0 */  addiu      $t7, $t6, -0x20
/* 1D05C 8001C45C 1420FFF5 */  bnez       $at, .L8001C434
/* 1D060 8001C460 A44F0088 */   sh        $t7, 0x88($v0)
/* 1D064 8001C464 85194D08 */  lh         $t9, 0x4d08($t0)
/* 1D068 8001C468 3C058018 */  lui        $a1, %hi(D_8017815C)
/* 1D06C 8001C46C 2B21FEE0 */  slti       $at, $t9, -0x120
/* 1D070 8001C470 102000C8 */  beqz       $at, L8001C794_1D394
/* 1D074 8001C474 24A5815C */   addiu     $a1, $a1, %lo(D_8017815C)
/* 1D078 8001C478 94AA0000 */  lhu        $t2, ($a1)
/* 1D07C 8001C47C 3C0C8018 */  lui        $t4, %hi(D_8017815E)
/* 1D080 8001C480 254B0001 */  addiu      $t3, $t2, 1
/* 1D084 8001C484 A4AB0000 */  sh         $t3, ($a1)
/* 1D088 8001C488 958C815E */  lhu        $t4, %lo(D_8017815E)($t4)
/* 1D08C 8001C48C 3162FFFF */  andi       $v0, $t3, 0xffff
/* 1D090 8001C490 004C082A */  slt        $at, $v0, $t4
/* 1D094 8001C494 1020000F */  beqz       $at, .L8001C4D4
/* 1D098 8001C498 3C078018 */   lui       $a3, 0x8018
/* 1D09C 8001C49C 00022840 */  sll        $a1, $v0, 1
/* 1D0A0 8001C4A0 3C0D800D */  lui        $t5, %hi(D_800C8268)
/* 1D0A4 8001C4A4 01A56821 */  addu       $t5, $t5, $a1
/* 1D0A8 8001C4A8 95AD8268 */  lhu        $t5, %lo(D_800C8268)($t5)
/* 1D0AC 8001C4AC 3C078018 */  lui        $a3, %hi(D_80178154)
/* 1D0B0 8001C4B0 24E78154 */  addiu      $a3, $a3, %lo(D_80178154)
/* 1D0B4 8001C4B4 3C0E800D */  lui        $t6, %hi(D_800C8C04)
/* 1D0B8 8001C4B8 01C57021 */  addu       $t6, $t6, $a1
/* 1D0BC 8001C4BC A4ED0000 */  sh         $t5, ($a3)
/* 1D0C0 8001C4C0 95CE8C04 */  lhu        $t6, %lo(D_800C8C04)($t6)
/* 1D0C4 8001C4C4 3C018018 */  lui        $at, %hi(D_80178156)
/* 1D0C8 8001C4C8 25CFFFFF */  addiu      $t7, $t6, -1
/* 1D0CC 8001C4CC 1000000A */  b          .L8001C4F8
/* 1D0D0 8001C4D0 A42F8156 */   sh        $t7, %lo(D_80178156)($at)
.L8001C4D4:
/* 1D0D4 8001C4D4 3C048017 */  lui        $a0, %hi(gWorldProgress)
/* 1D0D8 8001C4D8 90841B18 */  lbu        $a0, %lo(gWorldProgress)($a0)
/* 1D0DC 8001C4DC 3C068018 */  lui        $a2, %hi(D_80178156)
/* 1D0E0 8001C4E0 24E78154 */  addiu      $a3, $a3, -0x7eac
/* 1D0E4 8001C4E4 0C006C1E */  jal        func_8001B078
/* 1D0E8 8001C4E8 24C68156 */   addiu     $a2, $a2, %lo(D_80178156)
/* 1D0EC 8001C4EC 3C08800F */  lui        $t0, %hi(gActors)
/* 1D0F0 8001C4F0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1D0F4 8001C4F4 24030198 */  addiu      $v1, $zero, 0x198
.L8001C4F8:
/* 1D0F8 8001C4F8 24040030 */  addiu      $a0, $zero, 0x30
.L8001C4FC:
/* 1D0FC 8001C4FC 00830019 */  multu      $a0, $v1
/* 1D100 8001C500 24840001 */  addiu      $a0, $a0, 1
/* 1D104 8001C504 308AFFFF */  andi       $t2, $a0, 0xffff
/* 1D108 8001C508 294100BC */  slti       $at, $t2, 0xbc
/* 1D10C 8001C50C 01402025 */  or         $a0, $t2, $zero
/* 1D110 8001C510 0000C012 */  mflo       $t8
/* 1D114 8001C514 0118C821 */  addu       $t9, $t0, $t8
/* 1D118 8001C518 1420FFF8 */  bnez       $at, .L8001C4FC
/* 1D11C 8001C51C AF200080 */   sw        $zero, 0x80($t9)
/* 1D120 8001C520 0C0067B1 */  jal        func_80019EC4
/* 1D124 8001C524 00000000 */   nop
/* 1D128 8001C528 3C08800F */  lui        $t0, %hi(gActors)
/* 1D12C 8001C52C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1D130 8001C530 24030198 */  addiu      $v1, $zero, 0x198
/* 1D134 8001C534 24040030 */  addiu      $a0, $zero, 0x30
.L8001C538:
/* 1D138 8001C538 00830019 */  multu      $a0, $v1
/* 1D13C 8001C53C 24840001 */  addiu      $a0, $a0, 1
/* 1D140 8001C540 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1D144 8001C544 29C100BC */  slti       $at, $t6, 0xbc
/* 1D148 8001C548 01C02025 */  or         $a0, $t6, $zero
/* 1D14C 8001C54C 00005812 */  mflo       $t3
/* 1D150 8001C550 010B1021 */  addu       $v0, $t0, $t3
/* 1D154 8001C554 844C0088 */  lh         $t4, 0x88($v0)
/* 1D158 8001C558 00000000 */  nop
/* 1D15C 8001C55C 258D0120 */  addiu      $t5, $t4, 0x120
/* 1D160 8001C560 1420FFF5 */  bnez       $at, .L8001C538
/* 1D164 8001C564 A44D0088 */   sh        $t5, 0x88($v0)
/* 1D168 8001C568 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 1D16C 8001C56C 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 1D170 8001C570 944F0000 */  lhu        $t7, ($v0)
/* 1D174 8001C574 00000000 */  nop
/* 1D178 8001C578 25F80001 */  addiu      $t8, $t7, 1
/* 1D17C 8001C57C 10000085 */  b          L8001C794_1D394
/* 1D180 8001C580 A4580000 */   sh        $t8, ($v0)
glabel L8001C584_1D184
/* 1D184 8001C584 3C08800F */  lui        $t0, %hi(gActors)
/* 1D188 8001C588 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1D18C 8001C58C 24040030 */  addiu      $a0, $zero, 0x30
/* 1D190 8001C590 24030198 */  addiu      $v1, $zero, 0x198
.L8001C594:
/* 1D194 8001C594 00830019 */  multu      $a0, $v1
/* 1D198 8001C598 24840001 */  addiu      $a0, $a0, 1
/* 1D19C 8001C59C 308CFFFF */  andi       $t4, $a0, 0xffff
/* 1D1A0 8001C5A0 298100BC */  slti       $at, $t4, 0xbc
/* 1D1A4 8001C5A4 01802025 */  or         $a0, $t4, $zero
/* 1D1A8 8001C5A8 0000C812 */  mflo       $t9
/* 1D1AC 8001C5AC 01191021 */  addu       $v0, $t0, $t9
/* 1D1B0 8001C5B0 844A0088 */  lh         $t2, 0x88($v0)
/* 1D1B4 8001C5B4 00000000 */  nop
/* 1D1B8 8001C5B8 254BFFE0 */  addiu      $t3, $t2, -0x20
/* 1D1BC 8001C5BC 1420FFF5 */  bnez       $at, .L8001C594
/* 1D1C0 8001C5C0 A44B0088 */   sh        $t3, 0x88($v0)
/* 1D1C4 8001C5C4 850D4D08 */  lh         $t5, 0x4d08($t0)
/* 1D1C8 8001C5C8 340EFFFF */  ori        $t6, $zero, 0xffff
/* 1D1CC 8001C5CC 15A00071 */  bnez       $t5, L8001C794_1D394
/* 1D1D0 8001C5D0 3C01800D */   lui       $at, %hi(D_800C81E0)
/* 1D1D4 8001C5D4 A42E81E0 */  sh         $t6, %lo(D_800C81E0)($at)
/* 1D1D8 8001C5D8 240F0021 */  addiu      $t7, $zero, 0x21
/* 1D1DC 8001C5DC 1000006D */  b          L8001C794_1D394
/* 1D1E0 8001C5E0 A52F0000 */   sh        $t7, ($t1)
glabel L8001C5E4_1D1E4
/* 1D1E4 8001C5E4 3C06800C */  lui        $a2, %hi(D_800BE6F0)
/* 1D1E8 8001C5E8 24C6E6F0 */  addiu      $a2, $a2, %lo(D_800BE6F0)
/* 1D1EC 8001C5EC 90D80000 */  lbu        $t8, ($a2)
/* 1D1F0 8001C5F0 3C08800F */  lui        $t0, %hi(gActors)
/* 1D1F4 8001C5F4 27190002 */  addiu      $t9, $t8, 2
/* 1D1F8 8001C5F8 A0D90000 */  sb         $t9, ($a2)
/* 1D1FC 8001C5FC 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1D200 8001C600 24040030 */  addiu      $a0, $zero, 0x30
/* 1D204 8001C604 24030198 */  addiu      $v1, $zero, 0x198
.L8001C608:
/* 1D208 8001C608 00830019 */  multu      $a0, $v1
/* 1D20C 8001C60C 24840001 */  addiu      $a0, $a0, 1
/* 1D210 8001C610 308DFFFF */  andi       $t5, $a0, 0xffff
/* 1D214 8001C614 29A10090 */  slti       $at, $t5, 0x90
/* 1D218 8001C618 01A02025 */  or         $a0, $t5, $zero
/* 1D21C 8001C61C 00005012 */  mflo       $t2
/* 1D220 8001C620 010A1021 */  addu       $v0, $t0, $t2
/* 1D224 8001C624 904B009F */  lbu        $t3, 0x9f($v0)
/* 1D228 8001C628 00000000 */  nop
/* 1D22C 8001C62C 256CFFFE */  addiu      $t4, $t3, -2
/* 1D230 8001C630 1420FFF5 */  bnez       $at, .L8001C608
/* 1D234 8001C634 A04C009F */   sb        $t4, 0x9f($v0)
/* 1D238 8001C638 90CE0000 */  lbu        $t6, ($a2)
/* 1D23C 8001C63C 240100FF */  addiu      $at, $zero, 0xff
/* 1D240 8001C640 15C10054 */  bne        $t6, $at, L8001C794_1D394
/* 1D244 8001C644 00002025 */   or        $a0, $zero, $zero
/* 1D248 8001C648 3C028010 */  lui        $v0, %hi(D_80104098)
/* 1D24C 8001C64C 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 1D250 8001C650 240500FF */  addiu      $a1, $zero, 0xff
/* 1D254 8001C654 240300A0 */  addiu      $v1, $zero, 0xa0
.L8001C658:
/* 1D258 8001C658 00830019 */  multu      $a0, $v1
/* 1D25C 8001C65C 24840001 */  addiu      $a0, $a0, 1
/* 1D260 8001C660 3099FFFF */  andi       $t9, $a0, 0xffff
/* 1D264 8001C664 2B210040 */  slti       $at, $t9, 0x40
/* 1D268 8001C668 03202025 */  or         $a0, $t9, $zero
/* 1D26C 8001C66C 00007812 */  mflo       $t7
/* 1D270 8001C670 004FC021 */  addu       $t8, $v0, $t7
/* 1D274 8001C674 1420FFF8 */  bnez       $at, .L8001C658
/* 1D278 8001C678 A3050094 */   sb        $a1, 0x94($t8)
/* 1D27C 8001C67C 0C008C2E */  jal        func_800230B8
/* 1D280 8001C680 00000000 */   nop
/* 1D284 8001C684 240A0040 */  addiu      $t2, $zero, 0x40
/* 1D288 8001C688 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1D28C 8001C68C 10000041 */  b          L8001C794_1D394
/* 1D290 8001C690 A42AE4F4 */   sh        $t2, %lo(gGameSubState)($at)
glabel L8001C694_1D294
/* 1D294 8001C694 0C009C6C */  jal        func_800271B0
/* 1D298 8001C698 00002025 */   or        $a0, $zero, $zero
/* 1D29C 8001C69C 3C078018 */  lui        $a3, %hi(D_80178154)
/* 1D2A0 8001C6A0 24E78154 */  addiu      $a3, $a3, %lo(D_80178154)
/* 1D2A4 8001C6A4 3C0C8018 */  lui        $t4, %hi(D_80178156)
/* 1D2A8 8001C6A8 958C8156 */  lhu        $t4, %lo(D_80178156)($t4)
/* 1D2AC 8001C6AC 94EB0000 */  lhu        $t3, ($a3)
/* 1D2B0 8001C6B0 3C038018 */  lui        $v1, %hi(gCurrentStage)
/* 1D2B4 8001C6B4 016C6821 */  addu       $t5, $t3, $t4
/* 1D2B8 8001C6B8 31A2FFFF */  andi       $v0, $t5, 0xffff
/* 1D2BC 8001C6BC 24638162 */  addiu      $v1, $v1, %lo(gCurrentStage)
/* 1D2C0 8001C6C0 28410037 */  slti       $at, $v0, 0x37
/* 1D2C4 8001C6C4 14200003 */  bnez       $at, .L8001C6D4
/* 1D2C8 8001C6C8 A46D0000 */   sh        $t5, ($v1)
/* 1D2CC 8001C6CC 244E0001 */  addiu      $t6, $v0, 1
/* 1D2D0 8001C6D0 A46E0000 */  sh         $t6, ($v1)
.L8001C6D4:
/* 1D2D4 8001C6D4 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 1D2D8 8001C6D8 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 1D2DC 8001C6DC 944F0000 */  lhu        $t7, ($v0)
/* 1D2E0 8001C6E0 00000000 */  nop
/* 1D2E4 8001C6E4 25F80001 */  addiu      $t8, $t7, 1
/* 1D2E8 8001C6E8 1000002A */  b          L8001C794_1D394
/* 1D2EC 8001C6EC A4580000 */   sh        $t8, ($v0)
glabel L8001C6F0_1D2F0
/* 1D2F0 8001C6F0 3C028018 */  lui        $v0, %hi(gCurrentStage)
/* 1D2F4 8001C6F4 94428162 */  lhu        $v0, %lo(gCurrentStage)($v0)
/* 1D2F8 8001C6F8 3C018013 */  lui        $at, %hi(D_8013747C)
/* 1D2FC 8001C6FC A420747C */  sh         $zero, %lo(D_8013747C)($at)
/* 1D300 8001C700 3C0A800D */  lui        $t2, %hi(D_800C8378)
/* 1D304 8001C704 0002C840 */  sll        $t9, $v0, 1
/* 1D308 8001C708 3C018013 */  lui        $at, %hi(D_80137D90)
/* 1D30C 8001C70C 01595021 */  addu       $t2, $t2, $t9
/* 1D310 8001C710 954A8378 */  lhu        $t2, %lo(D_800C8378)($t2)
/* 1D314 8001C714 A4207D90 */  sh         $zero, %lo(D_80137D90)($at)
/* 1D318 8001C718 3C0B800D */  lui        $t3, %hi(D_800C83F8)
/* 1D31C 8001C71C 3C01800C */  lui        $at, %hi(D_800BE5D0)
/* 1D320 8001C720 01795821 */  addu       $t3, $t3, $t9
/* 1D324 8001C724 956B83F8 */  lhu        $t3, %lo(D_800C83F8)($t3)
/* 1D328 8001C728 A42AE5D0 */  sh         $t2, %lo(D_800BE5D0)($at)
/* 1D32C 8001C72C 3C01800D */  lui        $at, %hi(D_800D28E4)
/* 1D330 8001C730 0C00955E */  jal        func_80025578
/* 1D334 8001C734 A42B28E4 */   sh        $t3, %lo(D_800D28E4)($at)
/* 1D338 8001C738 3C0C8018 */  lui        $t4, %hi(gCurrentStage)
/* 1D33C 8001C73C 958C8162 */  lhu        $t4, %lo(gCurrentStage)($t4)
/* 1D340 8001C740 24010021 */  addiu      $at, $zero, 0x21
/* 1D344 8001C744 15810006 */  bne        $t4, $at, .L8001C760
/* 1D348 8001C748 240D0005 */   addiu     $t5, $zero, 5
/* 1D34C 8001C74C 0C009807 */  jal        func_8002601C
/* 1D350 8001C750 24040010 */   addiu     $a0, $zero, 0x10
/* 1D354 8001C754 0C017767 */  jal        func_8005DD9C
/* 1D358 8001C758 00000000 */   nop
/* 1D35C 8001C75C 240D0005 */  addiu      $t5, $zero, 5
.L8001C760:
/* 1D360 8001C760 3C01800C */  lui        $at, %hi(gGameState)
/* 1D364 8001C764 A42DE4F0 */  sh         $t5, %lo(gGameState)($at)
/* 1D368 8001C768 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1D36C 8001C76C A420E4F4 */  sh         $zero, %lo(gGameSubState)($at)
/* 1D370 8001C770 3C01800D */  lui        $at, %hi(D_800CBF40)
/* 1D374 8001C774 10000007 */  b          L8001C794_1D394
/* 1D378 8001C778 A420BF40 */   sh        $zero, %lo(D_800CBF40)($at)
glabel L8001C77C_1D37C
/* 1D37C 8001C77C 3C0E8013 */  lui        $t6, %hi(D_80137D90)
/* 1D380 8001C780 95CE7D90 */  lhu        $t6, %lo(D_80137D90)($t6)
/* 1D384 8001C784 24010003 */  addiu      $at, $zero, 3
/* 1D388 8001C788 15C10002 */  bne        $t6, $at, L8001C794_1D394
/* 1D38C 8001C78C 240F0041 */   addiu     $t7, $zero, 0x41
/* 1D390 8001C790 A52F0000 */  sh         $t7, ($t1)
glabel L8001C794_1D394
/* 1D394 8001C794 8FBF001C */  lw         $ra, 0x1c($sp)
.L8001C798:
/* 1D398 8001C798 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1D39C 8001C79C 03E00008 */  jr         $ra
/* 1D3A0 8001C7A0 00000000 */   nop
