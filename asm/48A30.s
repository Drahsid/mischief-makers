.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80047E30
/* 48A30 80047E30 03E00008 */  jr         $ra
/* 48A34 80047E34 AFA40000 */   sw        $a0, ($sp)

glabel func_80047E38
/* 48A38 80047E38 AFA40000 */  sw         $a0, ($sp)
/* 48A3C 80047E3C 3C048013 */  lui        $a0, %hi(D_801373E0)
/* 48A40 80047E40 248473E0 */  addiu      $a0, $a0, %lo(D_801373E0)
/* 48A44 80047E44 8C8E0020 */  lw         $t6, 0x20($a0)
/* 48A48 80047E48 8C8F0024 */  lw         $t7, 0x24($a0)
/* 48A4C 80047E4C 3C038013 */  lui        $v1, %hi(D_801370CC)
/* 48A50 80047E50 3C058013 */  lui        $a1, %hi(D_801370CE)
/* 48A54 80047E54 24A570CE */  addiu      $a1, $a1, %lo(D_801370CE)
/* 48A58 80047E58 246370CC */  addiu      $v1, $v1, %lo(D_801370CC)
/* 48A5C 80047E5C A46E0000 */  sh         $t6, ($v1)
/* 48A60 80047E60 A4AF0000 */  sh         $t7, ($a1)
/* 48A64 80047E64 3C18800C */  lui        $t8, %hi(D_800BE50C)
/* 48A68 80047E68 3C19800C */  lui        $t9, %hi(D_800BE510)
/* 48A6C 80047E6C 9739E510 */  lhu        $t9, %lo(D_800BE510)($t9)
/* 48A70 80047E70 9718E50C */  lhu        $t8, %lo(D_800BE50C)($t8)
/* 48A74 80047E74 3C09800C */  lui        $t1, %hi(D_800BE504)
/* 48A78 80047E78 9529E504 */  lhu        $t1, %lo(D_800BE504)($t1)
/* 48A7C 80047E7C 3C0B800C */  lui        $t3, %hi(D_800BE508)
/* 48A80 80047E80 956BE508 */  lhu        $t3, %lo(D_800BE508)($t3)
/* 48A84 80047E84 3C0D800C */  lui        $t5, %hi(D_800BE514)
/* 48A88 80047E88 03194021 */  addu       $t0, $t8, $t9
/* 48A8C 80047E8C 95ADE514 */  lhu        $t5, %lo(D_800BE514)($t5)
/* 48A90 80047E90 3C0F800C */  lui        $t7, %hi(D_800BE518)
/* 48A94 80047E94 01095021 */  addu       $t2, $t0, $t1
/* 48A98 80047E98 95EFE518 */  lhu        $t7, %lo(D_800BE518)($t7)
/* 48A9C 80047E9C 014B6021 */  addu       $t4, $t2, $t3
/* 48AA0 80047EA0 94780000 */  lhu        $t8, ($v1)
/* 48AA4 80047EA4 018D7021 */  addu       $t6, $t4, $t5
/* 48AA8 80047EA8 01CF1021 */  addu       $v0, $t6, $t7
/* 48AAC 80047EAC 3C018012 */  lui        $at, %hi(D_801225F0)
/* 48AB0 80047EB0 0302C824 */  and        $t9, $t8, $v0
/* 48AB4 80047EB4 A43925F0 */  sh         $t9, %lo(D_801225F0)($at)
/* 48AB8 80047EB8 94A80000 */  lhu        $t0, ($a1)
/* 48ABC 80047EBC 3C018012 */  lui        $at, %hi(D_8011DD70)
/* 48AC0 80047EC0 01024824 */  and        $t1, $t0, $v0
/* 48AC4 80047EC4 A429DD70 */  sh         $t1, %lo(D_8011DD70)($at)
/* 48AC8 80047EC8 AC800020 */  sw         $zero, 0x20($a0)
/* 48ACC 80047ECC 03E00008 */  jr         $ra
/* 48AD0 80047ED0 AC800024 */   sw        $zero, 0x24($a0)

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

