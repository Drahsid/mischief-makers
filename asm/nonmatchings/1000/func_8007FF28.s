glabel func_8007FF28
/* 80B28 8007FF28 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 80B2C 8007FF2C AFB5002C */  sw         $s5, 0x2c($sp)
/* 80B30 8007FF30 AFB20020 */  sw         $s2, 0x20($sp)
/* 80B34 8007FF34 00C09025 */  or         $s2, $a2, $zero
/* 80B38 8007FF38 00A0A825 */  or         $s5, $a1, $zero
/* 80B3C 8007FF3C 00803025 */  or         $a2, $a0, $zero
/* 80B40 8007FF40 AFBF003C */  sw         $ra, 0x3c($sp)
/* 80B44 8007FF44 AFA40058 */  sw         $a0, 0x58($sp)
/* 80B48 8007FF48 3C05800F */  lui        $a1, 0x800f
/* 80B4C 8007FF4C AFBE0038 */  sw         $fp, 0x38($sp)
/* 80B50 8007FF50 AFB70034 */  sw         $s7, 0x34($sp)
/* 80B54 8007FF54 AFB60030 */  sw         $s6, 0x30($sp)
/* 80B58 8007FF58 AFB40028 */  sw         $s4, 0x28($sp)
/* 80B5C 8007FF5C AFB30024 */  sw         $s3, 0x24($sp)
/* 80B60 8007FF60 AFB1001C */  sw         $s1, 0x1c($sp)
/* 80B64 8007FF64 AFB00018 */  sw         $s0, 0x18($sp)
/* 80B68 8007FF68 24A5D018 */  addiu      $a1, $a1, -0x2fe8
/* 80B6C 8007FF6C 0C029590 */  jal        func_800A5640
/* 80B70 8007FF70 27A40048 */   addiu     $a0, $sp, 0x48
/* 80B74 8007FF74 3C17800F */  lui        $s7, %hi(D_800EF510)
/* 80B78 8007FF78 26F7F510 */  addiu      $s7, $s7, %lo(D_800EF510)
/* 80B7C 8007FF7C 00008025 */  or         $s0, $zero, $zero
/* 80B80 8007FF80 00009825 */  or         $s3, $zero, $zero
/* 80B84 8007FF84 00008825 */  or         $s1, $zero, $zero
/* 80B88 8007FF88 241E0198 */  addiu      $fp, $zero, 0x198
/* 80B8C 8007FF8C 24160030 */  addiu      $s6, $zero, 0x30
/* 80B90 8007FF90 24140080 */  addiu      $s4, $zero, 0x80
/* 80B94 8007FF94 03B01021 */  addu       $v0, $sp, $s0
.L8007FF98:
/* 80B98 8007FF98 90420048 */  lbu        $v0, 0x48($v0)
/* 80B9C 8007FF9C 00000000 */  nop
/* 80BA0 8007FFA0 16C20035 */  bne        $s6, $v0, .L80080078
/* 80BA4 8007FFA4 00000000 */   nop
/* 80BA8 8007FFA8 16600033 */  bnez       $s3, .L80080078
/* 80BAC 8007FFAC 2A010005 */   slti      $at, $s0, 5
/* 80BB0 8007FFB0 14200031 */  bnez       $at, .L80080078
/* 80BB4 8007FFB4 3C04800E */   lui       $a0, %hi(D_800E11C0)
/* 80BB8 8007FFB8 16200006 */  bnez       $s1, .L8007FFD4
/* 80BBC 8007FFBC 248411C0 */   addiu     $a0, $a0, %lo(D_800E11C0)
/* 80BC0 8007FFC0 00107080 */  sll        $t6, $s0, 2
/* 80BC4 8007FFC4 02AE8823 */  subu       $s1, $s5, $t6
/* 80BC8 8007FFC8 2631FFE0 */  addiu      $s1, $s1, -0x20
/* 80BCC 8007FFCC 00117C00 */  sll        $t7, $s1, 0x10
/* 80BD0 8007FFD0 000F8C03 */  sra        $s1, $t7, 0x10
.L8007FFD4:
/* 80BD4 8007FFD4 0010C8C0 */  sll        $t9, $s0, 3
/* 80BD8 8007FFD8 03312821 */  addu       $a1, $t9, $s1
/* 80BDC 8007FFDC 02403025 */  or         $a2, $s2, $zero
/* 80BE0 8007FFE0 0C00C48F */  jal        func_8003123C
/* 80BE4 8007FFE4 00003825 */   or        $a3, $zero, $zero
/* 80BE8 8007FFE8 00021C00 */  sll        $v1, $v0, 0x10
/* 80BEC 8007FFEC 00034403 */  sra        $t0, $v1, 0x10
/* 80BF0 8007FFF0 11000052 */  beqz       $t0, .L8008013C
/* 80BF4 8007FFF4 00000000 */   nop
/* 80BF8 8007FFF8 011E0019 */  multu      $t0, $fp
/* 80BFC 8007FFFC 00127400 */  sll        $t6, $s2, 0x10
/* 80C00 80080000 3C0F0080 */  lui        $t7, 0x80
/* 80C04 80080004 24180008 */  addiu      $t8, $zero, 8
/* 80C08 80080008 241900B9 */  addiu      $t9, $zero, 0xb9
/* 80C0C 8008000C 24080E00 */  addiu      $t0, $zero, 0xe00
/* 80C10 80080010 00004812 */  mflo       $t1
/* 80C14 80080014 02E91021 */  addu       $v0, $s7, $t1
/* 80C18 80080018 944A0094 */  lhu        $t2, 0x94($v0)
/* 80C1C 8008001C 8C4C0080 */  lw         $t4, 0x80($v0)
/* 80C20 80080020 354B0818 */  ori        $t3, $t2, 0x818
/* 80C24 80080024 A44B0094 */  sh         $t3, 0x94($v0)
/* 80C28 80080028 3C0A8003 */  lui        $t2, %hi(func_80030B84)
/* 80C2C 8008002C 358D0008 */  ori        $t5, $t4, 8
/* 80C30 80080030 2409FF92 */  addiu      $t1, $zero, -0x6e
/* 80C34 80080034 254A0B84 */  addiu      $t2, $t2, %lo(func_80030B84)
/* 80C38 80080038 240B0020 */  addiu      $t3, $zero, 0x20
/* 80C3C 8008003C 240CFFF8 */  addiu      $t4, $zero, -8
/* 80C40 80080040 AC4D0080 */  sw         $t5, 0x80($v0)
/* 80C44 80080044 AC4E008C */  sw         $t6, 0x8c($v0)
/* 80C48 80080048 AC4F0090 */  sw         $t7, 0x90($v0)
/* 80C4C 8008004C AC580188 */  sw         $t8, 0x188($v0)
/* 80C50 80080050 A054009C */  sb         $s4, 0x9c($v0)
/* 80C54 80080054 A054009D */  sb         $s4, 0x9d($v0)
/* 80C58 80080058 A054009E */  sb         $s4, 0x9e($v0)
/* 80C5C 8008005C A059009F */  sb         $t9, 0x9f($v0)
/* 80C60 80080060 AC48015C */  sw         $t0, 0x15c($v0)
/* 80C64 80080064 AC49016C */  sw         $t1, 0x16c($v0)
/* 80C68 80080068 AC4A017C */  sw         $t2, 0x17c($v0)
/* 80C6C 8008006C AC4B0104 */  sw         $t3, 0x104($v0)
/* 80C70 80080070 10000032 */  b          .L8008013C
/* 80C74 80080074 AC4C0108 */   sw        $t4, 0x108($v0)
.L80080078:
/* 80C78 80080078 16C20003 */  bne        $s6, $v0, .L80080088
/* 80C7C 8008007C 0002C080 */   sll       $t8, $v0, 2
/* 80C80 80080080 1260002E */  beqz       $s3, .L8008013C
/* 80C84 80080084 00000000 */   nop
.L80080088:
/* 80C88 80080088 16200006 */  bnez       $s1, .L800800A4
/* 80C8C 8008008C 24130001 */   addiu     $s3, $zero, 1
/* 80C90 80080090 00106880 */  sll        $t5, $s0, 2
/* 80C94 80080094 02AD8823 */  subu       $s1, $s5, $t5
/* 80C98 80080098 2631FFE0 */  addiu      $s1, $s1, -0x20
/* 80C9C 8008009C 00117400 */  sll        $t6, $s1, 0x10
/* 80CA0 800800A0 000E8C03 */  sra        $s1, $t6, 0x10
.L800800A4:
/* 80CA4 800800A4 3C04800E */  lui        $a0, %hi(D_800E1298)
/* 80CA8 800800A8 00982021 */  addu       $a0, $a0, $t8
/* 80CAC 800800AC 8C841298 */  lw         $a0, %lo(D_800E1298)($a0)
/* 80CB0 800800B0 0010C8C0 */  sll        $t9, $s0, 3
/* 80CB4 800800B4 03312821 */  addu       $a1, $t9, $s1
/* 80CB8 800800B8 02403025 */  or         $a2, $s2, $zero
/* 80CBC 800800BC 0C00C48F */  jal        func_8003123C
/* 80CC0 800800C0 00003825 */   or        $a3, $zero, $zero
/* 80CC4 800800C4 00021C00 */  sll        $v1, $v0, 0x10
/* 80CC8 800800C8 00034403 */  sra        $t0, $v1, 0x10
/* 80CCC 800800CC 1100001B */  beqz       $t0, .L8008013C
/* 80CD0 800800D0 00000000 */   nop
/* 80CD4 800800D4 011E0019 */  multu      $t0, $fp
/* 80CD8 800800D8 00127400 */  sll        $t6, $s2, 0x10
/* 80CDC 800800DC 3C0F0080 */  lui        $t7, 0x80
/* 80CE0 800800E0 24180008 */  addiu      $t8, $zero, 8
/* 80CE4 800800E4 24190E00 */  addiu      $t9, $zero, 0xe00
/* 80CE8 800800E8 2408FF92 */  addiu      $t0, $zero, -0x6e
/* 80CEC 800800EC 00004812 */  mflo       $t1
/* 80CF0 800800F0 02E91021 */  addu       $v0, $s7, $t1
/* 80CF4 800800F4 944A0094 */  lhu        $t2, 0x94($v0)
/* 80CF8 800800F8 8C4C0080 */  lw         $t4, 0x80($v0)
/* 80CFC 800800FC 354B0808 */  ori        $t3, $t2, 0x808
/* 80D00 80080100 A44B0094 */  sh         $t3, 0x94($v0)
/* 80D04 80080104 3C098003 */  lui        $t1, %hi(func_80030B84)
/* 80D08 80080108 25290B84 */  addiu      $t1, $t1, %lo(func_80030B84)
/* 80D0C 8008010C 240A0020 */  addiu      $t2, $zero, 0x20
/* 80D10 80080110 240BFFF8 */  addiu      $t3, $zero, -8
/* 80D14 80080114 358D0008 */  ori        $t5, $t4, 8
/* 80D18 80080118 AC4D0080 */  sw         $t5, 0x80($v0)
/* 80D1C 8008011C AC4E008C */  sw         $t6, 0x8c($v0)
/* 80D20 80080120 AC4F0090 */  sw         $t7, 0x90($v0)
/* 80D24 80080124 AC580188 */  sw         $t8, 0x188($v0)
/* 80D28 80080128 AC59015C */  sw         $t9, 0x15c($v0)
/* 80D2C 8008012C AC48016C */  sw         $t0, 0x16c($v0)
/* 80D30 80080130 AC49017C */  sw         $t1, 0x17c($v0)
/* 80D34 80080134 AC4A0104 */  sw         $t2, 0x104($v0)
/* 80D38 80080138 AC4B0108 */  sw         $t3, 0x108($v0)
.L8008013C:
/* 80D3C 8008013C 26100001 */  addiu      $s0, $s0, 1
/* 80D40 80080140 00106400 */  sll        $t4, $s0, 0x10
/* 80D44 80080144 000C8403 */  sra        $s0, $t4, 0x10
/* 80D48 80080148 2A010008 */  slti       $at, $s0, 8
/* 80D4C 8008014C 1420FF92 */  bnez       $at, .L8007FF98
/* 80D50 80080150 03B01021 */   addu      $v0, $sp, $s0
/* 80D54 80080154 8FBF003C */  lw         $ra, 0x3c($sp)
/* 80D58 80080158 8FB00018 */  lw         $s0, 0x18($sp)
/* 80D5C 8008015C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 80D60 80080160 8FB20020 */  lw         $s2, 0x20($sp)
/* 80D64 80080164 8FB30024 */  lw         $s3, 0x24($sp)
/* 80D68 80080168 8FB40028 */  lw         $s4, 0x28($sp)
/* 80D6C 8008016C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 80D70 80080170 8FB60030 */  lw         $s6, 0x30($sp)
/* 80D74 80080174 8FB70034 */  lw         $s7, 0x34($sp)
/* 80D78 80080178 8FBE0038 */  lw         $fp, 0x38($sp)
/* 80D7C 8008017C 03E00008 */  jr         $ra
/* 80D80 80080180 27BD0058 */   addiu     $sp, $sp, 0x58
/* 80D84 80080184 00000000 */  nop
/* 80D88 80080188 00000000 */  nop
/* 80D8C 8008018C 00000000 */  nop
