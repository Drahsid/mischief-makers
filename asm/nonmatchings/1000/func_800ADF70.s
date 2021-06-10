glabel func_800ADF70
/* AEB70 800ADF70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AEB74 800ADF74 AFBF0014 */  sw         $ra, 0x14($sp)
/* AEB78 800ADF78 AFA40028 */  sw         $a0, 0x28($sp)
/* AEB7C 800ADF7C AFA5002C */  sw         $a1, 0x2c($sp)
/* AEB80 800ADF80 AFA60030 */  sw         $a2, 0x30($sp)
/* AEB84 800ADF84 AFA00024 */  sw         $zero, 0x24($sp)
/* AEB88 800ADF88 8FAE0028 */  lw         $t6, 0x28($sp)
/* AEB8C 800ADF8C 8DCF002C */  lw         $t7, 0x2c($t6)
/* AEB90 800ADF90 15E00008 */  bnez       $t7, .L800ADFB4
/* AEB94 800ADF94 00000000 */   nop
/* AEB98 800ADF98 2404006A */  addiu      $a0, $zero, 0x6a
/* AEB9C 800ADF9C 0C0297B4 */  jal        func_800A5ED0
/* AEBA0 800ADFA0 00002825 */   or        $a1, $zero, $zero
/* AEBA4 800ADFA4 1000007A */  b          .L800AE190
/* AEBA8 800ADFA8 00001025 */   or        $v0, $zero, $zero
/* AEBAC 800ADFAC 1000000B */  b          .L800ADFDC
/* AEBB0 800ADFB0 00000000 */   nop
.L800ADFB4:
/* AEBB4 800ADFB4 8FB80028 */  lw         $t8, 0x28($sp)
/* AEBB8 800ADFB8 8F19002C */  lw         $t9, 0x2c($t8)
/* AEBBC 800ADFBC 8F280000 */  lw         $t0, ($t9)
/* AEBC0 800ADFC0 15000006 */  bnez       $t0, .L800ADFDC
/* AEBC4 800ADFC4 00000000 */   nop
/* AEBC8 800ADFC8 2404006A */  addiu      $a0, $zero, 0x6a
/* AEBCC 800ADFCC 0C0297B4 */  jal        func_800A5ED0
/* AEBD0 800ADFD0 00002825 */   or        $a1, $zero, $zero
/* AEBD4 800ADFD4 1000006E */  b          .L800AE190
/* AEBD8 800ADFD8 00001025 */   or        $v0, $zero, $zero
.L800ADFDC:
/* AEBDC 800ADFDC 8FA90030 */  lw         $t1, 0x30($sp)
/* AEBE0 800ADFE0 8FAB002C */  lw         $t3, 0x2c($sp)
/* AEBE4 800ADFE4 852A0000 */  lh         $t2, ($t1)
/* AEBE8 800ADFE8 A56A0016 */  sh         $t2, 0x16($t3)
/* AEBEC 800ADFEC 8FAC0030 */  lw         $t4, 0x30($sp)
/* AEBF0 800ADFF0 8FAE002C */  lw         $t6, 0x2c($sp)
/* AEBF4 800ADFF4 918D0004 */  lbu        $t5, 4($t4)
/* AEBF8 800ADFF8 A5CD001A */  sh         $t5, 0x1a($t6)
/* AEBFC 800ADFFC 8FAF002C */  lw         $t7, 0x2c($sp)
/* AEC00 800AE000 ADE0000C */  sw         $zero, 0xc($t7)
/* AEC04 800AE004 8FB80030 */  lw         $t8, 0x30($sp)
/* AEC08 800AE008 8FA8002C */  lw         $t0, 0x2c($sp)
/* AEC0C 800AE00C 87190002 */  lh         $t9, 2($t8)
/* AEC10 800AE010 A5190018 */  sh         $t9, 0x18($t0)
/* AEC14 800AE014 8FA9002C */  lw         $t1, 0x2c($sp)
/* AEC18 800AE018 A5200014 */  sh         $zero, 0x14($t1)
/* AEC1C 800AE01C 8FAA002C */  lw         $t2, 0x2c($sp)
/* AEC20 800AE020 AD400008 */  sw         $zero, 8($t2)
/* AEC24 800AE024 8FAB0030 */  lw         $t3, 0x30($sp)
/* AEC28 800AE028 8FA40028 */  lw         $a0, 0x28($sp)
/* AEC2C 800AE02C 27A50024 */  addiu      $a1, $sp, 0x24
/* AEC30 800AE030 0C02B868 */  jal        func_800AE1A0
/* AEC34 800AE034 85660000 */   lh        $a2, ($t3)
/* AEC38 800AE038 AFA20018 */  sw         $v0, 0x18($sp)
/* AEC3C 800AE03C 8FAC0024 */  lw         $t4, 0x24($sp)
/* AEC40 800AE040 1180004D */  beqz       $t4, .L800AE178
/* AEC44 800AE044 00000000 */   nop
/* AEC48 800AE048 8FAD0024 */  lw         $t5, 0x24($sp)
/* AEC4C 800AE04C 8DAE000C */  lw         $t6, 0xc($t5)
/* AEC50 800AE050 AFAE0020 */  sw         $t6, 0x20($sp)
/* AEC54 800AE054 8FAF0018 */  lw         $t7, 0x18($sp)
/* AEC58 800AE058 11E0003F */  beqz       $t7, .L800AE158
/* AEC5C 800AE05C 00000000 */   nop
/* AEC60 800AE060 8FB90024 */  lw         $t9, 0x24($sp)
/* AEC64 800AE064 24180200 */  addiu      $t8, $zero, 0x200
/* AEC68 800AE068 AF3800D8 */  sw         $t8, 0xd8($t9)
/* AEC6C 800AE06C 8FA80024 */  lw         $t0, 0x24($sp)
/* AEC70 800AE070 8D090008 */  lw         $t1, 8($t0)
/* AEC74 800AE074 AD200008 */  sw         $zero, 8($t1)
/* AEC78 800AE078 0C027AE8 */  jal        func_8009EBA0
/* AEC7C 800AE07C 00000000 */   nop
/* AEC80 800AE080 AFA2001C */  sw         $v0, 0x1c($sp)
/* AEC84 800AE084 8FAA0028 */  lw         $t2, 0x28($sp)
/* AEC88 800AE088 8FAC001C */  lw         $t4, 0x1c($sp)
/* AEC8C 800AE08C 8D4B001C */  lw         $t3, 0x1c($t2)
/* AEC90 800AE090 AD8B0004 */  sw         $t3, 4($t4)
/* AEC94 800AE094 8FAE001C */  lw         $t6, 0x1c($sp)
/* AEC98 800AE098 240D000B */  addiu      $t5, $zero, 0xb
/* AEC9C 800AE09C A5CD0008 */  sh         $t5, 8($t6)
/* AECA0 800AE0A0 8FAF001C */  lw         $t7, 0x1c($sp)
/* AECA4 800AE0A4 ADE0000C */  sw         $zero, 0xc($t7)
/* AECA8 800AE0A8 8FB80024 */  lw         $t8, 0x24($sp)
/* AECAC 800AE0AC 8FA9001C */  lw         $t1, 0x1c($sp)
/* AECB0 800AE0B0 8F1900D8 */  lw         $t9, 0xd8($t8)
/* AECB4 800AE0B4 2728FFC0 */  addiu      $t0, $t9, -0x40
/* AECB8 800AE0B8 AD280010 */  sw         $t0, 0x10($t1)
/* AECBC 800AE0BC 8FAA0020 */  lw         $t2, 0x20($sp)
/* AECC0 800AE0C0 24050003 */  addiu      $a1, $zero, 3
/* AECC4 800AE0C4 8FA6001C */  lw         $a2, 0x1c($sp)
/* AECC8 800AE0C8 8D590008 */  lw         $t9, 8($t2)
/* AECCC 800AE0CC 01402025 */  or         $a0, $t2, $zero
/* AECD0 800AE0D0 0320F809 */  jalr       $t9
/* AECD4 800AE0D4 00000000 */   nop
/* AECD8 800AE0D8 0C027AE8 */  jal        func_8009EBA0
/* AECDC 800AE0DC 00000000 */   nop
/* AECE0 800AE0E0 AFA2001C */  sw         $v0, 0x1c($sp)
/* AECE4 800AE0E4 8FAB001C */  lw         $t3, 0x1c($sp)
/* AECE8 800AE0E8 11600016 */  beqz       $t3, .L800AE144
/* AECEC 800AE0EC 00000000 */   nop
/* AECF0 800AE0F0 8FAC0028 */  lw         $t4, 0x28($sp)
/* AECF4 800AE0F4 8FAE0024 */  lw         $t6, 0x24($sp)
/* AECF8 800AE0F8 8FA8001C */  lw         $t0, 0x1c($sp)
/* AECFC 800AE0FC 8D8D001C */  lw         $t5, 0x1c($t4)
/* AED00 800AE100 8DCF00D8 */  lw         $t7, 0xd8($t6)
/* AED04 800AE104 01AFC021 */  addu       $t8, $t5, $t7
/* AED08 800AE108 AD180004 */  sw         $t8, 4($t0)
/* AED0C 800AE10C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AED10 800AE110 2409000F */  addiu      $t1, $zero, 0xf
/* AED14 800AE114 A5490008 */  sh         $t1, 8($t2)
/* AED18 800AE118 8FB9001C */  lw         $t9, 0x1c($sp)
/* AED1C 800AE11C AF200000 */  sw         $zero, ($t9)
/* AED20 800AE120 8FAB0020 */  lw         $t3, 0x20($sp)
/* AED24 800AE124 24050003 */  addiu      $a1, $zero, 3
/* AED28 800AE128 8FA6001C */  lw         $a2, 0x1c($sp)
/* AED2C 800AE12C 8D790008 */  lw         $t9, 8($t3)
/* AED30 800AE130 01602025 */  or         $a0, $t3, $zero
/* AED34 800AE134 0320F809 */  jalr       $t9
/* AED38 800AE138 00000000 */   nop
/* AED3C 800AE13C 10000004 */  b          .L800AE150
/* AED40 800AE140 00000000 */   nop
.L800AE144:
/* AED44 800AE144 2404006A */  addiu      $a0, $zero, 0x6a
/* AED48 800AE148 0C0297B4 */  jal        func_800A5ED0
/* AED4C 800AE14C 00002825 */   or        $a1, $zero, $zero
.L800AE150:
/* AED50 800AE150 10000003 */  b          .L800AE160
/* AED54 800AE154 00000000 */   nop
.L800AE158:
/* AED58 800AE158 8FAC0024 */  lw         $t4, 0x24($sp)
/* AED5C 800AE15C AD8000D8 */  sw         $zero, 0xd8($t4)
.L800AE160:
/* AED60 800AE160 8FAE002C */  lw         $t6, 0x2c($sp)
/* AED64 800AE164 8FAD0024 */  lw         $t5, 0x24($sp)
/* AED68 800AE168 ADAE0008 */  sw         $t6, 8($t5)
/* AED6C 800AE16C 8FAF0024 */  lw         $t7, 0x24($sp)
/* AED70 800AE170 8FB8002C */  lw         $t8, 0x2c($sp)
/* AED74 800AE174 AF0F0008 */  sw         $t7, 8($t8)
.L800AE178:
/* AED78 800AE178 8FA20024 */  lw         $v0, 0x24($sp)
/* AED7C 800AE17C 0002402B */  sltu       $t0, $zero, $v0
/* AED80 800AE180 10000003 */  b          .L800AE190
/* AED84 800AE184 01001025 */   or        $v0, $t0, $zero
/* AED88 800AE188 10000001 */  b          .L800AE190
/* AED8C 800AE18C 00000000 */   nop
.L800AE190:
/* AED90 800AE190 8FBF0014 */  lw         $ra, 0x14($sp)
/* AED94 800AE194 27BD0028 */  addiu      $sp, $sp, 0x28
/* AED98 800AE198 03E00008 */  jr         $ra
/* AED9C 800AE19C 00000000 */   nop