glabel func_80047F80
/* 48B80 80047F80 3C03800C */  lui        $v1, %hi(D_800BE5F4)
/* 48B84 80047F84 2463E5F4 */  addiu      $v1, $v1, %lo(D_800BE5F4)
/* 48B88 80047F88 906F0002 */  lbu        $t7, 2($v1)
/* 48B8C 80047F8C AFA40000 */  sw         $a0, ($sp)
/* 48B90 80047F90 15E00017 */  bnez       $t7, .L80047FF0
/* 48B94 80047F94 308EFFFF */   andi      $t6, $a0, 0xffff
/* 48B98 80047F98 000EC080 */  sll        $t8, $t6, 2
/* 48B9C 80047F9C 030EC023 */  subu       $t8, $t8, $t6
/* 48BA0 80047FA0 0018C080 */  sll        $t8, $t8, 2
/* 48BA4 80047FA4 030EC021 */  addu       $t8, $t8, $t6
/* 48BA8 80047FA8 0018C080 */  sll        $t8, $t8, 2
/* 48BAC 80047FAC 030EC023 */  subu       $t8, $t8, $t6
/* 48BB0 80047FB0 3C19800F */  lui        $t9, %hi(gActors)
/* 48BB4 80047FB4 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 48BB8 80047FB8 0018C0C0 */  sll        $t8, $t8, 3
/* 48BBC 80047FBC 03191021 */  addu       $v0, $t8, $t9
/* 48BC0 80047FC0 9048012E */  lbu        $t0, 0x12e($v0)
/* 48BC4 80047FC4 8C6B0000 */  lw         $t3, ($v1)
/* 48BC8 80047FC8 240A0002 */  addiu      $t2, $zero, 2
/* 48BCC 80047FCC 24010006 */  addiu      $at, $zero, 6
/* 48BD0 80047FD0 35090041 */  ori        $t1, $t0, 0x41
/* 48BD4 80047FD4 316C00FF */  andi       $t4, $t3, 0xff
/* 48BD8 80047FD8 A049012E */  sb         $t1, 0x12e($v0)
/* 48BDC 80047FDC 15810003 */  bne        $t4, $at, .L80047FEC
/* 48BE0 80047FE0 A44A00D0 */   sh        $t2, 0xd0($v0)
/* 48BE4 80047FE4 240D0001 */  addiu      $t5, $zero, 1
/* 48BE8 80047FE8 A04D00D0 */  sb         $t5, 0xd0($v0)
.L80047FEC:
/* 48BEC 80047FEC AC600000 */  sw         $zero, ($v1)
.L80047FF0:
/* 48BF0 80047FF0 03E00008 */  jr         $ra
/* 48BF4 80047FF4 00000000 */   nop

glabel func_80047FF8
/* 48BF8 80047FF8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 48BFC 80047FFC 000E7880 */  sll        $t7, $t6, 2
/* 48C00 80048000 01EE7823 */  subu       $t7, $t7, $t6
/* 48C04 80048004 000F7880 */  sll        $t7, $t7, 2
/* 48C08 80048008 01EE7821 */  addu       $t7, $t7, $t6
/* 48C0C 8004800C 000F7880 */  sll        $t7, $t7, 2
/* 48C10 80048010 01EE7823 */  subu       $t7, $t7, $t6
/* 48C14 80048014 3C18800F */  lui        $t8, %hi(gActors)
/* 48C18 80048018 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 48C1C 8004801C 000F78C0 */  sll        $t7, $t7, 3
/* 48C20 80048020 3C05800C */  lui        $a1, %hi(D_800BE5F4)
/* 48C24 80048024 01F81021 */  addu       $v0, $t7, $t8
/* 48C28 80048028 9059012E */  lbu        $t9, 0x12e($v0)
/* 48C2C 8004802C 24A5E5F4 */  addiu      $a1, $a1, %lo(D_800BE5F4)
/* 48C30 80048030 90A30002 */  lbu        $v1, 2($a1)
/* 48C34 80048034 37280041 */  ori        $t0, $t9, 0x41
/* 48C38 80048038 AFA40000 */  sw         $a0, ($sp)
/* 48C3C 8004803C 10600008 */  beqz       $v1, .L80048060
/* 48C40 80048040 A048012E */   sb        $t0, 0x12e($v0)
/* 48C44 80048044 2401000A */  addiu      $at, $zero, 0xa
/* 48C48 80048048 1061000C */  beq        $v1, $at, .L8004807C
/* 48C4C 8004804C 2401000B */   addiu     $at, $zero, 0xb
/* 48C50 80048050 10610016 */  beq        $v1, $at, .L800480AC
/* 48C54 80048054 240F0001 */   addiu     $t7, $zero, 1
/* 48C58 80048058 03E00008 */  jr         $ra
/* 48C5C 8004805C 00000000 */   nop
.L80048060:
/* 48C60 80048060 24090002 */  addiu      $t1, $zero, 2
/* 48C64 80048064 240A0004 */  addiu      $t2, $zero, 4
/* 48C68 80048068 240B000A */  addiu      $t3, $zero, 0xa
/* 48C6C 8004806C A44900D0 */  sh         $t1, 0xd0($v0)
/* 48C70 80048070 A0AA0001 */  sb         $t2, 1($a1)
/* 48C74 80048074 03E00008 */  jr         $ra
/* 48C78 80048078 A0AB0002 */   sb        $t3, 2($a1)
.L8004807C:
/* 48C7C 8004807C 90A30001 */  lbu        $v1, 1($a1)
/* 48C80 80048080 00000000 */  nop
/* 48C84 80048084 10600003 */  beqz       $v1, .L80048094
/* 48C88 80048088 246CFFFF */   addiu     $t4, $v1, -1
/* 48C8C 8004808C 03E00008 */  jr         $ra
/* 48C90 80048090 A0AC0001 */   sb        $t4, 1($a1)
.L80048094:
/* 48C94 80048094 904D00D1 */  lbu        $t5, 0xd1($v0)
/* 48C98 80048098 24010003 */  addiu      $at, $zero, 3
/* 48C9C 8004809C 15A10004 */  bne        $t5, $at, .L800480B0
/* 48CA0 800480A0 240E000B */   addiu     $t6, $zero, 0xb
/* 48CA4 800480A4 03E00008 */  jr         $ra
/* 48CA8 800480A8 A0AE0002 */   sb        $t6, 2($a1)
.L800480AC:
/* 48CAC 800480AC ACAF0000 */  sw         $t7, ($a1)
.L800480B0:
/* 48CB0 800480B0 03E00008 */  jr         $ra
/* 48CB4 800480B4 00000000 */   nop

