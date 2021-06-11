glabel func_80047ED4
/* 48AD4 80047ED4 3C03800C */  lui        $v1, %hi(D_800BE5F4)
/* 48AD8 80047ED8 2463E5F4 */  addiu      $v1, $v1, %lo(D_800BE5F4)
/* 48ADC 80047EDC 906F0002 */  lbu        $t7, 2($v1)
/* 48AE0 80047EE0 AFA40000 */  sw         $a0, ($sp)
/* 48AE4 80047EE4 15E00024 */  bnez       $t7, .L80047F78
/* 48AE8 80047EE8 308EFFFF */   andi      $t6, $a0, 0xffff
/* 48AEC 80047EEC 000EC080 */  sll        $t8, $t6, 2
/* 48AF0 80047EF0 030EC023 */  subu       $t8, $t8, $t6
/* 48AF4 80047EF4 0018C080 */  sll        $t8, $t8, 2
/* 48AF8 80047EF8 030EC021 */  addu       $t8, $t8, $t6
/* 48AFC 80047EFC 0018C080 */  sll        $t8, $t8, 2
/* 48B00 80047F00 030EC023 */  subu       $t8, $t8, $t6
/* 48B04 80047F04 3C19800F */  lui        $t9, %hi(gActors)
/* 48B08 80047F08 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 48B0C 80047F0C 0018C0C0 */  sll        $t8, $t8, 3
/* 48B10 80047F10 03191021 */  addu       $v0, $t8, $t9
/* 48B14 80047F14 8C480080 */  lw         $t0, 0x80($v0)
/* 48B18 80047F18 8C6A0000 */  lw         $t2, ($v1)
/* 48B1C 80047F1C 2401E47F */  addiu      $at, $zero, -0x1b81
/* 48B20 80047F20 01014824 */  and        $t1, $t0, $at
/* 48B24 80047F24 24010004 */  addiu      $at, $zero, 4
/* 48B28 80047F28 314B00FF */  andi       $t3, $t2, 0xff
/* 48B2C 80047F2C 15610004 */  bne        $t3, $at, .L80047F40
/* 48B30 80047F30 AC490150 */   sw        $t1, 0x150($v0)
/* 48B34 80047F34 2401FFFE */  addiu      $at, $zero, -2
/* 48B38 80047F38 01216824 */  and        $t5, $t1, $at
/* 48B3C 80047F3C AC4D0150 */  sw         $t5, 0x150($v0)
.L80047F40:
/* 48B40 80047F40 3C013F80 */  lui        $at, 0x3f80
/* 48B44 80047F44 44810000 */  mtc1       $at, $f0
/* 48B48 80047F48 904E012E */  lbu        $t6, 0x12e($v0)
/* 48B4C 80047F4C 90780001 */  lbu        $t8, 1($v1)
/* 48B50 80047F50 24190001 */  addiu      $t9, $zero, 1
/* 48B54 80047F54 35CF0041 */  ori        $t7, $t6, 0x41
/* 48B58 80047F58 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 48B5C 80047F5C AC4000EC */  sw         $zero, 0xec($v0)
/* 48B60 80047F60 A04F012E */  sb         $t7, 0x12e($v0)
/* 48B64 80047F64 A05900D1 */  sb         $t9, 0xd1($v0)
/* 48B68 80047F68 AC600000 */  sw         $zero, ($v1)
/* 48B6C 80047F6C E4400128 */  swc1       $f0, 0x128($v0)
/* 48B70 80047F70 E4400124 */  swc1       $f0, 0x124($v0)
/* 48B74 80047F74 A05800D0 */  sb         $t8, 0xd0($v0)
.L80047F78:
/* 48B78 80047F78 03E00008 */  jr         $ra
/* 48B7C 80047F7C 00000000 */   nop
