.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A9B00
/* AA700 800A9B00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AA704 800A9B04 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA708 800A9B08 AFA40018 */  sw         $a0, 0x18($sp)
/* AA70C 800A9B0C AFA5001C */  sw         $a1, 0x1c($sp)
/* AA710 800A9B10 8FAE001C */  lw         $t6, 0x1c($sp)
/* AA714 800A9B14 11C00001 */  beqz       $t6, .L800A9B1C
/* AA718 800A9B18 00000000 */   nop
.L800A9B1C:
/* AA71C 800A9B1C 8FAF0018 */  lw         $t7, 0x18($sp)
/* AA720 800A9B20 3C198019 */  lui        $t9, %hi(rmonbrk_bss_0008)
/* AA724 800A9B24 2739A398 */  addiu      $t9, $t9, %lo(rmonbrk_bss_0008)
/* AA728 800A9B28 8DF80000 */  lw         $t8, ($t7)
/* AA72C 800A9B2C AF380004 */  sw         $t8, 4($t9)
/* AA730 800A9B30 8FA90018 */  lw         $t1, 0x18($sp)
/* AA734 800A9B34 2408040D */  addiu      $t0, $zero, 0x40d
/* AA738 800A9B38 AD280000 */  sw         $t0, ($t1)
/* AA73C 800A9B3C 8FA40018 */  lw         $a0, 0x18($sp)
/* AA740 800A9B40 0C029BC4 */  jal        osWritebackDCache
/* AA744 800A9B44 24050004 */   addiu     $a1, $zero, 4
/* AA748 800A9B48 8FA40018 */  lw         $a0, 0x18($sp)
/* AA74C 800A9B4C 0C029BE4 */  jal        osInvalICache
/* AA750 800A9B50 24050004 */   addiu     $a1, $zero, 4
/* AA754 800A9B54 8FAA0018 */  lw         $t2, 0x18($sp)
/* AA758 800A9B58 3C0B8019 */  lui        $t3, %hi(rmonbrk_bss_0008)
/* AA75C 800A9B5C 256BA398 */  addiu      $t3, $t3, %lo(rmonbrk_bss_0008)
/* AA760 800A9B60 AD6A0000 */  sw         $t2, ($t3)
/* AA764 800A9B64 8FAC001C */  lw         $t4, 0x1c($sp)
/* AA768 800A9B68 11800011 */  beqz       $t4, .L800A9BB0
/* AA76C 800A9B6C 00000000 */   nop
/* AA770 800A9B70 8FAD001C */  lw         $t5, 0x1c($sp)
/* AA774 800A9B74 3C018019 */  lui        $at, %hi(D_8018A41C)
/* AA778 800A9B78 8DAE0000 */  lw         $t6, ($t5)
/* AA77C 800A9B7C AC2EA41C */  sw         $t6, %lo(D_8018A41C)($at)
/* AA780 800A9B80 8FB8001C */  lw         $t8, 0x1c($sp)
/* AA784 800A9B84 240F040D */  addiu      $t7, $zero, 0x40d
/* AA788 800A9B88 AF0F0000 */  sw         $t7, ($t8)
/* AA78C 800A9B8C 8FA4001C */  lw         $a0, 0x1c($sp)
/* AA790 800A9B90 0C029BC4 */  jal        osWritebackDCache
/* AA794 800A9B94 24050004 */   addiu     $a1, $zero, 4
/* AA798 800A9B98 8FA4001C */  lw         $a0, 0x1c($sp)
/* AA79C 800A9B9C 0C029BE4 */  jal        osInvalICache
/* AA7A0 800A9BA0 24050004 */   addiu     $a1, $zero, 4
/* AA7A4 800A9BA4 8FB9001C */  lw         $t9, 0x1c($sp)
/* AA7A8 800A9BA8 3C018019 */  lui        $at, %hi(D_8018A418)
/* AA7AC 800A9BAC AC39A418 */  sw         $t9, %lo(D_8018A418)($at)
.L800A9BB0:
/* AA7B0 800A9BB0 10000001 */  b          .L800A9BB8
/* AA7B4 800A9BB4 00000000 */   nop
.L800A9BB8:
/* AA7B8 800A9BB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA7BC 800A9BBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* AA7C0 800A9BC0 03E00008 */  jr         $ra
/* AA7C4 800A9BC4 00000000 */   nop

glabel ClearTempBreakpoint
/* AA7C8 800A9BC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AA7CC 800A9BCC AFBF0014 */  sw         $ra, 0x14($sp)
/* AA7D0 800A9BD0 3C0E8019 */  lui        $t6, %hi(rmonbrk_bss_0008)
/* AA7D4 800A9BD4 25CEA398 */  addiu      $t6, $t6, %lo(rmonbrk_bss_0008)
/* AA7D8 800A9BD8 8DCF0000 */  lw         $t7, ($t6)
/* AA7DC 800A9BDC 11E0001F */  beqz       $t7, .L800A9C5C
/* AA7E0 800A9BE0 00000000 */   nop
/* AA7E4 800A9BE4 3C188019 */  lui        $t8, %hi(rmonbrk_bss_0008)
/* AA7E8 800A9BE8 2718A398 */  addiu      $t8, $t8, %lo(rmonbrk_bss_0008)
/* AA7EC 800A9BEC 8F190000 */  lw         $t9, ($t8)
/* AA7F0 800A9BF0 8F280000 */  lw         $t0, ($t9)
/* AA7F4 800A9BF4 AFA8001C */  sw         $t0, 0x1c($sp)
/* AA7F8 800A9BF8 8FA9001C */  lw         $t1, 0x1c($sp)
/* AA7FC 800A9BFC 3C01FC00 */  lui        $at, 0xfc00
/* AA800 800A9C00 3421003F */  ori        $at, $at, 0x3f
/* AA804 800A9C04 01215024 */  and        $t2, $t1, $at
/* AA808 800A9C08 2401000D */  addiu      $at, $zero, 0xd
/* AA80C 800A9C0C 15410010 */  bne        $t2, $at, .L800A9C50
/* AA810 800A9C10 00000000 */   nop
/* AA814 800A9C14 3C0B8019 */  lui        $t3, %hi(rmonbrk_bss_0008)
/* AA818 800A9C18 256BA398 */  addiu      $t3, $t3, %lo(rmonbrk_bss_0008)
/* AA81C 800A9C1C 8D6C0004 */  lw         $t4, 4($t3)
/* AA820 800A9C20 8D6D0000 */  lw         $t5, ($t3)
/* AA824 800A9C24 ADAC0000 */  sw         $t4, ($t5)
/* AA828 800A9C28 3C0E8019 */  lui        $t6, %hi(rmonbrk_bss_0008)
/* AA82C 800A9C2C 25CEA398 */  addiu      $t6, $t6, %lo(rmonbrk_bss_0008)
/* AA830 800A9C30 8DC40000 */  lw         $a0, ($t6)
/* AA834 800A9C34 0C029BC4 */  jal        osWritebackDCache
/* AA838 800A9C38 24050004 */   addiu     $a1, $zero, 4
/* AA83C 800A9C3C 3C0F8019 */  lui        $t7, %hi(rmonbrk_bss_0008)
/* AA840 800A9C40 25EFA398 */  addiu      $t7, $t7, %lo(rmonbrk_bss_0008)
/* AA844 800A9C44 8DE40000 */  lw         $a0, ($t7)
/* AA848 800A9C48 0C029BE4 */  jal        osInvalICache
/* AA84C 800A9C4C 24050004 */   addiu     $a1, $zero, 4
.L800A9C50:
/* AA850 800A9C50 3C188019 */  lui        $t8, %hi(rmonbrk_bss_0008)
/* AA854 800A9C54 2718A398 */  addiu      $t8, $t8, %lo(rmonbrk_bss_0008)
/* AA858 800A9C58 AF000000 */  sw         $zero, ($t8)
.L800A9C5C:
/* AA85C 800A9C5C 3C198019 */  lui        $t9, %hi(D_8018A418)
/* AA860 800A9C60 8F39A418 */  lw         $t9, %lo(D_8018A418)($t9)
/* AA864 800A9C64 1320001B */  beqz       $t9, .L800A9CD4
/* AA868 800A9C68 00000000 */   nop
/* AA86C 800A9C6C 3C088019 */  lui        $t0, %hi(D_8018A418)
/* AA870 800A9C70 8D08A418 */  lw         $t0, %lo(D_8018A418)($t0)
/* AA874 800A9C74 8D090000 */  lw         $t1, ($t0)
/* AA878 800A9C78 AFA9001C */  sw         $t1, 0x1c($sp)
/* AA87C 800A9C7C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AA880 800A9C80 3C01FC00 */  lui        $at, 0xfc00
/* AA884 800A9C84 3421003F */  ori        $at, $at, 0x3f
/* AA888 800A9C88 01415824 */  and        $t3, $t2, $at
/* AA88C 800A9C8C 2401000D */  addiu      $at, $zero, 0xd
/* AA890 800A9C90 1561000E */  bne        $t3, $at, .L800A9CCC
/* AA894 800A9C94 00000000 */   nop
/* AA898 800A9C98 3C0C8019 */  lui        $t4, %hi(D_8018A41C)
/* AA89C 800A9C9C 3C0D8019 */  lui        $t5, %hi(D_8018A418)
/* AA8A0 800A9CA0 8DADA418 */  lw         $t5, %lo(D_8018A418)($t5)
/* AA8A4 800A9CA4 8D8CA41C */  lw         $t4, %lo(D_8018A41C)($t4)
/* AA8A8 800A9CA8 ADAC0000 */  sw         $t4, ($t5)
/* AA8AC 800A9CAC 3C048019 */  lui        $a0, %hi(D_8018A418)
/* AA8B0 800A9CB0 8C84A418 */  lw         $a0, %lo(D_8018A418)($a0)
/* AA8B4 800A9CB4 0C029BC4 */  jal        osWritebackDCache
/* AA8B8 800A9CB8 24050004 */   addiu     $a1, $zero, 4
/* AA8BC 800A9CBC 3C048019 */  lui        $a0, %hi(D_8018A418)
/* AA8C0 800A9CC0 8C84A418 */  lw         $a0, %lo(D_8018A418)($a0)
/* AA8C4 800A9CC4 0C029BE4 */  jal        osInvalICache
/* AA8C8 800A9CC8 24050004 */   addiu     $a1, $zero, 4
.L800A9CCC:
/* AA8CC 800A9CCC 3C018019 */  lui        $at, %hi(D_8018A418)
/* AA8D0 800A9CD0 AC20A418 */  sw         $zero, %lo(D_8018A418)($at)
.L800A9CD4:
/* AA8D4 800A9CD4 10000001 */  b          .L800A9CDC
/* AA8D8 800A9CD8 00000000 */   nop
.L800A9CDC:
/* AA8DC 800A9CDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA8E0 800A9CE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* AA8E4 800A9CE4 03E00008 */  jr         $ra
/* AA8E8 800A9CE8 00000000 */   nop