glabel func_800480B8
/* 48CB8 800480B8 3C03800C */  lui        $v1, %hi(D_800BE5F4)
/* 48CBC 800480BC 2463E5F4 */  addiu      $v1, $v1, %lo(D_800BE5F4)
/* 48CC0 800480C0 90620002 */  lbu        $v0, 2($v1)
/* 48CC4 800480C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48CC8 800480C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 48CCC 800480CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 48CD0 800480D0 01C02025 */  or         $a0, $t6, $zero
/* 48CD4 800480D4 10400008 */  beqz       $v0, .L800480F8
/* 48CD8 800480D8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 48CDC 800480DC 2401000B */  addiu      $at, $zero, 0xb
/* 48CE0 800480E0 10410016 */  beq        $v0, $at, .L8004813C
/* 48CE4 800480E4 2401000C */   addiu     $at, $zero, 0xc
/* 48CE8 800480E8 10410030 */  beq        $v0, $at, .L800481AC
/* 48CEC 800480EC 0004C080 */   sll       $t8, $a0, 2
/* 48CF0 800480F0 1000004E */  b          .L8004822C
/* 48CF4 800480F4 8FBF0014 */   lw        $ra, 0x14($sp)
.L800480F8:
/* 48CF8 800480F8 0004C080 */  sll        $t8, $a0, 2
/* 48CFC 800480FC 0304C023 */  subu       $t8, $t8, $a0
/* 48D00 80048100 0018C080 */  sll        $t8, $t8, 2
/* 48D04 80048104 0304C021 */  addu       $t8, $t8, $a0
/* 48D08 80048108 0018C080 */  sll        $t8, $t8, 2
/* 48D0C 8004810C 0304C023 */  subu       $t8, $t8, $a0
/* 48D10 80048110 0018C0C0 */  sll        $t8, $t8, 3
/* 48D14 80048114 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 48D18 80048118 00380821 */  addu       $at, $at, $t8
/* 48D1C 8004811C 240F0002 */  addiu      $t7, $zero, 2
/* 48D20 80048120 A42FF5E0 */  sh         $t7, %lo(D_800EF5E0)($at)
/* 48D24 80048124 90790001 */  lbu        $t9, 1($v1)
/* 48D28 80048128 2409000B */  addiu      $t1, $zero, 0xb
/* 48D2C 8004812C 27280004 */  addiu      $t0, $t9, 4
/* 48D30 80048130 A0680001 */  sb         $t0, 1($v1)
/* 48D34 80048134 1000003C */  b          .L80048228
/* 48D38 80048138 A0690002 */   sb        $t1, 2($v1)
.L8004813C:
/* 48D3C 8004813C 90620001 */  lbu        $v0, 1($v1)
/* 48D40 80048140 00045880 */  sll        $t3, $a0, 2
/* 48D44 80048144 10400004 */  beqz       $v0, .L80048158
/* 48D48 80048148 01645823 */   subu      $t3, $t3, $a0
/* 48D4C 8004814C 244AFFFF */  addiu      $t2, $v0, -1
/* 48D50 80048150 10000035 */  b          .L80048228
/* 48D54 80048154 A06A0001 */   sb        $t2, 1($v1)
.L80048158:
/* 48D58 80048158 000B5880 */  sll        $t3, $t3, 2
/* 48D5C 8004815C 01645821 */  addu       $t3, $t3, $a0
/* 48D60 80048160 000B5880 */  sll        $t3, $t3, 2
/* 48D64 80048164 01645823 */  subu       $t3, $t3, $a0
/* 48D68 80048168 000B58C0 */  sll        $t3, $t3, 3
/* 48D6C 8004816C 3C0C800F */  lui        $t4, %hi(D_800EF5E1)
/* 48D70 80048170 018B6021 */  addu       $t4, $t4, $t3
/* 48D74 80048174 918CF5E1 */  lbu        $t4, %lo(D_800EF5E1)($t4)
/* 48D78 80048178 24010003 */  addiu      $at, $zero, 3
/* 48D7C 8004817C 1581002A */  bne        $t4, $at, .L80048228
/* 48D80 80048180 3C0D800C */   lui       $t5, %hi(D_800BE508)
/* 48D84 80048184 95ADE508 */  lhu        $t5, %lo(D_800BE508)($t5)
/* 48D88 80048188 3C018013 */  lui        $at, %hi(D_801370CC)
/* 48D8C 8004818C 3C0E800C */  lui        $t6, %hi(D_800BE518)
/* 48D90 80048190 95CEE518 */  lhu        $t6, %lo(D_800BE518)($t6)
/* 48D94 80048194 A42D70CC */  sh         $t5, %lo(D_801370CC)($at)
/* 48D98 80048198 3C018013 */  lui        $at, %hi(D_801370CE)
/* 48D9C 8004819C 240F000C */  addiu      $t7, $zero, 0xc
/* 48DA0 800481A0 A42E70CE */  sh         $t6, %lo(D_801370CE)($at)
/* 48DA4 800481A4 10000020 */  b          .L80048228
/* 48DA8 800481A8 A06F0002 */   sb        $t7, 2($v1)
.L800481AC:
/* 48DAC 800481AC 0304C023 */  subu       $t8, $t8, $a0
/* 48DB0 800481B0 0018C080 */  sll        $t8, $t8, 2
/* 48DB4 800481B4 0304C021 */  addu       $t8, $t8, $a0
/* 48DB8 800481B8 0018C080 */  sll        $t8, $t8, 2
/* 48DBC 800481BC 0304C023 */  subu       $t8, $t8, $a0
/* 48DC0 800481C0 0018C0C0 */  sll        $t8, $t8, 3
/* 48DC4 800481C4 3C19800F */  lui        $t9, %hi(D_800EF5E1)
/* 48DC8 800481C8 0338C821 */  addu       $t9, $t9, $t8
/* 48DCC 800481CC 9339F5E1 */  lbu        $t9, %lo(D_800EF5E1)($t9)
/* 48DD0 800481D0 24010003 */  addiu      $at, $zero, 3
/* 48DD4 800481D4 17210015 */  bne        $t9, $at, .L8004822C
/* 48DD8 800481D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 48DDC 800481DC 0C0174CE */  jal        func_8005D338
/* 48DE0 800481E0 00000000 */   nop
/* 48DE4 800481E4 3C03800C */  lui        $v1, %hi(D_800BE5F4)
/* 48DE8 800481E8 24010001 */  addiu      $at, $zero, 1
/* 48DEC 800481EC 1441000E */  bne        $v0, $at, .L80048228
/* 48DF0 800481F0 2463E5F4 */   addiu     $v1, $v1, %lo(D_800BE5F4)
/* 48DF4 800481F4 8C620000 */  lw         $v0, ($v1)
/* 48DF8 800481F8 24010008 */  addiu      $at, $zero, 8
/* 48DFC 800481FC 304800FF */  andi       $t0, $v0, 0xff
/* 48E00 80048200 15010003 */  bne        $t0, $at, .L80048210
/* 48E04 80048204 01001025 */   or        $v0, $t0, $zero
/* 48E08 80048208 10000007 */  b          .L80048228
/* 48E0C 8004820C AC600000 */   sw        $zero, ($v1)
.L80048210:
/* 48E10 80048210 24010009 */  addiu      $at, $zero, 9
/* 48E14 80048214 14410004 */  bne        $v0, $at, .L80048228
/* 48E18 80048218 24090003 */   addiu     $t1, $zero, 3
/* 48E1C 8004821C AC690000 */  sw         $t1, ($v1)
/* 48E20 80048220 240A0001 */  addiu      $t2, $zero, 1
/* 48E24 80048224 A06A0001 */  sb         $t2, 1($v1)
.L80048228:
/* 48E28 80048228 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004822C:
/* 48E2C 8004822C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 48E30 80048230 03E00008 */  jr         $ra
/* 48E34 80048234 00000000 */   nop

