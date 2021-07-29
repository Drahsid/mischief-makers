.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel _bcopy
/* AB610 800AAA10 00A03825 */  or         $a3, $a1, $zero
/* AB614 800AAA14 10C0001C */  beqz       $a2, .L800AAA88
/* AB618 800AAA18 00000000 */   nop
/* AB61C 800AAA1C 1085001A */  beq        $a0, $a1, .L800AAA88
/* AB620 800AAA20 00000000 */   nop
/* AB624 800AAA24 00A4082A */  slt        $at, $a1, $a0
/* AB628 800AAA28 14200007 */  bnez       $at, .L800AAA48
/* AB62C 800AAA2C 00000000 */   nop
/* AB630 800AAA30 00861020 */  add        $v0, $a0, $a2
/* AB634 800AAA34 00A2082A */  slt        $at, $a1, $v0
/* AB638 800AAA38 10200003 */  beqz       $at, .L800AAA48
/* AB63C 800AAA3C 00000000 */   nop
/* AB640 800AAA40 10000063 */  b          .L800AABD0
/* AB644 800AAA44 00000000 */   nop
.L800AAA48:
/* AB648 800AAA48 28C10010 */  slti       $at, $a2, 0x10
/* AB64C 800AAA4C 14200005 */  bnez       $at, .L800AAA64
/* AB650 800AAA50 00000000 */   nop
/* AB654 800AAA54 30820003 */  andi       $v0, $a0, 3
/* AB658 800AAA58 30A30003 */  andi       $v1, $a1, 3
/* AB65C 800AAA5C 1043000D */  beq        $v0, $v1, .L800AAA94
/* AB660 800AAA60 00000000 */   nop
.L800AAA64:
/* AB664 800AAA64 10C00008 */  beqz       $a2, .L800AAA88
/* AB668 800AAA68 00000000 */   nop
/* AB66C 800AAA6C 00861821 */  addu       $v1, $a0, $a2
.L800AAA70:
/* AB670 800AAA70 80820000 */  lb         $v0, ($a0)
/* AB674 800AAA74 24840001 */  addiu      $a0, $a0, 1
/* AB678 800AAA78 A0A20000 */  sb         $v0, ($a1)
/* AB67C 800AAA7C 24A50001 */  addiu      $a1, $a1, 1
/* AB680 800AAA80 1483FFFB */  bne        $a0, $v1, .L800AAA70
/* AB684 800AAA84 00000000 */   nop
.L800AAA88:
/* AB688 800AAA88 00E01025 */  or         $v0, $a3, $zero
/* AB68C 800AAA8C 03E00008 */  jr         $ra
/* AB690 800AAA90 00000000 */   nop
.L800AAA94:
/* AB694 800AAA94 1040001C */  beqz       $v0, .L800AAB08
/* AB698 800AAA98 00000000 */   nop
/* AB69C 800AAA9C 24010001 */  addiu      $at, $zero, 1
/* AB6A0 800AAAA0 10410012 */  beq        $v0, $at, .L800AAAEC
/* AB6A4 800AAAA4 00000000 */   nop
/* AB6A8 800AAAA8 24010002 */  addiu      $at, $zero, 2
/* AB6AC 800AAAAC 10410008 */  beq        $v0, $at, .L800AAAD0
/* AB6B0 800AAAB0 00000000 */   nop
/* AB6B4 800AAAB4 80820000 */  lb         $v0, ($a0)
/* AB6B8 800AAAB8 24840001 */  addiu      $a0, $a0, 1
/* AB6BC 800AAABC A0A20000 */  sb         $v0, ($a1)
/* AB6C0 800AAAC0 24A50001 */  addiu      $a1, $a1, 1
/* AB6C4 800AAAC4 24C6FFFF */  addiu      $a2, $a2, -1
/* AB6C8 800AAAC8 1000000F */  b          .L800AAB08
/* AB6CC 800AAACC 00000000 */   nop
.L800AAAD0:
/* AB6D0 800AAAD0 84820000 */  lh         $v0, ($a0)
/* AB6D4 800AAAD4 24840002 */  addiu      $a0, $a0, 2
/* AB6D8 800AAAD8 A4A20000 */  sh         $v0, ($a1)
/* AB6DC 800AAADC 24A50002 */  addiu      $a1, $a1, 2
/* AB6E0 800AAAE0 24C6FFFE */  addiu      $a2, $a2, -2
/* AB6E4 800AAAE4 10000008 */  b          .L800AAB08
/* AB6E8 800AAAE8 00000000 */   nop
.L800AAAEC:
/* AB6EC 800AAAEC 80820000 */  lb         $v0, ($a0)
/* AB6F0 800AAAF0 84830001 */  lh         $v1, 1($a0)
/* AB6F4 800AAAF4 24840003 */  addiu      $a0, $a0, 3
/* AB6F8 800AAAF8 A0A20000 */  sb         $v0, ($a1)
/* AB6FC 800AAAFC A4A30001 */  sh         $v1, 1($a1)
/* AB700 800AAB00 24A50003 */  addiu      $a1, $a1, 3
/* AB704 800AAB04 24C6FFFD */  addiu      $a2, $a2, -3
.L800AAB08:
/* AB708 800AAB08 28C10020 */  slti       $at, $a2, 0x20
/* AB70C 800AAB0C 14200016 */  bnez       $at, .L800AAB68
/* AB710 800AAB10 00000000 */   nop
/* AB714 800AAB14 8C820000 */  lw         $v0, ($a0)
/* AB718 800AAB18 8C830004 */  lw         $v1, 4($a0)
/* AB71C 800AAB1C 8C880008 */  lw         $t0, 8($a0)
/* AB720 800AAB20 8C89000C */  lw         $t1, 0xc($a0)
/* AB724 800AAB24 8C8A0010 */  lw         $t2, 0x10($a0)
/* AB728 800AAB28 8C8B0014 */  lw         $t3, 0x14($a0)
/* AB72C 800AAB2C 8C8C0018 */  lw         $t4, 0x18($a0)
/* AB730 800AAB30 8C8D001C */  lw         $t5, 0x1c($a0)
/* AB734 800AAB34 24840020 */  addiu      $a0, $a0, 0x20
/* AB738 800AAB38 ACA20000 */  sw         $v0, ($a1)
/* AB73C 800AAB3C ACA30004 */  sw         $v1, 4($a1)
/* AB740 800AAB40 ACA80008 */  sw         $t0, 8($a1)
/* AB744 800AAB44 ACA9000C */  sw         $t1, 0xc($a1)
/* AB748 800AAB48 ACAA0010 */  sw         $t2, 0x10($a1)
/* AB74C 800AAB4C ACAB0014 */  sw         $t3, 0x14($a1)
/* AB750 800AAB50 ACAC0018 */  sw         $t4, 0x18($a1)
/* AB754 800AAB54 ACAD001C */  sw         $t5, 0x1c($a1)
/* AB758 800AAB58 24A50020 */  addiu      $a1, $a1, 0x20
/* AB75C 800AAB5C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* AB760 800AAB60 1000FFE9 */  b          .L800AAB08
/* AB764 800AAB64 00000000 */   nop
.L800AAB68:
/* AB768 800AAB68 28C10010 */  slti       $at, $a2, 0x10
/* AB76C 800AAB6C 1420000E */  bnez       $at, .L800AABA8
/* AB770 800AAB70 00000000 */   nop
/* AB774 800AAB74 8C820000 */  lw         $v0, ($a0)
/* AB778 800AAB78 8C830004 */  lw         $v1, 4($a0)
/* AB77C 800AAB7C 8C880008 */  lw         $t0, 8($a0)
/* AB780 800AAB80 8C89000C */  lw         $t1, 0xc($a0)
/* AB784 800AAB84 24840010 */  addiu      $a0, $a0, 0x10
/* AB788 800AAB88 ACA20000 */  sw         $v0, ($a1)
/* AB78C 800AAB8C ACA30004 */  sw         $v1, 4($a1)
/* AB790 800AAB90 ACA80008 */  sw         $t0, 8($a1)
/* AB794 800AAB94 ACA9000C */  sw         $t1, 0xc($a1)
/* AB798 800AAB98 24A50010 */  addiu      $a1, $a1, 0x10
/* AB79C 800AAB9C 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* AB7A0 800AABA0 1000FFF1 */  b          .L800AAB68
/* AB7A4 800AABA4 00000000 */   nop
.L800AABA8:
/* AB7A8 800AABA8 28C10004 */  slti       $at, $a2, 4
/* AB7AC 800AABAC 1420FFAD */  bnez       $at, .L800AAA64
/* AB7B0 800AABB0 00000000 */   nop
/* AB7B4 800AABB4 8C820000 */  lw         $v0, ($a0)
/* AB7B8 800AABB8 24840004 */  addiu      $a0, $a0, 4
/* AB7BC 800AABBC ACA20000 */  sw         $v0, ($a1)
/* AB7C0 800AABC0 24A50004 */  addiu      $a1, $a1, 4
/* AB7C4 800AABC4 24C6FFFC */  addiu      $a2, $a2, -4
/* AB7C8 800AABC8 1000FFF7 */  b          .L800AABA8
/* AB7CC 800AABCC 00000000 */   nop
.L800AABD0:
/* AB7D0 800AABD0 00862020 */  add        $a0, $a0, $a2
/* AB7D4 800AABD4 00A62820 */  add        $a1, $a1, $a2
/* AB7D8 800AABD8 28C10010 */  slti       $at, $a2, 0x10
/* AB7DC 800AABDC 14200005 */  bnez       $at, .L800AABF4
/* AB7E0 800AABE0 00000000 */   nop
/* AB7E4 800AABE4 30820003 */  andi       $v0, $a0, 3
/* AB7E8 800AABE8 30A30003 */  andi       $v1, $a1, 3
/* AB7EC 800AABEC 1043000F */  beq        $v0, $v1, .L800AAC2C
/* AB7F0 800AABF0 00000000 */   nop
.L800AABF4:
/* AB7F4 800AABF4 10C0FFA4 */  beqz       $a2, .L800AAA88
/* AB7F8 800AABF8 00000000 */   nop
/* AB7FC 800AABFC 2484FFFF */  addiu      $a0, $a0, -1
/* AB800 800AAC00 24A5FFFF */  addiu      $a1, $a1, -1
/* AB804 800AAC04 00861823 */  subu       $v1, $a0, $a2
.L800AAC08:
/* AB808 800AAC08 80820000 */  lb         $v0, ($a0)
/* AB80C 800AAC0C 2484FFFF */  addiu      $a0, $a0, -1
/* AB810 800AAC10 A0A20000 */  sb         $v0, ($a1)
/* AB814 800AAC14 24A5FFFF */  addiu      $a1, $a1, -1
/* AB818 800AAC18 1483FFFB */  bne        $a0, $v1, .L800AAC08
/* AB81C 800AAC1C 00000000 */   nop
/* AB820 800AAC20 00E01025 */  or         $v0, $a3, $zero
/* AB824 800AAC24 03E00008 */  jr         $ra
/* AB828 800AAC28 00000000 */   nop
.L800AAC2C:
/* AB82C 800AAC2C 1040001C */  beqz       $v0, .L800AACA0
/* AB830 800AAC30 00000000 */   nop
/* AB834 800AAC34 24010003 */  addiu      $at, $zero, 3
/* AB838 800AAC38 10410012 */  beq        $v0, $at, .L800AAC84
/* AB83C 800AAC3C 00000000 */   nop
/* AB840 800AAC40 24010002 */  addiu      $at, $zero, 2
/* AB844 800AAC44 10410008 */  beq        $v0, $at, .L800AAC68
/* AB848 800AAC48 00000000 */   nop
/* AB84C 800AAC4C 8082FFFF */  lb         $v0, -1($a0)
/* AB850 800AAC50 2484FFFF */  addiu      $a0, $a0, -1
/* AB854 800AAC54 A0A2FFFF */  sb         $v0, -1($a1)
/* AB858 800AAC58 24A5FFFF */  addiu      $a1, $a1, -1
/* AB85C 800AAC5C 24C6FFFF */  addiu      $a2, $a2, -1
/* AB860 800AAC60 1000000F */  b          .L800AACA0
/* AB864 800AAC64 00000000 */   nop
.L800AAC68:
/* AB868 800AAC68 8482FFFE */  lh         $v0, -2($a0)
/* AB86C 800AAC6C 2484FFFE */  addiu      $a0, $a0, -2
/* AB870 800AAC70 A4A2FFFE */  sh         $v0, -2($a1)
/* AB874 800AAC74 24A5FFFE */  addiu      $a1, $a1, -2
/* AB878 800AAC78 24C6FFFE */  addiu      $a2, $a2, -2
/* AB87C 800AAC7C 10000008 */  b          .L800AACA0
/* AB880 800AAC80 00000000 */   nop
.L800AAC84:
/* AB884 800AAC84 8082FFFF */  lb         $v0, -1($a0)
/* AB888 800AAC88 8483FFFD */  lh         $v1, -3($a0)
/* AB88C 800AAC8C 2484FFFD */  addiu      $a0, $a0, -3
/* AB890 800AAC90 A0A2FFFF */  sb         $v0, -1($a1)
/* AB894 800AAC94 A4A3FFFD */  sh         $v1, -3($a1)
/* AB898 800AAC98 24A5FFFD */  addiu      $a1, $a1, -3
/* AB89C 800AAC9C 24C6FFFD */  addiu      $a2, $a2, -3
.L800AACA0:
/* AB8A0 800AACA0 28C10020 */  slti       $at, $a2, 0x20
/* AB8A4 800AACA4 14200016 */  bnez       $at, .L800AAD00
/* AB8A8 800AACA8 00000000 */   nop
/* AB8AC 800AACAC 8C82FFFC */  lw         $v0, -4($a0)
/* AB8B0 800AACB0 8C83FFF8 */  lw         $v1, -8($a0)
/* AB8B4 800AACB4 8C88FFF4 */  lw         $t0, -0xc($a0)
/* AB8B8 800AACB8 8C89FFF0 */  lw         $t1, -0x10($a0)
/* AB8BC 800AACBC 8C8AFFEC */  lw         $t2, -0x14($a0)
/* AB8C0 800AACC0 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* AB8C4 800AACC4 8C8CFFE4 */  lw         $t4, -0x1c($a0)
/* AB8C8 800AACC8 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* AB8CC 800AACCC 2484FFE0 */  addiu      $a0, $a0, -0x20
/* AB8D0 800AACD0 ACA2FFFC */  sw         $v0, -4($a1)
/* AB8D4 800AACD4 ACA3FFF8 */  sw         $v1, -8($a1)
/* AB8D8 800AACD8 ACA8FFF4 */  sw         $t0, -0xc($a1)
/* AB8DC 800AACDC ACA9FFF0 */  sw         $t1, -0x10($a1)
/* AB8E0 800AACE0 ACAAFFEC */  sw         $t2, -0x14($a1)
/* AB8E4 800AACE4 ACABFFE8 */  sw         $t3, -0x18($a1)
/* AB8E8 800AACE8 ACACFFE4 */  sw         $t4, -0x1c($a1)
/* AB8EC 800AACEC ACADFFE0 */  sw         $t5, -0x20($a1)
/* AB8F0 800AACF0 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* AB8F4 800AACF4 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* AB8F8 800AACF8 1000FFE9 */  b          .L800AACA0
/* AB8FC 800AACFC 00000000 */   nop
.L800AAD00:
/* AB900 800AAD00 28C10010 */  slti       $at, $a2, 0x10
/* AB904 800AAD04 1420000E */  bnez       $at, .L800AAD40
/* AB908 800AAD08 00000000 */   nop
/* AB90C 800AAD0C 8C82FFFC */  lw         $v0, -4($a0)
/* AB910 800AAD10 8C83FFF8 */  lw         $v1, -8($a0)
/* AB914 800AAD14 8C88FFF4 */  lw         $t0, -0xc($a0)
/* AB918 800AAD18 8C89FFF0 */  lw         $t1, -0x10($a0)
/* AB91C 800AAD1C 2484FFF0 */  addiu      $a0, $a0, -0x10
/* AB920 800AAD20 ACA2FFFC */  sw         $v0, -4($a1)
/* AB924 800AAD24 ACA3FFF8 */  sw         $v1, -8($a1)
/* AB928 800AAD28 ACA8FFF4 */  sw         $t0, -0xc($a1)
/* AB92C 800AAD2C ACA9FFF0 */  sw         $t1, -0x10($a1)
/* AB930 800AAD30 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* AB934 800AAD34 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* AB938 800AAD38 1000FFF1 */  b          .L800AAD00
/* AB93C 800AAD3C 00000000 */   nop
.L800AAD40:
/* AB940 800AAD40 28C10004 */  slti       $at, $a2, 4
/* AB944 800AAD44 1420FFAB */  bnez       $at, .L800AABF4
/* AB948 800AAD48 00000000 */   nop
/* AB94C 800AAD4C 8C82FFFC */  lw         $v0, -4($a0)
/* AB950 800AAD50 2484FFFC */  addiu      $a0, $a0, -4
/* AB954 800AAD54 ACA2FFFC */  sw         $v0, -4($a1)
/* AB958 800AAD58 24A5FFFC */  addiu      $a1, $a1, -4
/* AB95C 800AAD5C 24C6FFFC */  addiu      $a2, $a2, -4
/* AB960 800AAD60 1000FFF7 */  b          .L800AAD40
/* AB964 800AAD64 00000000 */   nop
/* AB968 800AAD68 00000000 */  nop
/* AB96C 800AAD6C 00000000 */  nop

glabel __osSpSetStatus
/* AB970 800AAD70 3C0EA404 */  lui        $t6, %hi(SP_STATUS)
/* AB974 800AAD74 ADC40010 */  sw         $a0, %lo(SP_STATUS)($t6)
/* AB978 800AAD78 03E00008 */  jr         $ra
/* AB97C 800AAD7C 00000000 */   nop

glabel func_800AAD80
/* AB980 800AAD80 03E00008 */  jr         $ra
/* AB984 800AAD84 00000000 */   nop
/* AB988 800AAD88 00000000 */  nop
/* AB98C 800AAD8C 00000000 */  nop