glabel __rmonSetBreak
/* AA8EC 800A9CEC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* AA8F0 800A9CF0 AFBF0024 */  sw         $ra, 0x24($sp)
/* AA8F4 800A9CF4 AFA40050 */  sw         $a0, 0x50($sp)
/* AA8F8 800A9CF8 AFB30020 */  sw         $s3, 0x20($sp)
/* AA8FC 800A9CFC AFB2001C */  sw         $s2, 0x1c($sp)
/* AA900 800A9D00 AFB10018 */  sw         $s1, 0x18($sp)
/* AA904 800A9D04 AFB00014 */  sw         $s0, 0x14($sp)
/* AA908 800A9D08 8FB00050 */  lw         $s0, 0x50($sp)
/* AA90C 800A9D0C 8FAE0050 */  lw         $t6, 0x50($sp)
/* AA910 800A9D10 24010001 */  addiu      $at, $zero, 1
/* AA914 800A9D14 91CF0009 */  lbu        $t7, 9($t6)
/* AA918 800A9D18 15E1000A */  bne        $t7, $at, .L800A9D44
/* AA91C 800A9D1C 00000000 */   nop
/* AA920 800A9D20 3C118019 */  lui        $s1, %hi(rmonbrk_bss_0090)
/* AA924 800A9D24 2631A420 */  addiu      $s1, $s1, %lo(rmonbrk_bss_0090)
/* AA928 800A9D28 3C128019 */  lui        $s2, %hi(rmonbrk_bss_0090)
/* AA92C 800A9D2C 2652A420 */  addiu      $s2, $s2, %lo(rmonbrk_bss_0090)
/* AA930 800A9D30 26520008 */  addiu      $s2, $s2, 8
/* AA934 800A9D34 3C138019 */  lui        $s3, %hi(rmonbrk_bss_0090)
/* AA938 800A9D38 2673A420 */  addiu      $s3, $s3, %lo(rmonbrk_bss_0090)
/* AA93C 800A9D3C 10000009 */  b          .L800A9D64
/* AA940 800A9D40 26730080 */   addiu     $s3, $s3, 0x80
.L800A9D44:
/* AA944 800A9D44 3C118019 */  lui        $s1, %hi(rmonbrk_bss_0008)
/* AA948 800A9D48 2631A398 */  addiu      $s1, $s1, %lo(rmonbrk_bss_0008)
/* AA94C 800A9D4C 3C128019 */  lui        $s2, %hi(rmonbrk_bss_0008)
/* AA950 800A9D50 2652A398 */  addiu      $s2, $s2, %lo(rmonbrk_bss_0008)
/* AA954 800A9D54 26520008 */  addiu      $s2, $s2, 8
/* AA958 800A9D58 3C138019 */  lui        $s3, %hi(rmonbrk_bss_0008)
/* AA95C 800A9D5C 2673A398 */  addiu      $s3, $s3, %lo(rmonbrk_bss_0008)
/* AA960 800A9D60 26730080 */  addiu      $s3, $s3, 0x80
.L800A9D64:
/* AA964 800A9D64 0253082B */  sltu       $at, $s2, $s3
/* AA968 800A9D68 10200014 */  beqz       $at, .L800A9DBC
/* AA96C 800A9D6C 00000000 */   nop
.L800A9D70:
/* AA970 800A9D70 8E580000 */  lw         $t8, ($s2)
/* AA974 800A9D74 1300000B */  beqz       $t8, .L800A9DA4
/* AA978 800A9D78 00000000 */   nop
/* AA97C 800A9D7C 8E590000 */  lw         $t9, ($s2)
/* AA980 800A9D80 8E080010 */  lw         $t0, 0x10($s0)
/* AA984 800A9D84 17280003 */  bne        $t9, $t0, .L800A9D94
/* AA988 800A9D88 00000000 */   nop
/* AA98C 800A9D8C 1000000B */  b          .L800A9DBC
/* AA990 800A9D90 00000000 */   nop
.L800A9D94:
/* AA994 800A9D94 10000005 */  b          .L800A9DAC
/* AA998 800A9D98 00000000 */   nop
/* AA99C 800A9D9C 10000003 */  b          .L800A9DAC
/* AA9A0 800A9DA0 00000000 */   nop
.L800A9DA4:
/* AA9A4 800A9DA4 10000005 */  b          .L800A9DBC
/* AA9A8 800A9DA8 00000000 */   nop
.L800A9DAC:
/* AA9AC 800A9DAC 26520008 */  addiu      $s2, $s2, 8
/* AA9B0 800A9DB0 0253082B */  sltu       $at, $s2, $s3
/* AA9B4 800A9DB4 1420FFEE */  bnez       $at, .L800A9D70
/* AA9B8 800A9DB8 00000000 */   nop
.L800A9DBC:
/* AA9BC 800A9DBC 16530003 */  bne        $s2, $s3, .L800A9DCC
/* AA9C0 800A9DC0 00000000 */   nop
/* AA9C4 800A9DC4 10000043 */  b          .L800A9ED4
/* AA9C8 800A9DC8 2402FFF6 */   addiu     $v0, $zero, -0xa
.L800A9DCC:
/* AA9CC 800A9DCC 8E490000 */  lw         $t1, ($s2)
/* AA9D0 800A9DD0 1520002E */  bnez       $t1, .L800A9E8C
/* AA9D4 800A9DD4 00000000 */   nop
/* AA9D8 800A9DD8 8FAA0050 */  lw         $t2, 0x50($sp)
/* AA9DC 800A9DDC 24010001 */  addiu      $at, $zero, 1
/* AA9E0 800A9DE0 914B0009 */  lbu        $t3, 9($t2)
/* AA9E4 800A9DE4 15610014 */  bne        $t3, $at, .L800A9E38
/* AA9E8 800A9DE8 00000000 */   nop
/* AA9EC 800A9DEC 0C02A45C */  jal        __rmonReadWordAt
/* AA9F0 800A9DF0 8E040010 */   lw        $a0, 0x10($s0)
/* AA9F4 800A9DF4 AE420004 */  sw         $v0, 4($s2)
/* AA9F8 800A9DF8 02512823 */  subu       $a1, $s2, $s1
/* AA9FC 800A9DFC 000560C3 */  sra        $t4, $a1, 3
/* AAA00 800A9E00 01802825 */  or         $a1, $t4, $zero
/* AAA04 800A9E04 3C01000F */  lui        $at, 0xf
/* AAA08 800A9E08 3421FFFF */  ori        $at, $at, 0xffff
/* AAA0C 800A9E0C 24A50010 */  addiu      $a1, $a1, 0x10
/* AAA10 800A9E10 00A16824 */  and        $t5, $a1, $at
/* AAA14 800A9E14 01A02825 */  or         $a1, $t5, $zero
/* AAA18 800A9E18 00057180 */  sll        $t6, $a1, 6
/* AAA1C 800A9E1C 01C02825 */  or         $a1, $t6, $zero
/* AAA20 800A9E20 34AF000D */  ori        $t7, $a1, 0xd
/* AAA24 800A9E24 01E02825 */  or         $a1, $t7, $zero
/* AAA28 800A9E28 0C02A448 */  jal        __rmonWriteWordTo
/* AAA2C 800A9E2C 8E040010 */   lw        $a0, 0x10($s0)
/* AAA30 800A9E30 10000014 */  b          .L800A9E84
/* AAA34 800A9E34 00000000 */   nop
.L800A9E38:
/* AAA38 800A9E38 8E180010 */  lw         $t8, 0x10($s0)
/* AAA3C 800A9E3C 8F190000 */  lw         $t9, ($t8)
/* AAA40 800A9E40 AE590004 */  sw         $t9, 4($s2)
/* AAA44 800A9E44 02514023 */  subu       $t0, $s2, $s1
/* AAA48 800A9E48 000848C3 */  sra        $t1, $t0, 3
/* AAA4C 800A9E4C 3C01000F */  lui        $at, 0xf
/* AAA50 800A9E50 3421FFFF */  ori        $at, $at, 0xffff
/* AAA54 800A9E54 252A0010 */  addiu      $t2, $t1, 0x10
/* AAA58 800A9E58 8E0E0010 */  lw         $t6, 0x10($s0)
/* AAA5C 800A9E5C 01415824 */  and        $t3, $t2, $at
/* AAA60 800A9E60 000B6180 */  sll        $t4, $t3, 6
/* AAA64 800A9E64 358D000D */  ori        $t5, $t4, 0xd
/* AAA68 800A9E68 ADCD0000 */  sw         $t5, ($t6)
/* AAA6C 800A9E6C 8E040010 */  lw         $a0, 0x10($s0)
/* AAA70 800A9E70 0C029BC4 */  jal        osWritebackDCache
/* AAA74 800A9E74 24050004 */   addiu     $a1, $zero, 4
/* AAA78 800A9E78 8E040010 */  lw         $a0, 0x10($s0)
/* AAA7C 800A9E7C 0C029BE4 */  jal        osInvalICache
/* AAA80 800A9E80 24050004 */   addiu     $a1, $zero, 4
.L800A9E84:
/* AAA84 800A9E84 8E0F0010 */  lw         $t7, 0x10($s0)
/* AAA88 800A9E88 AE4F0000 */  sw         $t7, ($s2)
.L800A9E8C:
/* AAA8C 800A9E8C 92180004 */  lbu        $t8, 4($s0)
/* AAA90 800A9E90 A3B8002C */  sb         $t8, 0x2c($sp)
/* AAA94 800A9E94 A7A0002E */  sh         $zero, 0x2e($sp)
/* AAA98 800A9E98 8E19000C */  lw         $t9, 0xc($s0)
/* AAA9C 800A9E9C AFB90034 */  sw         $t9, 0x34($sp)
/* AAAA0 800A9EA0 02514023 */  subu       $t0, $s2, $s1
/* AAAA4 800A9EA4 000848C3 */  sra        $t1, $t0, 3
/* AAAA8 800A9EA8 AFA90038 */  sw         $t1, 0x38($sp)
/* AAAAC 800A9EAC 8E4A0004 */  lw         $t2, 4($s2)
/* AAAB0 800A9EB0 AFAA003C */  sw         $t2, 0x3c($sp)
/* AAAB4 800A9EB4 27A40028 */  addiu      $a0, $sp, 0x28
/* AAAB8 800A9EB8 24050018 */  addiu      $a1, $zero, 0x18
/* AAABC 800A9EBC 0C026833 */  jal        __rmonSendReply
/* AAAC0 800A9EC0 24060001 */   addiu     $a2, $zero, 1
/* AAAC4 800A9EC4 10000003 */  b          .L800A9ED4
/* AAAC8 800A9EC8 00001025 */   or        $v0, $zero, $zero
/* AAACC 800A9ECC 10000001 */  b          .L800A9ED4
/* AAAD0 800A9ED0 00000000 */   nop
.L800A9ED4:
/* AAAD4 800A9ED4 8FBF0024 */  lw         $ra, 0x24($sp)
/* AAAD8 800A9ED8 8FB00014 */  lw         $s0, 0x14($sp)
/* AAADC 800A9EDC 8FB10018 */  lw         $s1, 0x18($sp)
/* AAAE0 800A9EE0 8FB2001C */  lw         $s2, 0x1c($sp)
/* AAAE4 800A9EE4 8FB30020 */  lw         $s3, 0x20($sp)
/* AAAE8 800A9EE8 03E00008 */  jr         $ra
/* AAAEC 800A9EEC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800A9EF0
/* AAAF0 800A9EF0 AFA40000 */  sw         $a0, ($sp)
/* AAAF4 800A9EF4 10000003 */  b          .L800A9F04
/* AAAF8 800A9EF8 2402FFFF */   addiu     $v0, $zero, -1
/* AAAFC 800A9EFC 10000001 */  b          .L800A9F04
/* AAB00 800A9F00 00000000 */   nop
.L800A9F04:
/* AAB04 800A9F04 03E00008 */  jr         $ra
/* AAB08 800A9F08 00000000 */   nop