glabel func_80048238
/* 48E38 80048238 3C03800C */  lui        $v1, %hi(D_800BE5F4)
/* 48E3C 8004823C 2463E5F4 */  addiu      $v1, $v1, %lo(D_800BE5F4)
/* 48E40 80048240 90620002 */  lbu        $v0, 2($v1)
/* 48E44 80048244 AFA40000 */  sw         $a0, ($sp)
/* 48E48 80048248 308EFFFF */  andi       $t6, $a0, 0xffff
/* 48E4C 8004824C 10400006 */  beqz       $v0, .L80048268
/* 48E50 80048250 01C02025 */   or        $a0, $t6, $zero
/* 48E54 80048254 24010001 */  addiu      $at, $zero, 1
/* 48E58 80048258 10410016 */  beq        $v0, $at, .L800482B4
/* 48E5C 8004825C 00044880 */   sll       $t1, $a0, 2
/* 48E60 80048260 03E00008 */  jr         $ra
/* 48E64 80048264 00000000 */   nop
.L80048268:
/* 48E68 80048268 90620001 */  lbu        $v0, 1($v1)
/* 48E6C 8004826C 24180037 */  addiu      $t8, $zero, 0x37
/* 48E70 80048270 10400004 */  beqz       $v0, .L80048284
/* 48E74 80048274 0004C880 */   sll       $t9, $a0, 2
/* 48E78 80048278 244FFFFF */  addiu      $t7, $v0, -1
/* 48E7C 8004827C 03E00008 */  jr         $ra
/* 48E80 80048280 A06F0001 */   sb        $t7, 1($v1)
.L80048284:
/* 48E84 80048284 0324C823 */  subu       $t9, $t9, $a0
/* 48E88 80048288 0019C880 */  sll        $t9, $t9, 2
/* 48E8C 8004828C 0324C821 */  addu       $t9, $t9, $a0
/* 48E90 80048290 0019C880 */  sll        $t9, $t9, 2
/* 48E94 80048294 0324C823 */  subu       $t9, $t9, $a0
/* 48E98 80048298 0019C8C0 */  sll        $t9, $t9, 3
/* 48E9C 8004829C 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 48EA0 800482A0 00390821 */  addu       $at, $at, $t9
/* 48EA4 800482A4 A438F5E0 */  sh         $t8, %lo(D_800EF5E0)($at)
/* 48EA8 800482A8 24080001 */  addiu      $t0, $zero, 1
/* 48EAC 800482AC 03E00008 */  jr         $ra
/* 48EB0 800482B0 A0680002 */   sb        $t0, 2($v1)
.L800482B4:
/* 48EB4 800482B4 01244823 */  subu       $t1, $t1, $a0
/* 48EB8 800482B8 00094880 */  sll        $t1, $t1, 2
/* 48EBC 800482BC 01244821 */  addu       $t1, $t1, $a0
/* 48EC0 800482C0 00094880 */  sll        $t1, $t1, 2
/* 48EC4 800482C4 01244823 */  subu       $t1, $t1, $a0
/* 48EC8 800482C8 000948C0 */  sll        $t1, $t1, 3
/* 48ECC 800482CC 3C0A800F */  lui        $t2, %hi(D_800EF5E1)
/* 48ED0 800482D0 01495021 */  addu       $t2, $t2, $t1
/* 48ED4 800482D4 914AF5E1 */  lbu        $t2, %lo(D_800EF5E1)($t2)
/* 48ED8 800482D8 24010003 */  addiu      $at, $zero, 3
/* 48EDC 800482DC 1541000E */  bne        $t2, $at, .L80048318
/* 48EE0 800482E0 00000000 */   nop
/* 48EE4 800482E4 8C620000 */  lw         $v0, ($v1)
/* 48EE8 800482E8 2401000A */  addiu      $at, $zero, 0xa
/* 48EEC 800482EC 304B00FF */  andi       $t3, $v0, 0xff
/* 48EF0 800482F0 15610003 */  bne        $t3, $at, .L80048300
/* 48EF4 800482F4 01601025 */   or        $v0, $t3, $zero
/* 48EF8 800482F8 03E00008 */  jr         $ra
/* 48EFC 800482FC AC600000 */   sw        $zero, ($v1)
.L80048300:
/* 48F00 80048300 2401000B */  addiu      $at, $zero, 0xb
/* 48F04 80048304 14410004 */  bne        $v0, $at, .L80048318
/* 48F08 80048308 240C0003 */   addiu     $t4, $zero, 3
/* 48F0C 8004830C AC6C0000 */  sw         $t4, ($v1)
/* 48F10 80048310 240D0002 */  addiu      $t5, $zero, 2
/* 48F14 80048314 A06D0001 */  sb         $t5, 1($v1)
.L80048318:
/* 48F18 80048318 03E00008 */  jr         $ra
/* 48F1C 8004831C 00000000 */   nop

