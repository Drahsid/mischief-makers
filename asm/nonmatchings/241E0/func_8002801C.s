glabel func_8002801C
/* 28C1C 8002801C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 28C20 80028020 AFBF003C */  sw         $ra, 0x3c($sp)
/* 28C24 80028024 AFBE0038 */  sw         $fp, 0x38($sp)
/* 28C28 80028028 AFB70034 */  sw         $s7, 0x34($sp)
/* 28C2C 8002802C AFB60030 */  sw         $s6, 0x30($sp)
/* 28C30 80028030 AFB5002C */  sw         $s5, 0x2c($sp)
/* 28C34 80028034 AFB40028 */  sw         $s4, 0x28($sp)
/* 28C38 80028038 AFB30024 */  sw         $s3, 0x24($sp)
/* 28C3C 8002803C AFB20020 */  sw         $s2, 0x20($sp)
/* 28C40 80028040 AFB1001C */  sw         $s1, 0x1c($sp)
/* 28C44 80028044 AFB00018 */  sw         $s0, 0x18($sp)
/* 28C48 80028048 AFA40040 */  sw         $a0, 0x40($sp)
/* 28C4C 8002804C AFA60048 */  sw         $a2, 0x48($sp)
/* 28C50 80028050 AFA7004C */  sw         $a3, 0x4c($sp)
/* 28C54 80028054 94A20000 */  lhu        $v0, ($a1)
/* 28C58 80028058 34168FFF */  ori        $s6, $zero, 0x8fff
/* 28C5C 8002805C 00A08025 */  or         $s0, $a1, $zero
/* 28C60 80028060 30D1FFFF */  andi       $s1, $a2, 0xffff
/* 28C64 80028064 3092FFFF */  andi       $s2, $a0, 0xffff
/* 28C68 80028068 12C2002C */  beq        $s6, $v0, .L8002811C
/* 28C6C 8002806C 30F4FFFF */   andi      $s4, $a3, 0xffff
/* 28C70 80028070 3C17800F */  lui        $s7, %hi(gActors)
/* 28C74 80028074 97B50052 */  lhu        $s5, 0x52($sp)
/* 28C78 80028078 26F7F510 */  addiu      $s7, $s7, %lo(gActors)
/* 28C7C 8002807C 241E0198 */  addiu      $fp, $zero, 0x198
.L80028080:
/* 28C80 80028080 1040001F */  beqz       $v0, .L80028100
/* 28C84 80028084 3244FFFF */   andi      $a0, $s2, 0xffff
/* 28C88 80028088 3C13800D */  lui        $s3, %hi(D_800D17FC)
/* 28C8C 8002808C 267317FC */  addiu      $s3, $s3, %lo(D_800D17FC)
/* 28C90 80028090 3225FFFF */  andi       $a1, $s1, 0xffff
/* 28C94 80028094 3286FFFF */  andi       $a2, $s4, 0xffff
/* 28C98 80028098 0C009CDC */  jal        func_80027370
/* 28C9C 8002809C 32A7FFFF */   andi      $a3, $s5, 0xffff
/* 28CA0 800280A0 025E0019 */  multu      $s2, $fp
/* 28CA4 800280A4 26520001 */  addiu      $s2, $s2, 1
/* 28CA8 800280A8 324CFFFF */  andi       $t4, $s2, 0xffff
/* 28CAC 800280AC 01809025 */  or         $s2, $t4, $zero
/* 28CB0 800280B0 02002025 */  or         $a0, $s0, $zero
/* 28CB4 800280B4 00007012 */  mflo       $t6
/* 28CB8 800280B8 02EE1021 */  addu       $v0, $s7, $t6
/* 28CBC 800280BC 944F0094 */  lhu        $t7, 0x94($v0)
/* 28CC0 800280C0 8C590080 */  lw         $t9, 0x80($v0)
/* 28CC4 800280C4 35F80200 */  ori        $t8, $t7, 0x200
/* 28CC8 800280C8 37280008 */  ori        $t0, $t9, 8
/* 28CCC 800280CC A4580094 */  sh         $t8, 0x94($v0)
/* 28CD0 800280D0 AC53018C */  sw         $s3, 0x18c($v0)
/* 28CD4 800280D4 AC480080 */  sw         $t0, 0x80($v0)
/* 28CD8 800280D8 96090000 */  lhu        $t1, ($s0)
/* 28CDC 800280DC 00000000 */  nop
/* 28CE0 800280E0 00095040 */  sll        $t2, $t1, 1
/* 28CE4 800280E4 254B02D2 */  addiu      $t3, $t2, 0x2d2
/* 28CE8 800280E8 0C009EA2 */  jal        func_80027A88
/* 28CEC 800280EC A44B0084 */   sh        $t3, 0x84($v0)
/* 28CF0 800280F0 02228821 */  addu       $s1, $s1, $v0
/* 28CF4 800280F4 322DFFFF */  andi       $t5, $s1, 0xffff
/* 28CF8 800280F8 10000004 */  b          .L8002810C
/* 28CFC 800280FC 01A08825 */   or        $s1, $t5, $zero
.L80028100:
/* 28D00 80028100 2631000E */  addiu      $s1, $s1, 0xe
/* 28D04 80028104 322EFFFF */  andi       $t6, $s1, 0xffff
/* 28D08 80028108 01C08825 */  or         $s1, $t6, $zero
.L8002810C:
/* 28D0C 8002810C 96020002 */  lhu        $v0, 2($s0)
/* 28D10 80028110 26100002 */  addiu      $s0, $s0, 2
/* 28D14 80028114 16C2FFDA */  bne        $s6, $v0, .L80028080
/* 28D18 80028118 00000000 */   nop
.L8002811C:
/* 28D1C 8002811C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 28D20 80028120 02401025 */  or         $v0, $s2, $zero
/* 28D24 80028124 8FB20020 */  lw         $s2, 0x20($sp)
/* 28D28 80028128 8FB00018 */  lw         $s0, 0x18($sp)
/* 28D2C 8002812C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 28D30 80028130 8FB30024 */  lw         $s3, 0x24($sp)
/* 28D34 80028134 8FB40028 */  lw         $s4, 0x28($sp)
/* 28D38 80028138 8FB5002C */  lw         $s5, 0x2c($sp)
/* 28D3C 8002813C 8FB60030 */  lw         $s6, 0x30($sp)
/* 28D40 80028140 8FB70034 */  lw         $s7, 0x34($sp)
/* 28D44 80028144 8FBE0038 */  lw         $fp, 0x38($sp)
/* 28D48 80028148 03E00008 */  jr         $ra
/* 28D4C 8002814C 27BD0040 */   addiu     $sp, $sp, 0x40