glabel __rmonClearBreak
/* AAB0C 800A9F0C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* AAB10 800A9F10 AFBF001C */  sw         $ra, 0x1c($sp)
/* AAB14 800A9F14 AFA40048 */  sw         $a0, 0x48($sp)
/* AAB18 800A9F18 AFB10018 */  sw         $s1, 0x18($sp)
/* AAB1C 800A9F1C AFB00014 */  sw         $s0, 0x14($sp)
/* AAB20 800A9F20 8FB00048 */  lw         $s0, 0x48($sp)
/* AAB24 800A9F24 8E0E0010 */  lw         $t6, 0x10($s0)
/* AAB28 800A9F28 29C10010 */  slti       $at, $t6, 0x10
/* AAB2C 800A9F2C 14200003 */  bnez       $at, .L800A9F3C
/* AAB30 800A9F30 00000000 */   nop
/* AAB34 800A9F34 1000004C */  b          .L800AA068
/* AAB38 800A9F38 2402FFFE */   addiu     $v0, $zero, -2
.L800A9F3C:
/* AAB3C 800A9F3C 8FAF0048 */  lw         $t7, 0x48($sp)
/* AAB40 800A9F40 24010001 */  addiu      $at, $zero, 1
/* AAB44 800A9F44 91F80009 */  lbu        $t8, 9($t7)
/* AAB48 800A9F48 1701001A */  bne        $t8, $at, .L800A9FB4
/* AAB4C 800A9F4C 00000000 */   nop
/* AAB50 800A9F50 8E190010 */  lw         $t9, 0x10($s0)
/* AAB54 800A9F54 3C098019 */  lui        $t1, %hi(rmonbrk_bss_0090)
/* AAB58 800A9F58 2529A420 */  addiu      $t1, $t1, %lo(rmonbrk_bss_0090)
/* AAB5C 800A9F5C 001940C0 */  sll        $t0, $t9, 3
/* AAB60 800A9F60 01098821 */  addu       $s1, $t0, $t1
/* AAB64 800A9F64 8E2A0000 */  lw         $t2, ($s1)
/* AAB68 800A9F68 15400003 */  bnez       $t2, .L800A9F78
/* AAB6C 800A9F6C 00000000 */   nop
/* AAB70 800A9F70 1000003D */  b          .L800AA068
/* AAB74 800A9F74 2402FFFE */   addiu     $v0, $zero, -2
.L800A9F78:
/* AAB78 800A9F78 0C02A45C */  jal        __rmonReadWordAt
/* AAB7C 800A9F7C 8E240000 */   lw        $a0, ($s1)
/* AAB80 800A9F80 AFA20024 */  sw         $v0, 0x24($sp)
/* AAB84 800A9F84 8FAB0024 */  lw         $t3, 0x24($sp)
/* AAB88 800A9F88 3C01FC00 */  lui        $at, 0xfc00
/* AAB8C 800A9F8C 3421003F */  ori        $at, $at, 0x3f
/* AAB90 800A9F90 01616024 */  and        $t4, $t3, $at
/* AAB94 800A9F94 2401000D */  addiu      $at, $zero, 0xd
/* AAB98 800A9F98 15810004 */  bne        $t4, $at, .L800A9FAC
/* AAB9C 800A9F9C 00000000 */   nop
/* AABA0 800A9FA0 8E240000 */  lw         $a0, ($s1)
/* AABA4 800A9FA4 0C02A448 */  jal        __rmonWriteWordTo
/* AABA8 800A9FA8 8E250004 */   lw        $a1, 4($s1)
.L800A9FAC:
/* AABAC 800A9FAC 1000001E */  b          .L800AA028
/* AABB0 800A9FB0 00000000 */   nop
.L800A9FB4:
/* AABB4 800A9FB4 8E0D0010 */  lw         $t5, 0x10($s0)
/* AABB8 800A9FB8 3C0F8019 */  lui        $t7, %hi(rmonbrk_bss_0008)
/* AABBC 800A9FBC 25EFA398 */  addiu      $t7, $t7, %lo(rmonbrk_bss_0008)
/* AABC0 800A9FC0 000D70C0 */  sll        $t6, $t5, 3
/* AABC4 800A9FC4 01CF8821 */  addu       $s1, $t6, $t7
/* AABC8 800A9FC8 8E380000 */  lw         $t8, ($s1)
/* AABCC 800A9FCC 17000003 */  bnez       $t8, .L800A9FDC
/* AABD0 800A9FD0 00000000 */   nop
/* AABD4 800A9FD4 10000024 */  b          .L800AA068
/* AABD8 800A9FD8 2402FFFE */   addiu     $v0, $zero, -2
.L800A9FDC:
/* AABDC 800A9FDC 8E390000 */  lw         $t9, ($s1)
/* AABE0 800A9FE0 8F280000 */  lw         $t0, ($t9)
/* AABE4 800A9FE4 AFA80024 */  sw         $t0, 0x24($sp)
/* AABE8 800A9FE8 8FA90024 */  lw         $t1, 0x24($sp)
/* AABEC 800A9FEC 3C01FC00 */  lui        $at, 0xfc00
/* AABF0 800A9FF0 3421003F */  ori        $at, $at, 0x3f
/* AABF4 800A9FF4 01215024 */  and        $t2, $t1, $at
/* AABF8 800A9FF8 2401000D */  addiu      $at, $zero, 0xd
/* AABFC 800A9FFC 1541000A */  bne        $t2, $at, .L800AA028
/* AAC00 800AA000 00000000 */   nop
/* AAC04 800AA004 8E2B0004 */  lw         $t3, 4($s1)
/* AAC08 800AA008 8E2C0000 */  lw         $t4, ($s1)
/* AAC0C 800AA00C AD8B0000 */  sw         $t3, ($t4)
/* AAC10 800AA010 8E240000 */  lw         $a0, ($s1)
/* AAC14 800AA014 0C029BC4 */  jal        osWritebackDCache
/* AAC18 800AA018 24050004 */   addiu     $a1, $zero, 4
/* AAC1C 800AA01C 8E240000 */  lw         $a0, ($s1)
/* AAC20 800AA020 0C029BE4 */  jal        osInvalICache
/* AAC24 800AA024 24050004 */   addiu     $a1, $zero, 4
.L800AA028:
/* AAC28 800AA028 AE200000 */  sw         $zero, ($s1)
/* AAC2C 800AA02C 920D0004 */  lbu        $t5, 4($s0)
/* AAC30 800AA030 A3AD002C */  sb         $t5, 0x2c($sp)
/* AAC34 800AA034 A7A0002E */  sh         $zero, 0x2e($sp)
/* AAC38 800AA038 8E0E000C */  lw         $t6, 0xc($s0)
/* AAC3C 800AA03C AFAE0034 */  sw         $t6, 0x34($sp)
/* AAC40 800AA040 8E0F0010 */  lw         $t7, 0x10($s0)
/* AAC44 800AA044 AFAF0038 */  sw         $t7, 0x38($sp)
/* AAC48 800AA048 27A40028 */  addiu      $a0, $sp, 0x28
/* AAC4C 800AA04C 24050018 */  addiu      $a1, $zero, 0x18
/* AAC50 800AA050 0C026833 */  jal        __rmonSendReply
/* AAC54 800AA054 24060001 */   addiu     $a2, $zero, 1
/* AAC58 800AA058 10000003 */  b          .L800AA068
/* AAC5C 800AA05C 00001025 */   or        $v0, $zero, $zero
/* AAC60 800AA060 10000001 */  b          .L800AA068
/* AAC64 800AA064 00000000 */   nop
.L800AA068:
/* AAC68 800AA068 8FBF001C */  lw         $ra, 0x1c($sp)
/* AAC6C 800AA06C 8FB00014 */  lw         $s0, 0x14($sp)
/* AAC70 800AA070 8FB10018 */  lw         $s1, 0x18($sp)
/* AAC74 800AA074 03E00008 */  jr         $ra
/* AAC78 800AA078 27BD0048 */   addiu     $sp, $sp, 0x48