glabel func_80048320
/* 48F20 80048320 3C03800C */  lui        $v1, %hi(D_800BE5F4)
/* 48F24 80048324 2463E5F4 */  addiu      $v1, $v1, %lo(D_800BE5F4)
/* 48F28 80048328 906E0002 */  lbu        $t6, 2($v1)
/* 48F2C 8004832C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48F30 80048330 AFBF0014 */  sw         $ra, 0x14($sp)
/* 48F34 80048334 15C0001B */  bnez       $t6, .L800483A4
/* 48F38 80048338 AFA40018 */   sw        $a0, 0x18($sp)
/* 48F3C 8004833C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 48F40 80048340 0C017154 */  jal        func_8005C550
/* 48F44 80048344 2405001E */   addiu     $a1, $zero, 0x1e
/* 48F48 80048348 97AF001A */  lhu        $t7, 0x1a($sp)
/* 48F4C 8004834C 3C19800F */  lui        $t9, 0x800f
/* 48F50 80048350 000FC080 */  sll        $t8, $t7, 2
/* 48F54 80048354 030FC023 */  subu       $t8, $t8, $t7
/* 48F58 80048358 0018C080 */  sll        $t8, $t8, 2
/* 48F5C 8004835C 030FC021 */  addu       $t8, $t8, $t7
/* 48F60 80048360 0018C080 */  sll        $t8, $t8, 2
/* 48F64 80048364 030FC023 */  subu       $t8, $t8, $t7
/* 48F68 80048368 0018C0C0 */  sll        $t8, $t8, 3
/* 48F6C 8004836C 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 48F70 80048370 03191021 */  addu       $v0, $t8, $t9
/* 48F74 80048374 8C480080 */  lw         $t0, 0x80($v0)
/* 48F78 80048378 904B012E */  lbu        $t3, 0x12e($v0)
/* 48F7C 8004837C 3C03800C */  lui        $v1, %hi(D_800BE5F4)
/* 48F80 80048380 2463E5F4 */  addiu      $v1, $v1, %lo(D_800BE5F4)
/* 48F84 80048384 240A0038 */  addiu      $t2, $zero, 0x38
/* 48F88 80048388 240D0001 */  addiu      $t5, $zero, 1
/* 48F8C 8004838C 35098000 */  ori        $t1, $t0, 0x8000
/* 48F90 80048390 356C0041 */  ori        $t4, $t3, 0x41
/* 48F94 80048394 AC490080 */  sw         $t1, 0x80($v0)
/* 48F98 80048398 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 48F9C 8004839C A04C012E */  sb         $t4, 0x12e($v0)
/* 48FA0 800483A0 A06D0002 */  sb         $t5, 2($v1)
.L800483A4:
/* 48FA4 800483A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 48FA8 800483A8 AC600000 */  sw         $zero, ($v1)
/* 48FAC 800483AC 03E00008 */  jr         $ra
/* 48FB0 800483B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800483B4
/* 48FB4 800483B4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 48FB8 800483B8 000E7880 */  sll        $t7, $t6, 2
/* 48FBC 800483BC 01EE7823 */  subu       $t7, $t7, $t6
/* 48FC0 800483C0 000F7880 */  sll        $t7, $t7, 2
/* 48FC4 800483C4 01EE7821 */  addu       $t7, $t7, $t6
/* 48FC8 800483C8 000F7880 */  sll        $t7, $t7, 2
/* 48FCC 800483CC 01EE7823 */  subu       $t7, $t7, $t6
/* 48FD0 800483D0 3C18800F */  lui        $t8, %hi(gActors)
/* 48FD4 800483D4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 48FD8 800483D8 000F78C0 */  sll        $t7, $t7, 3
/* 48FDC 800483DC 01F81021 */  addu       $v0, $t7, $t8
/* 48FE0 800483E0 905900D1 */  lbu        $t9, 0xd1($v0)
/* 48FE4 800483E4 24010003 */  addiu      $at, $zero, 3
/* 48FE8 800483E8 17210003 */  bne        $t9, $at, .L800483F8
/* 48FEC 800483EC AFA40000 */   sw        $a0, ($sp)
/* 48FF0 800483F0 24080258 */  addiu      $t0, $zero, 0x258
/* 48FF4 800483F4 AC480150 */  sw         $t0, 0x150($v0)
.L800483F8:
/* 48FF8 800483F8 24090001 */  addiu      $t1, $zero, 1
/* 48FFC 800483FC 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 49000 80048400 03E00008 */  jr         $ra
/* 49004 80048404 AC29E5F4 */   sw        $t1, %lo(D_800BE5F4)($at)

