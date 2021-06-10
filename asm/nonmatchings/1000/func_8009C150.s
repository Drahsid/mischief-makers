glabel func_8009C150
/* 9CD50 8009C150 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9CD54 8009C154 AFBF002C */  sw         $ra, 0x2c($sp)
/* 9CD58 8009C158 AFA40040 */  sw         $a0, 0x40($sp)
/* 9CD5C 8009C15C AFB10028 */  sw         $s1, 0x28($sp)
/* 9CD60 8009C160 AFB00024 */  sw         $s0, 0x24($sp)
/* 9CD64 8009C164 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 9CD68 8009C168 3C0E800F */  lui        $t6, %hi(D_800E9778)
/* 9CD6C 8009C16C 8DCE9778 */  lw         $t6, %lo(D_800E9778)($t6)
/* 9CD70 8009C170 3C0102F5 */  lui        $at, 0x2f5
/* 9CD74 8009C174 3421B2D2 */  ori        $at, $at, 0xb2d2
/* 9CD78 8009C178 15C10016 */  bne        $t6, $at, .L8009C1D4
/* 9CD7C 8009C17C 00000000 */   nop
/* 9CD80 8009C180 8FAF0040 */  lw         $t7, 0x40($sp)
/* 9CD84 8009C184 2DE10BEA */  sltiu      $at, $t7, 0xbea
/* 9CD88 8009C188 14200006 */  bnez       $at, .L8009C1A4
/* 9CD8C 8009C18C 00000000 */   nop
/* 9CD90 8009C190 3C010005 */  lui        $at, 5
/* 9CD94 8009C194 3421BCC1 */  ori        $at, $at, 0xbcc1
/* 9CD98 8009C198 01E1082B */  sltu       $at, $t7, $at
/* 9CD9C 8009C19C 1420000B */  bnez       $at, .L8009C1CC
/* 9CDA0 8009C1A0 00000000 */   nop
.L8009C1A4:
/* 9CDA4 8009C1A4 8FB80040 */  lw         $t8, 0x40($sp)
/* 9CDA8 8009C1A8 3C070005 */  lui        $a3, 5
/* 9CDAC 8009C1AC 34E7BCC0 */  ori        $a3, $a3, 0xbcc0
/* 9CDB0 8009C1B0 2404000E */  addiu      $a0, $zero, 0xe
/* 9CDB4 8009C1B4 24050003 */  addiu      $a1, $zero, 3
/* 9CDB8 8009C1B8 24060BEA */  addiu      $a2, $zero, 0xbea
/* 9CDBC 8009C1BC 0C0297B4 */  jal        func_800A5ED0
/* 9CDC0 8009C1C0 AFB80010 */   sw        $t8, 0x10($sp)
/* 9CDC4 8009C1C4 1000008F */  b          .L8009C404
/* 9CDC8 8009C1C8 2402FFFF */   addiu     $v0, $zero, -1
.L8009C1CC:
/* 9CDCC 8009C1CC 1000002F */  b          .L8009C28C
/* 9CDD0 8009C1D0 00000000 */   nop
.L8009C1D4:
/* 9CDD4 8009C1D4 3C19800F */  lui        $t9, %hi(D_800E9778)
/* 9CDD8 8009C1D8 8F399778 */  lw         $t9, %lo(D_800E9778)($t9)
/* 9CDDC 8009C1DC 3C0102E6 */  lui        $at, 0x2e6
/* 9CDE0 8009C1E0 3421025C */  ori        $at, $at, 0x25c
/* 9CDE4 8009C1E4 17210016 */  bne        $t9, $at, .L8009C240
/* 9CDE8 8009C1E8 00000000 */   nop
/* 9CDEC 8009C1EC 8FA80040 */  lw         $t0, 0x40($sp)
/* 9CDF0 8009C1F0 2D010BB8 */  sltiu      $at, $t0, 0xbb8
/* 9CDF4 8009C1F4 14200006 */  bnez       $at, .L8009C210
/* 9CDF8 8009C1F8 00000000 */   nop
/* 9CDFC 8009C1FC 3C010005 */  lui        $at, 5
/* 9CE00 8009C200 34219D81 */  ori        $at, $at, 0x9d81
/* 9CE04 8009C204 0101082B */  sltu       $at, $t0, $at
/* 9CE08 8009C208 1420000B */  bnez       $at, .L8009C238
/* 9CE0C 8009C20C 00000000 */   nop
.L8009C210:
/* 9CE10 8009C210 8FA90040 */  lw         $t1, 0x40($sp)
/* 9CE14 8009C214 3C070005 */  lui        $a3, 5
/* 9CE18 8009C218 34E79D80 */  ori        $a3, $a3, 0x9d80
/* 9CE1C 8009C21C 2404000E */  addiu      $a0, $zero, 0xe
/* 9CE20 8009C220 24050003 */  addiu      $a1, $zero, 3
/* 9CE24 8009C224 24060BB8 */  addiu      $a2, $zero, 0xbb8
/* 9CE28 8009C228 0C0297B4 */  jal        func_800A5ED0
/* 9CE2C 8009C22C AFA90010 */   sw        $t1, 0x10($sp)
/* 9CE30 8009C230 10000074 */  b          .L8009C404
/* 9CE34 8009C234 2402FFFF */   addiu     $v0, $zero, -1
.L8009C238:
/* 9CE38 8009C238 10000014 */  b          .L8009C28C
/* 9CE3C 8009C23C 00000000 */   nop
.L8009C240:
/* 9CE40 8009C240 8FAA0040 */  lw         $t2, 0x40($sp)
/* 9CE44 8009C244 2D410BB8 */  sltiu      $at, $t2, 0xbb8
/* 9CE48 8009C248 14200006 */  bnez       $at, .L8009C264
/* 9CE4C 8009C24C 00000000 */   nop
/* 9CE50 8009C250 3C010005 */  lui        $at, 5
/* 9CE54 8009C254 34219D81 */  ori        $at, $at, 0x9d81
/* 9CE58 8009C258 0141082B */  sltu       $at, $t2, $at
/* 9CE5C 8009C25C 1420000B */  bnez       $at, .L8009C28C
/* 9CE60 8009C260 00000000 */   nop
.L8009C264:
/* 9CE64 8009C264 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9CE68 8009C268 3C070005 */  lui        $a3, 5
/* 9CE6C 8009C26C 34E79D80 */  ori        $a3, $a3, 0x9d80
/* 9CE70 8009C270 2404000E */  addiu      $a0, $zero, 0xe
/* 9CE74 8009C274 24050003 */  addiu      $a1, $zero, 3
/* 9CE78 8009C278 24060BB8 */  addiu      $a2, $zero, 0xbb8
/* 9CE7C 8009C27C 0C0297B4 */  jal        func_800A5ED0
/* 9CE80 8009C280 AFAB0010 */   sw        $t3, 0x10($sp)
/* 9CE84 8009C284 1000005F */  b          .L8009C404
/* 9CE88 8009C288 2402FFFF */   addiu     $v0, $zero, -1
.L8009C28C:
/* 9CE8C 8009C28C 3C0C800F */  lui        $t4, %hi(D_800E9778)
/* 9CE90 8009C290 8D8C9778 */  lw         $t4, %lo(D_800E9778)($t4)
/* 9CE94 8009C294 8FAD0040 */  lw         $t5, 0x40($sp)
/* 9CE98 8009C298 448C2000 */  mtc1       $t4, $f4
/* 9CE9C 8009C29C 448D4000 */  mtc1       $t5, $f8
/* 9CEA0 8009C2A0 468021A0 */  cvt.s.w    $f6, $f4
/* 9CEA4 8009C2A4 05A10005 */  bgez       $t5, .L8009C2BC
/* 9CEA8 8009C2A8 468042A0 */   cvt.s.w   $f10, $f8
/* 9CEAC 8009C2AC 3C014F80 */  lui        $at, 0x4f80
/* 9CEB0 8009C2B0 44818000 */  mtc1       $at, $f16
/* 9CEB4 8009C2B4 00000000 */  nop
/* 9CEB8 8009C2B8 46105280 */  add.s      $f10, $f10, $f16
.L8009C2BC:
/* 9CEBC 8009C2BC 460A3483 */  div.s      $f18, $f6, $f10
/* 9CEC0 8009C2C0 3C013F00 */  lui        $at, 0x3f00
/* 9CEC4 8009C2C4 44812000 */  mtc1       $at, $f4
/* 9CEC8 8009C2C8 00000000 */  nop
/* 9CECC 8009C2CC 46049500 */  add.s      $f20, $f18, $f4
/* 9CED0 8009C2D0 444EF800 */  cfc1       $t6, $31
/* 9CED4 8009C2D4 24100001 */  addiu      $s0, $zero, 1
/* 9CED8 8009C2D8 44D0F800 */  ctc1       $s0, $31
/* 9CEDC 8009C2DC 00000000 */  nop
/* 9CEE0 8009C2E0 4600A224 */  cvt.w.s    $f8, $f20
/* 9CEE4 8009C2E4 4450F800 */  cfc1       $s0, $31
/* 9CEE8 8009C2E8 00000000 */  nop
/* 9CEEC 8009C2EC 32010004 */  andi       $at, $s0, 4
/* 9CEF0 8009C2F0 32100078 */  andi       $s0, $s0, 0x78
/* 9CEF4 8009C2F4 12000014 */  beqz       $s0, .L8009C348
/* 9CEF8 8009C2F8 00000000 */   nop
/* 9CEFC 8009C2FC 3C014F00 */  lui        $at, 0x4f00
/* 9CF00 8009C300 44814000 */  mtc1       $at, $f8
/* 9CF04 8009C304 24100001 */  addiu      $s0, $zero, 1
/* 9CF08 8009C308 4608A201 */  sub.s      $f8, $f20, $f8
/* 9CF0C 8009C30C 44D0F800 */  ctc1       $s0, $31
/* 9CF10 8009C310 00000000 */  nop
/* 9CF14 8009C314 46004224 */  cvt.w.s    $f8, $f8
/* 9CF18 8009C318 4450F800 */  cfc1       $s0, $31
/* 9CF1C 8009C31C 00000000 */  nop
/* 9CF20 8009C320 32010004 */  andi       $at, $s0, 4
/* 9CF24 8009C324 32100078 */  andi       $s0, $s0, 0x78
/* 9CF28 8009C328 16000005 */  bnez       $s0, .L8009C340
/* 9CF2C 8009C32C 00000000 */   nop
/* 9CF30 8009C330 44104000 */  mfc1       $s0, $f8
/* 9CF34 8009C334 3C018000 */  lui        $at, 0x8000
/* 9CF38 8009C338 10000007 */  b          .L8009C358
/* 9CF3C 8009C33C 02018025 */   or        $s0, $s0, $at
.L8009C340:
/* 9CF40 8009C340 10000005 */  b          .L8009C358
/* 9CF44 8009C344 2410FFFF */   addiu     $s0, $zero, -1
.L8009C348:
/* 9CF48 8009C348 44104000 */  mfc1       $s0, $f8
/* 9CF4C 8009C34C 00000000 */  nop
/* 9CF50 8009C350 0600FFFB */  bltz       $s0, .L8009C340
/* 9CF54 8009C354 00000000 */   nop
.L8009C358:
/* 9CF58 8009C358 44CEF800 */  ctc1       $t6, $31
/* 9CF5C 8009C35C 00000000 */  nop
/* 9CF60 8009C360 00000000 */  nop
/* 9CF64 8009C364 2E010084 */  sltiu      $at, $s0, 0x84
/* 9CF68 8009C368 10200003 */  beqz       $at, .L8009C378
/* 9CF6C 8009C36C 00000000 */   nop
/* 9CF70 8009C370 10000024 */  b          .L8009C404
/* 9CF74 8009C374 2402FFFF */   addiu     $v0, $zero, -1
.L8009C378:
/* 9CF78 8009C378 24010042 */  addiu      $at, $zero, 0x42
/* 9CF7C 8009C37C 0201001B */  divu       $zero, $s0, $at
/* 9CF80 8009C380 00008812 */  mflo       $s1
/* 9CF84 8009C384 322F00FF */  andi       $t7, $s1, 0xff
/* 9CF88 8009C388 01E08825 */  or         $s1, $t7, $zero
/* 9CF8C 8009C38C 2A210011 */  slti       $at, $s1, 0x11
/* 9CF90 8009C390 14200002 */  bnez       $at, .L8009C39C
/* 9CF94 8009C394 00000000 */   nop
/* 9CF98 8009C398 24110010 */  addiu      $s1, $zero, 0x10
.L8009C39C:
/* 9CF9C 8009C39C 2618FFFF */  addiu      $t8, $s0, -1
/* 9CFA0 8009C3A0 3C19A450 */  lui        $t9, %hi(D_A4500010)
/* 9CFA4 8009C3A4 AF380010 */  sw         $t8, %lo(D_A4500010)($t9)
/* 9CFA8 8009C3A8 2628FFFF */  addiu      $t0, $s1, -1
/* 9CFAC 8009C3AC 3C09A450 */  lui        $t1, %hi(D_A4500014)
/* 9CFB0 8009C3B0 AD280014 */  sw         $t0, %lo(D_A4500014)($t1)
/* 9CFB4 8009C3B4 240A0001 */  addiu      $t2, $zero, 1
/* 9CFB8 8009C3B8 3C0BA450 */  lui        $t3, %hi(D_A4500008)
/* 9CFBC 8009C3BC AD6A0008 */  sw         $t2, %lo(D_A4500008)($t3)
/* 9CFC0 8009C3C0 3C0C800F */  lui        $t4, %hi(D_800E9778)
/* 9CFC4 8009C3C4 8D8C9778 */  lw         $t4, %lo(D_800E9778)($t4)
/* 9CFC8 8009C3C8 0190001A */  div        $zero, $t4, $s0
/* 9CFCC 8009C3CC 00001012 */  mflo       $v0
/* 9CFD0 8009C3D0 16000002 */  bnez       $s0, .L8009C3DC
/* 9CFD4 8009C3D4 00000000 */   nop
/* 9CFD8 8009C3D8 0007000D */  break      7
.L8009C3DC:
/* 9CFDC 8009C3DC 2401FFFF */   addiu     $at, $zero, -1
/* 9CFE0 8009C3E0 16010004 */  bne        $s0, $at, .L8009C3F4
/* 9CFE4 8009C3E4 3C018000 */   lui       $at, 0x8000
/* 9CFE8 8009C3E8 15810002 */  bne        $t4, $at, .L8009C3F4
/* 9CFEC 8009C3EC 00000000 */   nop
/* 9CFF0 8009C3F0 0006000D */  break      6
.L8009C3F4:
/* 9CFF4 8009C3F4 10000003 */   b         .L8009C404
/* 9CFF8 8009C3F8 00000000 */   nop
/* 9CFFC 8009C3FC 10000001 */  b          .L8009C404
/* 9D000 8009C400 00000000 */   nop
.L8009C404:
/* 9D004 8009C404 8FBF002C */  lw         $ra, 0x2c($sp)
/* 9D008 8009C408 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 9D00C 8009C40C 8FB00024 */  lw         $s0, 0x24($sp)
/* 9D010 8009C410 8FB10028 */  lw         $s1, 0x28($sp)
/* 9D014 8009C414 03E00008 */  jr         $ra
/* 9D018 8009C418 27BD0040 */   addiu     $sp, $sp, 0x40
/* 9D01C 8009C41C 00000000 */  nop
