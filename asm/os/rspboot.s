.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BA9E0
/* BB5E0 800BA9E0 09000419 */  j          .L84001064
/* BB5E4 800BA9E4 20010FC0 */   addi      $at, $zero, 0xfc0
/* BB5E8 800BA9E8 8C220010 */  lw         $v0, 0x10($at)
/* BB5EC 800BA9EC 20030F7F */  addi       $v1, $zero, 0xf7f
/* BB5F0 800BA9F0 20071080 */  addi       $a3, $zero, 0x1080
/* BB5F4 800BA9F4 40870000 */  mtc0       $a3, $0
/* BB5F8 800BA9F8 40820800 */  mtc0       $v0, $1
/* BB5FC 800BA9FC 40831000 */  mtc0       $v1, $2
.L800BAA00:
/* BB600 800BAA00 40043000 */  mfc0       $a0, $6
/* BB604 800BAA04 1480FFFE */  bnez       $a0, .L800BAA00
/* BB608 800BAA08 00000000 */   nop
/* BB60C 800BAA0C 0D00040F */  jal        func_8400103C
/* BB610 800BAA10 00000000 */   nop
/* BB614 800BAA14 00E00008 */  jr         $a3
/* BB618 800BAA18 40803800 */   mtc0      $zero, $7
.L800BAA1C:
/* BB61C 800BAA1C 40082000 */  mfc0       $t0, $4
/* BB620 800BAA20 31080080 */  andi       $t0, $t0, 0x80
/* BB624 800BAA24 15000002 */  bnez       $t0, .L800BAA30
/* BB628 800BAA28 00000000 */   nop
/* BB62C 800BAA2C 03E00008 */  jr         $ra
.L800BAA30:
/* BB630 800BAA30 40803800 */   mtc0      $zero, $7
/* BB634 800BAA34 34085200 */  ori        $t0, $zero, 0x5200
/* BB638 800BAA38 40882000 */  mtc0       $t0, $4
/* BB63C 800BAA3C 0000000D */  break
/* BB640 800BAA40 00000000 */   nop
/* BB644 800BAA44 8C220004 */  lw         $v0, 4($at)
/* BB648 800BAA48 30420002 */  andi       $v0, $v0, 2
/* BB64C 800BAA4C 10400007 */  beqz       $v0, .L800BAA6C
/* BB650 800BAA50 00000000 */   nop
/* BB654 800BAA54 0D00040F */  jal        func_8400103C
/* BB658 800BAA58 00000000 */   nop
/* BB65C 800BAA5C 40025800 */  mfc0       $v0, $11
/* BB660 800BAA60 30420100 */  andi       $v0, $v0, 0x100
/* BB664 800BAA64 1C40FFED */  bgtz       $v0, .L800BAA1C
/* BB668 800BAA68 00000000 */   nop
.L800BAA6C:
/* BB66C 800BAA6C 8C220018 */  lw         $v0, 0x18($at)
/* BB670 800BAA70 8C23001C */  lw         $v1, 0x1c($at)
/* BB674 800BAA74 2063FFFF */  addi       $v1, $v1, -1
.L800BAA78:
/* BB678 800BAA78 401E2800 */  mfc0       $fp, $5
/* BB67C 800BAA7C 17C0FFFE */  bnez       $fp, .L800BAA78
/* BB680 800BAA80 00000000 */   nop
/* BB684 800BAA84 40800000 */  mtc0       $zero, $0
/* BB688 800BAA88 40820800 */  mtc0       $v0, $1
/* BB68C 800BAA8C 40831000 */  mtc0       $v1, $2
.L800BAA90:
/* BB690 800BAA90 40043000 */  mfc0       $a0, $6
/* BB694 800BAA94 1480FFFE */  bnez       $a0, .L800BAA90
/* BB698 800BAA98 00000000 */   nop
/* BB69C 800BAA9C 0D00040F */  jal        func_8400103C
/* BB6A0 800BAAA0 00000000 */   nop
/* BB6A4 800BAAA4 09000402 */  j          .L84001008
/* BB6A8 800BAAA8 00000000 */   nop
/* BB6AC 800BAAAC 00000000 */  nop
/* BB6B0 800BAAB0 090005E0 */  j          .L84001780
/* BB6B4 800BAAB4 201D0110 */   addi      $sp, $zero, 0x110
/* BB6B8 800BAAB8 0D000447 */  jal        func_8400111C
/* BB6BC 800BAABC 03009820 */   add       $s3, $t8, $zero
/* BB6C0 800BAAC0 0016A020 */  add        $s4, $zero, $s6
/* BB6C4 800BAAC4 0D00044F */  jal        func_8400113C
/* BB6C8 800BAAC8 20110000 */   addi      $s1, $zero, 0
/* BB6CC 800BAACC 842200BC */  lh         $v0, 0xbc($at)
/* BB6D0 800BAAD0 00400008 */  jr         $v0
/* BB6D4 800BAAD4 001915C2 */   srl       $v0, $t9, 0x17
/* BB6D8 800BAAD8 40022000 */  mfc0       $v0, $4
/* BB6DC 800BAADC 30420080 */  andi       $v0, $v0, 0x80
/* BB6E0 800BAAE0 14400006 */  bnez       $v0, .L800BAAFC
/* BB6E4 800BAAE4 84150026 */   lh        $s5, 0x26($zero)
/* BB6E8 800BAAE8 1F80FFE9 */  bgtz       $gp, .L800BAA90
/* BB6EC 800BAAEC 00000000 */   nop
/* BB6F0 800BAAF0 09000435 */  j          .L840010D4
/* BB6F4 800BAAF4 841F0102 */   lh        $ra, 0x102($zero)
/* BB6F8 800BAAF8 841500B6 */  lh         $s5, 0xb6($zero)
.L800BAAFC:
/* BB6FC 800BAAFC 0900043F */  j          .L840010FC
/* BB700 800BAB00 341E0020 */   ori       $fp, $zero, 0x20
/* BB704 800BAB04 201C0140 */  addi       $gp, $zero, 0x140
/* BB708 800BAB08 001FA820 */  add        $s5, $zero, $ra
/* BB70C 800BAB0C 201406A0 */  addi       $s4, $zero, 0x6a0
/* BB710 800BAB10 001A9820 */  add        $s3, $zero, $k0
/* BB714 800BAB14 2012013F */  addi       $s2, $zero, 0x13f
/* BB718 800BAB18 0D00044F */  jal        func_8400113C
/* BB71C 800BAB1C 20110000 */   addi      $s1, $zero, 0
/* BB720 800BAB20 02A00008 */  jr         $s5
/* BB724 800BAB24 201B06A0 */   addi      $k1, $zero, 0x6a0
/* BB728 800BAB28 001FA820 */  add        $s5, $zero, $ra
/* BB72C 800BAB2C 8FD30000 */  lw         $s3, ($fp)
/* BB730 800BAB30 87D20004 */  lh         $s2, 4($fp)
/* BB734 800BAB34 87D40006 */  lh         $s4, 6($fp)
/* BB738 800BAB38 0D00044F */  jal        func_8400113C
/* BB73C 800BAB3C 20110000 */   addi      $s1, $zero, 0
/* BB740 800BAB40 0D000459 */  jal        func_84001164
/* BB744 800BAB44 00000000 */   nop
/* BB748 800BAB48 02A00008 */  jr         $s5
/* BB74C 800BAB4C 8C0B00B8 */   lw        $t3, 0xb8($zero)
/* BB750 800BAB50 00136582 */  srl        $t4, $s3, 0x16
/* BB754 800BAB54 318C003C */  andi       $t4, $t4, 0x3c
/* BB758 800BAB58 026B9824 */  and        $s3, $s3, $t3
/* BB75C 800BAB5C 000C6820 */  add        $t5, $zero, $t4
/* BB760 800BAB60 8DAC0160 */  lw         $t4, 0x160($t5)
/* BB764 800BAB64 03E00008 */  jr         $ra
/* BB768 800BAB68 026C9820 */   add       $s3, $s3, $t4
.L800BAB6C:
/* BB76C 800BAB6C 400B2800 */  mfc0       $t3, $5
/* BB770 800BAB70 1560FFFE */  bnez       $t3, .L800BAB6C
/* BB774 800BAB74 00000000 */   nop
/* BB778 800BAB78 40940000 */  mtc0       $s4, $0
/* BB77C 800BAB7C 1E200003 */  bgtz       $s1, .L800BAB8C
/* BB780 800BAB80 40930800 */   mtc0      $s3, $1
/* BB784 800BAB84 03E00008 */  jr         $ra
/* BB788 800BAB88 40921000 */   mtc0      $s2, $2
.L800BAB8C:
/* BB78C 800BAB8C 03E00008 */  jr         $ra
/* BB790 800BAB90 40921800 */   mtc0      $s2, $3
.L800BAB94:
/* BB794 800BAB94 400B3000 */  mfc0       $t3, $6
/* BB798 800BAB98 1560FFFE */  bnez       $t3, .L800BAB94
/* BB79C 800BAB9C 00000000 */   nop
/* BB7A0 800BABA0 03E00008 */  jr         $ra
/* BB7A4 800BABA4 00000000 */   nop
/* BB7A8 800BABA8 20130DE0 */  addi       $s3, $zero, 0xde0
/* BB7AC 800BABAC 02F2A020 */  add        $s4, $s7, $s2
/* BB7B0 800BABB0 02749822 */  sub        $s3, $s3, $s4
/* BB7B4 800BABB4 06610009 */  bgez       $s3, .L800BABDC
/* BB7B8 800BABB8 00000000 */   nop
.L800BABBC:
/* BB7BC 800BABBC 40135800 */  mfc0       $s3, $11
/* BB7C0 800BABC0 32730400 */  andi       $s3, $s3, 0x400
/* BB7C4 800BABC4 1660FFFD */  bnez       $s3, .L800BABBC
.L800BABC8:
/* BB7C8 800BABC8 40135000 */   mfc0      $s3, $10
/* BB7CC 800BABCC 201709E0 */  addi       $s7, $zero, 0x9e0
/* BB7D0 800BABD0 1277FFFD */  beq        $s3, $s7, .L800BABC8
/* BB7D4 800BABD4 00000000 */   nop
/* BB7D8 800BABD8 40974000 */  mtc0       $s7, $8
.L800BABDC:
/* BB7DC 800BABDC 40135000 */  mfc0       $s3, $10
/* BB7E0 800BABE0 02F3A022 */  sub        $s4, $s7, $s3
/* BB7E4 800BABE4 06810004 */  bgez       $s4, .L800BABF8
/* BB7E8 800BABE8 02F2A020 */   add       $s4, $s7, $s2
/* BB7EC 800BABEC 02939822 */  sub        $s3, $s4, $s3
/* BB7F0 800BABF0 0661FFFA */  bgez       $s3, .L800BABDC
/* BB7F4 800BABF4 00000000 */   nop
.L800BABF8:
/* BB7F8 800BABF8 03E00008 */  jr         $ra
/* BB7FC 800BABFC 00000000 */   nop
/* BB800 800BAC00 03E00008 */  jr         $ra
/* BB804 800BAC04 40974800 */   mtc0      $s7, $9
/* BB808 800BAC08 00000000 */  nop
/* BB80C 800BAC0C 00000000 */  nop