glabel func_80048408
/* 49008 80048408 3C02800C */  lui        $v0, %hi(D_800BE5F6)
/* 4900C 8004840C 9042E5F6 */  lbu        $v0, %lo(D_800BE5F6)($v0)
/* 49010 80048410 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 49014 80048414 AFBF0014 */  sw         $ra, 0x14($sp)
/* 49018 80048418 AFA40020 */  sw         $a0, 0x20($sp)
/* 4901C 8004841C 10400006 */  beqz       $v0, .L80048438
/* 49020 80048420 3086FFFF */   andi      $a2, $a0, 0xffff
/* 49024 80048424 24010001 */  addiu      $at, $zero, 1
/* 49028 80048428 10410037 */  beq        $v0, $at, .L80048508
/* 4902C 8004842C 0006C080 */   sll       $t8, $a2, 2
/* 49030 80048430 1000005B */  b          .L800485A0
/* 49034 80048434 8FBF0014 */   lw        $ra, 0x14($sp)
.L80048438:
/* 49038 80048438 00067080 */  sll        $t6, $a2, 2
/* 4903C 8004843C 01C67023 */  subu       $t6, $t6, $a2
/* 49040 80048440 000E7080 */  sll        $t6, $t6, 2
/* 49044 80048444 01C67021 */  addu       $t6, $t6, $a2
/* 49048 80048448 000E7080 */  sll        $t6, $t6, 2
/* 4904C 8004844C 01C67023 */  subu       $t6, $t6, $a2
/* 49050 80048450 3C0F800F */  lui        $t7, %hi(gActors)
/* 49054 80048454 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 49058 80048458 000E70C0 */  sll        $t6, $t6, 3
/* 4905C 8004845C 01CF1821 */  addu       $v1, $t6, $t7
/* 49060 80048460 8C780080 */  lw         $t8, 0x80($v1)
/* 49064 80048464 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 49068 80048468 0018C980 */  sll        $t9, $t8, 6
/* 4906C 8004846C 07210010 */  bgez       $t9, .L800484B0
/* 49070 80048470 00000000 */   nop
/* 49074 80048474 946500D6 */  lhu        $a1, 0xd6($v1)
/* 49078 80048478 AFA30018 */  sw         $v1, 0x18($sp)
/* 4907C 8004847C 0C013D45 */  jal        func_8004F514
/* 49080 80048480 A7A60022 */   sh        $a2, 0x22($sp)
/* 49084 80048484 8FA30018 */  lw         $v1, 0x18($sp)
/* 49088 80048488 3C010081 */  lui        $at, 0x81
/* 4908C 8004848C 8C680080 */  lw         $t0, 0x80($v1)
/* 49090 80048490 97A60022 */  lhu        $a2, 0x22($sp)
/* 49094 80048494 01014824 */  and        $t1, $t0, $at
/* 49098 80048498 11200004 */  beqz       $t1, .L800484AC
/* 4909C 8004849C 240B0016 */   addiu     $t3, $zero, 0x16
/* 490A0 800484A0 240A0003 */  addiu      $t2, $zero, 3
/* 490A4 800484A4 10000002 */  b          .L800484B0
/* 490A8 800484A8 A46A00D0 */   sh        $t2, 0xd0($v1)
.L800484AC:
/* 490AC 800484AC A46B00D0 */  sh         $t3, 0xd0($v1)
.L800484B0:
/* 490B0 800484B0 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 490B4 800484B4 0C0174CE */  jal        func_8005D338
/* 490B8 800484B8 AFA30018 */   sw        $v1, 0x18($sp)
/* 490BC 800484BC 8FA30018 */  lw         $v1, 0x18($sp)
/* 490C0 800484C0 24010001 */  addiu      $at, $zero, 1
/* 490C4 800484C4 14410036 */  bne        $v0, $at, .L800485A0
/* 490C8 800484C8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 490CC 800484CC 8C6C00EC */  lw         $t4, 0xec($v1)
/* 490D0 800484D0 00000000 */  nop
/* 490D4 800484D4 15800032 */  bnez       $t4, .L800485A0
/* 490D8 800484D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 490DC 800484DC 8C6D00F0 */  lw         $t5, 0xf0($v1)
/* 490E0 800484E0 24020001 */  addiu      $v0, $zero, 1
/* 490E4 800484E4 15A0002D */  bnez       $t5, .L8004859C
/* 490E8 800484E8 240E00A1 */   addiu     $t6, $zero, 0xa1
/* 490EC 800484EC 8C6F0080 */  lw         $t7, 0x80($v1)
/* 490F0 800484F0 AC6E0170 */  sw         $t6, 0x170($v1)
/* 490F4 800484F4 A46200D0 */  sh         $v0, 0xd0($v1)
/* 490F8 800484F8 3C01800C */  lui        $at, %hi(D_800BE5F6)
/* 490FC 800484FC AC6F0150 */  sw         $t7, 0x150($v1)
/* 49100 80048500 10000026 */  b          .L8004859C
/* 49104 80048504 A022E5F6 */   sb        $v0, %lo(D_800BE5F6)($at)
.L80048508:
/* 49108 80048508 0306C023 */  subu       $t8, $t8, $a2
/* 4910C 8004850C 0018C080 */  sll        $t8, $t8, 2
/* 49110 80048510 0306C021 */  addu       $t8, $t8, $a2
/* 49114 80048514 0018C080 */  sll        $t8, $t8, 2
/* 49118 80048518 0306C023 */  subu       $t8, $t8, $a2
/* 4911C 8004851C 3C19800F */  lui        $t9, %hi(gActors)
/* 49120 80048520 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 49124 80048524 0018C0C0 */  sll        $t8, $t8, 3
/* 49128 80048528 03191821 */  addu       $v1, $t8, $t9
/* 4912C 8004852C 80680170 */  lb         $t0, 0x170($v1)
/* 49130 80048530 00000000 */  nop
/* 49134 80048534 1500000C */  bnez       $t0, .L80048568
/* 49138 80048538 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 4913C 8004853C 80690171 */  lb         $t1, 0x171($v1)
/* 49140 80048540 24010005 */  addiu      $at, $zero, 5
/* 49144 80048544 15210007 */  bne        $t1, $at, .L80048564
/* 49148 80048548 240400CE */   addiu     $a0, $zero, 0xce
/* 4914C 8004854C AFA30018 */  sw         $v1, 0x18($sp)
/* 49150 80048550 0C000CD3 */  jal        func_8000334C
/* 49154 80048554 A7A60022 */   sh        $a2, 0x22($sp)
/* 49158 80048558 8FA30018 */  lw         $v1, 0x18($sp)
/* 4915C 8004855C 97A60022 */  lhu        $a2, 0x22($sp)
/* 49160 80048560 00000000 */  nop
.L80048564:
/* 49164 80048564 30C4FFFF */  andi       $a0, $a2, 0xffff
.L80048568:
/* 49168 80048568 0C017506 */  jal        func_8005D418
/* 4916C 8004856C AFA30018 */   sw        $v1, 0x18($sp)
/* 49170 80048570 8FA30018 */  lw         $v1, 0x18($sp)
/* 49174 80048574 10400009 */  beqz       $v0, .L8004859C
/* 49178 80048578 240A00A3 */   addiu     $t2, $zero, 0xa3
/* 4917C 8004857C 8C6B0080 */  lw         $t3, 0x80($v1)
/* 49180 80048580 240D0003 */  addiu      $t5, $zero, 3
/* 49184 80048584 356C0040 */  ori        $t4, $t3, 0x40
/* 49188 80048588 AC6A0170 */  sw         $t2, 0x170($v1)
/* 4918C 8004858C AC6C0080 */  sw         $t4, 0x80($v1)
/* 49190 80048590 A46D00D0 */  sh         $t5, 0xd0($v1)
/* 49194 80048594 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 49198 80048598 AC20E5F4 */  sw         $zero, %lo(D_800BE5F4)($at)
.L8004859C:
/* 4919C 8004859C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800485A0:
/* 491A0 800485A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 491A4 800485A4 03E00008 */  jr         $ra
/* 491A8 800485A8 00000000 */   nop