glabel __rmonGetBranchTarget
/* AAC7C 800AA07C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AAC80 800AA080 AFBF001C */  sw         $ra, 0x1c($sp)
/* AAC84 800AA084 AFA40028 */  sw         $a0, 0x28($sp)
/* AAC88 800AA088 AFA5002C */  sw         $a1, 0x2c($sp)
/* AAC8C 800AA08C AFA60030 */  sw         $a2, 0x30($sp)
/* AAC90 800AA090 AFB00018 */  sw         $s0, 0x18($sp)
/* AAC94 800AA094 8FAE0028 */  lw         $t6, 0x28($sp)
/* AAC98 800AA098 24010001 */  addiu      $at, $zero, 1
/* AAC9C 800AA09C 15C10005 */  bne        $t6, $at, .L800AA0B4
/* AACA0 800AA0A0 00000000 */   nop
/* AACA4 800AA0A4 0C02A45C */  jal        __rmonReadWordAt
/* AACA8 800AA0A8 8FA40030 */   lw        $a0, 0x30($sp)
/* AACAC 800AA0AC 10000004 */  b          .L800AA0C0
/* AACB0 800AA0B0 AFA20024 */   sw        $v0, 0x24($sp)
.L800AA0B4:
/* AACB4 800AA0B4 8FAF0030 */  lw         $t7, 0x30($sp)
/* AACB8 800AA0B8 8DF80000 */  lw         $t8, ($t7)
/* AACBC 800AA0BC AFB80024 */  sw         $t8, 0x24($sp)
.L800AA0C0:
/* AACC0 800AA0C0 8FB90024 */  lw         $t9, 0x24($sp)
/* AACC4 800AA0C4 00194683 */  sra        $t0, $t9, 0x1a
/* AACC8 800AA0C8 3109003F */  andi       $t1, $t0, 0x3f
/* AACCC 800AA0CC 2D210018 */  sltiu      $at, $t1, 0x18
/* AACD0 800AA0D0 10200083 */  beqz       $at, .L800AA2E0
/* AACD4 800AA0D4 00000000 */   nop
/* AACD8 800AA0D8 00094880 */  sll        $t1, $t1, 2
/* AACDC 800AA0DC 3C01800F */  lui        $at, %hi(D_800EDE30)
/* AACE0 800AA0E0 00290821 */  addu       $at, $at, $t1
/* AACE4 800AA0E4 8C29DE30 */  lw         $t1, %lo(D_800EDE30)($at)
/* AACE8 800AA0E8 01200008 */  jr         $t1
/* AACEC 800AA0EC 00000000 */   nop
/* AACF0 800AA0F0 8FAA0024 */  lw         $t2, 0x24($sp)
/* AACF4 800AA0F4 000A5943 */  sra        $t3, $t2, 5
/* AACF8 800AA0F8 316C7FFF */  andi       $t4, $t3, 0x7fff
/* AACFC 800AA0FC 1580000F */  bnez       $t4, .L800AA13C
/* AAD00 800AA100 00000000 */   nop
/* AAD04 800AA104 314D003F */  andi       $t5, $t2, 0x3f
/* AAD08 800AA108 24010008 */  addiu      $at, $zero, 8
/* AAD0C 800AA10C 15A1000B */  bne        $t5, $at, .L800AA13C
/* AAD10 800AA110 00000000 */   nop
/* AAD14 800AA114 8FA60024 */  lw         $a2, 0x24($sp)
/* AAD18 800AA118 8FA40028 */  lw         $a0, 0x28($sp)
/* AAD1C 800AA11C 8FA5002C */  lw         $a1, 0x2c($sp)
/* AAD20 800AA120 00067543 */  sra        $t6, $a2, 0x15
/* AAD24 800AA124 01C03025 */  or         $a2, $t6, $zero
/* AAD28 800AA128 30CF001F */  andi       $t7, $a2, 0x1f
/* AAD2C 800AA12C 0C02D95F */  jal        __rmonGetRegisterContents
/* AAD30 800AA130 01E03025 */   or        $a2, $t7, $zero
/* AAD34 800AA134 1000006E */  b          .L800AA2F0
/* AAD38 800AA138 00000000 */   nop
.L800AA13C:
/* AAD3C 800AA13C 8FB80024 */  lw         $t8, 0x24($sp)
/* AAD40 800AA140 0018CC03 */  sra        $t9, $t8, 0x10
/* AAD44 800AA144 3328001F */  andi       $t0, $t9, 0x1f
/* AAD48 800AA148 1500000F */  bnez       $t0, .L800AA188
/* AAD4C 800AA14C 00000000 */   nop
/* AAD50 800AA150 330907FF */  andi       $t1, $t8, 0x7ff
/* AAD54 800AA154 24010009 */  addiu      $at, $zero, 9
/* AAD58 800AA158 1521000B */  bne        $t1, $at, .L800AA188
/* AAD5C 800AA15C 00000000 */   nop
/* AAD60 800AA160 8FA60024 */  lw         $a2, 0x24($sp)
/* AAD64 800AA164 8FA40028 */  lw         $a0, 0x28($sp)
/* AAD68 800AA168 8FA5002C */  lw         $a1, 0x2c($sp)
/* AAD6C 800AA16C 00065D43 */  sra        $t3, $a2, 0x15
/* AAD70 800AA170 01603025 */  or         $a2, $t3, $zero
/* AAD74 800AA174 30CC001F */  andi       $t4, $a2, 0x1f
/* AAD78 800AA178 0C02D95F */  jal        __rmonGetRegisterContents
/* AAD7C 800AA17C 01803025 */   or        $a2, $t4, $zero
/* AAD80 800AA180 1000005B */  b          .L800AA2F0
/* AAD84 800AA184 00000000 */   nop
.L800AA188:
/* AAD88 800AA188 10000055 */  b          .L800AA2E0
/* AAD8C 800AA18C 00000000 */   nop
/* AAD90 800AA190 8FAA0024 */  lw         $t2, 0x24($sp)
/* AAD94 800AA194 000A6C03 */  sra        $t5, $t2, 0x10
/* AAD98 800AA198 31AE001F */  andi       $t6, $t5, 0x1f
/* AAD9C 800AA19C 2DC10014 */  sltiu      $at, $t6, 0x14
/* AADA0 800AA1A0 1020000E */  beqz       $at, .L800AA1DC
/* AADA4 800AA1A4 00000000 */   nop
/* AADA8 800AA1A8 000E7080 */  sll        $t6, $t6, 2
/* AADAC 800AA1AC 3C01800F */  lui        $at, %hi(D_800EDE90)
/* AADB0 800AA1B0 002E0821 */  addu       $at, $at, $t6
/* AADB4 800AA1B4 8C2EDE90 */  lw         $t6, %lo(D_800EDE90)($at)
/* AADB8 800AA1B8 01C00008 */  jr         $t6
/* AADBC 800AA1BC 00000000 */   nop
/* AADC0 800AA1C0 8FAF0024 */  lw         $t7, 0x24($sp)
/* AADC4 800AA1C4 8FB80030 */  lw         $t8, 0x30($sp)
/* AADC8 800AA1C8 000FCC00 */  sll        $t9, $t7, 0x10
/* AADCC 800AA1CC 00194383 */  sra        $t0, $t9, 0xe
/* AADD0 800AA1D0 01181021 */  addu       $v0, $t0, $t8
/* AADD4 800AA1D4 10000046 */  b          .L800AA2F0
/* AADD8 800AA1D8 24420004 */   addiu     $v0, $v0, 4
.L800AA1DC:
/* AADDC 800AA1DC 10000040 */  b          .L800AA2E0
/* AADE0 800AA1E0 00000000 */   nop
/* AADE4 800AA1E4 8FAA0030 */  lw         $t2, 0x30($sp)
/* AADE8 800AA1E8 8FA90024 */  lw         $t1, 0x24($sp)
/* AADEC 800AA1EC 254D0004 */  addiu      $t5, $t2, 4
/* AADF0 800AA1F0 000D7703 */  sra        $t6, $t5, 0x1c
/* AADF4 800AA1F4 00095980 */  sll        $t3, $t1, 6
/* AADF8 800AA1F8 000B6102 */  srl        $t4, $t3, 4
/* AADFC 800AA1FC 000E7F00 */  sll        $t7, $t6, 0x1c
/* AAE00 800AA200 1000003B */  b          .L800AA2F0
/* AAE04 800AA204 018F1021 */   addu      $v0, $t4, $t7
/* AAE08 800AA208 8FB90024 */  lw         $t9, 0x24($sp)
/* AAE0C 800AA20C 8FA90030 */  lw         $t1, 0x30($sp)
/* AAE10 800AA210 00194400 */  sll        $t0, $t9, 0x10
/* AAE14 800AA214 0008C383 */  sra        $t8, $t0, 0xe
/* AAE18 800AA218 03091021 */  addu       $v0, $t8, $t1
/* AAE1C 800AA21C 10000034 */  b          .L800AA2F0
/* AAE20 800AA220 24420004 */   addiu     $v0, $v0, 4
/* AAE24 800AA224 8FAB0024 */  lw         $t3, 0x24($sp)
/* AAE28 800AA228 000B5403 */  sra        $t2, $t3, 0x10
/* AAE2C 800AA22C 314D001F */  andi       $t5, $t2, 0x1f
/* AAE30 800AA230 15A00008 */  bnez       $t5, .L800AA254
/* AAE34 800AA234 00000000 */   nop
/* AAE38 800AA238 8FAE0024 */  lw         $t6, 0x24($sp)
/* AAE3C 800AA23C 8FB90030 */  lw         $t9, 0x30($sp)
/* AAE40 800AA240 000E6400 */  sll        $t4, $t6, 0x10
/* AAE44 800AA244 000C7B83 */  sra        $t7, $t4, 0xe
/* AAE48 800AA248 01F91021 */  addu       $v0, $t7, $t9
/* AAE4C 800AA24C 10000028 */  b          .L800AA2F0
/* AAE50 800AA250 24420004 */   addiu     $v0, $v0, 4
.L800AA254:
/* AAE54 800AA254 10000022 */  b          .L800AA2E0
/* AAE58 800AA258 00000000 */   nop
/* AAE5C 800AA25C 8FA80024 */  lw         $t0, 0x24($sp)
/* AAE60 800AA260 24010008 */  addiu      $at, $zero, 8
/* AAE64 800AA264 0008C543 */  sra        $t8, $t0, 0x15
/* AAE68 800AA268 3309001F */  andi       $t1, $t8, 0x1f
/* AAE6C 800AA26C 1521001A */  bne        $t1, $at, .L800AA2D8
/* AAE70 800AA270 00000000 */   nop
/* AAE74 800AA274 8FB00024 */  lw         $s0, 0x24($sp)
/* AAE78 800AA278 00105C03 */  sra        $t3, $s0, 0x10
/* AAE7C 800AA27C 01608025 */  or         $s0, $t3, $zero
/* AAE80 800AA280 320A001F */  andi       $t2, $s0, 0x1f
/* AAE84 800AA284 01408025 */  or         $s0, $t2, $zero
/* AAE88 800AA288 1200000C */  beqz       $s0, .L800AA2BC
/* AAE8C 800AA28C 00000000 */   nop
/* AAE90 800AA290 24010001 */  addiu      $at, $zero, 1
/* AAE94 800AA294 12010009 */  beq        $s0, $at, .L800AA2BC
/* AAE98 800AA298 00000000 */   nop
/* AAE9C 800AA29C 24010002 */  addiu      $at, $zero, 2
/* AAEA0 800AA2A0 12010006 */  beq        $s0, $at, .L800AA2BC
/* AAEA4 800AA2A4 00000000 */   nop
/* AAEA8 800AA2A8 24010003 */  addiu      $at, $zero, 3
/* AAEAC 800AA2AC 12010003 */  beq        $s0, $at, .L800AA2BC
/* AAEB0 800AA2B0 00000000 */   nop
/* AAEB4 800AA2B4 10000008 */  b          .L800AA2D8
/* AAEB8 800AA2B8 00000000 */   nop
.L800AA2BC:
/* AAEBC 800AA2BC 8FAD0024 */  lw         $t5, 0x24($sp)
/* AAEC0 800AA2C0 8FAF0030 */  lw         $t7, 0x30($sp)
/* AAEC4 800AA2C4 000D7400 */  sll        $t6, $t5, 0x10
/* AAEC8 800AA2C8 000E6383 */  sra        $t4, $t6, 0xe
/* AAECC 800AA2CC 018F1021 */  addu       $v0, $t4, $t7
/* AAED0 800AA2D0 10000007 */  b          .L800AA2F0
/* AAED4 800AA2D4 24420004 */   addiu     $v0, $v0, 4
.L800AA2D8:
/* AAED8 800AA2D8 10000001 */  b          .L800AA2E0
/* AAEDC 800AA2DC 00000000 */   nop
.L800AA2E0:
/* AAEE0 800AA2E0 10000003 */  b          .L800AA2F0
/* AAEE4 800AA2E4 2402FFFF */   addiu     $v0, $zero, -1
/* AAEE8 800AA2E8 10000001 */  b          .L800AA2F0
/* AAEEC 800AA2EC 00000000 */   nop
.L800AA2F0:
/* AAEF0 800AA2F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* AAEF4 800AA2F4 8FB00018 */  lw         $s0, 0x18($sp)
/* AAEF8 800AA2F8 27BD0028 */  addiu      $sp, $sp, 0x28
/* AAEFC 800AA2FC 03E00008 */  jr         $ra
/* AAF00 800AA300 00000000 */   nop

