glabel func_8008CDC4
/* 8D9C4 8008CDC4 AFA40000 */  sw         $a0, ($sp)
/* 8D9C8 8008CDC8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8D9CC 8008CDCC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 8D9D0 8008CDD0 01C02025 */  or         $a0, $t6, $zero
/* 8D9D4 8008CDD4 11E00007 */  beqz       $t7, .L8008CDF4
/* 8D9D8 8008CDD8 AFA50004 */   sw        $a1, 4($sp)
/* 8D9DC 8008CDDC 24050001 */  addiu      $a1, $zero, 1
/* 8D9E0 8008CDE0 11E5001C */  beq        $t7, $a1, .L8008CE54
/* 8D9E4 8008CDE4 00045080 */   sll       $t2, $a0, 2
/* 8D9E8 8008CDE8 24010012 */  addiu      $at, $zero, 0x12
/* 8D9EC 8008CDEC 11E1002F */  beq        $t7, $at, .L8008CEAC
/* 8D9F0 8008CDF0 00047080 */   sll       $t6, $a0, 2
.L8008CDF4:
/* 8D9F4 8008CDF4 0004C080 */  sll        $t8, $a0, 2
/* 8D9F8 8008CDF8 0304C023 */  subu       $t8, $t8, $a0
/* 8D9FC 8008CDFC 0018C080 */  sll        $t8, $t8, 2
/* 8DA00 8008CE00 0304C021 */  addu       $t8, $t8, $a0
/* 8DA04 8008CE04 0018C080 */  sll        $t8, $t8, 2
/* 8DA08 8008CE08 0304C023 */  subu       $t8, $t8, $a0
/* 8DA0C 8008CE0C 3C19800F */  lui        $t9, %hi(gActors)
/* 8DA10 8008CE10 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 8DA14 8008CE14 0018C0C0 */  sll        $t8, $t8, 3
/* 8DA18 8008CE18 03191821 */  addu       $v1, $t8, $t9
/* 8DA1C 8008CE1C 8C620190 */  lw         $v0, 0x190($v1)
/* 8DA20 8008CE20 24050001 */  addiu      $a1, $zero, 1
/* 8DA24 8008CE24 10400005 */  beqz       $v0, .L8008CE3C
/* 8DA28 8008CE28 3C08800D */   lui       $t0, %hi(D_800D431C)
/* 8DA2C 8008CE2C 10450006 */  beq        $v0, $a1, .L8008CE48
/* 8DA30 8008CE30 3C09800D */   lui       $t1, 0x800d
/* 8DA34 8008CE34 10000033 */  b          .L8008CF04
/* 8DA38 8008CE38 3C013F80 */   lui       $at, 0x3f80
.L8008CE3C:
/* 8DA3C 8008CE3C 2508431C */  addiu      $t0, $t0, %lo(D_800D431C)
/* 8DA40 8008CE40 1000002F */  b          .L8008CF00
/* 8DA44 8008CE44 AC68018C */   sw        $t0, 0x18c($v1)
.L8008CE48:
/* 8DA48 8008CE48 25294F90 */  addiu      $t1, $t1, 0x4f90
/* 8DA4C 8008CE4C 1000002C */  b          .L8008CF00
/* 8DA50 8008CE50 AC69018C */   sw        $t1, 0x18c($v1)
.L8008CE54:
/* 8DA54 8008CE54 01445023 */  subu       $t2, $t2, $a0
/* 8DA58 8008CE58 000A5080 */  sll        $t2, $t2, 2
/* 8DA5C 8008CE5C 01445021 */  addu       $t2, $t2, $a0
/* 8DA60 8008CE60 000A5080 */  sll        $t2, $t2, 2
/* 8DA64 8008CE64 01445023 */  subu       $t2, $t2, $a0
/* 8DA68 8008CE68 3C0B800F */  lui        $t3, %hi(gActors)
/* 8DA6C 8008CE6C 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 8DA70 8008CE70 000A50C0 */  sll        $t2, $t2, 3
/* 8DA74 8008CE74 014B1821 */  addu       $v1, $t2, $t3
/* 8DA78 8008CE78 8C620190 */  lw         $v0, 0x190($v1)
/* 8DA7C 8008CE7C 3C0C800D */  lui        $t4, %hi(D_800D5348)
/* 8DA80 8008CE80 10400005 */  beqz       $v0, .L8008CE98
/* 8DA84 8008CE84 258C5348 */   addiu     $t4, $t4, %lo(D_800D5348)
/* 8DA88 8008CE88 10450005 */  beq        $v0, $a1, .L8008CEA0
/* 8DA8C 8008CE8C 3C0D800D */   lui       $t5, %hi(D_800D4F90)
/* 8DA90 8008CE90 1000001C */  b          .L8008CF04
/* 8DA94 8008CE94 3C013F80 */   lui       $at, 0x3f80
.L8008CE98:
/* 8DA98 8008CE98 10000019 */  b          .L8008CF00
/* 8DA9C 8008CE9C AC6C018C */   sw        $t4, 0x18c($v1)
.L8008CEA0:
/* 8DAA0 8008CEA0 25AD4F90 */  addiu      $t5, $t5, %lo(D_800D4F90)
/* 8DAA4 8008CEA4 10000016 */  b          .L8008CF00
/* 8DAA8 8008CEA8 AC6D018C */   sw        $t5, 0x18c($v1)
.L8008CEAC:
/* 8DAAC 8008CEAC 01C47023 */  subu       $t6, $t6, $a0
/* 8DAB0 8008CEB0 000E7080 */  sll        $t6, $t6, 2
/* 8DAB4 8008CEB4 01C47021 */  addu       $t6, $t6, $a0
/* 8DAB8 8008CEB8 000E7080 */  sll        $t6, $t6, 2
/* 8DABC 8008CEBC 01C47023 */  subu       $t6, $t6, $a0
/* 8DAC0 8008CEC0 3C0F800F */  lui        $t7, %hi(gActors)
/* 8DAC4 8008CEC4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8DAC8 8008CEC8 000E70C0 */  sll        $t6, $t6, 3
/* 8DACC 8008CECC 01CF1821 */  addu       $v1, $t6, $t7
/* 8DAD0 8008CED0 8C620190 */  lw         $v0, 0x190($v1)
/* 8DAD4 8008CED4 3C18800D */  lui        $t8, %hi(D_800D47B4)
/* 8DAD8 8008CED8 10400005 */  beqz       $v0, .L8008CEF0
/* 8DADC 8008CEDC 271847B4 */   addiu     $t8, $t8, %lo(D_800D47B4)
/* 8DAE0 8008CEE0 10450005 */  beq        $v0, $a1, .L8008CEF8
/* 8DAE4 8008CEE4 3C19800D */   lui       $t9, %hi(D_800D47B4)
/* 8DAE8 8008CEE8 10000006 */  b          .L8008CF04
/* 8DAEC 8008CEEC 3C013F80 */   lui       $at, 0x3f80
.L8008CEF0:
/* 8DAF0 8008CEF0 10000003 */  b          .L8008CF00
/* 8DAF4 8008CEF4 AC78018C */   sw        $t8, 0x18c($v1)
.L8008CEF8:
/* 8DAF8 8008CEF8 273947B4 */  addiu      $t9, $t9, %lo(D_800D47B4)
/* 8DAFC 8008CEFC AC79018C */  sw         $t9, 0x18c($v1)
.L8008CF00:
/* 8DB00 8008CF00 3C013F80 */  lui        $at, 0x3f80
.L8008CF04:
/* 8DB04 8008CF04 44812000 */  mtc1       $at, $f4
/* 8DB08 8008CF08 03E00008 */  jr         $ra
/* 8DB0C 8008CF0C E4640118 */   swc1      $f4, 0x118($v1)
