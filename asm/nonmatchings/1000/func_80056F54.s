glabel func_80056F54
/* 57B54 80056F54 308EFFFF */  andi       $t6, $a0, 0xffff
/* 57B58 80056F58 000E7880 */  sll        $t7, $t6, 2
/* 57B5C 80056F5C 01EE7823 */  subu       $t7, $t7, $t6
/* 57B60 80056F60 000F7880 */  sll        $t7, $t7, 2
/* 57B64 80056F64 01EE7821 */  addu       $t7, $t7, $t6
/* 57B68 80056F68 000F7880 */  sll        $t7, $t7, 2
/* 57B6C 80056F6C 01EE7823 */  subu       $t7, $t7, $t6
/* 57B70 80056F70 3C18800F */  lui        $t8, %hi(gActors)
/* 57B74 80056F74 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 57B78 80056F78 000F78C0 */  sll        $t7, $t7, 3
/* 57B7C 80056F7C 01F81021 */  addu       $v0, $t7, $t8
/* 57B80 80056F80 8C590080 */  lw         $t9, 0x80($v0)
/* 57B84 80056F84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 57B88 80056F88 AFA40020 */  sw         $a0, 0x20($sp)
/* 57B8C 80056F8C 00194180 */  sll        $t0, $t9, 6
/* 57B90 80056F90 01C02025 */  or         $a0, $t6, $zero
/* 57B94 80056F94 05010008 */  bgez       $t0, .L80056FB8
/* 57B98 80056F98 AFBF0014 */   sw        $ra, 0x14($sp)
/* 57B9C 80056F9C 24050008 */  addiu      $a1, $zero, 8
/* 57BA0 80056FA0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 57BA4 80056FA4 0C017154 */  jal        func_8005C550
/* 57BA8 80056FA8 A7AE0022 */   sh        $t6, 0x22($sp)
/* 57BAC 80056FAC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 57BB0 80056FB0 97A40022 */  lhu        $a0, 0x22($sp)
/* 57BB4 80056FB4 00000000 */  nop
.L80056FB8:
/* 57BB8 80056FB8 944500D6 */  lhu        $a1, 0xd6($v0)
/* 57BBC 80056FBC 9049012E */  lbu        $t1, 0x12e($v0)
/* 57BC0 80056FC0 00055880 */  sll        $t3, $a1, 2
/* 57BC4 80056FC4 01655823 */  subu       $t3, $t3, $a1
/* 57BC8 80056FC8 000B5880 */  sll        $t3, $t3, 2
/* 57BCC 80056FCC 01655821 */  addu       $t3, $t3, $a1
/* 57BD0 80056FD0 000B5880 */  sll        $t3, $t3, 2
/* 57BD4 80056FD4 01655823 */  subu       $t3, $t3, $a1
/* 57BD8 80056FD8 000B58C0 */  sll        $t3, $t3, 3
/* 57BDC 80056FDC 3C0C800F */  lui        $t4, %hi(D_800EF5EE)
/* 57BE0 80056FE0 352A0081 */  ori        $t2, $t1, 0x81
/* 57BE4 80056FE4 A04A012E */  sb         $t2, 0x12e($v0)
/* 57BE8 80056FE8 018B6021 */  addu       $t4, $t4, $t3
/* 57BEC 80056FEC 918CF5EE */  lbu        $t4, %lo(D_800EF5EE)($t4)
/* 57BF0 80056FF0 3C19800D */  lui        $t9, %hi(D_800D3F10)
/* 57BF4 80056FF4 000C6880 */  sll        $t5, $t4, 2
/* 57BF8 80056FF8 032DC821 */  addu       $t9, $t9, $t5
/* 57BFC 80056FFC 8F393F10 */  lw         $t9, %lo(D_800D3F10)($t9)
/* 57C00 80057000 00000000 */  nop
/* 57C04 80057004 0320F809 */  jalr       $t9
/* 57C08 80057008 00000000 */   nop
/* 57C0C 8005700C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 57C10 80057010 27BD0020 */  addiu      $sp, $sp, 0x20
/* 57C14 80057014 03E00008 */  jr         $ra
/* 57C18 80057018 00000000 */   nop