glabel func_800AA304
/* AAF04 800AA304 27BDFFF8 */  addiu      $sp, $sp, -8
/* AAF08 800AA308 00042E82 */  srl        $a1, $a0, 0x1a
/* AAF0C 800AA30C 30AE003F */  andi       $t6, $a1, 0x3f
/* AAF10 800AA310 01C02825 */  or         $a1, $t6, $zero
/* AAF14 800AA314 10A00009 */  beqz       $a1, .L800AA33C
/* AAF18 800AA318 00000000 */   nop
/* AAF1C 800AA31C 24010002 */  addiu      $at, $zero, 2
/* AAF20 800AA320 10A1001C */  beq        $a1, $at, .L800AA394
/* AAF24 800AA324 00000000 */   nop
/* AAF28 800AA328 24010003 */  addiu      $at, $zero, 3
/* AAF2C 800AA32C 10A10019 */  beq        $a1, $at, .L800AA394
/* AAF30 800AA330 00000000 */   nop
/* AAF34 800AA334 10000019 */  b          .L800AA39C
/* AAF38 800AA338 00000000 */   nop
.L800AA33C:
/* AAF3C 800AA33C 00047942 */  srl        $t7, $a0, 5
/* AAF40 800AA340 31F87FFF */  andi       $t8, $t7, 0x7fff
/* AAF44 800AA344 17000007 */  bnez       $t8, .L800AA364
/* AAF48 800AA348 00000000 */   nop
/* AAF4C 800AA34C 3099003F */  andi       $t9, $a0, 0x3f
/* AAF50 800AA350 24010008 */  addiu      $at, $zero, 8
/* AAF54 800AA354 17210003 */  bne        $t9, $at, .L800AA364
/* AAF58 800AA358 00000000 */   nop
/* AAF5C 800AA35C 10000013 */  b          .L800AA3AC
/* AAF60 800AA360 24020001 */   addiu     $v0, $zero, 1
.L800AA364:
/* AAF64 800AA364 00044402 */  srl        $t0, $a0, 0x10
/* AAF68 800AA368 3109001F */  andi       $t1, $t0, 0x1f
/* AAF6C 800AA36C 15200007 */  bnez       $t1, .L800AA38C
/* AAF70 800AA370 00000000 */   nop
/* AAF74 800AA374 308A07FF */  andi       $t2, $a0, 0x7ff
/* AAF78 800AA378 24010009 */  addiu      $at, $zero, 9
/* AAF7C 800AA37C 15410003 */  bne        $t2, $at, .L800AA38C
/* AAF80 800AA380 00000000 */   nop
/* AAF84 800AA384 10000009 */  b          .L800AA3AC
/* AAF88 800AA388 24020001 */   addiu     $v0, $zero, 1
.L800AA38C:
/* AAF8C 800AA38C 10000003 */  b          .L800AA39C
/* AAF90 800AA390 00000000 */   nop
.L800AA394:
/* AAF94 800AA394 10000005 */  b          .L800AA3AC
/* AAF98 800AA398 24020001 */   addiu     $v0, $zero, 1
.L800AA39C:
/* AAF9C 800AA39C 10000003 */  b          .L800AA3AC
/* AAFA0 800AA3A0 00001025 */   or        $v0, $zero, $zero
/* AAFA4 800AA3A4 10000001 */  b          .L800AA3AC
/* AAFA8 800AA3A8 00000000 */   nop
.L800AA3AC:
/* AAFAC 800AA3AC 03E00008 */  jr         $ra
/* AAFB0 800AA3B0 27BD0008 */   addiu     $sp, $sp, 8

