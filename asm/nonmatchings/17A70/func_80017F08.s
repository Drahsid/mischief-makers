glabel func_80017F08
/* 18B08 80017F08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18B0C 80017F0C AFBF001C */  sw         $ra, 0x1c($sp)
/* 18B10 80017F10 0C005DDC */  jal        func_80017770
/* 18B14 80017F14 00000000 */   nop
/* 18B18 80017F18 3C0E8018 */  lui        $t6, %hi(D_801781A0)
/* 18B1C 80017F1C 91CE81A0 */  lbu        $t6, %lo(D_801781A0)($t6)
/* 18B20 80017F20 2418001F */  addiu      $t8, $zero, 0x1f
/* 18B24 80017F24 00002025 */  or         $a0, $zero, $zero
/* 18B28 80017F28 05C10003 */  bgez       $t6, .L80017F38
/* 18B2C 80017F2C 000E7883 */   sra       $t7, $t6, 2
/* 18B30 80017F30 25C10003 */  addiu      $at, $t6, 3
/* 18B34 80017F34 00017883 */  sra        $t7, $at, 2
.L80017F38:
/* 18B38 80017F38 030F2823 */  subu       $a1, $t8, $t7
/* 18B3C 80017F3C 30B900FF */  andi       $t9, $a1, 0xff
/* 18B40 80017F40 03202825 */  or         $a1, $t9, $zero
/* 18B44 80017F44 332600FF */  andi       $a2, $t9, 0xff
/* 18B48 80017F48 0C009D62 */  jal        func_80027588
/* 18B4C 80017F4C 2407001F */   addiu     $a3, $zero, 0x1f
/* 18B50 80017F50 3C05800D */  lui        $a1, %hi(D_800C8F68)
/* 18B54 80017F54 24A58F68 */  addiu      $a1, $a1, %lo(D_800C8F68)
/* 18B58 80017F58 24040039 */  addiu      $a0, $zero, 0x39
/* 18B5C 80017F5C 3406FFCA */  ori        $a2, $zero, 0xffca
/* 18B60 80017F60 3407FFE4 */  ori        $a3, $zero, 0xffe4
/* 18B64 80017F64 AFA00010 */  sw         $zero, 0x10($sp)
/* 18B68 80017F68 0C009DB7 */  jal        func_800276DC
/* 18B6C 80017F6C AFA20014 */   sw        $v0, 0x14($sp)
/* 18B70 80017F70 24040002 */  addiu      $a0, $zero, 2
/* 18B74 80017F74 2405001F */  addiu      $a1, $zero, 0x1f
/* 18B78 80017F78 2406001F */  addiu      $a2, $zero, 0x1f
/* 18B7C 80017F7C 0C009D62 */  jal        func_80027588
/* 18B80 80017F80 24070018 */   addiu     $a3, $zero, 0x18
/* 18B84 80017F84 3C05800D */  lui        $a1, %hi(D_800C8F74)
/* 18B88 80017F88 24A58F74 */  addiu      $a1, $a1, %lo(D_800C8F74)
/* 18B8C 80017F8C 24040049 */  addiu      $a0, $zero, 0x49
/* 18B90 80017F90 3406FFAA */  ori        $a2, $zero, 0xffaa
/* 18B94 80017F94 3407FFC0 */  ori        $a3, $zero, 0xffc0
/* 18B98 80017F98 AFA00010 */  sw         $zero, 0x10($sp)
/* 18B9C 80017F9C 0C009DB7 */  jal        func_800276DC
/* 18BA0 80017FA0 AFA20014 */   sw        $v0, 0x14($sp)
/* 18BA4 80017FA4 24040002 */  addiu      $a0, $zero, 2
/* 18BA8 80017FA8 2405001F */  addiu      $a1, $zero, 0x1f
/* 18BAC 80017FAC 2406001F */  addiu      $a2, $zero, 0x1f
/* 18BB0 80017FB0 0C009D62 */  jal        func_80027588
/* 18BB4 80017FB4 24070018 */   addiu     $a3, $zero, 0x18
/* 18BB8 80017FB8 3C05800D */  lui        $a1, %hi(D_800C8F88)
/* 18BBC 80017FBC 24A58F88 */  addiu      $a1, $a1, %lo(D_800C8F88)
/* 18BC0 80017FC0 24040060 */  addiu      $a0, $zero, 0x60
/* 18BC4 80017FC4 3406FFA6 */  ori        $a2, $zero, 0xffa6
/* 18BC8 80017FC8 3407FFAE */  ori        $a3, $zero, 0xffae
/* 18BCC 80017FCC AFA00010 */  sw         $zero, 0x10($sp)
/* 18BD0 80017FD0 0C009DB7 */  jal        func_800276DC
/* 18BD4 80017FD4 AFA20014 */   sw        $v0, 0x14($sp)
/* 18BD8 80017FD8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18BDC 80017FDC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 18BE0 80017FE0 03E00008 */  jr         $ra
/* 18BE4 80017FE4 00000000 */   nop
