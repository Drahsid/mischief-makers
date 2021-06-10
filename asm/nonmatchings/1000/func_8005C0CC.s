glabel func_8005C0CC
/* 5CCCC 8005C0CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5CCD0 8005C0D0 3C03800F */  lui        $v1, %hi(D_800EF510)
/* 5CCD4 8005C0D4 2463F510 */  addiu      $v1, $v1, %lo(D_800EF510)
/* 5CCD8 8005C0D8 2405002E */  addiu      $a1, $zero, 0x2e
/* 5CCDC 8005C0DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5CCE0 8005C0E0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5CCE4 8005C0E4 A4654BBA */  sh         $a1, 0x4bba($v1)
/* 5CCE8 8005C0E8 A4654A22 */  sh         $a1, 0x4a22($v1)
/* 5CCEC 8005C0EC A465488A */  sh         $a1, 0x488a($v1)
/* 5CCF0 8005C0F0 0C0078B4 */  jal        func_8001E2D0
/* 5CCF4 8005C0F4 2404002D */   addiu     $a0, $zero, 0x2d
/* 5CCF8 8005C0F8 0C0078B4 */  jal        func_8001E2D0
/* 5CCFC 8005C0FC 2404002E */   addiu     $a0, $zero, 0x2e
/* 5CD00 8005C100 0C0078B4 */  jal        func_8001E2D0
/* 5CD04 8005C104 2404002F */   addiu     $a0, $zero, 0x2f
/* 5CD08 8005C108 97A8001A */  lhu        $t0, 0x1a($sp)
/* 5CD0C 8005C10C 3C03800F */  lui        $v1, 0x800f
/* 5CD10 8005C110 00087880 */  sll        $t7, $t0, 2
/* 5CD14 8005C114 01E87823 */  subu       $t7, $t7, $t0
/* 5CD18 8005C118 000F7880 */  sll        $t7, $t7, 2
/* 5CD1C 8005C11C 01E87821 */  addu       $t7, $t7, $t0
/* 5CD20 8005C120 000F7880 */  sll        $t7, $t7, 2
/* 5CD24 8005C124 01E87823 */  subu       $t7, $t7, $t0
/* 5CD28 8005C128 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 5CD2C 8005C12C 000F78C0 */  sll        $t7, $t7, 3
/* 5CD30 8005C130 006F2021 */  addu       $a0, $v1, $t7
/* 5CD34 8005C134 94990094 */  lhu        $t9, 0x94($a0)
/* 5CD38 8005C138 9478484C */  lhu        $t8, 0x484c($v1)
/* 5CD3C 8005C13C 33290160 */  andi       $t1, $t9, 0x160
/* 5CD40 8005C140 03095025 */  or         $t2, $t8, $t1
/* 5CD44 8005C144 354B0800 */  ori        $t3, $t2, 0x800
/* 5CD48 8005C148 A46B484C */  sh         $t3, 0x484c($v1)
/* 5CD4C 8005C14C 948D0094 */  lhu        $t5, 0x94($a0)
/* 5CD50 8005C150 946C49E4 */  lhu        $t4, 0x49e4($v1)
/* 5CD54 8005C154 31AE0160 */  andi       $t6, $t5, 0x160
/* 5CD58 8005C158 018E7825 */  or         $t7, $t4, $t6
/* 5CD5C 8005C15C 35F90800 */  ori        $t9, $t7, 0x800
/* 5CD60 8005C160 A47949E4 */  sh         $t9, 0x49e4($v1)
/* 5CD64 8005C164 94890094 */  lhu        $t1, 0x94($a0)
/* 5CD68 8005C168 94784B7C */  lhu        $t8, 0x4b7c($v1)
/* 5CD6C 8005C16C 312A0160 */  andi       $t2, $t1, 0x160
/* 5CD70 8005C170 030A5825 */  or         $t3, $t8, $t2
/* 5CD74 8005C174 356D0800 */  ori        $t5, $t3, 0x800
/* 5CD78 8005C178 A46D4B7C */  sh         $t5, 0x4b7c($v1)
/* 5CD7C 8005C17C 8C8E0080 */  lw         $t6, 0x80($a0)
/* 5CD80 8005C180 8C6C4838 */  lw         $t4, 0x4838($v1)
/* 5CD84 8005C184 31CF0008 */  andi       $t7, $t6, 8
/* 5CD88 8005C188 3C060800 */  lui        $a2, 0x800
/* 5CD8C 8005C18C 018FC825 */  or         $t9, $t4, $t7
/* 5CD90 8005C190 03264825 */  or         $t1, $t9, $a2
/* 5CD94 8005C194 AC694838 */  sw         $t1, 0x4838($v1)
/* 5CD98 8005C198 8C8A0080 */  lw         $t2, 0x80($a0)
/* 5CD9C 8005C19C 8C7849D0 */  lw         $t8, 0x49d0($v1)
/* 5CDA0 8005C1A0 314B0008 */  andi       $t3, $t2, 8
/* 5CDA4 8005C1A4 030B6825 */  or         $t5, $t8, $t3
/* 5CDA8 8005C1A8 01A67025 */  or         $t6, $t5, $a2
/* 5CDAC 8005C1AC AC6E49D0 */  sw         $t6, 0x49d0($v1)
/* 5CDB0 8005C1B0 8C8F0080 */  lw         $t7, 0x80($a0)
/* 5CDB4 8005C1B4 8C6C4B68 */  lw         $t4, 0x4b68($v1)
/* 5CDB8 8005C1B8 31F90008 */  andi       $t9, $t7, 8
/* 5CDBC 8005C1BC 01994825 */  or         $t1, $t4, $t9
/* 5CDC0 8005C1C0 44882000 */  mtc1       $t0, $f4
/* 5CDC4 8005C1C4 24070014 */  addiu      $a3, $zero, 0x14
/* 5CDC8 8005C1C8 01265025 */  or         $t2, $t1, $a2
/* 5CDCC 8005C1CC 24180019 */  addiu      $t8, $zero, 0x19
/* 5CDD0 8005C1D0 240B001E */  addiu      $t3, $zero, 0x1e
/* 5CDD4 8005C1D4 240D000F */  addiu      $t5, $zero, 0xf
/* 5CDD8 8005C1D8 240E000A */  addiu      $t6, $zero, 0xa
/* 5CDDC 8005C1DC 240F0040 */  addiu      $t7, $zero, 0x40
/* 5CDE0 8005C1E0 240C0080 */  addiu      $t4, $zero, 0x80
/* 5CDE4 8005C1E4 241900C0 */  addiu      $t9, $zero, 0xc0
/* 5CDE8 8005C1E8 AC6A4B68 */  sw         $t2, 0x4b68($v1)
/* 5CDEC 8005C1EC AC674908 */  sw         $a3, 0x4908($v1)
/* 5CDF0 8005C1F0 AC784AA0 */  sw         $t8, 0x4aa0($v1)
/* 5CDF4 8005C1F4 AC6B4C38 */  sw         $t3, 0x4c38($v1)
/* 5CDF8 8005C1F8 AC674910 */  sw         $a3, 0x4910($v1)
/* 5CDFC 8005C1FC AC6D4AA8 */  sw         $t5, 0x4aa8($v1)
/* 5CE00 8005C200 AC6E4C40 */  sw         $t6, 0x4c40($v1)
/* 5CE04 8005C204 A06F4857 */  sb         $t7, 0x4857($v1)
/* 5CE08 8005C208 A06C49EF */  sb         $t4, 0x49ef($v1)
/* 5CE0C 8005C20C A0794B87 */  sb         $t9, 0x4b87($v1)
/* 5CE10 8005C210 05010005 */  bgez       $t0, .L8005C228
/* 5CE14 8005C214 46802020 */   cvt.s.w   $f0, $f4
/* 5CE18 8005C218 3C014F80 */  lui        $at, 0x4f80
/* 5CE1C 8005C21C 44813000 */  mtc1       $at, $f6
/* 5CE20 8005C220 00000000 */  nop
/* 5CE24 8005C224 46060000 */  add.s      $f0, $f0, $f6
.L8005C228:
/* 5CE28 8005C228 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5CE2C 8005C22C E4604C34 */  swc1       $f0, 0x4c34($v1)
/* 5CE30 8005C230 E4604A9C */  swc1       $f0, 0x4a9c($v1)
/* 5CE34 8005C234 E4604904 */  swc1       $f0, 0x4904($v1)
/* 5CE38 8005C238 A4604BB8 */  sh         $zero, 0x4bb8($v1)
/* 5CE3C 8005C23C A4604A20 */  sh         $zero, 0x4a20($v1)
/* 5CE40 8005C240 A4604888 */  sh         $zero, 0x4888($v1)
/* 5CE44 8005C244 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5CE48 8005C248 03E00008 */  jr         $ra
/* 5CE4C 8005C24C 01001025 */   or        $v0, $t0, $zero
