glabel func_80058978
/* 59578 80058978 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5957C 8005897C 000E7880 */  sll        $t7, $t6, 2
/* 59580 80058980 01EE7823 */  subu       $t7, $t7, $t6
/* 59584 80058984 000F7880 */  sll        $t7, $t7, 2
/* 59588 80058988 01EE7821 */  addu       $t7, $t7, $t6
/* 5958C 8005898C 000F7880 */  sll        $t7, $t7, 2
/* 59590 80058990 01EE7823 */  subu       $t7, $t7, $t6
/* 59594 80058994 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 59598 80058998 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 5959C 8005899C 000F78C0 */  sll        $t7, $t7, 3
/* 595A0 800589A0 01F81021 */  addu       $v0, $t7, $t8
/* 595A4 800589A4 8C590080 */  lw         $t9, 0x80($v0)
/* 595A8 800589A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 595AC 800589AC AFA40020 */  sw         $a0, 0x20($sp)
/* 595B0 800589B0 00194180 */  sll        $t0, $t9, 6
/* 595B4 800589B4 01C02025 */  or         $a0, $t6, $zero
/* 595B8 800589B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 595BC 800589BC 05010008 */  bgez       $t0, .L800589E0
/* 595C0 800589C0 AFA50024 */   sw        $a1, 0x24($sp)
/* 595C4 800589C4 944500D6 */  lhu        $a1, 0xd6($v0)
/* 595C8 800589C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* 595CC 800589CC 0C013D45 */  jal        func_8004F514
/* 595D0 800589D0 A7AE0022 */   sh        $t6, 0x22($sp)
/* 595D4 800589D4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 595D8 800589D8 97A40022 */  lhu        $a0, 0x22($sp)
/* 595DC 800589DC 00000000 */  nop
.L800589E0:
/* 595E0 800589E0 0C016249 */  jal        func_80058924
/* 595E4 800589E4 AFA2001C */   sw        $v0, 0x1c($sp)
/* 595E8 800589E8 8FA2001C */  lw         $v0, 0x1c($sp)
/* 595EC 800589EC 3C0D0003 */  lui        $t5, 3
/* 595F0 800589F0 8C490080 */  lw         $t1, 0x80($v0)
/* 595F4 800589F4 240E0078 */  addiu      $t6, $zero, 0x78
/* 595F8 800589F8 312A0020 */  andi       $t2, $t1, 0x20
/* 595FC 800589FC 15400005 */  bnez       $t2, .L80058A14
/* 59600 80058A00 240F0031 */   addiu     $t7, $zero, 0x31
/* 59604 80058A04 3C0BFFFE */  lui        $t3, 0xfffe
/* 59608 80058A08 356B8000 */  ori        $t3, $t3, 0x8000
/* 5960C 80058A0C 10000004 */  b          .L80058A20
/* 59610 80058A10 AC4B00F8 */   sw        $t3, 0xf8($v0)
.L80058A14:
/* 59614 80058A14 3C0C0001 */  lui        $t4, 1
/* 59618 80058A18 358C8000 */  ori        $t4, $t4, 0x8000
/* 5961C 80058A1C AC4C00F8 */  sw         $t4, 0xf8($v0)
.L80058A20:
/* 59620 80058A20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 59624 80058A24 AC4D00FC */  sw         $t5, 0xfc($v0)
/* 59628 80058A28 A44E00D4 */  sh         $t6, 0xd4($v0)
/* 5962C 80058A2C A44F00D0 */  sh         $t7, 0xd0($v0)
/* 59630 80058A30 03E00008 */  jr         $ra
/* 59634 80058A34 27BD0020 */   addiu     $sp, $sp, 0x20
