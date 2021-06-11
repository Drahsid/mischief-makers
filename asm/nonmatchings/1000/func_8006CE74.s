glabel func_8006CE74
/* 6DA74 8006CE74 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6DA78 8006CE78 000E7880 */  sll        $t7, $t6, 2
/* 6DA7C 8006CE7C 01EE7823 */  subu       $t7, $t7, $t6
/* 6DA80 8006CE80 000F7880 */  sll        $t7, $t7, 2
/* 6DA84 8006CE84 01EE7821 */  addu       $t7, $t7, $t6
/* 6DA88 8006CE88 000F7880 */  sll        $t7, $t7, 2
/* 6DA8C 8006CE8C 01EE7823 */  subu       $t7, $t7, $t6
/* 6DA90 8006CE90 3C18800F */  lui        $t8, %hi(gActors)
/* 6DA94 8006CE94 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6DA98 8006CE98 000F78C0 */  sll        $t7, $t7, 3
/* 6DA9C 8006CE9C 01F81821 */  addu       $v1, $t7, $t8
/* 6DAA0 8006CEA0 946200D8 */  lhu        $v0, 0xd8($v1)
/* 6DAA4 8006CEA4 AFA40000 */  sw         $a0, ($sp)
/* 6DAA8 8006CEA8 30590030 */  andi       $t9, $v0, 0x30
/* 6DAAC 8006CEAC 1320000A */  beqz       $t9, .L8006CED8
/* 6DAB0 8006CEB0 3C013F80 */   lui       $at, 0x3f80
/* 6DAB4 8006CEB4 24010010 */  addiu      $at, $zero, 0x10
/* 6DAB8 8006CEB8 1321000A */  beq        $t9, $at, .L8006CEE4
/* 6DABC 8006CEBC 24010020 */   addiu     $at, $zero, 0x20
/* 6DAC0 8006CEC0 1321000C */  beq        $t9, $at, .L8006CEF4
/* 6DAC4 8006CEC4 24010030 */   addiu     $at, $zero, 0x30
/* 6DAC8 8006CEC8 1321000E */  beq        $t9, $at, .L8006CF04
/* 6DACC 8006CECC 00000000 */   nop
/* 6DAD0 8006CED0 10000011 */  b          .L8006CF18
/* 6DAD4 8006CED4 C47000B4 */   lwc1      $f16, 0xb4($v1)
.L8006CED8:
/* 6DAD8 8006CED8 44812000 */  mtc1       $at, $f4
/* 6DADC 8006CEDC 1000000D */  b          .L8006CF14
/* 6DAE0 8006CEE0 E46400B4 */   swc1      $f4, 0xb4($v1)
.L8006CEE4:
/* 6DAE4 8006CEE4 3C01800F */  lui        $at, %hi(D_800EC5CC)
/* 6DAE8 8006CEE8 C426C5CC */  lwc1       $f6, %lo(D_800EC5CC)($at)
/* 6DAEC 8006CEEC 10000009 */  b          .L8006CF14
/* 6DAF0 8006CEF0 E46600B4 */   swc1      $f6, 0xb4($v1)
.L8006CEF4:
/* 6DAF4 8006CEF4 3C01800F */  lui        $at, %hi(D_800EC5D0)
/* 6DAF8 8006CEF8 C428C5D0 */  lwc1       $f8, %lo(D_800EC5D0)($at)
/* 6DAFC 8006CEFC 10000005 */  b          .L8006CF14
/* 6DB00 8006CF00 E46800B4 */   swc1      $f8, 0xb4($v1)
.L8006CF04:
/* 6DB04 8006CF04 3C01800F */  lui        $at, %hi(D_800EC5D4)
/* 6DB08 8006CF08 C42AC5D4 */  lwc1       $f10, %lo(D_800EC5D4)($at)
/* 6DB0C 8006CF0C 00000000 */  nop
/* 6DB10 8006CF10 E46A00B4 */  swc1       $f10, 0xb4($v1)
.L8006CF14:
/* 6DB14 8006CF14 C47000B4 */  lwc1       $f16, 0xb4($v1)
.L8006CF18:
/* 6DB18 8006CF18 03E00008 */  jr         $ra
/* 6DB1C 8006CF1C E47000B8 */   swc1      $f16, 0xb8($v1)
