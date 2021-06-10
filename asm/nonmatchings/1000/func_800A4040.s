glabel func_800A4040
/* A4C40 800A4040 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4C44 800A4044 8C8E0000 */  lw         $t6, ($a0)
/* A4C48 800A4048 AFAE0014 */  sw         $t6, 0x14($sp)
/* A4C4C 800A404C 8FAF0014 */  lw         $t7, 0x14($sp)
/* A4C50 800A4050 25F80008 */  addiu      $t8, $t7, 8
/* A4C54 800A4054 AFB80014 */  sw         $t8, 0x14($sp)
/* A4C58 800A4058 AFAF0010 */  sw         $t7, 0x10($sp)
/* A4C5C 800A405C 8FA80010 */  lw         $t0, 0x10($sp)
/* A4C60 800A4060 3C19BB00 */  lui        $t9, 0xbb00
/* A4C64 800A4064 AD190000 */  sw         $t9, ($t0)
/* A4C68 800A4068 8FAA0010 */  lw         $t2, 0x10($sp)
/* A4C6C 800A406C 3C098000 */  lui        $t1, 0x8000
/* A4C70 800A4070 35298000 */  ori        $t1, $t1, 0x8000
/* A4C74 800A4074 AD490004 */  sw         $t1, 4($t2)
/* A4C78 800A4078 8FAB0014 */  lw         $t3, 0x14($sp)
/* A4C7C 800A407C 256C0008 */  addiu      $t4, $t3, 8
/* A4C80 800A4080 AFAC0014 */  sw         $t4, 0x14($sp)
/* A4C84 800A4084 AFAB000C */  sw         $t3, 0xc($sp)
/* A4C88 800A4088 8FAE000C */  lw         $t6, 0xc($sp)
/* A4C8C 800A408C 3C0DFCFF */  lui        $t5, 0xfcff
/* A4C90 800A4090 35ADFFFF */  ori        $t5, $t5, 0xffff
/* A4C94 800A4094 ADCD0000 */  sw         $t5, ($t6)
/* A4C98 800A4098 8FB8000C */  lw         $t8, 0xc($sp)
/* A4C9C 800A409C 3C0FFFFE */  lui        $t7, 0xfffe
/* A4CA0 800A40A0 35EF793C */  ori        $t7, $t7, 0x793c
/* A4CA4 800A40A4 AF0F0004 */  sw         $t7, 4($t8)
/* A4CA8 800A40A8 3C19800F */  lui        $t9, %hi(D_800EA544)
/* A4CAC 800A40AC 9739A544 */  lhu        $t9, %lo(D_800EA544)($t9)
/* A4CB0 800A40B0 33280001 */  andi       $t0, $t9, 1
/* A4CB4 800A40B4 1100000D */  beqz       $t0, .L800A40EC
/* A4CB8 800A40B8 00000000 */   nop
/* A4CBC 800A40BC 8FA90014 */  lw         $t1, 0x14($sp)
/* A4CC0 800A40C0 252A0008 */  addiu      $t2, $t1, 8
/* A4CC4 800A40C4 AFAA0014 */  sw         $t2, 0x14($sp)
/* A4CC8 800A40C8 AFA90008 */  sw         $t1, 8($sp)
/* A4CCC 800A40CC 8FAC0008 */  lw         $t4, 8($sp)
/* A4CD0 800A40D0 3C0BB900 */  lui        $t3, 0xb900
/* A4CD4 800A40D4 356B031D */  ori        $t3, $t3, 0x31d
/* A4CD8 800A40D8 AD8B0000 */  sw         $t3, ($t4)
/* A4CDC 800A40DC 8FAE0008 */  lw         $t6, 8($sp)
/* A4CE0 800A40E0 3C0D0F0A */  lui        $t5, 0xf0a
/* A4CE4 800A40E4 35AD4000 */  ori        $t5, $t5, 0x4000
/* A4CE8 800A40E8 ADCD0004 */  sw         $t5, 4($t6)
.L800A40EC:
/* A4CEC 800A40EC 3C0F800F */  lui        $t7, %hi(D_800EA544)
/* A4CF0 800A40F0 95EFA544 */  lhu        $t7, %lo(D_800EA544)($t7)
/* A4CF4 800A40F4 31F80002 */  andi       $t8, $t7, 2
/* A4CF8 800A40F8 1300000B */  beqz       $t8, .L800A4128
/* A4CFC 800A40FC 00000000 */   nop
/* A4D00 800A4100 8FB90014 */  lw         $t9, 0x14($sp)
/* A4D04 800A4104 27280008 */  addiu      $t0, $t9, 8
/* A4D08 800A4108 AFA80014 */  sw         $t0, 0x14($sp)
/* A4D0C 800A410C AFB90004 */  sw         $t9, 4($sp)
/* A4D10 800A4110 8FAA0004 */  lw         $t2, 4($sp)
/* A4D14 800A4114 3C09B900 */  lui        $t1, 0xb900
/* A4D18 800A4118 35290002 */  ori        $t1, $t1, 2
/* A4D1C 800A411C AD490000 */  sw         $t1, ($t2)
/* A4D20 800A4120 8FAB0004 */  lw         $t3, 4($sp)
/* A4D24 800A4124 AD600004 */  sw         $zero, 4($t3)
.L800A4128:
/* A4D28 800A4128 8FAC0014 */  lw         $t4, 0x14($sp)
/* A4D2C 800A412C 258D0008 */  addiu      $t5, $t4, 8
/* A4D30 800A4130 AFAD0014 */  sw         $t5, 0x14($sp)
/* A4D34 800A4134 AFAC0000 */  sw         $t4, ($sp)
/* A4D38 800A4138 8FAF0000 */  lw         $t7, ($sp)
/* A4D3C 800A413C 3C0EB800 */  lui        $t6, 0xb800
/* A4D40 800A4140 ADEE0000 */  sw         $t6, ($t7)
/* A4D44 800A4144 8FB80000 */  lw         $t8, ($sp)
/* A4D48 800A4148 AF000004 */  sw         $zero, 4($t8)
/* A4D4C 800A414C 8FB90014 */  lw         $t9, 0x14($sp)
/* A4D50 800A4150 AC990000 */  sw         $t9, ($a0)
/* A4D54 800A4154 10000001 */  b          .L800A415C
/* A4D58 800A4158 00000000 */   nop
.L800A415C:
/* A4D5C 800A415C 03E00008 */  jr         $ra
/* A4D60 800A4160 27BD0018 */   addiu     $sp, $sp, 0x18
/* A4D64 800A4164 00000000 */  nop
/* A4D68 800A4168 00000000 */  nop
/* A4D6C 800A416C 00000000 */  nop
