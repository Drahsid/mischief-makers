glabel func_80099CF0
/* 9A8F0 80099CF0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9A8F4 80099CF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9A8F8 80099CF8 AFA40030 */  sw         $a0, 0x30($sp)
/* 9A8FC 80099CFC AFA50034 */  sw         $a1, 0x34($sp)
/* 9A900 80099D00 AFA60038 */  sw         $a2, 0x38($sp)
/* 9A904 80099D04 AFA7003C */  sw         $a3, 0x3c($sp)
/* 9A908 80099D08 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9A90C 80099D0C 05C00004 */  bltz       $t6, .L80099D20
/* 9A910 80099D10 00000000 */   nop
/* 9A914 80099D14 29C10100 */  slti       $at, $t6, 0x100
/* 9A918 80099D18 14200007 */  bnez       $at, .L80099D38
/* 9A91C 80099D1C 00000000 */   nop
.L80099D20:
/* 9A920 80099D20 24040023 */  addiu      $a0, $zero, 0x23
/* 9A924 80099D24 24050001 */  addiu      $a1, $zero, 1
/* 9A928 80099D28 0C0297B4 */  jal        func_800A5ED0
/* 9A92C 80099D2C 8FA60030 */   lw        $a2, 0x30($sp)
/* 9A930 80099D30 10000076 */  b          .L80099F0C
/* 9A934 80099D34 00000000 */   nop
.L80099D38:
/* 9A938 80099D38 3C0F800F */  lui        $t7, %hi(D_800EA4D0)
/* 9A93C 80099D3C 8DEFA4D0 */  lw         $t7, %lo(D_800EA4D0)($t7)
/* 9A940 80099D40 11E00003 */  beqz       $t7, .L80099D50
/* 9A944 80099D44 00000000 */   nop
/* 9A948 80099D48 10000070 */  b          .L80099F0C
/* 9A94C 80099D4C 00000000 */   nop
.L80099D50:
/* 9A950 80099D50 8FA40034 */  lw         $a0, 0x34($sp)
/* 9A954 80099D54 8FA50038 */  lw         $a1, 0x38($sp)
/* 9A958 80099D58 0C026994 */  jal        func_8009A650
/* 9A95C 80099D5C 8FA6003C */   lw        $a2, 0x3c($sp)
/* 9A960 80099D60 3C048018 */  lui        $a0, %hi(D_80185090)
/* 9A964 80099D64 3C058018 */  lui        $a1, %hi(D_801850A8)
/* 9A968 80099D68 24A550A8 */  addiu      $a1, $a1, %lo(D_801850A8)
/* 9A96C 80099D6C 24845090 */  addiu      $a0, $a0, %lo(D_80185090)
/* 9A970 80099D70 0C026994 */  jal        func_8009A650
/* 9A974 80099D74 24060001 */   addiu     $a2, $zero, 1
/* 9A978 80099D78 3C18800F */  lui        $t8, %hi(D_800EA630)
/* 9A97C 80099D7C 8F18A630 */  lw         $t8, %lo(D_800EA630)($t8)
/* 9A980 80099D80 17000003 */  bnez       $t8, .L80099D90
/* 9A984 80099D84 00000000 */   nop
/* 9A988 80099D88 0C029F88 */  jal        func_800A7E20
/* 9A98C 80099D8C 00000000 */   nop
.L80099D90:
/* 9A990 80099D90 3C058018 */  lui        $a1, %hi(D_80185090)
/* 9A994 80099D94 3C062222 */  lui        $a2, 0x2222
/* 9A998 80099D98 34C62222 */  ori        $a2, $a2, 0x2222
/* 9A99C 80099D9C 24A55090 */  addiu      $a1, $a1, %lo(D_80185090)
/* 9A9A0 80099DA0 0C0269BC */  jal        func_8009A6F0
/* 9A9A4 80099DA4 24040008 */   addiu     $a0, $zero, 8
/* 9A9A8 80099DA8 2419FFFF */  addiu      $t9, $zero, -1
/* 9A9AC 80099DAC AFB90028 */  sw         $t9, 0x28($sp)
/* 9A9B0 80099DB0 0C029E04 */  jal        func_800A7810
/* 9A9B4 80099DB4 00002025 */   or        $a0, $zero, $zero
/* 9A9B8 80099DB8 AFA20024 */  sw         $v0, 0x24($sp)
/* 9A9BC 80099DBC 8FA80024 */  lw         $t0, 0x24($sp)
/* 9A9C0 80099DC0 8FA90030 */  lw         $t1, 0x30($sp)
/* 9A9C4 80099DC4 0109082A */  slt        $at, $t0, $t1
/* 9A9C8 80099DC8 10200006 */  beqz       $at, .L80099DE4
/* 9A9CC 80099DCC 00000000 */   nop
/* 9A9D0 80099DD0 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9A9D4 80099DD4 AFAA0028 */  sw         $t2, 0x28($sp)
/* 9A9D8 80099DD8 00002025 */  or         $a0, $zero, $zero
/* 9A9DC 80099DDC 0C026918 */  jal        func_8009A460
/* 9A9E0 80099DE0 8FA50030 */   lw        $a1, 0x30($sp)
.L80099DE4:
/* 9A9E4 80099DE4 0C0297A4 */  jal        func_800A5E90
/* 9A9E8 80099DE8 00000000 */   nop
/* 9A9EC 80099DEC AFA2002C */  sw         $v0, 0x2c($sp)
/* 9A9F0 80099DF0 240B0001 */  addiu      $t3, $zero, 1
/* 9A9F4 80099DF4 3C01800F */  lui        $at, %hi(D_800EA4D0)
/* 9A9F8 80099DF8 AC2BA4D0 */  sw         $t3, %lo(D_800EA4D0)($at)
/* 9A9FC 80099DFC 3C0C8018 */  lui        $t4, %hi(D_801838F0)
/* 9AA00 80099E00 258C38F0 */  addiu      $t4, $t4, %lo(D_801838F0)
/* 9AA04 80099E04 3C01800F */  lui        $at, %hi(D_800EA4D4)
/* 9AA08 80099E08 AC2CA4D4 */  sw         $t4, %lo(D_800EA4D4)($at)
/* 9AA0C 80099E0C 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9AA10 80099E10 3C01800F */  lui        $at, %hi(D_800EA4D8)
/* 9AA14 80099E14 AC2DA4D8 */  sw         $t5, %lo(D_800EA4D8)($at)
/* 9AA18 80099E18 3C0E8018 */  lui        $t6, %hi(D_80185090)
/* 9AA1C 80099E1C 25CE5090 */  addiu      $t6, $t6, %lo(D_80185090)
/* 9AA20 80099E20 3C01800F */  lui        $at, %hi(D_800EA4DC)
/* 9AA24 80099E24 AC2EA4DC */  sw         $t6, %lo(D_800EA4DC)($at)
/* 9AA28 80099E28 3C0F8018 */  lui        $t7, %hi(D_80185838)
/* 9AA2C 80099E2C 25EF5838 */  addiu      $t7, $t7, %lo(D_80185838)
/* 9AA30 80099E30 3C01800F */  lui        $at, %hi(D_800EA4E0)
/* 9AA34 80099E34 AC2FA4E0 */  sw         $t7, %lo(D_800EA4E0)($at)
/* 9AA38 80099E38 3C18800A */  lui        $t8, %hi(func_800A7F00)
/* 9AA3C 80099E3C 27187F00 */  addiu      $t8, $t8, %lo(func_800A7F00)
/* 9AA40 80099E40 3C01800F */  lui        $at, %hi(D_800EA4E4)
/* 9AA44 80099E44 AC38A4E4 */  sw         $t8, %lo(D_800EA4E4)($at)
/* 9AA48 80099E48 3C19800B */  lui        $t9, %hi(func_800A80E0)
/* 9AA4C 80099E4C 273980E0 */  addiu      $t9, $t9, %lo(func_800A80E0)
/* 9AA50 80099E50 3C01800F */  lui        $at, %hi(D_800EA4E8)
/* 9AA54 80099E54 AC39A4E8 */  sw         $t9, %lo(D_800EA4E8)($at)
/* 9AA58 80099E58 3C088018 */  lui        $t0, %hi(D_80183AA0)
/* 9AA5C 80099E5C 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9AA60 80099E60 25083AA0 */  addiu      $t0, $t0, %lo(D_80183AA0)
/* 9AA64 80099E64 25091000 */  addiu      $t1, $t0, 0x1000
/* 9AA68 80099E68 3C048018 */  lui        $a0, %hi(D_801838F0)
/* 9AA6C 80099E6C 3C06800B */  lui        $a2, %hi(func_800A8480)
/* 9AA70 80099E70 3C07800F */  lui        $a3, %hi(D_800EA4D0)
/* 9AA74 80099E74 24E7A4D0 */  addiu      $a3, $a3, %lo(D_800EA4D0)
/* 9AA78 80099E78 24C68480 */  addiu      $a2, $a2, %lo(func_800A8480)
/* 9AA7C 80099E7C 248438F0 */  addiu      $a0, $a0, %lo(D_801838F0)
/* 9AA80 80099E80 AFA90010 */  sw         $t1, 0x10($sp)
/* 9AA84 80099E84 00002825 */  or         $a1, $zero, $zero
/* 9AA88 80099E88 0C02651C */  jal        func_80099470
/* 9AA8C 80099E8C AFAA0014 */   sw        $t2, 0x14($sp)
/* 9AA90 80099E90 3C048018 */  lui        $a0, %hi(D_801838F0)
/* 9AA94 80099E94 0C026588 */  jal        func_80099620
/* 9AA98 80099E98 248438F0 */   addiu     $a0, $a0, %lo(D_801838F0)
/* 9AA9C 80099E9C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9AAA0 80099EA0 3C0B8018 */  lui        $t3, %hi(D_80184C50)
/* 9AAA4 80099EA4 256B4C50 */  addiu      $t3, $t3, %lo(D_80184C50)
/* 9AAA8 80099EA8 256C0400 */  addiu      $t4, $t3, 0x400
/* 9AAAC 80099EAC 3C048018 */  lui        $a0, %hi(D_80184AA0)
/* 9AAB0 80099EB0 3C06800A */  lui        $a2, %hi(func_80099F1C)
/* 9AAB4 80099EB4 25AEFFFF */  addiu      $t6, $t5, -1
/* 9AAB8 80099EB8 AFAE0014 */  sw         $t6, 0x14($sp)
/* 9AABC 80099EBC 24C69F1C */  addiu      $a2, $a2, %lo(func_80099F1C)
/* 9AAC0 80099EC0 24844AA0 */  addiu      $a0, $a0, %lo(D_80184AA0)
/* 9AAC4 80099EC4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 9AAC8 80099EC8 00002825 */  or         $a1, $zero, $zero
/* 9AACC 80099ECC 0C02651C */  jal        func_80099470
/* 9AAD0 80099ED0 00003825 */   or        $a3, $zero, $zero
/* 9AAD4 80099ED4 3C048018 */  lui        $a0, %hi(D_80184AA0)
/* 9AAD8 80099ED8 0C026588 */  jal        func_80099620
/* 9AADC 80099EDC 24844AA0 */   addiu     $a0, $a0, %lo(D_80184AA0)
/* 9AAE0 80099EE0 0C0297AC */  jal        func_800A5EB0
/* 9AAE4 80099EE4 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9AAE8 80099EE8 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9AAEC 80099EEC 2401FFFF */  addiu      $at, $zero, -1
/* 9AAF0 80099EF0 11E10004 */  beq        $t7, $at, .L80099F04
/* 9AAF4 80099EF4 00000000 */   nop
/* 9AAF8 80099EF8 00002025 */  or         $a0, $zero, $zero
/* 9AAFC 80099EFC 0C026918 */  jal        func_8009A460
/* 9AB00 80099F00 8FA50028 */   lw        $a1, 0x28($sp)
.L80099F04:
/* 9AB04 80099F04 10000001 */  b          .L80099F0C
/* 9AB08 80099F08 00000000 */   nop
.L80099F0C:
/* 9AB0C 80099F0C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9AB10 80099F10 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9AB14 80099F14 03E00008 */  jr         $ra
/* 9AB18 80099F18 00000000 */   nop
