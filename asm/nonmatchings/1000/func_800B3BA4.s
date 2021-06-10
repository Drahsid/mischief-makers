glabel func_800B3BA4
/* B47A4 800B3BA4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B47A8 800B3BA8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B47AC 800B3BAC AFA40038 */  sw         $a0, 0x38($sp)
/* B47B0 800B3BB0 AFA5003C */  sw         $a1, 0x3c($sp)
/* B47B4 800B3BB4 AFA60040 */  sw         $a2, 0x40($sp)
/* B47B8 800B3BB8 AFA70044 */  sw         $a3, 0x44($sp)
/* B47BC 800B3BBC AFB30020 */  sw         $s3, 0x20($sp)
/* B47C0 800B3BC0 AFB2001C */  sw         $s2, 0x1c($sp)
/* B47C4 800B3BC4 AFB10018 */  sw         $s1, 0x18($sp)
/* B47C8 800B3BC8 AFB00014 */  sw         $s0, 0x14($sp)
/* B47CC 800B3BCC 8FAE0038 */  lw         $t6, 0x38($sp)
/* B47D0 800B3BD0 ADC00020 */  sw         $zero, 0x20($t6)
/* B47D4 800B3BD4 8FAF0038 */  lw         $t7, 0x38($sp)
/* B47D8 800B3BD8 8DF30020 */  lw         $s3, 0x20($t7)
/* B47DC 800B3BDC ADF3001C */  sw         $s3, 0x1c($t7)
/* B47E0 800B3BE0 8FB80038 */  lw         $t8, 0x38($sp)
/* B47E4 800B3BE4 02609025 */  or         $s2, $s3, $zero
/* B47E8 800B3BE8 02408825 */  or         $s1, $s2, $zero
/* B47EC 800B3BEC AF120018 */  sw         $s2, 0x18($t8)
/* B47F0 800B3BF0 8FB90038 */  lw         $t9, 0x38($sp)
/* B47F4 800B3BF4 02208025 */  or         $s0, $s1, $zero
/* B47F8 800B3BF8 AF310014 */  sw         $s1, 0x14($t9)
/* B47FC 800B3BFC 8FA80038 */  lw         $t0, 0x38($sp)
/* B4800 800B3C00 AD100010 */  sw         $s0, 0x10($t0)
/* B4804 800B3C04 8FA90038 */  lw         $t1, 0x38($sp)
/* B4808 800B3C08 AD30000C */  sw         $s0, 0xc($t1)
/* B480C 800B3C0C 93B00043 */  lbu        $s0, 0x43($sp)
/* B4810 800B3C10 2A010026 */  slti       $at, $s0, 0x26
/* B4814 800B3C14 1420000B */  bnez       $at, .L800B3C44
/* B4818 800B3C18 00000000 */   nop
/* B481C 800B3C1C 260AFFBB */  addiu      $t2, $s0, -0x45
/* B4820 800B3C20 2D410034 */  sltiu      $at, $t2, 0x34
/* B4824 800B3C24 10200235 */  beqz       $at, .L800B44FC
/* B4828 800B3C28 00000000 */   nop
/* B482C 800B3C2C 000A5080 */  sll        $t2, $t2, 2
/* B4830 800B3C30 3C01800F */  lui        $at, %hi(D_800EE6E4)
/* B4834 800B3C34 002A0821 */  addu       $at, $at, $t2
/* B4838 800B3C38 8C2AE6E4 */  lw         $t2, %lo(D_800EE6E4)($at)
/* B483C 800B3C3C 01400008 */  jr         $t2
/* B4840 800B3C40 00000000 */   nop
.L800B3C44:
/* B4844 800B3C44 24010025 */  addiu      $at, $zero, 0x25
/* B4848 800B3C48 12010220 */  beq        $s0, $at, .L800B44CC
/* B484C 800B3C4C 00000000 */   nop
/* B4850 800B3C50 1000022A */  b          .L800B44FC
/* B4854 800B3C54 00000000 */   nop
/* B4858 800B3C58 8FAB003C */  lw         $t3, 0x3c($sp)
/* B485C 800B3C5C 2401FFFC */  addiu      $at, $zero, -4
/* B4860 800B3C60 8D6C0000 */  lw         $t4, ($t3)
/* B4864 800B3C64 258D0003 */  addiu      $t5, $t4, 3
/* B4868 800B3C68 01A17024 */  and        $t6, $t5, $at
/* B486C 800B3C6C 25CF0004 */  addiu      $t7, $t6, 4
/* B4870 800B3C70 AD6F0000 */  sw         $t7, ($t3)
/* B4874 800B3C74 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4878 800B3C78 8FAA0038 */  lw         $t2, 0x38($sp)
/* B487C 800B3C7C 8FA90044 */  lw         $t1, 0x44($sp)
/* B4880 800B3C80 8F190000 */  lw         $t9, ($t8)
/* B4884 800B3C84 8D4C000C */  lw         $t4, 0xc($t2)
/* B4888 800B3C88 8F28FFFC */  lw         $t0, -4($t9)
/* B488C 800B3C8C 012C6821 */  addu       $t5, $t1, $t4
/* B4890 800B3C90 A1A80000 */  sb         $t0, ($t5)
/* B4894 800B3C94 8FAE0038 */  lw         $t6, 0x38($sp)
/* B4898 800B3C98 8DCF000C */  lw         $t7, 0xc($t6)
/* B489C 800B3C9C 25EB0001 */  addiu      $t3, $t7, 1
/* B48A0 800B3CA0 ADCB000C */  sw         $t3, 0xc($t6)
/* B48A4 800B3CA4 10000221 */  b          .L800B452C
/* B48A8 800B3CA8 00000000 */   nop
/* B48AC 800B3CAC 8FB80038 */  lw         $t8, 0x38($sp)
/* B48B0 800B3CB0 2401006C */  addiu      $at, $zero, 0x6c
/* B48B4 800B3CB4 93190034 */  lbu        $t9, 0x34($t8)
/* B48B8 800B3CB8 17210011 */  bne        $t9, $at, .L800B3D00
/* B48BC 800B3CBC 00000000 */   nop
/* B48C0 800B3CC0 8FAA003C */  lw         $t2, 0x3c($sp)
/* B48C4 800B3CC4 2401FFFC */  addiu      $at, $zero, -4
/* B48C8 800B3CC8 8D490000 */  lw         $t1, ($t2)
/* B48CC 800B3CCC 252C0003 */  addiu      $t4, $t1, 3
/* B48D0 800B3CD0 01814024 */  and        $t0, $t4, $at
/* B48D4 800B3CD4 250D0004 */  addiu      $t5, $t0, 4
/* B48D8 800B3CD8 AD4D0000 */  sw         $t5, ($t2)
/* B48DC 800B3CDC 8FAF003C */  lw         $t7, 0x3c($sp)
/* B48E0 800B3CE0 8FA90038 */  lw         $t1, 0x38($sp)
/* B48E4 800B3CE4 8DEB0000 */  lw         $t3, ($t7)
/* B48E8 800B3CE8 8D6EFFFC */  lw         $t6, -4($t3)
/* B48EC 800B3CEC 01C0C825 */  or         $t9, $t6, $zero
/* B48F0 800B3CF0 000EC7C3 */  sra        $t8, $t6, 0x1f
/* B48F4 800B3CF4 AD380000 */  sw         $t8, ($t1)
/* B48F8 800B3CF8 10000024 */  b          .L800B3D8C
/* B48FC 800B3CFC AD390004 */   sw        $t9, 4($t1)
.L800B3D00:
/* B4900 800B3D00 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4904 800B3D04 2401004C */  addiu      $at, $zero, 0x4c
/* B4908 800B3D08 91880034 */  lbu        $t0, 0x34($t4)
/* B490C 800B3D0C 15010010 */  bne        $t0, $at, .L800B3D50
/* B4910 800B3D10 00000000 */   nop
/* B4914 800B3D14 8FAD003C */  lw         $t5, 0x3c($sp)
/* B4918 800B3D18 2401FFF8 */  addiu      $at, $zero, -8
/* B491C 800B3D1C 8DAA0000 */  lw         $t2, ($t5)
/* B4920 800B3D20 254F0007 */  addiu      $t7, $t2, 7
/* B4924 800B3D24 01E15824 */  and        $t3, $t7, $at
/* B4928 800B3D28 256E0008 */  addiu      $t6, $t3, 8
/* B492C 800B3D2C ADAE0000 */  sw         $t6, ($t5)
/* B4930 800B3D30 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4934 800B3D34 8FA90038 */  lw         $t1, 0x38($sp)
/* B4938 800B3D38 8F190000 */  lw         $t9, ($t8)
/* B493C 800B3D3C 8F2CFFF8 */  lw         $t4, -8($t9)
/* B4940 800B3D40 8F2DFFFC */  lw         $t5, -4($t9)
/* B4944 800B3D44 AD2C0000 */  sw         $t4, ($t1)
/* B4948 800B3D48 10000010 */  b          .L800B3D8C
/* B494C 800B3D4C AD2D0004 */   sw        $t5, 4($t1)
.L800B3D50:
/* B4950 800B3D50 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4954 800B3D54 2401FFFC */  addiu      $at, $zero, -4
/* B4958 800B3D58 8D0A0000 */  lw         $t2, ($t0)
/* B495C 800B3D5C 254F0003 */  addiu      $t7, $t2, 3
/* B4960 800B3D60 01E15824 */  and        $t3, $t7, $at
/* B4964 800B3D64 256E0004 */  addiu      $t6, $t3, 4
/* B4968 800B3D68 AD0E0000 */  sw         $t6, ($t0)
/* B496C 800B3D6C 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4970 800B3D70 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4974 800B3D74 8F190000 */  lw         $t9, ($t8)
/* B4978 800B3D78 8F2CFFFC */  lw         $t4, -4($t9)
/* B497C 800B3D7C 01805825 */  or         $t3, $t4, $zero
/* B4980 800B3D80 000C57C3 */  sra        $t2, $t4, 0x1f
/* B4984 800B3D84 ADAA0000 */  sw         $t2, ($t5)
/* B4988 800B3D88 ADAB0004 */  sw         $t3, 4($t5)
.L800B3D8C:
/* B498C 800B3D8C 8FA90038 */  lw         $t1, 0x38($sp)
/* B4990 800B3D90 24010068 */  addiu      $at, $zero, 0x68
/* B4994 800B3D94 912F0034 */  lbu        $t7, 0x34($t1)
/* B4998 800B3D98 15E1000B */  bne        $t7, $at, .L800B3DC8
/* B499C 800B3D9C 00000000 */   nop
/* B49A0 800B3DA0 8FAE0038 */  lw         $t6, 0x38($sp)
/* B49A4 800B3DA4 8DC90004 */  lw         $t1, 4($t6)
/* B49A8 800B3DA8 8DC80000 */  lw         $t0, ($t6)
/* B49AC 800B3DAC 0120C025 */  or         $t8, $t1, $zero
/* B49B0 800B3DB0 0018CC00 */  sll        $t9, $t8, 0x10
/* B49B4 800B3DB4 00196403 */  sra        $t4, $t9, 0x10
/* B49B8 800B3DB8 01805825 */  or         $t3, $t4, $zero
/* B49BC 800B3DBC 000C57C3 */  sra        $t2, $t4, 0x1f
/* B49C0 800B3DC0 ADCA0000 */  sw         $t2, ($t6)
/* B49C4 800B3DC4 ADCB0004 */  sw         $t3, 4($t6)
.L800B3DC8:
/* B49C8 800B3DC8 8FAD0038 */  lw         $t5, 0x38($sp)
/* B49CC 800B3DCC 8DA80000 */  lw         $t0, ($t5)
/* B49D0 800B3DD0 8DA90004 */  lw         $t1, 4($t5)
/* B49D4 800B3DD4 1D000010 */  bgtz       $t0, .L800B3E18
/* B49D8 800B3DD8 00000000 */   nop
/* B49DC 800B3DDC 05000003 */  bltz       $t0, .L800B3DEC
/* B49E0 800B3DE0 00000000 */   nop
/* B49E4 800B3DE4 1000000C */  b          .L800B3E18
/* B49E8 800B3DE8 00000000 */   nop
.L800B3DEC:
/* B49EC 800B3DEC 8FB90038 */  lw         $t9, 0x38($sp)
/* B49F0 800B3DF0 8FB80044 */  lw         $t8, 0x44($sp)
/* B49F4 800B3DF4 240F002D */  addiu      $t7, $zero, 0x2d
/* B49F8 800B3DF8 8F2C000C */  lw         $t4, 0xc($t9)
/* B49FC 800B3DFC 030C5021 */  addu       $t2, $t8, $t4
/* B4A00 800B3E00 A14F0000 */  sb         $t7, ($t2)
/* B4A04 800B3E04 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4A08 800B3E08 8D6E000C */  lw         $t6, 0xc($t3)
/* B4A0C 800B3E0C 25CD0001 */  addiu      $t5, $t6, 1
/* B4A10 800B3E10 10000020 */  b          .L800B3E94
/* B4A14 800B3E14 AD6D000C */   sw        $t5, 0xc($t3)
.L800B3E18:
/* B4A18 800B3E18 8FA80038 */  lw         $t0, 0x38($sp)
/* B4A1C 800B3E1C 8D090030 */  lw         $t1, 0x30($t0)
/* B4A20 800B3E20 31390002 */  andi       $t9, $t1, 2
/* B4A24 800B3E24 1320000C */  beqz       $t9, .L800B3E58
/* B4A28 800B3E28 00000000 */   nop
/* B4A2C 800B3E2C 8FAF0038 */  lw         $t7, 0x38($sp)
/* B4A30 800B3E30 8FAC0044 */  lw         $t4, 0x44($sp)
/* B4A34 800B3E34 2418002B */  addiu      $t8, $zero, 0x2b
/* B4A38 800B3E38 8DEA000C */  lw         $t2, 0xc($t7)
/* B4A3C 800B3E3C 018A7021 */  addu       $t6, $t4, $t2
/* B4A40 800B3E40 A1D80000 */  sb         $t8, ($t6)
/* B4A44 800B3E44 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4A48 800B3E48 8DAB000C */  lw         $t3, 0xc($t5)
/* B4A4C 800B3E4C 25680001 */  addiu      $t0, $t3, 1
/* B4A50 800B3E50 10000010 */  b          .L800B3E94
/* B4A54 800B3E54 ADA8000C */   sw        $t0, 0xc($t5)
.L800B3E58:
/* B4A58 800B3E58 8FA90038 */  lw         $t1, 0x38($sp)
/* B4A5C 800B3E5C 8D390030 */  lw         $t9, 0x30($t1)
/* B4A60 800B3E60 332F0001 */  andi       $t7, $t9, 1
/* B4A64 800B3E64 11E0000B */  beqz       $t7, .L800B3E94
/* B4A68 800B3E68 00000000 */   nop
/* B4A6C 800B3E6C 8FB80038 */  lw         $t8, 0x38($sp)
/* B4A70 800B3E70 8FAA0044 */  lw         $t2, 0x44($sp)
/* B4A74 800B3E74 240C0020 */  addiu      $t4, $zero, 0x20
/* B4A78 800B3E78 8F0E000C */  lw         $t6, 0xc($t8)
/* B4A7C 800B3E7C 014E5821 */  addu       $t3, $t2, $t6
/* B4A80 800B3E80 A16C0000 */  sb         $t4, ($t3)
/* B4A84 800B3E84 8FA80038 */  lw         $t0, 0x38($sp)
/* B4A88 800B3E88 8D0D000C */  lw         $t5, 0xc($t0)
/* B4A8C 800B3E8C 25A90001 */  addiu      $t1, $t5, 1
/* B4A90 800B3E90 AD09000C */  sw         $t1, 0xc($t0)
.L800B3E94:
/* B4A94 800B3E94 8FB90038 */  lw         $t9, 0x38($sp)
/* B4A98 800B3E98 8FB80044 */  lw         $t8, 0x44($sp)
/* B4A9C 800B3E9C 8F2F000C */  lw         $t7, 0xc($t9)
/* B4AA0 800B3EA0 01F85021 */  addu       $t2, $t7, $t8
/* B4AA4 800B3EA4 AF2A0008 */  sw         $t2, 8($t9)
/* B4AA8 800B3EA8 8FA40038 */  lw         $a0, 0x38($sp)
/* B4AAC 800B3EAC 0C02E3E4 */  jal        func_800B8F90
/* B4AB0 800B3EB0 93A50043 */   lbu       $a1, 0x43($sp)
/* B4AB4 800B3EB4 1000019D */  b          .L800B452C
/* B4AB8 800B3EB8 00000000 */   nop
/* B4ABC 800B3EBC 8FAE0038 */  lw         $t6, 0x38($sp)
/* B4AC0 800B3EC0 2401006C */  addiu      $at, $zero, 0x6c
/* B4AC4 800B3EC4 91CC0034 */  lbu        $t4, 0x34($t6)
/* B4AC8 800B3EC8 15810011 */  bne        $t4, $at, .L800B3F10
/* B4ACC 800B3ECC 00000000 */   nop
/* B4AD0 800B3ED0 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4AD4 800B3ED4 2401FFFC */  addiu      $at, $zero, -4
/* B4AD8 800B3ED8 8D6D0000 */  lw         $t5, ($t3)
/* B4ADC 800B3EDC 25A90003 */  addiu      $t1, $t5, 3
/* B4AE0 800B3EE0 01214024 */  and        $t0, $t1, $at
/* B4AE4 800B3EE4 250F0004 */  addiu      $t7, $t0, 4
/* B4AE8 800B3EE8 AD6F0000 */  sw         $t7, ($t3)
/* B4AEC 800B3EEC 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4AF0 800B3EF0 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4AF4 800B3EF4 8F0A0000 */  lw         $t2, ($t8)
/* B4AF8 800B3EF8 8D59FFFC */  lw         $t9, -4($t2)
/* B4AFC 800B3EFC 03207825 */  or         $t7, $t9, $zero
/* B4B00 800B3F00 001977C3 */  sra        $t6, $t9, 0x1f
/* B4B04 800B3F04 AD8E0000 */  sw         $t6, ($t4)
/* B4B08 800B3F08 10000024 */  b          .L800B3F9C
/* B4B0C 800B3F0C AD8F0004 */   sw        $t7, 4($t4)
.L800B3F10:
/* B4B10 800B3F10 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4B14 800B3F14 2401004C */  addiu      $at, $zero, 0x4c
/* B4B18 800B3F18 91A90034 */  lbu        $t1, 0x34($t5)
/* B4B1C 800B3F1C 15210010 */  bne        $t1, $at, .L800B3F60
/* B4B20 800B3F20 00000000 */   nop
/* B4B24 800B3F24 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4B28 800B3F28 2401FFF8 */  addiu      $at, $zero, -8
/* B4B2C 800B3F2C 8D0B0000 */  lw         $t3, ($t0)
/* B4B30 800B3F30 25780007 */  addiu      $t8, $t3, 7
/* B4B34 800B3F34 03015024 */  and        $t2, $t8, $at
/* B4B38 800B3F38 25590008 */  addiu      $t9, $t2, 8
/* B4B3C 800B3F3C AD190000 */  sw         $t9, ($t0)
/* B4B40 800B3F40 8FAE003C */  lw         $t6, 0x3c($sp)
/* B4B44 800B3F44 8FA90038 */  lw         $t1, 0x38($sp)
/* B4B48 800B3F48 8DCF0000 */  lw         $t7, ($t6)
/* B4B4C 800B3F4C 8DECFFF8 */  lw         $t4, -8($t7)
/* B4B50 800B3F50 8DEDFFFC */  lw         $t5, -4($t7)
/* B4B54 800B3F54 AD2C0000 */  sw         $t4, ($t1)
/* B4B58 800B3F58 10000010 */  b          .L800B3F9C
/* B4B5C 800B3F5C AD2D0004 */   sw        $t5, 4($t1)
.L800B3F60:
/* B4B60 800B3F60 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4B64 800B3F64 2401FFFC */  addiu      $at, $zero, -4
/* B4B68 800B3F68 8D780000 */  lw         $t8, ($t3)
/* B4B6C 800B3F6C 270A0003 */  addiu      $t2, $t8, 3
/* B4B70 800B3F70 0141C824 */  and        $t9, $t2, $at
/* B4B74 800B3F74 27280004 */  addiu      $t0, $t9, 4
/* B4B78 800B3F78 AD680000 */  sw         $t0, ($t3)
/* B4B7C 800B3F7C 8FAE003C */  lw         $t6, 0x3c($sp)
/* B4B80 800B3F80 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4B84 800B3F84 8DCF0000 */  lw         $t7, ($t6)
/* B4B88 800B3F88 8DECFFFC */  lw         $t4, -4($t7)
/* B4B8C 800B3F8C 0180C825 */  or         $t9, $t4, $zero
/* B4B90 800B3F90 000CC7C3 */  sra        $t8, $t4, 0x1f
/* B4B94 800B3F94 ADB80000 */  sw         $t8, ($t5)
/* B4B98 800B3F98 ADB90004 */  sw         $t9, 4($t5)
.L800B3F9C:
/* B4B9C 800B3F9C 8FA90038 */  lw         $t1, 0x38($sp)
/* B4BA0 800B3FA0 24010068 */  addiu      $at, $zero, 0x68
/* B4BA4 800B3FA4 912A0034 */  lbu        $t2, 0x34($t1)
/* B4BA8 800B3FA8 1541000B */  bne        $t2, $at, .L800B3FD8
/* B4BAC 800B3FAC 00000000 */   nop
/* B4BB0 800B3FB0 8FA80038 */  lw         $t0, 0x38($sp)
/* B4BB4 800B3FB4 24180000 */  addiu      $t8, $zero, 0
/* B4BB8 800B3FB8 8D0F0004 */  lw         $t7, 4($t0)
/* B4BBC 800B3FBC 8D0E0000 */  lw         $t6, ($t0)
/* B4BC0 800B3FC0 AD180000 */  sw         $t8, ($t0)
/* B4BC4 800B3FC4 01E05825 */  or         $t3, $t7, $zero
/* B4BC8 800B3FC8 316CFFFF */  andi       $t4, $t3, 0xffff
/* B4BCC 800B3FCC 0180C825 */  or         $t9, $t4, $zero
/* B4BD0 800B3FD0 1000000D */  b          .L800B4008
/* B4BD4 800B3FD4 AD190004 */   sw        $t9, 4($t0)
.L800B3FD8:
/* B4BD8 800B3FD8 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4BDC 800B3FDC 91A90034 */  lbu        $t1, 0x34($t5)
/* B4BE0 800B3FE0 15200009 */  bnez       $t1, .L800B4008
/* B4BE4 800B3FE4 00000000 */   nop
/* B4BE8 800B3FE8 8FAA0038 */  lw         $t2, 0x38($sp)
/* B4BEC 800B3FEC 240C0000 */  addiu      $t4, $zero, 0
/* B4BF0 800B3FF0 8D4F0004 */  lw         $t7, 4($t2)
/* B4BF4 800B3FF4 8D4E0000 */  lw         $t6, ($t2)
/* B4BF8 800B3FF8 AD4C0000 */  sw         $t4, ($t2)
/* B4BFC 800B3FFC 01E05825 */  or         $t3, $t7, $zero
/* B4C00 800B4000 01606825 */  or         $t5, $t3, $zero
/* B4C04 800B4004 AD4D0004 */  sw         $t5, 4($t2)
.L800B4008:
/* B4C08 800B4008 8FB80038 */  lw         $t8, 0x38($sp)
/* B4C0C 800B400C 8F190030 */  lw         $t9, 0x30($t8)
/* B4C10 800B4010 33280008 */  andi       $t0, $t9, 8
/* B4C14 800B4014 1100001C */  beqz       $t0, .L800B4088
/* B4C18 800B4018 00000000 */   nop
/* B4C1C 800B401C 8FAF0038 */  lw         $t7, 0x38($sp)
/* B4C20 800B4020 8FAE0044 */  lw         $t6, 0x44($sp)
/* B4C24 800B4024 24090030 */  addiu      $t1, $zero, 0x30
/* B4C28 800B4028 8DEB000C */  lw         $t3, 0xc($t7)
/* B4C2C 800B402C 01CB6021 */  addu       $t4, $t6, $t3
/* B4C30 800B4030 A1890000 */  sb         $t1, ($t4)
/* B4C34 800B4034 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4C38 800B4038 8DAA000C */  lw         $t2, 0xc($t5)
/* B4C3C 800B403C 25580001 */  addiu      $t8, $t2, 1
/* B4C40 800B4040 ADB8000C */  sw         $t8, 0xc($t5)
/* B4C44 800B4044 93B90043 */  lbu        $t9, 0x43($sp)
/* B4C48 800B4048 24010078 */  addiu      $at, $zero, 0x78
/* B4C4C 800B404C 13210004 */  beq        $t9, $at, .L800B4060
/* B4C50 800B4050 00000000 */   nop
/* B4C54 800B4054 24010058 */  addiu      $at, $zero, 0x58
/* B4C58 800B4058 1721000B */  bne        $t9, $at, .L800B4088
/* B4C5C 800B405C 00000000 */   nop
.L800B4060:
/* B4C60 800B4060 8FAE0038 */  lw         $t6, 0x38($sp)
/* B4C64 800B4064 8FAF0044 */  lw         $t7, 0x44($sp)
/* B4C68 800B4068 93A80043 */  lbu        $t0, 0x43($sp)
/* B4C6C 800B406C 8DCB000C */  lw         $t3, 0xc($t6)
/* B4C70 800B4070 01EB4821 */  addu       $t1, $t7, $t3
/* B4C74 800B4074 A1280000 */  sb         $t0, ($t1)
/* B4C78 800B4078 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4C7C 800B407C 8D8A000C */  lw         $t2, 0xc($t4)
/* B4C80 800B4080 25580001 */  addiu      $t8, $t2, 1
/* B4C84 800B4084 AD98000C */  sw         $t8, 0xc($t4)
.L800B4088:
/* B4C88 800B4088 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4C8C 800B408C 8FAE0044 */  lw         $t6, 0x44($sp)
/* B4C90 800B4090 8DB9000C */  lw         $t9, 0xc($t5)
/* B4C94 800B4094 032E7821 */  addu       $t7, $t9, $t6
/* B4C98 800B4098 ADAF0008 */  sw         $t7, 8($t5)
/* B4C9C 800B409C 8FA40038 */  lw         $a0, 0x38($sp)
/* B4CA0 800B40A0 0C02E3E4 */  jal        func_800B8F90
/* B4CA4 800B40A4 93A50043 */   lbu       $a1, 0x43($sp)
/* B4CA8 800B40A8 10000120 */  b          .L800B452C
/* B4CAC 800B40AC 00000000 */   nop
/* B4CB0 800B40B0 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4CB4 800B40B4 2401004C */  addiu      $at, $zero, 0x4c
/* B4CB8 800B40B8 91680034 */  lbu        $t0, 0x34($t3)
/* B4CBC 800B40BC 15010025 */  bne        $t0, $at, .L800B4154
/* B4CC0 800B40C0 00000000 */   nop
/* B4CC4 800B40C4 8FA9003C */  lw         $t1, 0x3c($sp)
/* B4CC8 800B40C8 8D2A0000 */  lw         $t2, ($t1)
/* B4CCC 800B40CC 31580001 */  andi       $t8, $t2, 1
/* B4CD0 800B40D0 13000007 */  beqz       $t8, .L800B40F0
/* B4CD4 800B40D4 00000000 */   nop
/* B4CD8 800B40D8 254C0007 */  addiu      $t4, $t2, 7
/* B4CDC 800B40DC AD2C0000 */  sw         $t4, ($t1)
/* B4CE0 800B40E0 8FB9003C */  lw         $t9, 0x3c($sp)
/* B4CE4 800B40E4 8F300000 */  lw         $s0, ($t9)
/* B4CE8 800B40E8 10000016 */  b          .L800B4144
/* B4CEC 800B40EC 2610FFEA */   addiu     $s0, $s0, -0x16
.L800B40F0:
/* B4CF0 800B40F0 8FAE003C */  lw         $t6, 0x3c($sp)
/* B4CF4 800B40F4 8DCF0000 */  lw         $t7, ($t6)
/* B4CF8 800B40F8 31ED0002 */  andi       $t5, $t7, 2
/* B4CFC 800B40FC 11A00007 */  beqz       $t5, .L800B411C
/* B4D00 800B4100 00000000 */   nop
/* B4D04 800B4104 25EB000A */  addiu      $t3, $t7, 0xa
/* B4D08 800B4108 ADCB0000 */  sw         $t3, ($t6)
/* B4D0C 800B410C 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4D10 800B4110 8D110000 */  lw         $s1, ($t0)
/* B4D14 800B4114 1000000A */  b          .L800B4140
/* B4D18 800B4118 2631FFD8 */   addiu     $s1, $s1, -0x28
.L800B411C:
/* B4D1C 800B411C 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4D20 800B4120 2401FFF8 */  addiu      $at, $zero, -8
/* B4D24 800B4124 8F0A0000 */  lw         $t2, ($t8)
/* B4D28 800B4128 254C0007 */  addiu      $t4, $t2, 7
/* B4D2C 800B412C 01814824 */  and        $t1, $t4, $at
/* B4D30 800B4130 25390008 */  addiu      $t9, $t1, 8
/* B4D34 800B4134 AF190000 */  sw         $t9, ($t8)
/* B4D38 800B4138 8FAD003C */  lw         $t5, 0x3c($sp)
/* B4D3C 800B413C 8DB10000 */  lw         $s1, ($t5)
.L800B4140:
/* B4D40 800B4140 02208025 */  or         $s0, $s1, $zero
.L800B4144:
/* B4D44 800B4144 D604FFF8 */  ldc1       $f4, -8($s0)
/* B4D48 800B4148 8FAF0038 */  lw         $t7, 0x38($sp)
/* B4D4C 800B414C 10000024 */  b          .L800B41E0
/* B4D50 800B4150 F5E40000 */   sdc1      $f4, ($t7)
.L800B4154:
/* B4D54 800B4154 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4D58 800B4158 8D6E0000 */  lw         $t6, ($t3)
/* B4D5C 800B415C 31C80001 */  andi       $t0, $t6, 1
/* B4D60 800B4160 11000007 */  beqz       $t0, .L800B4180
/* B4D64 800B4164 00000000 */   nop
/* B4D68 800B4168 25CA0007 */  addiu      $t2, $t6, 7
/* B4D6C 800B416C AD6A0000 */  sw         $t2, ($t3)
/* B4D70 800B4170 8FAC003C */  lw         $t4, 0x3c($sp)
/* B4D74 800B4174 8D920000 */  lw         $s2, ($t4)
/* B4D78 800B4178 10000016 */  b          .L800B41D4
/* B4D7C 800B417C 2652FFEA */   addiu     $s2, $s2, -0x16
.L800B4180:
/* B4D80 800B4180 8FA9003C */  lw         $t1, 0x3c($sp)
/* B4D84 800B4184 8D390000 */  lw         $t9, ($t1)
/* B4D88 800B4188 33380002 */  andi       $t8, $t9, 2
/* B4D8C 800B418C 13000007 */  beqz       $t8, .L800B41AC
/* B4D90 800B4190 00000000 */   nop
/* B4D94 800B4194 272D000A */  addiu      $t5, $t9, 0xa
/* B4D98 800B4198 AD2D0000 */  sw         $t5, ($t1)
/* B4D9C 800B419C 8FAF003C */  lw         $t7, 0x3c($sp)
/* B4DA0 800B41A0 8DF30000 */  lw         $s3, ($t7)
/* B4DA4 800B41A4 1000000A */  b          .L800B41D0
/* B4DA8 800B41A8 2673FFD8 */   addiu     $s3, $s3, -0x28
.L800B41AC:
/* B4DAC 800B41AC 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4DB0 800B41B0 2401FFF8 */  addiu      $at, $zero, -8
/* B4DB4 800B41B4 8D0E0000 */  lw         $t6, ($t0)
/* B4DB8 800B41B8 25CA0007 */  addiu      $t2, $t6, 7
/* B4DBC 800B41BC 01415824 */  and        $t3, $t2, $at
/* B4DC0 800B41C0 256C0008 */  addiu      $t4, $t3, 8
/* B4DC4 800B41C4 AD0C0000 */  sw         $t4, ($t0)
/* B4DC8 800B41C8 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4DCC 800B41CC 8F130000 */  lw         $s3, ($t8)
.L800B41D0:
/* B4DD0 800B41D0 02609025 */  or         $s2, $s3, $zero
.L800B41D4:
/* B4DD4 800B41D4 D646FFF8 */  ldc1       $f6, -8($s2)
/* B4DD8 800B41D8 8FB90038 */  lw         $t9, 0x38($sp)
/* B4DDC 800B41DC F7260000 */  sdc1       $f6, ($t9)
.L800B41E0:
/* B4DE0 800B41E0 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4DE4 800B41E4 95A90000 */  lhu        $t1, ($t5)
/* B4DE8 800B41E8 312F8000 */  andi       $t7, $t1, 0x8000
/* B4DEC 800B41EC 11E0000C */  beqz       $t7, .L800B4220
/* B4DF0 800B41F0 00000000 */   nop
/* B4DF4 800B41F4 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4DF8 800B41F8 8FAA0044 */  lw         $t2, 0x44($sp)
/* B4DFC 800B41FC 240E002D */  addiu      $t6, $zero, 0x2d
/* B4E00 800B4200 8D6C000C */  lw         $t4, 0xc($t3)
/* B4E04 800B4204 014C4021 */  addu       $t0, $t2, $t4
/* B4E08 800B4208 A10E0000 */  sb         $t6, ($t0)
/* B4E0C 800B420C 8FB80038 */  lw         $t8, 0x38($sp)
/* B4E10 800B4210 8F19000C */  lw         $t9, 0xc($t8)
/* B4E14 800B4214 272D0001 */  addiu      $t5, $t9, 1
/* B4E18 800B4218 10000020 */  b          .L800B429C
/* B4E1C 800B421C AF0D000C */   sw        $t5, 0xc($t8)
.L800B4220:
/* B4E20 800B4220 8FA90038 */  lw         $t1, 0x38($sp)
/* B4E24 800B4224 8D2F0030 */  lw         $t7, 0x30($t1)
/* B4E28 800B4228 31EB0002 */  andi       $t3, $t7, 2
/* B4E2C 800B422C 1160000C */  beqz       $t3, .L800B4260
/* B4E30 800B4230 00000000 */   nop
/* B4E34 800B4234 8FAE0038 */  lw         $t6, 0x38($sp)
/* B4E38 800B4238 8FAC0044 */  lw         $t4, 0x44($sp)
/* B4E3C 800B423C 240A002B */  addiu      $t2, $zero, 0x2b
/* B4E40 800B4240 8DC8000C */  lw         $t0, 0xc($t6)
/* B4E44 800B4244 0188C821 */  addu       $t9, $t4, $t0
/* B4E48 800B4248 A32A0000 */  sb         $t2, ($t9)
/* B4E4C 800B424C 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4E50 800B4250 8DB8000C */  lw         $t8, 0xc($t5)
/* B4E54 800B4254 27090001 */  addiu      $t1, $t8, 1
/* B4E58 800B4258 10000010 */  b          .L800B429C
/* B4E5C 800B425C ADA9000C */   sw        $t1, 0xc($t5)
.L800B4260:
/* B4E60 800B4260 8FAF0038 */  lw         $t7, 0x38($sp)
/* B4E64 800B4264 8DEB0030 */  lw         $t3, 0x30($t7)
/* B4E68 800B4268 316E0001 */  andi       $t6, $t3, 1
/* B4E6C 800B426C 11C0000B */  beqz       $t6, .L800B429C
/* B4E70 800B4270 00000000 */   nop
/* B4E74 800B4274 8FAA0038 */  lw         $t2, 0x38($sp)
/* B4E78 800B4278 8FA80044 */  lw         $t0, 0x44($sp)
/* B4E7C 800B427C 240C0020 */  addiu      $t4, $zero, 0x20
/* B4E80 800B4280 8D59000C */  lw         $t9, 0xc($t2)
/* B4E84 800B4284 0119C021 */  addu       $t8, $t0, $t9
/* B4E88 800B4288 A30C0000 */  sb         $t4, ($t8)
/* B4E8C 800B428C 8FA90038 */  lw         $t1, 0x38($sp)
/* B4E90 800B4290 8D2D000C */  lw         $t5, 0xc($t1)
/* B4E94 800B4294 25AF0001 */  addiu      $t7, $t5, 1
/* B4E98 800B4298 AD2F000C */  sw         $t7, 0xc($t1)
.L800B429C:
/* B4E9C 800B429C 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4EA0 800B42A0 8FAA0044 */  lw         $t2, 0x44($sp)
/* B4EA4 800B42A4 8D6E000C */  lw         $t6, 0xc($t3)
/* B4EA8 800B42A8 01CA4021 */  addu       $t0, $t6, $t2
/* B4EAC 800B42AC AD680008 */  sw         $t0, 8($t3)
/* B4EB0 800B42B0 8FA40038 */  lw         $a0, 0x38($sp)
/* B4EB4 800B42B4 0C02E4B0 */  jal        func_800B92C0
/* B4EB8 800B42B8 93A50043 */   lbu       $a1, 0x43($sp)
/* B4EBC 800B42BC 1000009B */  b          .L800B452C
/* B4EC0 800B42C0 00000000 */   nop
/* B4EC4 800B42C4 8FB90038 */  lw         $t9, 0x38($sp)
/* B4EC8 800B42C8 24010068 */  addiu      $at, $zero, 0x68
/* B4ECC 800B42CC 932C0034 */  lbu        $t4, 0x34($t9)
/* B4ED0 800B42D0 1581000F */  bne        $t4, $at, .L800B4310
/* B4ED4 800B42D4 00000000 */   nop
/* B4ED8 800B42D8 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4EDC 800B42DC 2401FFFC */  addiu      $at, $zero, -4
/* B4EE0 800B42E0 8F0D0000 */  lw         $t5, ($t8)
/* B4EE4 800B42E4 25AF0003 */  addiu      $t7, $t5, 3
/* B4EE8 800B42E8 01E14824 */  and        $t1, $t7, $at
/* B4EEC 800B42EC 252E0004 */  addiu      $t6, $t1, 4
/* B4EF0 800B42F0 AF0E0000 */  sw         $t6, ($t8)
/* B4EF4 800B42F4 8FAA003C */  lw         $t2, 0x3c($sp)
/* B4EF8 800B42F8 8FA80038 */  lw         $t0, 0x38($sp)
/* B4EFC 800B42FC 8D500000 */  lw         $s0, ($t2)
/* B4F00 800B4300 8D0B002C */  lw         $t3, 0x2c($t0)
/* B4F04 800B4304 8E19FFFC */  lw         $t9, -4($s0)
/* B4F08 800B4308 10000037 */  b          .L800B43E8
/* B4F0C 800B430C A72B0000 */   sh        $t3, ($t9)
.L800B4310:
/* B4F10 800B4310 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4F14 800B4314 2401006C */  addiu      $at, $zero, 0x6c
/* B4F18 800B4318 918D0034 */  lbu        $t5, 0x34($t4)
/* B4F1C 800B431C 15A1000F */  bne        $t5, $at, .L800B435C
/* B4F20 800B4320 00000000 */   nop
/* B4F24 800B4324 8FAF003C */  lw         $t7, 0x3c($sp)
/* B4F28 800B4328 2401FFFC */  addiu      $at, $zero, -4
/* B4F2C 800B432C 8DE90000 */  lw         $t1, ($t7)
/* B4F30 800B4330 252E0003 */  addiu      $t6, $t1, 3
/* B4F34 800B4334 01C1C024 */  and        $t8, $t6, $at
/* B4F38 800B4338 270A0004 */  addiu      $t2, $t8, 4
/* B4F3C 800B433C ADEA0000 */  sw         $t2, ($t7)
/* B4F40 800B4340 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4F44 800B4344 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4F48 800B4348 8D100000 */  lw         $s0, ($t0)
/* B4F4C 800B434C 8D79002C */  lw         $t9, 0x2c($t3)
/* B4F50 800B4350 8E0CFFFC */  lw         $t4, -4($s0)
/* B4F54 800B4354 10000024 */  b          .L800B43E8
/* B4F58 800B4358 AD990000 */   sw        $t9, ($t4)
.L800B435C:
/* B4F5C 800B435C 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4F60 800B4360 2401004C */  addiu      $at, $zero, 0x4c
/* B4F64 800B4364 91A90034 */  lbu        $t1, 0x34($t5)
/* B4F68 800B4368 15210012 */  bne        $t1, $at, .L800B43B4
/* B4F6C 800B436C 00000000 */   nop
/* B4F70 800B4370 8FAE003C */  lw         $t6, 0x3c($sp)
/* B4F74 800B4374 2401FFFC */  addiu      $at, $zero, -4
/* B4F78 800B4378 8DD80000 */  lw         $t8, ($t6)
/* B4F7C 800B437C 270A0003 */  addiu      $t2, $t8, 3
/* B4F80 800B4380 01417824 */  and        $t7, $t2, $at
/* B4F84 800B4384 25E80004 */  addiu      $t0, $t7, 4
/* B4F88 800B4388 ADC80000 */  sw         $t0, ($t6)
/* B4F8C 800B438C 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4F90 800B4390 8FB90038 */  lw         $t9, 0x38($sp)
/* B4F94 800B4394 24180000 */  addiu      $t8, $zero, 0
/* B4F98 800B4398 8D700000 */  lw         $s0, ($t3)
/* B4F9C 800B439C 8F2C002C */  lw         $t4, 0x2c($t9)
/* B4FA0 800B43A0 8E0DFFFC */  lw         $t5, -4($s0)
/* B4FA4 800B43A4 0180C825 */  or         $t9, $t4, $zero
/* B4FA8 800B43A8 ADB90004 */  sw         $t9, 4($t5)
/* B4FAC 800B43AC 1000000E */  b          .L800B43E8
/* B4FB0 800B43B0 ADB80000 */   sw        $t8, ($t5)
.L800B43B4:
/* B4FB4 800B43B4 8FA9003C */  lw         $t1, 0x3c($sp)
/* B4FB8 800B43B8 2401FFFC */  addiu      $at, $zero, -4
/* B4FBC 800B43BC 8D2A0000 */  lw         $t2, ($t1)
/* B4FC0 800B43C0 254F0003 */  addiu      $t7, $t2, 3
/* B4FC4 800B43C4 01E14024 */  and        $t0, $t7, $at
/* B4FC8 800B43C8 250E0004 */  addiu      $t6, $t0, 4
/* B4FCC 800B43CC AD2E0000 */  sw         $t6, ($t1)
/* B4FD0 800B43D0 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4FD4 800B43D4 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4FD8 800B43D8 8D700000 */  lw         $s0, ($t3)
/* B4FDC 800B43DC 8D98002C */  lw         $t8, 0x2c($t4)
/* B4FE0 800B43E0 8E19FFFC */  lw         $t9, -4($s0)
/* B4FE4 800B43E4 AF380000 */  sw         $t8, ($t9)
.L800B43E8:
/* B4FE8 800B43E8 10000050 */  b          .L800B452C
/* B4FEC 800B43EC 00000000 */   nop
/* B4FF0 800B43F0 8FAD003C */  lw         $t5, 0x3c($sp)
/* B4FF4 800B43F4 2401FFFC */  addiu      $at, $zero, -4
/* B4FF8 800B43F8 8DAA0000 */  lw         $t2, ($t5)
/* B4FFC 800B43FC 254F0003 */  addiu      $t7, $t2, 3
/* B5000 800B4400 01E14024 */  and        $t0, $t7, $at
/* B5004 800B4404 250E0004 */  addiu      $t6, $t0, 4
/* B5008 800B4408 ADAE0000 */  sw         $t6, ($t5)
/* B500C 800B440C 8FA9003C */  lw         $t1, 0x3c($sp)
/* B5010 800B4410 8FAA0038 */  lw         $t2, 0x38($sp)
/* B5014 800B4414 8D2B0000 */  lw         $t3, ($t1)
/* B5018 800B4418 8D6CFFFC */  lw         $t4, -4($t3)
/* B501C 800B441C 0180C825 */  or         $t9, $t4, $zero
/* B5020 800B4420 000CC7C3 */  sra        $t8, $t4, 0x1f
/* B5024 800B4424 AD580000 */  sw         $t8, ($t2)
/* B5028 800B4428 AD590004 */  sw         $t9, 4($t2)
/* B502C 800B442C 8FAF0038 */  lw         $t7, 0x38($sp)
/* B5030 800B4430 8FAE0044 */  lw         $t6, 0x44($sp)
/* B5034 800B4434 8DE8000C */  lw         $t0, 0xc($t7)
/* B5038 800B4438 010E6821 */  addu       $t5, $t0, $t6
/* B503C 800B443C ADED0008 */  sw         $t5, 8($t7)
/* B5040 800B4440 8FA40038 */  lw         $a0, 0x38($sp)
/* B5044 800B4444 0C02E3E4 */  jal        func_800B8F90
/* B5048 800B4448 24050078 */   addiu     $a1, $zero, 0x78
/* B504C 800B444C 10000037 */  b          .L800B452C
/* B5050 800B4450 00000000 */   nop
/* B5054 800B4454 8FA9003C */  lw         $t1, 0x3c($sp)
/* B5058 800B4458 2401FFFC */  addiu      $at, $zero, -4
/* B505C 800B445C 8D2B0000 */  lw         $t3, ($t1)
/* B5060 800B4460 256C0003 */  addiu      $t4, $t3, 3
/* B5064 800B4464 0181C024 */  and        $t8, $t4, $at
/* B5068 800B4468 27190004 */  addiu      $t9, $t8, 4
/* B506C 800B446C AD390000 */  sw         $t9, ($t1)
/* B5070 800B4470 8FAA003C */  lw         $t2, 0x3c($sp)
/* B5074 800B4474 8FAD0038 */  lw         $t5, 0x38($sp)
/* B5078 800B4478 8D480000 */  lw         $t0, ($t2)
/* B507C 800B447C 8D0EFFFC */  lw         $t6, -4($t0)
/* B5080 800B4480 ADAE0008 */  sw         $t6, 8($t5)
/* B5084 800B4484 8FAF0038 */  lw         $t7, 0x38($sp)
/* B5088 800B4488 0C029722 */  jal        func_800A5C88
/* B508C 800B448C 8DE40008 */   lw        $a0, 8($t7)
/* B5090 800B4490 8FAB0038 */  lw         $t3, 0x38($sp)
/* B5094 800B4494 AD620014 */  sw         $v0, 0x14($t3)
/* B5098 800B4498 8FAC0038 */  lw         $t4, 0x38($sp)
/* B509C 800B449C 8D980024 */  lw         $t8, 0x24($t4)
/* B50A0 800B44A0 07000008 */  bltz       $t8, .L800B44C4
/* B50A4 800B44A4 00000000 */   nop
/* B50A8 800B44A8 8D990014 */  lw         $t9, 0x14($t4)
/* B50AC 800B44AC 0319082A */  slt        $at, $t8, $t9
/* B50B0 800B44B0 10200004 */  beqz       $at, .L800B44C4
/* B50B4 800B44B4 00000000 */   nop
/* B50B8 800B44B8 8FA90038 */  lw         $t1, 0x38($sp)
/* B50BC 800B44BC 8D2A0024 */  lw         $t2, 0x24($t1)
/* B50C0 800B44C0 AD2A0014 */  sw         $t2, 0x14($t1)
.L800B44C4:
/* B50C4 800B44C4 10000019 */  b          .L800B452C
/* B50C8 800B44C8 00000000 */   nop
.L800B44CC:
/* B50CC 800B44CC 8FAD0038 */  lw         $t5, 0x38($sp)
/* B50D0 800B44D0 8FAE0044 */  lw         $t6, 0x44($sp)
/* B50D4 800B44D4 24080025 */  addiu      $t0, $zero, 0x25
/* B50D8 800B44D8 8DAF000C */  lw         $t7, 0xc($t5)
/* B50DC 800B44DC 01CF5821 */  addu       $t3, $t6, $t7
/* B50E0 800B44E0 A1680000 */  sb         $t0, ($t3)
/* B50E4 800B44E4 8FAC0038 */  lw         $t4, 0x38($sp)
/* B50E8 800B44E8 8D98000C */  lw         $t8, 0xc($t4)
/* B50EC 800B44EC 27190001 */  addiu      $t9, $t8, 1
/* B50F0 800B44F0 AD99000C */  sw         $t9, 0xc($t4)
/* B50F4 800B44F4 1000000D */  b          .L800B452C
/* B50F8 800B44F8 00000000 */   nop
.L800B44FC:
/* B50FC 800B44FC 8FAD0038 */  lw         $t5, 0x38($sp)
/* B5100 800B4500 8FA90044 */  lw         $t1, 0x44($sp)
/* B5104 800B4504 93AA0043 */  lbu        $t2, 0x43($sp)
/* B5108 800B4508 8DAE000C */  lw         $t6, 0xc($t5)
/* B510C 800B450C 012E7821 */  addu       $t7, $t1, $t6
/* B5110 800B4510 A1EA0000 */  sb         $t2, ($t7)
/* B5114 800B4514 8FA80038 */  lw         $t0, 0x38($sp)
/* B5118 800B4518 8D0B000C */  lw         $t3, 0xc($t0)
/* B511C 800B451C 25780001 */  addiu      $t8, $t3, 1
/* B5120 800B4520 AD18000C */  sw         $t8, 0xc($t0)
/* B5124 800B4524 10000001 */  b          .L800B452C
/* B5128 800B4528 00000000 */   nop
.L800B452C:
/* B512C 800B452C 10000001 */  b          .L800B4534
/* B5130 800B4530 00000000 */   nop
.L800B4534:
/* B5134 800B4534 8FBF0024 */  lw         $ra, 0x24($sp)
/* B5138 800B4538 8FB00014 */  lw         $s0, 0x14($sp)
/* B513C 800B453C 8FB10018 */  lw         $s1, 0x18($sp)
/* B5140 800B4540 8FB2001C */  lw         $s2, 0x1c($sp)
/* B5144 800B4544 8FB30020 */  lw         $s3, 0x20($sp)
/* B5148 800B4548 03E00008 */  jr         $ra
/* B514C 800B454C 27BD0038 */   addiu     $sp, $sp, 0x38
