glabel func_80027A44
/* 28644 80027A44 94830000 */  lhu        $v1, ($a0)
/* 28648 80027A48 00000000 */  nop
/* 2864C 80027A4C 2861011E */  slti       $at, $v1, 0x11e
/* 28650 80027A50 10200004 */  beqz       $at, .L80027A64
/* 28654 80027A54 3401C000 */   ori       $at, $zero, 0xc000
/* 28658 80027A58 03E00008 */  jr         $ra
/* 2865C 80027A5C 24020006 */   addiu     $v0, $zero, 6
/* 28660 80027A60 3401C000 */  ori        $at, $zero, 0xc000
.L80027A64:
/* 28664 80027A64 14610003 */  bne        $v1, $at, .L80027A74
/* 28668 80027A68 3C02800D */   lui       $v0, %hi(D_800D16AA)
/* 2866C 80027A6C 03E00008 */  jr         $ra
/* 28670 80027A70 24020007 */   addiu     $v0, $zero, 7
.L80027A74:
/* 28674 80027A74 00431021 */  addu       $v0, $v0, $v1
/* 28678 80027A78 904216AA */  lbu        $v0, %lo(D_800D16AA)($v0)
/* 2867C 80027A7C 00000000 */  nop
/* 28680 80027A80 03E00008 */  jr         $ra
/* 28684 80027A84 00000000 */   nop