glabel __rmonSetSingleStep
/* AAFB4 800AA3B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AAFB8 800AA3B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* AAFBC 800AA3BC AFA40020 */  sw         $a0, 0x20($sp)
/* AAFC0 800AA3C0 AFA50024 */  sw         $a1, 0x24($sp)
/* AAFC4 800AA3C4 00002025 */  or         $a0, $zero, $zero
/* AAFC8 800AA3C8 8FA50020 */  lw         $a1, 0x20($sp)
/* AAFCC 800AA3CC 0C02A81F */  jal        __rmonGetBranchTarget
/* AAFD0 800AA3D0 8FA60024 */   lw        $a2, 0x24($sp)
/* AAFD4 800AA3D4 AFA2001C */  sw         $v0, 0x1c($sp)
/* AAFD8 800AA3D8 8FAE001C */  lw         $t6, 0x1c($sp)
/* AAFDC 800AA3DC 31CF0003 */  andi       $t7, $t6, 3
/* AAFE0 800AA3E0 11E00007 */  beqz       $t7, .L800AA400
/* AAFE4 800AA3E4 00000000 */   nop
/* AAFE8 800AA3E8 8FA40024 */  lw         $a0, 0x24($sp)
/* AAFEC 800AA3EC 00002825 */  or         $a1, $zero, $zero
/* AAFF0 800AA3F0 0C02A6C0 */  jal        func_800A9B00
/* AAFF4 800AA3F4 24840004 */   addiu     $a0, $a0, 4
/* AAFF8 800AA3F8 1000001C */  b          .L800AA46C
/* AAFFC 800AA3FC 00000000 */   nop
.L800AA400:
/* AB000 800AA400 8FB80024 */  lw         $t8, 0x24($sp)
/* AB004 800AA404 8FB9001C */  lw         $t9, 0x1c($sp)
/* AB008 800AA408 17190005 */  bne        $t8, $t9, .L800AA420
/* AB00C 800AA40C 00000000 */   nop
/* AB010 800AA410 1000001A */  b          .L800AA47C
/* AB014 800AA414 00001025 */   or        $v0, $zero, $zero
/* AB018 800AA418 10000014 */  b          .L800AA46C
/* AB01C 800AA41C 00000000 */   nop
.L800AA420:
/* AB020 800AA420 8FA80024 */  lw         $t0, 0x24($sp)
/* AB024 800AA424 0C02A8C1 */  jal        func_800AA304
/* AB028 800AA428 8D040000 */   lw        $a0, ($t0)
/* AB02C 800AA42C 14400006 */  bnez       $v0, .L800AA448
/* AB030 800AA430 00000000 */   nop
/* AB034 800AA434 8FA90024 */  lw         $t1, 0x24($sp)
/* AB038 800AA438 8FAB001C */  lw         $t3, 0x1c($sp)
/* AB03C 800AA43C 252A0008 */  addiu      $t2, $t1, 8
/* AB040 800AA440 154B0006 */  bne        $t2, $t3, .L800AA45C
/* AB044 800AA444 00000000 */   nop
.L800AA448:
/* AB048 800AA448 8FA4001C */  lw         $a0, 0x1c($sp)
/* AB04C 800AA44C 0C02A6C0 */  jal        func_800A9B00
/* AB050 800AA450 00002825 */   or        $a1, $zero, $zero
/* AB054 800AA454 10000005 */  b          .L800AA46C
/* AB058 800AA458 00000000 */   nop
.L800AA45C:
/* AB05C 800AA45C 8FA50024 */  lw         $a1, 0x24($sp)
/* AB060 800AA460 8FA4001C */  lw         $a0, 0x1c($sp)
/* AB064 800AA464 0C02A6C0 */  jal        func_800A9B00
/* AB068 800AA468 24A50008 */   addiu     $a1, $a1, 8
.L800AA46C:
/* AB06C 800AA46C 10000003 */  b          .L800AA47C
/* AB070 800AA470 24020001 */   addiu     $v0, $zero, 1
/* AB074 800AA474 10000001 */  b          .L800AA47C
/* AB078 800AA478 00000000 */   nop
.L800AA47C:
/* AB07C 800AA47C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB080 800AA480 27BD0020 */  addiu      $sp, $sp, 0x20
/* AB084 800AA484 03E00008 */  jr         $ra
/* AB088 800AA488 00000000 */   nop

