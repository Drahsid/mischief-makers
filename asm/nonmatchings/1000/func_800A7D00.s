glabel func_800A7D00
/* A8900 800A7D00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A8904 800A7D04 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8908 800A7D08 240E0002 */  addiu      $t6, $zero, 2
/* A890C 800A7D0C 3C018018 */  lui        $at, %hi(D_801857BC)
/* A8910 800A7D10 A02E57BC */  sb         $t6, %lo(D_801857BC)($at)
/* A8914 800A7D14 3C0FA500 */  lui        $t7, 0xa500
/* A8918 800A7D18 3C018018 */  lui        $at, %hi(D_801857C4)
/* A891C 800A7D1C AC2F57C4 */  sw         $t7, %lo(D_801857C4)($at)
/* A8920 800A7D20 24180003 */  addiu      $t8, $zero, 3
/* A8924 800A7D24 3C018018 */  lui        $at, %hi(D_801857BD)
/* A8928 800A7D28 A03857BD */  sb         $t8, %lo(D_801857BD)($at)
/* A892C 800A7D2C 24190006 */  addiu      $t9, $zero, 6
/* A8930 800A7D30 3C018018 */  lui        $at, %hi(D_801857C0)
/* A8934 800A7D34 A03957C0 */  sb         $t9, %lo(D_801857C0)($at)
/* A8938 800A7D38 24080006 */  addiu      $t0, $zero, 6
/* A893C 800A7D3C 3C018018 */  lui        $at, %hi(D_801857BE)
/* A8940 800A7D40 A02857BE */  sb         $t0, %lo(D_801857BE)($at)
/* A8944 800A7D44 24090002 */  addiu      $t1, $zero, 2
/* A8948 800A7D48 3C018018 */  lui        $at, %hi(D_801857BF)
/* A894C 800A7D4C A02957BF */  sb         $t1, %lo(D_801857BF)($at)
/* A8950 800A7D50 240A0001 */  addiu      $t2, $zero, 1
/* A8954 800A7D54 3C018018 */  lui        $at, %hi(D_801857C1)
/* A8958 800A7D58 A02A57C1 */  sb         $t2, %lo(D_801857C1)($at)
/* A895C 800A7D5C 3C0B8018 */  lui        $t3, %hi(D_801857BD)
/* A8960 800A7D60 916B57BD */  lbu        $t3, %lo(D_801857BD)($t3)
/* A8964 800A7D64 3C0CA460 */  lui        $t4, %hi(D_A4600024)
/* A8968 800A7D68 AD8B0024 */  sw         $t3, %lo(D_A4600024)($t4)
/* A896C 800A7D6C 3C0D8018 */  lui        $t5, %hi(D_801857C0)
/* A8970 800A7D70 91AD57C0 */  lbu        $t5, %lo(D_801857C0)($t5)
/* A8974 800A7D74 3C0EA460 */  lui        $t6, %hi(D_A4600028)
/* A8978 800A7D78 ADCD0028 */  sw         $t5, %lo(D_A4600028)($t6)
/* A897C 800A7D7C 3C0F8018 */  lui        $t7, %hi(D_801857BE)
/* A8980 800A7D80 91EF57BE */  lbu        $t7, %lo(D_801857BE)($t7)
/* A8984 800A7D84 3C18A460 */  lui        $t8, %hi(D_A460002C)
/* A8988 800A7D88 AF0F002C */  sw         $t7, %lo(D_A460002C)($t8)
/* A898C 800A7D8C 3C198018 */  lui        $t9, %hi(D_801857BF)
/* A8990 800A7D90 933957BF */  lbu        $t9, %lo(D_801857BF)($t9)
/* A8994 800A7D94 3C08A460 */  lui        $t0, %hi(D_A4600030)
/* A8998 800A7D98 AD190030 */  sw         $t9, %lo(D_A4600030)($t0)
/* A899C 800A7D9C 3C048018 */  lui        $a0, %hi(D_801857B8)
/* A89A0 800A7DA0 248457B8 */  addiu      $a0, $a0, %lo(D_801857B8)
/* A89A4 800A7DA4 24840014 */  addiu      $a0, $a0, 0x14
/* A89A8 800A7DA8 0C029C54 */  jal        func_800A7150
/* A89AC 800A7DAC 24050060 */   addiu     $a1, $zero, 0x60
/* A89B0 800A7DB0 0C0297A4 */  jal        func_800A5E90
/* A89B4 800A7DB4 00000000 */   nop
/* A89B8 800A7DB8 AFA2001C */  sw         $v0, 0x1c($sp)
/* A89BC 800A7DBC 3C09800F */  lui        $t1, %hi(D_800EA4EC)
/* A89C0 800A7DC0 8D29A4EC */  lw         $t1, %lo(D_800EA4EC)($t1)
/* A89C4 800A7DC4 3C018018 */  lui        $at, %hi(D_801857B8)
/* A89C8 800A7DC8 AC2957B8 */  sw         $t1, %lo(D_801857B8)($at)
/* A89CC 800A7DCC 3C0A8018 */  lui        $t2, %hi(D_801857B8)
/* A89D0 800A7DD0 254A57B8 */  addiu      $t2, $t2, %lo(D_801857B8)
/* A89D4 800A7DD4 3C01800F */  lui        $at, %hi(D_800EA4EC)
/* A89D8 800A7DD8 AC2AA4EC */  sw         $t2, %lo(D_800EA4EC)($at)
/* A89DC 800A7DDC 3C0B8018 */  lui        $t3, %hi(D_801857B8)
/* A89E0 800A7DE0 256B57B8 */  addiu      $t3, $t3, %lo(D_801857B8)
/* A89E4 800A7DE4 3C018018 */  lui        $at, %hi(D_801857B0)
/* A89E8 800A7DE8 AC2B57B0 */  sw         $t3, %lo(D_801857B0)($at)
/* A89EC 800A7DEC 0C0297AC */  jal        func_800A5EB0
/* A89F0 800A7DF0 8FA4001C */   lw        $a0, 0x1c($sp)
/* A89F4 800A7DF4 3C028018 */  lui        $v0, %hi(D_801857B8)
/* A89F8 800A7DF8 10000003 */  b          .L800A7E08
/* A89FC 800A7DFC 244257B8 */   addiu     $v0, $v0, %lo(D_801857B8)
/* A8A00 800A7E00 10000001 */  b          .L800A7E08
/* A8A04 800A7E04 00000000 */   nop
.L800A7E08:
/* A8A08 800A7E08 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8A0C 800A7E0C 27BD0020 */  addiu      $sp, $sp, 0x20
/* A8A10 800A7E10 03E00008 */  jr         $ra
/* A8A14 800A7E14 00000000 */   nop
/* A8A18 800A7E18 00000000 */  nop
/* A8A1C 800A7E1C 00000000 */  nop
