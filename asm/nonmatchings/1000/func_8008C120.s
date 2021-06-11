glabel func_8008C120
/* 8CD20 8008C120 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 8CD24 8008C124 AFB5002C */  sw         $s5, 0x2c($sp)
/* 8CD28 8008C128 3095FFFF */  andi       $s5, $a0, 0xffff
/* 8CD2C 8008C12C 00157080 */  sll        $t6, $s5, 2
/* 8CD30 8008C130 01D57023 */  subu       $t6, $t6, $s5
/* 8CD34 8008C134 000E7080 */  sll        $t6, $t6, 2
/* 8CD38 8008C138 01D57021 */  addu       $t6, $t6, $s5
/* 8CD3C 8008C13C 000E7080 */  sll        $t6, $t6, 2
/* 8CD40 8008C140 01D57023 */  subu       $t6, $t6, $s5
/* 8CD44 8008C144 3C0F800F */  lui        $t7, %hi(gActors)
/* 8CD48 8008C148 AFB30024 */  sw         $s3, 0x24($sp)
/* 8CD4C 8008C14C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8CD50 8008C150 000E70C0 */  sll        $t6, $t6, 3
/* 8CD54 8008C154 01CF9821 */  addu       $s3, $t6, $t7
/* 8CD58 8008C158 8E650178 */  lw         $a1, 0x178($s3)
/* 8CD5C 8008C15C AFB40028 */  sw         $s4, 0x28($sp)
/* 8CD60 8008C160 8E740174 */  lw         $s4, 0x174($s3)
/* 8CD64 8008C164 AFBF003C */  sw         $ra, 0x3c($sp)
/* 8CD68 8008C168 AFBE0038 */  sw         $fp, 0x38($sp)
/* 8CD6C 8008C16C AFB70034 */  sw         $s7, 0x34($sp)
/* 8CD70 8008C170 AFB60030 */  sw         $s6, 0x30($sp)
/* 8CD74 8008C174 AFB20020 */  sw         $s2, 0x20($sp)
/* 8CD78 8008C178 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8CD7C 8008C17C AFB00018 */  sw         $s0, 0x18($sp)
/* 8CD80 8008C180 AFA40068 */  sw         $a0, 0x68($sp)
/* 8CD84 8008C184 A7A00066 */  sh         $zero, 0x66($sp)
/* 8CD88 8008C188 00A03025 */  or         $a2, $a1, $zero
/* 8CD8C 8008C18C 1285004D */  beq        $s4, $a1, .L8008C2C4
/* 8CD90 8008C190 AFA50058 */   sw        $a1, 0x58($sp)
/* 8CD94 8008C194 8E780154 */  lw         $t8, 0x154($s3)
/* 8CD98 8008C198 3C088018 */  lui        $t0, %hi(D_801822A0)
/* 8CD9C 8008C19C 250822A0 */  addiu      $t0, $t0, %lo(D_801822A0)
/* 8CDA0 8008C1A0 3C1E800C */  lui        $fp, %hi(D_800BE558)
/* 8CDA4 8008C1A4 0018CA00 */  sll        $t9, $t8, 8
/* 8CDA8 8008C1A8 03281821 */  addu       $v1, $t9, $t0
/* 8CDAC 8008C1AC 27DEE558 */  addiu      $fp, $fp, %lo(D_800BE558)
/* 8CDB0 8008C1B0 2417FFFF */  addiu      $s7, $zero, -1
/* 8CDB4 8008C1B4 27B20058 */  addiu      $s2, $sp, 0x58
.L8008C1B8:
/* 8CDB8 8008C1B8 0014B080 */  sll        $s6, $s4, 2
/* 8CDBC 8008C1BC 00764821 */  addu       $t1, $v1, $s6
/* 8CDC0 8008C1C0 8D220000 */  lw         $v0, ($t1)
/* 8CDC4 8008C1C4 3C08800C */  lui        $t0, %hi(D_800BE55C)
/* 8CDC8 8008C1C8 12E2003A */  beq        $s7, $v0, .L8008C2B4
/* 8CDCC 8008C1CC 00026402 */   srl       $t4, $v0, 0x10
/* 8CDD0 8008C1D0 87CF0000 */  lh         $t7, ($fp)
/* 8CDD4 8008C1D4 8508E55C */  lh         $t0, %lo(D_800BE55C)($t0)
/* 8CDD8 8008C1D8 018F8023 */  subu       $s0, $t4, $t7
/* 8CDDC 8008C1DC 00488823 */  subu       $s1, $v0, $t0
/* 8CDE0 8008C1E0 0010C400 */  sll        $t8, $s0, 0x10
/* 8CDE4 8008C1E4 00114C00 */  sll        $t1, $s1, 0x10
/* 8CDE8 8008C1E8 00188403 */  sra        $s0, $t8, 0x10
/* 8CDEC 8008C1EC 00098C03 */  sra        $s1, $t1, 0x10
/* 8CDF0 8008C1F0 26260010 */  addiu      $a2, $s1, 0x10
/* 8CDF4 8008C1F4 00102C00 */  sll        $a1, $s0, 0x10
/* 8CDF8 8008C1F8 00055C03 */  sra        $t3, $a1, 0x10
/* 8CDFC 8008C1FC 00066400 */  sll        $t4, $a2, 0x10
/* 8CE00 8008C200 240E0001 */  addiu      $t6, $zero, 1
/* 8CE04 8008C204 A7AE0066 */  sh         $t6, 0x66($sp)
/* 8CE08 8008C208 000C3403 */  sra        $a2, $t4, 0x10
/* 8CE0C 8008C20C 01602825 */  or         $a1, $t3, $zero
/* 8CE10 8008C210 32A4FFFF */  andi       $a0, $s5, 0xffff
/* 8CE14 8008C214 0C02300E */  jal        func_8008C038
/* 8CE18 8008C218 02403825 */   or        $a3, $s2, $zero
/* 8CE1C 8008C21C 00102C00 */  sll        $a1, $s0, 0x10
/* 8CE20 8008C220 2626FFF0 */  addiu      $a2, $s1, -0x10
/* 8CE24 8008C224 0006C400 */  sll        $t8, $a2, 0x10
/* 8CE28 8008C228 00057C03 */  sra        $t7, $a1, 0x10
/* 8CE2C 8008C22C 01E02825 */  or         $a1, $t7, $zero
/* 8CE30 8008C230 00183403 */  sra        $a2, $t8, 0x10
/* 8CE34 8008C234 32A4FFFF */  andi       $a0, $s5, 0xffff
/* 8CE38 8008C238 0C02300E */  jal        func_8008C038
/* 8CE3C 8008C23C 02403825 */   or        $a3, $s2, $zero
/* 8CE40 8008C240 2605FFF0 */  addiu      $a1, $s0, -0x10
/* 8CE44 8008C244 00113400 */  sll        $a2, $s1, 0x10
/* 8CE48 8008C248 00065403 */  sra        $t2, $a2, 0x10
/* 8CE4C 8008C24C 00054400 */  sll        $t0, $a1, 0x10
/* 8CE50 8008C250 00082C03 */  sra        $a1, $t0, 0x10
/* 8CE54 8008C254 01403025 */  or         $a2, $t2, $zero
/* 8CE58 8008C258 32A4FFFF */  andi       $a0, $s5, 0xffff
/* 8CE5C 8008C25C 0C02300E */  jal        func_8008C038
/* 8CE60 8008C260 02403825 */   or        $a3, $s2, $zero
/* 8CE64 8008C264 26050010 */  addiu      $a1, $s0, 0x10
/* 8CE68 8008C268 00113400 */  sll        $a2, $s1, 0x10
/* 8CE6C 8008C26C 00066C03 */  sra        $t5, $a2, 0x10
/* 8CE70 8008C270 00055C00 */  sll        $t3, $a1, 0x10
/* 8CE74 8008C274 000B2C03 */  sra        $a1, $t3, 0x10
/* 8CE78 8008C278 01A03025 */  or         $a2, $t5, $zero
/* 8CE7C 8008C27C 32A4FFFF */  andi       $a0, $s5, 0xffff
/* 8CE80 8008C280 0C02300E */  jal        func_8008C038
/* 8CE84 8008C284 02403825 */   or        $a3, $s2, $zero
/* 8CE88 8008C288 8E6E0154 */  lw         $t6, 0x154($s3)
/* 8CE8C 8008C28C 3C188018 */  lui        $t8, %hi(D_801822A0)
/* 8CE90 8008C290 271822A0 */  addiu      $t8, $t8, %lo(D_801822A0)
/* 8CE94 8008C294 000E7A00 */  sll        $t7, $t6, 8
/* 8CE98 8008C298 01F81821 */  addu       $v1, $t7, $t8
/* 8CE9C 8008C29C 0076C821 */  addu       $t9, $v1, $s6
/* 8CEA0 8008C2A0 AF370000 */  sw         $s7, ($t9)
/* 8CEA4 8008C2A4 8E650178 */  lw         $a1, 0x178($s3)
/* 8CEA8 8008C2A8 A6700088 */  sh         $s0, 0x88($s3)
/* 8CEAC 8008C2AC A671008C */  sh         $s1, 0x8c($s3)
/* 8CEB0 8008C2B0 00A03025 */  or         $a2, $a1, $zero
.L8008C2B4:
/* 8CEB4 8008C2B4 26940001 */  addiu      $s4, $s4, 1
/* 8CEB8 8008C2B8 3288003F */  andi       $t0, $s4, 0x3f
/* 8CEBC 8008C2BC 1506FFBE */  bne        $t0, $a2, .L8008C1B8
/* 8CEC0 8008C2C0 0100A025 */   or        $s4, $t0, $zero
.L8008C2C4:
/* 8CEC4 8008C2C4 8FA90058 */  lw         $t1, 0x58($sp)
/* 8CEC8 8008C2C8 8FBF003C */  lw         $ra, 0x3c($sp)
/* 8CECC 8008C2CC AE650174 */  sw         $a1, 0x174($s3)
/* 8CED0 8008C2D0 AE690178 */  sw         $t1, 0x178($s3)
/* 8CED4 8008C2D4 8FB30024 */  lw         $s3, 0x24($sp)
/* 8CED8 8008C2D8 97A20066 */  lhu        $v0, 0x66($sp)
/* 8CEDC 8008C2DC 8FB00018 */  lw         $s0, 0x18($sp)
/* 8CEE0 8008C2E0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8CEE4 8008C2E4 8FB20020 */  lw         $s2, 0x20($sp)
/* 8CEE8 8008C2E8 8FB40028 */  lw         $s4, 0x28($sp)
/* 8CEEC 8008C2EC 8FB5002C */  lw         $s5, 0x2c($sp)
/* 8CEF0 8008C2F0 8FB60030 */  lw         $s6, 0x30($sp)
/* 8CEF4 8008C2F4 8FB70034 */  lw         $s7, 0x34($sp)
/* 8CEF8 8008C2F8 8FBE0038 */  lw         $fp, 0x38($sp)
/* 8CEFC 8008C2FC 03E00008 */  jr         $ra
/* 8CF00 8008C300 27BD0068 */   addiu     $sp, $sp, 0x68