glabel __rmonGetExceptionStatus
/* AB08C 800AA48C 240E0001 */  addiu      $t6, $zero, 1
/* AB090 800AA490 AC8E000C */  sw         $t6, 0xc($a0)
/* AB094 800AA494 240F0002 */  addiu      $t7, $zero, 2
/* AB098 800AA498 A48F0010 */  sh         $t7, 0x10($a0)
/* AB09C 800AA49C A4800012 */  sh         $zero, 0x12($a0)
/* AB0A0 800AA4A0 AC800030 */  sw         $zero, 0x30($a0)
/* AB0A4 800AA4A4 24180002 */  addiu      $t8, $zero, 2
/* AB0A8 800AA4A8 A4980024 */  sh         $t8, 0x24($a0)
/* AB0AC 800AA4AC 24190004 */  addiu      $t9, $zero, 4
/* AB0B0 800AA4B0 A4990026 */  sh         $t9, 0x26($a0)
/* AB0B4 800AA4B4 24080004 */  addiu      $t0, $zero, 4
/* AB0B8 800AA4B8 A0880004 */  sb         $t0, 4($a0)
/* AB0BC 800AA4BC A4800006 */  sh         $zero, 6($a0)
/* AB0C0 800AA4C0 2409004C */  addiu      $t1, $zero, 0x4c
/* AB0C4 800AA4C4 AC890000 */  sw         $t1, ($a0)
/* AB0C8 800AA4C8 03E00008 */  jr         $ra
/* AB0CC 800AA4CC 00000000 */   nop

glabel func_800AA4D0
/* AB0D0 800AA4D0 03E00008 */  jr         $ra
/* AB0D4 800AA4D4 00000000 */   nop

glabel rmonSendBreakMessage
/* AB0D8 800AA4D8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* AB0DC 800AA4DC AFBF001C */  sw         $ra, 0x1c($sp)
/* AB0E0 800AA4E0 AFA40070 */  sw         $a0, 0x70($sp)
/* AB0E4 800AA4E4 AFA50074 */  sw         $a1, 0x74($sp)
/* AB0E8 800AA4E8 AFB00018 */  sw         $s0, 0x18($sp)
/* AB0EC 800AA4EC 8FAE0070 */  lw         $t6, 0x70($sp)
/* AB0F0 800AA4F0 11C00003 */  beqz       $t6, .L800AA500
/* AB0F4 800AA4F4 00000000 */   nop
/* AB0F8 800AA4F8 10000002 */  b          .L800AA504
/* AB0FC 800AA4FC 01C08025 */   or        $s0, $t6, $zero
.L800AA500:
/* AB100 800AA500 241003EB */  addiu      $s0, $zero, 0x3eb
.L800AA504:
/* AB104 800AA504 00002025 */  or         $a0, $zero, $zero
/* AB108 800AA508 02002825 */  or         $a1, $s0, $zero
/* AB10C 800AA50C 0C02DA89 */  jal        __rmonGetThreadStatus
/* AB110 800AA510 27A60024 */   addiu     $a2, $sp, 0x24
/* AB114 800AA514 0C02A923 */  jal        __rmonGetExceptionStatus
/* AB118 800AA518 27A40024 */   addiu     $a0, $sp, 0x24
/* AB11C 800AA51C 8FAF0074 */  lw         $t7, 0x74($sp)
/* AB120 800AA520 2401000F */  addiu      $at, $zero, 0xf
/* AB124 800AA524 15E10005 */  bne        $t7, $at, .L800AA53C
/* AB128 800AA528 00000000 */   nop
/* AB12C 800AA52C 24180001 */  addiu      $t8, $zero, 1
/* AB130 800AA530 A7B80048 */  sh         $t8, 0x48($sp)
/* AB134 800AA534 24190002 */  addiu      $t9, $zero, 2
/* AB138 800AA538 A7B9004A */  sh         $t9, 0x4a($sp)
.L800AA53C:
/* AB13C 800AA53C 8FA80074 */  lw         $t0, 0x74($sp)
/* AB140 800AA540 29010010 */  slti       $at, $t0, 0x10
/* AB144 800AA544 10200003 */  beqz       $at, .L800AA554
/* AB148 800AA548 00000000 */   nop
/* AB14C 800AA54C 10000004 */  b          .L800AA560
/* AB150 800AA550 AFA00074 */   sw        $zero, 0x74($sp)
.L800AA554:
/* AB154 800AA554 8FA90074 */  lw         $t1, 0x74($sp)
/* AB158 800AA558 252AFFF0 */  addiu      $t2, $t1, -0x10
/* AB15C 800AA55C AFAA0074 */  sw         $t2, 0x74($sp)
.L800AA560:
/* AB160 800AA560 8FAB0074 */  lw         $t3, 0x74($sp)
/* AB164 800AA564 11600003 */  beqz       $t3, .L800AA574
/* AB168 800AA568 00000000 */   nop
/* AB16C 800AA56C 240C000D */  addiu      $t4, $zero, 0xd
/* AB170 800AA570 AFAC0040 */  sw         $t4, 0x40($sp)
.L800AA574:
/* AB174 800AA574 27A40024 */  addiu      $a0, $sp, 0x24
/* AB178 800AA578 2405004C */  addiu      $a1, $zero, 0x4c
/* AB17C 800AA57C 0C026833 */  jal        __rmonSendReply
/* AB180 800AA580 24060002 */   addiu     $a2, $zero, 2
/* AB184 800AA584 10000001 */  b          .L800AA58C
/* AB188 800AA588 00000000 */   nop
.L800AA58C:
/* AB18C 800AA58C 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB190 800AA590 8FB00018 */  lw         $s0, 0x18($sp)
/* AB194 800AA594 27BD0070 */  addiu      $sp, $sp, 0x70
/* AB198 800AA598 03E00008 */  jr         $ra
/* AB19C 800AA59C 00000000 */   nop

glabel __rmonHitBreak
/* AB1A0 800AA5A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB1A4 800AA5A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB1A8 800AA5A8 0C02A6F2 */  jal        ClearTempBreakpoint
/* AB1AC 800AA5AC 00000000 */   nop
/* AB1B0 800AA5B0 0C02D9E7 */  jal        __rmonStopUserThreads
/* AB1B4 800AA5B4 00002025 */   or        $a0, $zero, $zero
/* AB1B8 800AA5B8 0C02A9A1 */  jal        rmonFindFaultedThreads
/* AB1BC 800AA5BC 00000000 */   nop
/* AB1C0 800AA5C0 10000001 */  b          .L800AA5C8
/* AB1C4 800AA5C4 00000000 */   nop
.L800AA5C8:
/* AB1C8 800AA5C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB1CC 800AA5CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB1D0 800AA5D0 03E00008 */  jr         $ra
/* AB1D4 800AA5D4 00000000 */   nop

