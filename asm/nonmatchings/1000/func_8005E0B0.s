glabel func_8005E0B0
/* 5ECB0 8005E0B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5ECB4 8005E0B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 5ECB8 8005E0B8 00048400 */  sll        $s0, $a0, 0x10
/* 5ECBC 8005E0BC 00107403 */  sra        $t6, $s0, 0x10
/* 5ECC0 8005E0C0 24030002 */  addiu      $v1, $zero, 2
/* 5ECC4 8005E0C4 01C08025 */  or         $s0, $t6, $zero
/* 5ECC8 8005E0C8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5ECCC 8005E0CC AFA40020 */  sw         $a0, 0x20($sp)
/* 5ECD0 8005E0D0 14C30008 */  bne        $a2, $v1, .L8005E0F4
/* 5ECD4 8005E0D4 AFA50024 */   sw        $a1, 0x24($sp)
/* 5ECD8 8005E0D8 000E2400 */  sll        $a0, $t6, 0x10
/* 5ECDC 8005E0DC 00047C03 */  sra        $t7, $a0, 0x10
/* 5ECE0 8005E0E0 87A50026 */  lh         $a1, 0x26($sp)
/* 5ECE4 8005E0E4 0C017B08 */  jal        func_8005EC20
/* 5ECE8 8005E0E8 01E02025 */   or        $a0, $t7, $zero
/* 5ECEC 8005E0EC 10000034 */  b          .L8005E1C0
/* 5ECF0 8005E0F0 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005E0F4:
/* 5ECF4 8005E0F4 1A000031 */  blez       $s0, .L8005E1BC
/* 5ECF8 8005E0F8 2A010081 */   slti      $at, $s0, 0x81
/* 5ECFC 8005E0FC 10200012 */  beqz       $at, .L8005E148
/* 5ED00 8005E100 3C028018 */   lui       $v0, %hi(D_801782E0)
/* 5ED04 8005E104 844282E0 */  lh         $v0, %lo(D_801782E0)($v0)
/* 5ED08 8005E108 24010001 */  addiu      $at, $zero, 1
/* 5ED0C 8005E10C 1041000E */  beq        $v0, $at, .L8005E148
/* 5ED10 8005E110 00000000 */   nop
/* 5ED14 8005E114 10430005 */  beq        $v0, $v1, .L8005E12C
/* 5ED18 8005E118 24010003 */   addiu     $at, $zero, 3
/* 5ED1C 8005E11C 10410007 */  beq        $v0, $at, .L8005E13C
/* 5ED20 8005E120 00000000 */   nop
/* 5ED24 8005E124 10000008 */  b          .L8005E148
/* 5ED28 8005E128 00000000 */   nop
.L8005E12C:
/* 5ED2C 8005E12C 2610007C */  addiu      $s0, $s0, 0x7c
/* 5ED30 8005E130 0010C400 */  sll        $t8, $s0, 0x10
/* 5ED34 8005E134 10000004 */  b          .L8005E148
/* 5ED38 8005E138 00188403 */   sra       $s0, $t8, 0x10
.L8005E13C:
/* 5ED3C 8005E13C 261000CD */  addiu      $s0, $s0, 0xcd
/* 5ED40 8005E140 00104400 */  sll        $t0, $s0, 0x10
/* 5ED44 8005E144 00088403 */  sra        $s0, $t0, 0x10
.L8005E148:
/* 5ED48 8005E148 10C00008 */  beqz       $a2, .L8005E16C
/* 5ED4C 8005E14C 3C078018 */   lui       $a3, 0x8018
/* 5ED50 8005E150 00102400 */  sll        $a0, $s0, 0x10
/* 5ED54 8005E154 00045403 */  sra        $t2, $a0, 0x10
/* 5ED58 8005E158 87A50026 */  lh         $a1, 0x26($sp)
/* 5ED5C 8005E15C 0C017B08 */  jal        func_8005EC20
/* 5ED60 8005E160 01402025 */   or        $a0, $t2, $zero
/* 5ED64 8005E164 10000016 */  b          .L8005E1C0
/* 5ED68 8005E168 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005E16C:
/* 5ED6C 8005E16C 87AB0026 */  lh         $t3, 0x26($sp)
/* 5ED70 8005E170 00103400 */  sll        $a2, $s0, 0x10
/* 5ED74 8005E174 05610004 */  bgez       $t3, .L8005E188
/* 5ED78 8005E178 3164001F */   andi      $a0, $t3, 0x1f
/* 5ED7C 8005E17C 10800002 */  beqz       $a0, .L8005E188
/* 5ED80 8005E180 00000000 */   nop
/* 5ED84 8005E184 2484FFE0 */  addiu      $a0, $a0, -0x20
.L8005E188:
/* 5ED88 8005E188 00046400 */  sll        $t4, $a0, 0x10
/* 5ED8C 8005E18C 000C6C03 */  sra        $t5, $t4, 0x10
/* 5ED90 8005E190 0006C403 */  sra        $t8, $a2, 0x10
/* 5ED94 8005E194 84E782E2 */  lh         $a3, -0x7d1e($a3)
/* 5ED98 8005E198 03003025 */  or         $a2, $t8, $zero
/* 5ED9C 8005E19C 01A02025 */  or         $a0, $t5, $zero
/* 5EDA0 8005E1A0 05610003 */  bgez       $t3, .L8005E1B0
/* 5EDA4 8005E1A4 000B2943 */   sra       $a1, $t3, 5
/* 5EDA8 8005E1A8 2561001F */  addiu      $at, $t3, 0x1f
/* 5EDAC 8005E1AC 00012943 */  sra        $a1, $at, 5
.L8005E1B0:
/* 5EDB0 8005E1B0 00057400 */  sll        $t6, $a1, 0x10
/* 5EDB4 8005E1B4 0C020C74 */  jal        func_800831D0
/* 5EDB8 8005E1B8 000E2C03 */   sra       $a1, $t6, 0x10
.L8005E1BC:
/* 5EDBC 8005E1BC 8FBF001C */  lw         $ra, 0x1c($sp)
.L8005E1C0:
/* 5EDC0 8005E1C0 8FB00018 */  lw         $s0, 0x18($sp)
/* 5EDC4 8005E1C4 03E00008 */  jr         $ra
/* 5EDC8 8005E1C8 27BD0020 */   addiu     $sp, $sp, 0x20