glabel func_800485AC
/* 491AC 800485AC 3C0F800C */  lui        $t7, %hi(D_800BE5F4)
/* 491B0 800485B0 8DEFE5F4 */  lw         $t7, %lo(D_800BE5F4)($t7)
/* 491B4 800485B4 3C01800D */  lui        $at, %hi(D_800D3D20)
/* 491B8 800485B8 31F800FF */  andi       $t8, $t7, 0xff
/* 491BC 800485BC 0018C880 */  sll        $t9, $t8, 2
/* 491C0 800485C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 491C4 800485C4 00390821 */  addu       $at, $at, $t9
/* 491C8 800485C8 8C393D20 */  lw         $t9, %lo(D_800D3D20)($at)
/* 491CC 800485CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 491D0 800485D0 AFA40018 */  sw         $a0, 0x18($sp)
/* 491D4 800485D4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 491D8 800485D8 0320F809 */  jalr       $t9
/* 491DC 800485DC 01C02025 */   or        $a0, $t6, $zero
/* 491E0 800485E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 491E4 800485E4 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 491E8 800485E8 A020E5F4 */  sb         $zero, %lo(D_800BE5F4)($at)
/* 491EC 800485EC 03E00008 */  jr         $ra
/* 491F0 800485F0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 491F4 800485F4 00000000 */  nop
/* 491F8 800485F8 00000000 */  nop
/* 491FC 800485FC 00000000 */  nop