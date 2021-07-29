.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynAllocVoice
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
/* AEB9C 800ADF9C 0C0297B4 */  jal        __osError
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
/* AEBCC 800ADFCC 0C0297B4 */  jal        __osError
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
/* AEC30 800AE030 0C02B868 */  jal        _allocatePVoice
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
/* AEC78 800AE078 0C027AE8 */  jal        __allocParam
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
/* AECD8 800AE0D8 0C027AE8 */  jal        __allocParam
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
/* AED48 800AE148 0C0297B4 */  jal        __osError
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

glabel _allocatePVoice
/* AEDA0 800AE1A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AEDA4 800AE1A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AEDA8 800AE1A8 AFA40028 */  sw         $a0, 0x28($sp)
/* AEDAC 800AE1AC AFA5002C */  sw         $a1, 0x2c($sp)
/* AEDB0 800AE1B0 AFA60030 */  sw         $a2, 0x30($sp)
/* AEDB4 800AE1B4 AFA0001C */  sw         $zero, 0x1c($sp)
/* AEDB8 800AE1B8 8FAE0028 */  lw         $t6, 0x28($sp)
/* AEDBC 800AE1BC 8DCF0014 */  lw         $t7, 0x14($t6)
/* AEDC0 800AE1C0 11E0000C */  beqz       $t7, .L800AE1F4
/* AEDC4 800AE1C4 AFAF0024 */   sw        $t7, 0x24($sp)
/* AEDC8 800AE1C8 8FB80024 */  lw         $t8, 0x24($sp)
/* AEDCC 800AE1CC 8FB9002C */  lw         $t9, 0x2c($sp)
/* AEDD0 800AE1D0 AF380000 */  sw         $t8, ($t9)
/* AEDD4 800AE1D4 0C026EBB */  jal        alUnlink
/* AEDD8 800AE1D8 8FA40024 */   lw        $a0, 0x24($sp)
/* AEDDC 800AE1DC 8FA50028 */  lw         $a1, 0x28($sp)
/* AEDE0 800AE1E0 8FA40024 */  lw         $a0, 0x24($sp)
/* AEDE4 800AE1E4 0C026EAE */  jal        alLink
/* AEDE8 800AE1E8 24A5000C */   addiu     $a1, $a1, 0xc
/* AEDEC 800AE1EC 1000002D */  b          .L800AE2A4
/* AEDF0 800AE1F0 00000000 */   nop
.L800AE1F4:
/* AEDF4 800AE1F4 8FA80028 */  lw         $t0, 0x28($sp)
/* AEDF8 800AE1F8 8D090004 */  lw         $t1, 4($t0)
/* AEDFC 800AE1FC 1120000C */  beqz       $t1, .L800AE230
/* AEE00 800AE200 AFA90024 */   sw        $t1, 0x24($sp)
/* AEE04 800AE204 8FAA0024 */  lw         $t2, 0x24($sp)
/* AEE08 800AE208 8FAB002C */  lw         $t3, 0x2c($sp)
/* AEE0C 800AE20C AD6A0000 */  sw         $t2, ($t3)
/* AEE10 800AE210 0C026EBB */  jal        alUnlink
/* AEE14 800AE214 8FA40024 */   lw        $a0, 0x24($sp)
/* AEE18 800AE218 8FA50028 */  lw         $a1, 0x28($sp)
/* AEE1C 800AE21C 8FA40024 */  lw         $a0, 0x24($sp)
/* AEE20 800AE220 0C026EAE */  jal        alLink
/* AEE24 800AE224 24A5000C */   addiu     $a1, $a1, 0xc
/* AEE28 800AE228 1000001E */  b          .L800AE2A4
/* AEE2C 800AE22C 00000000 */   nop
.L800AE230:
/* AEE30 800AE230 8FAC0028 */  lw         $t4, 0x28($sp)
/* AEE34 800AE234 8D8D000C */  lw         $t5, 0xc($t4)
/* AEE38 800AE238 11A0001A */  beqz       $t5, .L800AE2A4
/* AEE3C 800AE23C AFAD0024 */   sw        $t5, 0x24($sp)
.L800AE240:
/* AEE40 800AE240 8FAE0024 */  lw         $t6, 0x24($sp)
/* AEE44 800AE244 AFAE0020 */  sw         $t6, 0x20($sp)
/* AEE48 800AE248 8FAF0020 */  lw         $t7, 0x20($sp)
/* AEE4C 800AE24C 87A80032 */  lh         $t0, 0x32($sp)
/* AEE50 800AE250 8DF80008 */  lw         $t8, 8($t7)
/* AEE54 800AE254 87190016 */  lh         $t9, 0x16($t8)
/* AEE58 800AE258 0119082A */  slt        $at, $t0, $t9
/* AEE5C 800AE25C 1420000D */  bnez       $at, .L800AE294
/* AEE60 800AE260 00000000 */   nop
/* AEE64 800AE264 8DE900D8 */  lw         $t1, 0xd8($t7)
/* AEE68 800AE268 1520000A */  bnez       $t1, .L800AE294
/* AEE6C 800AE26C 00000000 */   nop
/* AEE70 800AE270 8FAA0020 */  lw         $t2, 0x20($sp)
/* AEE74 800AE274 8FAB002C */  lw         $t3, 0x2c($sp)
/* AEE78 800AE278 AD6A0000 */  sw         $t2, ($t3)
/* AEE7C 800AE27C 8FAC0020 */  lw         $t4, 0x20($sp)
/* AEE80 800AE280 8D8D0008 */  lw         $t5, 8($t4)
/* AEE84 800AE284 85AE0016 */  lh         $t6, 0x16($t5)
/* AEE88 800AE288 A7AE0032 */  sh         $t6, 0x32($sp)
/* AEE8C 800AE28C 24180001 */  addiu      $t8, $zero, 1
/* AEE90 800AE290 AFB8001C */  sw         $t8, 0x1c($sp)
.L800AE294:
/* AEE94 800AE294 8FB90024 */  lw         $t9, 0x24($sp)
/* AEE98 800AE298 8F280000 */  lw         $t0, ($t9)
/* AEE9C 800AE29C 1500FFE8 */  bnez       $t0, .L800AE240
/* AEEA0 800AE2A0 AFA80024 */   sw        $t0, 0x24($sp)
.L800AE2A4:
/* AEEA4 800AE2A4 10000003 */  b          .L800AE2B4
/* AEEA8 800AE2A8 8FA2001C */   lw        $v0, 0x1c($sp)
/* AEEAC 800AE2AC 10000001 */  b          .L800AE2B4
/* AEEB0 800AE2B0 00000000 */   nop
.L800AE2B4:
/* AEEB4 800AE2B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AEEB8 800AE2B8 27BD0028 */  addiu      $sp, $sp, 0x28
/* AEEBC 800AE2BC 03E00008 */  jr         $ra
/* AEEC0 800AE2C0 00000000 */   nop
/* AEEC4 800AE2C4 00000000 */  nop
/* AEEC8 800AE2C8 00000000 */  nop
/* AEECC 800AE2CC 00000000 */  nop