glabel __rmonHitSpBreak
/* AB1D8 800AA5D8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* AB1DC 800AA5DC AFBF001C */  sw         $ra, 0x1c($sp)
/* AB1E0 800AA5E0 AFB00018 */  sw         $s0, 0x18($sp)
/* AB1E4 800AA5E4 0C02A45C */  jal        __rmonReadWordAt
/* AB1E8 800AA5E8 3C040408 */   lui       $a0, 0x408
/* AB1EC 800AA5EC 00408025 */  or         $s0, $v0, $zero
/* AB1F0 800AA5F0 2605FFFC */  addiu      $a1, $s0, -4
/* AB1F4 800AA5F4 0C02A448 */  jal        __rmonWriteWordTo
/* AB1F8 800AA5F8 3C040408 */   lui       $a0, 0x408
/* AB1FC 800AA5FC 24040001 */  addiu      $a0, $zero, 1
/* AB200 800AA600 240503E8 */  addiu      $a1, $zero, 0x3e8
/* AB204 800AA604 0C02DA89 */  jal        __rmonGetThreadStatus
/* AB208 800AA608 27A60024 */   addiu     $a2, $sp, 0x24
/* AB20C 800AA60C 0C02A923 */  jal        __rmonGetExceptionStatus
/* AB210 800AA610 27A40024 */   addiu     $a0, $sp, 0x24
/* AB214 800AA614 27A40024 */  addiu      $a0, $sp, 0x24
/* AB218 800AA618 2405004C */  addiu      $a1, $zero, 0x4c
/* AB21C 800AA61C 0C026833 */  jal        __rmonSendReply
/* AB220 800AA620 24060002 */   addiu     $a2, $zero, 2
/* AB224 800AA624 240E0001 */  addiu      $t6, $zero, 1
/* AB228 800AA628 3C018019 */  lui        $at, %hi(__rmonRcpAtBreak)
/* AB22C 800AA62C A02EA390 */  sb         $t6, %lo(__rmonRcpAtBreak)($at)
/* AB230 800AA630 10000001 */  b          .L800AA638
/* AB234 800AA634 00000000 */   nop
.L800AA638:
/* AB238 800AA638 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB23C 800AA63C 8FB00018 */  lw         $s0, 0x18($sp)
/* AB240 800AA640 27BD0070 */  addiu      $sp, $sp, 0x70
/* AB244 800AA644 03E00008 */  jr         $ra
/* AB248 800AA648 00000000 */   nop

glabel __rmonHitCpuFault
/* AB24C 800AA64C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB250 800AA650 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB254 800AA654 0C02D9A0 */  jal        __rmonMaskIdleThreadInts
/* AB258 800AA658 00000000 */   nop
/* AB25C 800AA65C 0C02D9E7 */  jal        __rmonStopUserThreads
/* AB260 800AA660 00002025 */   or        $a0, $zero, $zero
/* AB264 800AA664 0C02A9A1 */  jal        rmonFindFaultedThreads
/* AB268 800AA668 00000000 */   nop
/* AB26C 800AA66C 10000001 */  b          .L800AA674
/* AB270 800AA670 00000000 */   nop
.L800AA674:
/* AB274 800AA674 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB278 800AA678 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB27C 800AA67C 03E00008 */  jr         $ra
/* AB280 800AA680 00000000 */   nop

glabel rmonFindFaultedThreads
/* AB284 800AA684 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AB288 800AA688 AFBF001C */  sw         $ra, 0x1c($sp)
/* AB28C 800AA68C AFB00018 */  sw         $s0, 0x18($sp)
/* AB290 800AA690 0C02DC7C */  jal        __osGetActiveQueue
/* AB294 800AA694 00000000 */   nop
/* AB298 800AA698 00408025 */  or         $s0, $v0, $zero
/* AB29C 800AA69C 8E0E0004 */  lw         $t6, 4($s0)
/* AB2A0 800AA6A0 2401FFFF */  addiu      $at, $zero, -1
/* AB2A4 800AA6A4 11C1002E */  beq        $t6, $at, .L800AA760
/* AB2A8 800AA6A8 00000000 */   nop
.L800AA6AC:
/* AB2AC 800AA6AC 8E0F0004 */  lw         $t7, 4($s0)
/* AB2B0 800AA6B0 19E00026 */  blez       $t7, .L800AA74C
/* AB2B4 800AA6B4 00000000 */   nop
/* AB2B8 800AA6B8 8E180004 */  lw         $t8, 4($s0)
/* AB2BC 800AA6BC 2B010080 */  slti       $at, $t8, 0x80
/* AB2C0 800AA6C0 10200022 */  beqz       $at, .L800AA74C
/* AB2C4 800AA6C4 00000000 */   nop
/* AB2C8 800AA6C8 96190012 */  lhu        $t9, 0x12($s0)
/* AB2CC 800AA6CC 33280001 */  andi       $t0, $t9, 1
/* AB2D0 800AA6D0 11000015 */  beqz       $t0, .L800AA728
/* AB2D4 800AA6D4 00000000 */   nop
/* AB2D8 800AA6D8 8E09011C */  lw         $t1, 0x11c($s0)
/* AB2DC 800AA6DC 8D2A0000 */  lw         $t2, ($t1)
/* AB2E0 800AA6E0 AFAA0020 */  sw         $t2, 0x20($sp)
/* AB2E4 800AA6E4 8FAB0020 */  lw         $t3, 0x20($sp)
/* AB2E8 800AA6E8 3C01FC00 */  lui        $at, 0xfc00
/* AB2EC 800AA6EC 3421003F */  ori        $at, $at, 0x3f
/* AB2F0 800AA6F0 01616024 */  and        $t4, $t3, $at
/* AB2F4 800AA6F4 2401000D */  addiu      $at, $zero, 0xd
/* AB2F8 800AA6F8 15810008 */  bne        $t4, $at, .L800AA71C
/* AB2FC 800AA6FC 00000000 */   nop
/* AB300 800AA700 8FA50020 */  lw         $a1, 0x20($sp)
/* AB304 800AA704 8E040014 */  lw         $a0, 0x14($s0)
/* AB308 800AA708 00056983 */  sra        $t5, $a1, 6
/* AB30C 800AA70C 0C02A936 */  jal        rmonSendBreakMessage
/* AB310 800AA710 01A02825 */   or        $a1, $t5, $zero
/* AB314 800AA714 10000004 */  b          .L800AA728
/* AB318 800AA718 00000000 */   nop
.L800AA71C:
/* AB31C 800AA71C 8E040014 */  lw         $a0, 0x14($s0)
/* AB320 800AA720 0C02A936 */  jal        rmonSendBreakMessage
/* AB324 800AA724 00002825 */   or        $a1, $zero, $zero
.L800AA728:
/* AB328 800AA728 960E0012 */  lhu        $t6, 0x12($s0)
/* AB32C 800AA72C 31CF0002 */  andi       $t7, $t6, 2
/* AB330 800AA730 11E00006 */  beqz       $t7, .L800AA74C
/* AB334 800AA734 00000000 */   nop
/* AB338 800AA738 0C02A384 */  jal        __rmonSendFault
/* AB33C 800AA73C 02002025 */   or        $a0, $s0, $zero
/* AB340 800AA740 8E040014 */  lw         $a0, 0x14($s0)
/* AB344 800AA744 0C02A936 */  jal        rmonSendBreakMessage
/* AB348 800AA748 2405000F */   addiu     $a1, $zero, 0xf
.L800AA74C:
/* AB34C 800AA74C 8E10000C */  lw         $s0, 0xc($s0)
/* AB350 800AA750 8E180004 */  lw         $t8, 4($s0)
/* AB354 800AA754 2401FFFF */  addiu      $at, $zero, -1
/* AB358 800AA758 1701FFD4 */  bne        $t8, $at, .L800AA6AC
/* AB35C 800AA75C 00000000 */   nop
.L800AA760:
/* AB360 800AA760 10000001 */  b          .L800AA768
/* AB364 800AA764 00000000 */   nop
.L800AA768:
/* AB368 800AA768 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB36C 800AA76C 8FB00018 */  lw         $s0, 0x18($sp)
/* AB370 800AA770 27BD0028 */  addiu      $sp, $sp, 0x28
/* AB374 800AA774 03E00008 */  jr         $ra
/* AB378 800AA778 00000000 */   nop
/* AB37C 800AA77C 00000000 */  nop
