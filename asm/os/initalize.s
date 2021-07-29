.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osInitialize
/* 99B50 80098F50 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 99B54 80098F54 AFBF001C */  sw         $ra, 0x1c($sp)
/* 99B58 80098F58 AFB00018 */  sw         $s0, 0x18($sp)
/* 99B5C 80098F5C AFA00058 */  sw         $zero, 0x58($sp)
/* 99B60 80098F60 0C029B68 */  jal        __osGetSR
/* 99B64 80098F64 00000000 */   nop
/* 99B68 80098F68 00408025 */  or         $s0, $v0, $zero
/* 99B6C 80098F6C 3C012000 */  lui        $at, 0x2000
/* 99B70 80098F70 0C029B64 */  jal        __osSetSR
/* 99B74 80098F74 02012025 */   or        $a0, $s0, $at
/* 99B78 80098F78 3C040100 */  lui        $a0, 0x100
/* 99B7C 80098F7C 0C029B6C */  jal        __osSetFpcCsr
/* 99B80 80098F80 34840800 */   ori       $a0, $a0, 0x800
/* 99B84 80098F84 3C041FC0 */  lui        $a0, 0x1fc0
/* 99B88 80098F88 348407FC */  ori        $a0, $a0, 0x7fc
/* 99B8C 80098F8C 0C029B70 */  jal        __osSpRawReadIo
/* 99B90 80098F90 27A5005C */   addiu     $a1, $sp, 0x5c
/* 99B94 80098F94 10400007 */  beqz       $v0, .L80098FB4
/* 99B98 80098F98 00000000 */   nop
.L80098F9C:
/* 99B9C 80098F9C 3C041FC0 */  lui        $a0, 0x1fc0
/* 99BA0 80098FA0 348407FC */  ori        $a0, $a0, 0x7fc
/* 99BA4 80098FA4 0C029B70 */  jal        __osSpRawReadIo
/* 99BA8 80098FA8 27A5005C */   addiu     $a1, $sp, 0x5c
/* 99BAC 80098FAC 1440FFFB */  bnez       $v0, .L80098F9C
/* 99BB0 80098FB0 00000000 */   nop
.L80098FB4:
/* 99BB4 80098FB4 8FA5005C */  lw         $a1, 0x5c($sp)
/* 99BB8 80098FB8 3C041FC0 */  lui        $a0, 0x1fc0
/* 99BBC 80098FBC 348407FC */  ori        $a0, $a0, 0x7fc
/* 99BC0 80098FC0 34AE0008 */  ori        $t6, $a1, 8
/* 99BC4 80098FC4 0C029BA0 */  jal        __osSiRawWriteIo
/* 99BC8 80098FC8 01C02825 */   or        $a1, $t6, $zero
/* 99BCC 80098FCC 10400009 */  beqz       $v0, .L80098FF4
/* 99BD0 80098FD0 00000000 */   nop
.L80098FD4:
/* 99BD4 80098FD4 8FA5005C */  lw         $a1, 0x5c($sp)
/* 99BD8 80098FD8 3C041FC0 */  lui        $a0, 0x1fc0
/* 99BDC 80098FDC 348407FC */  ori        $a0, $a0, 0x7fc
/* 99BE0 80098FE0 34AF0008 */  ori        $t7, $a1, 8
/* 99BE4 80098FE4 0C029BA0 */  jal        __osSiRawWriteIo
/* 99BE8 80098FE8 01E02825 */   or        $a1, $t7, $zero
/* 99BEC 80098FEC 1440FFF9 */  bnez       $v0, .L80098FD4
/* 99BF0 80098FF0 00000000 */   nop
.L80098FF4:
/* 99BF4 80098FF4 3C19800A */  lui        $t9, %hi(__osExceptionPreamble)
/* 99BF8 80098FF8 27395EF0 */  addiu      $t9, $t9, %lo(__osExceptionPreamble)
/* 99BFC 80098FFC 8F210000 */  lw         $at, ($t9)
/* 99C00 80099000 3C188000 */  lui        $t8, 0x8000
/* 99C04 80099004 AF010000 */  sw         $at, ($t8)
/* 99C08 80099008 8F2A0004 */  lw         $t2, 4($t9)
/* 99C0C 8009900C AF0A0004 */  sw         $t2, 4($t8)
/* 99C10 80099010 8F210008 */  lw         $at, 8($t9)
/* 99C14 80099014 AF010008 */  sw         $at, 8($t8)
/* 99C18 80099018 8F2A000C */  lw         $t2, 0xc($t9)
/* 99C1C 8009901C AF0A000C */  sw         $t2, 0xc($t8)
/* 99C20 80099020 3C0C800A */  lui        $t4, %hi(__osExceptionPreamble)
/* 99C24 80099024 258C5EF0 */  addiu      $t4, $t4, %lo(__osExceptionPreamble)
/* 99C28 80099028 8D810000 */  lw         $at, ($t4)
/* 99C2C 8009902C 3C0B8000 */  lui        $t3, 0x8000
/* 99C30 80099030 356B0080 */  ori        $t3, $t3, 0x80
/* 99C34 80099034 AD610000 */  sw         $at, ($t3)
/* 99C38 80099038 8D8F0004 */  lw         $t7, 4($t4)
/* 99C3C 8009903C AD6F0004 */  sw         $t7, 4($t3)
/* 99C40 80099040 8D810008 */  lw         $at, 8($t4)
/* 99C44 80099044 AD610008 */  sw         $at, 8($t3)
/* 99C48 80099048 8D8F000C */  lw         $t7, 0xc($t4)
/* 99C4C 8009904C AD6F000C */  sw         $t7, 0xc($t3)
/* 99C50 80099050 3C08800A */  lui        $t0, %hi(__osExceptionPreamble)
/* 99C54 80099054 25085EF0 */  addiu      $t0, $t0, %lo(__osExceptionPreamble)
/* 99C58 80099058 8D010000 */  lw         $at, ($t0)
/* 99C5C 8009905C 3C098000 */  lui        $t1, 0x8000
/* 99C60 80099060 35290100 */  ori        $t1, $t1, 0x100
/* 99C64 80099064 AD210000 */  sw         $at, ($t1)
/* 99C68 80099068 8D0A0004 */  lw         $t2, 4($t0)
/* 99C6C 8009906C AD2A0004 */  sw         $t2, 4($t1)
/* 99C70 80099070 8D010008 */  lw         $at, 8($t0)
/* 99C74 80099074 AD210008 */  sw         $at, 8($t1)
/* 99C78 80099078 8D0A000C */  lw         $t2, 0xc($t0)
/* 99C7C 8009907C AD2A000C */  sw         $t2, 0xc($t1)
/* 99C80 80099080 3C0D800A */  lui        $t5, %hi(__osExceptionPreamble)
/* 99C84 80099084 25AD5EF0 */  addiu      $t5, $t5, %lo(__osExceptionPreamble)
/* 99C88 80099088 8DA10000 */  lw         $at, ($t5)
/* 99C8C 8009908C 3C0E8000 */  lui        $t6, 0x8000
/* 99C90 80099090 35CE0180 */  ori        $t6, $t6, 0x180
/* 99C94 80099094 ADC10000 */  sw         $at, ($t6)
/* 99C98 80099098 8DAF0004 */  lw         $t7, 4($t5)
/* 99C9C 8009909C ADCF0004 */  sw         $t7, 4($t6)
/* 99CA0 800990A0 8DA10008 */  lw         $at, 8($t5)
/* 99CA4 800990A4 ADC10008 */  sw         $at, 8($t6)
/* 99CA8 800990A8 8DAF000C */  lw         $t7, 0xc($t5)
/* 99CAC 800990AC ADCF000C */  sw         $t7, 0xc($t6)
/* 99CB0 800990B0 3C048000 */  lui        $a0, 0x8000
/* 99CB4 800990B4 0C029BC4 */  jal        osWritebackDCache
/* 99CB8 800990B8 24050190 */   addiu     $a1, $zero, 0x190
/* 99CBC 800990BC 3C048000 */  lui        $a0, 0x8000
/* 99CC0 800990C0 0C029BE4 */  jal        osInvalICache
/* 99CC4 800990C4 24050190 */   addiu     $a1, $zero, 0x190
/* 99CC8 800990C8 0C029C04 */  jal        osMapTLBRdb
/* 99CCC 800990CC 00000000 */   nop
/* 99CD0 800990D0 24040004 */  addiu      $a0, $zero, 4
/* 99CD4 800990D4 0C029C1C */  jal        osPiRawReadIo
/* 99CD8 800990D8 27A50058 */   addiu     $a1, $sp, 0x58
/* 99CDC 800990DC 8FB90058 */  lw         $t9, 0x58($sp)
/* 99CE0 800990E0 2401FFF0 */  addiu      $at, $zero, -0x10
/* 99CE4 800990E4 0321C024 */  and        $t8, $t9, $at
/* 99CE8 800990E8 AFB80058 */  sw         $t8, 0x58($sp)
/* 99CEC 800990EC 8FA90058 */  lw         $t1, 0x58($sp)
/* 99CF0 800990F0 11200007 */  beqz       $t1, .L80099110
/* 99CF4 800990F4 00000000 */   nop
/* 99CF8 800990F8 8FA80058 */  lw         $t0, 0x58($sp)
/* 99CFC 800990FC 3C01800F */  lui        $at, %hi(D_800E9774)
/* 99D00 80099100 240A0000 */  addiu      $t2, $zero, 0
/* 99D04 80099104 01005825 */  or         $t3, $t0, $zero
/* 99D08 80099108 AC2B9774 */  sw         $t3, %lo(D_800E9774)($at)
/* 99D0C 8009910C AC2A9770 */  sw         $t2, -0x6890($at)
.L80099110:
/* 99D10 80099110 3C04800F */  lui        $a0, %hi(D_800E9770)
/* 99D14 80099114 3C05800F */  lui        $a1, %hi(D_800E9774)
/* 99D18 80099118 8CA59774 */  lw         $a1, %lo(D_800E9774)($a1)
/* 99D1C 8009911C 8C849770 */  lw         $a0, %lo(D_800E9770)($a0)
/* 99D20 80099120 24060000 */  addiu      $a2, $zero, 0
/* 99D24 80099124 0C029112 */  jal        __ll_mul
/* 99D28 80099128 24070003 */   addiu     $a3, $zero, 3
/* 99D2C 8009912C AFA20020 */  sw         $v0, 0x20($sp)
/* 99D30 80099130 AFA30024 */  sw         $v1, 0x24($sp)
/* 99D34 80099134 8FA50024 */  lw         $a1, 0x24($sp)
/* 99D38 80099138 8FA40020 */  lw         $a0, 0x20($sp)
/* 99D3C 8009913C 24060000 */  addiu      $a2, $zero, 0
/* 99D40 80099140 0C0290C2 */  jal        __ull_div
/* 99D44 80099144 24070004 */   addiu     $a3, $zero, 4
/* 99D48 80099148 3C01800F */  lui        $at, %hi(D_800E9770)
/* 99D4C 8009914C AC229770 */  sw         $v0, %lo(D_800E9770)($at)
/* 99D50 80099150 AC239774 */  sw         $v1, -0x688c($at)
/* 99D54 80099154 3C0C8000 */  lui        $t4, %hi(RESET)
/* 99D58 80099158 8D8C030C */  lw         $t4, %lo(RESET)($t4)
/* 99D5C 8009915C 15800005 */  bnez       $t4, .L80099174
/* 99D60 80099160 00000000 */   nop
/* 99D64 80099164 3C048000 */  lui        $a0, %hi(NMI_BUFFER)
/* 99D68 80099168 2484031C */  addiu      $a0, $a0, %lo(NMI_BUFFER)
/* 99D6C 8009916C 0C029C54 */  jal        _bzero
/* 99D70 80099170 24050040 */   addiu     $a1, $zero, 0x40
.L80099174:
/* 99D74 80099174 3C0E8000 */  lui        $t6, %hi(osTvType)
/* 99D78 80099178 8DCE0300 */  lw         $t6, %lo(osTvType)($t6)
/* 99D7C 8009917C 15C00006 */  bnez       $t6, .L80099198
/* 99D80 80099180 00000000 */   nop
/* 99D84 80099184 3C0D02F5 */  lui        $t5, 0x2f5
/* 99D88 80099188 35ADB2D2 */  ori        $t5, $t5, 0xb2d2
/* 99D8C 8009918C 3C01800F */  lui        $at, %hi(osViClock)
/* 99D90 80099190 1000000F */  b          .L800991D0
/* 99D94 80099194 AC2D9778 */   sw        $t5, %lo(osViClock)($at)
.L80099198:
/* 99D98 80099198 3C0F8000 */  lui        $t7, %hi(osTvType)
/* 99D9C 8009919C 8DEF0300 */  lw         $t7, %lo(osTvType)($t7)
/* 99DA0 800991A0 24010002 */  addiu      $at, $zero, 2
/* 99DA4 800991A4 15E10006 */  bne        $t7, $at, .L800991C0
/* 99DA8 800991A8 00000000 */   nop
/* 99DAC 800991AC 3C1902E6 */  lui        $t9, 0x2e6
/* 99DB0 800991B0 3739025C */  ori        $t9, $t9, 0x25c
/* 99DB4 800991B4 3C01800F */  lui        $at, %hi(osViClock)
/* 99DB8 800991B8 10000005 */  b          .L800991D0
/* 99DBC 800991BC AC399778 */   sw        $t9, %lo(osViClock)($at)
.L800991C0:
/* 99DC0 800991C0 3C1802E6 */  lui        $t8, 0x2e6
/* 99DC4 800991C4 3718D354 */  ori        $t8, $t8, 0xd354
/* 99DC8 800991C8 3C01800F */  lui        $at, %hi(osViClock)
/* 99DCC 800991CC AC389778 */  sw         $t8, %lo(osViClock)($at)
.L800991D0:
/* 99DD0 800991D0 3C098018 */  lui        $t1, %hi(__kmc_pt_mode)
/* 99DD4 800991D4 8D2926C0 */  lw         $t1, %lo(__kmc_pt_mode)($t1)
/* 99DD8 800991D8 1520009A */  bnez       $t1, .L80099444
/* 99DDC 800991DC 00000000 */   nop
/* 99DE0 800991E0 3C08BFF0 */  lui        $t0, 0xbff0
/* 99DE4 800991E4 35088004 */  ori        $t0, $t0, 0x8004
/* 99DE8 800991E8 AFA80038 */  sw         $t0, 0x38($sp)
/* 99DEC 800991EC 3C0ABFF0 */  lui        $t2, 0xbff0
/* 99DF0 800991F0 AFAA003C */  sw         $t2, 0x3c($sp)
/* 99DF4 800991F4 8FAB003C */  lw         $t3, 0x3c($sp)
/* 99DF8 800991F8 3C014B4D */  lui        $at, 0x4b4d
/* 99DFC 800991FC 34214300 */  ori        $at, $at, 0x4300
/* 99E00 80099200 8D6C0000 */  lw         $t4, ($t3)
/* 99E04 80099204 11810003 */  beq        $t4, $at, .L80099214
/* 99E08 80099208 00000000 */   nop
/* 99E0C 8009920C 1000008F */  b          .L8009944C
/* 99E10 80099210 00000000 */   nop
.L80099214:
/* 99E14 80099214 3C0E800A */  lui        $t6, %hi(__ptExceptionPreamble)
/* 99E18 80099218 25CE5F00 */  addiu      $t6, $t6, %lo(__ptExceptionPreamble)
/* 99E1C 8009921C AFAE0048 */  sw         $t6, 0x48($sp)
/* 99E20 80099220 3C0D8000 */  lui        $t5, 0x8000
/* 99E24 80099224 35AD0180 */  ori        $t5, $t5, 0x180
/* 99E28 80099228 AFAD0044 */  sw         $t5, 0x44($sp)
/* 99E2C 8009922C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 99E30 80099230 8FB80044 */  lw         $t8, 0x44($sp)
/* 99E34 80099234 8DF90000 */  lw         $t9, ($t7)
/* 99E38 80099238 AF190000 */  sw         $t9, ($t8)
/* 99E3C 8009923C 8FAA0048 */  lw         $t2, 0x48($sp)
/* 99E40 80099240 8FA90044 */  lw         $t1, 0x44($sp)
/* 99E44 80099244 254B0004 */  addiu      $t3, $t2, 4
/* 99E48 80099248 25280004 */  addiu      $t0, $t1, 4
/* 99E4C 8009924C AFA80044 */  sw         $t0, 0x44($sp)
/* 99E50 80099250 AFAB0048 */  sw         $t3, 0x48($sp)
/* 99E54 80099254 8FAC0048 */  lw         $t4, 0x48($sp)
/* 99E58 80099258 8FAD0044 */  lw         $t5, 0x44($sp)
/* 99E5C 8009925C 8D8E0000 */  lw         $t6, ($t4)
/* 99E60 80099260 ADAE0000 */  sw         $t6, ($t5)
/* 99E64 80099264 8FB80048 */  lw         $t8, 0x48($sp)
/* 99E68 80099268 8FAF0044 */  lw         $t7, 0x44($sp)
/* 99E6C 8009926C 27090004 */  addiu      $t1, $t8, 4
/* 99E70 80099270 25F90004 */  addiu      $t9, $t7, 4
/* 99E74 80099274 AFB90044 */  sw         $t9, 0x44($sp)
/* 99E78 80099278 AFA90048 */  sw         $t1, 0x48($sp)
/* 99E7C 8009927C 8FA80048 */  lw         $t0, 0x48($sp)
/* 99E80 80099280 8FAB0044 */  lw         $t3, 0x44($sp)
/* 99E84 80099284 8D0A0000 */  lw         $t2, ($t0)
/* 99E88 80099288 AD6A0000 */  sw         $t2, ($t3)
/* 99E8C 8009928C 8FAD0048 */  lw         $t5, 0x48($sp)
/* 99E90 80099290 8FAC0044 */  lw         $t4, 0x44($sp)
/* 99E94 80099294 25AF0004 */  addiu      $t7, $t5, 4
/* 99E98 80099298 258E0004 */  addiu      $t6, $t4, 4
/* 99E9C 8009929C AFAE0044 */  sw         $t6, 0x44($sp)
/* 99EA0 800992A0 AFAF0048 */  sw         $t7, 0x48($sp)
/* 99EA4 800992A4 8FB90048 */  lw         $t9, 0x48($sp)
/* 99EA8 800992A8 27380008 */  addiu      $t8, $t9, 8
/* 99EAC 800992AC AFB80048 */  sw         $t8, 0x48($sp)
/* 99EB0 800992B0 8FA90044 */  lw         $t1, 0x44($sp)
/* 99EB4 800992B4 25280008 */  addiu      $t0, $t1, 8
/* 99EB8 800992B8 AFA80044 */  sw         $t0, 0x44($sp)
/* 99EBC 800992BC 8FAA0048 */  lw         $t2, 0x48($sp)
/* 99EC0 800992C0 8FAC0044 */  lw         $t4, 0x44($sp)
/* 99EC4 800992C4 8D4B0000 */  lw         $t3, ($t2)
/* 99EC8 800992C8 AD8B0000 */  sw         $t3, ($t4)
/* 99ECC 800992CC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 99ED0 800992D0 8FAE0044 */  lw         $t6, 0x44($sp)
/* 99ED4 800992D4 25F90004 */  addiu      $t9, $t7, 4
/* 99ED8 800992D8 25CD0004 */  addiu      $t5, $t6, 4
/* 99EDC 800992DC AFAD0044 */  sw         $t5, 0x44($sp)
/* 99EE0 800992E0 AFB90048 */  sw         $t9, 0x48($sp)
/* 99EE4 800992E4 8FB80048 */  lw         $t8, 0x48($sp)
/* 99EE8 800992E8 8FA80044 */  lw         $t0, 0x44($sp)
/* 99EEC 800992EC 8F090000 */  lw         $t1, ($t8)
/* 99EF0 800992F0 AD090000 */  sw         $t1, ($t0)
/* 99EF4 800992F4 8FAC0048 */  lw         $t4, 0x48($sp)
/* 99EF8 800992F8 8FAA0044 */  lw         $t2, 0x44($sp)
/* 99EFC 800992FC 258E0004 */  addiu      $t6, $t4, 4
/* 99F00 80099300 254B0004 */  addiu      $t3, $t2, 4
/* 99F04 80099304 AFAB0044 */  sw         $t3, 0x44($sp)
/* 99F08 80099308 AFAE0048 */  sw         $t6, 0x48($sp)
/* 99F0C 8009930C 8FAD0048 */  lw         $t5, 0x48($sp)
/* 99F10 80099310 8FB90044 */  lw         $t9, 0x44($sp)
/* 99F14 80099314 8DAF0000 */  lw         $t7, ($t5)
/* 99F18 80099318 AF2F0000 */  sw         $t7, ($t9)
/* 99F1C 8009931C 8FA80048 */  lw         $t0, 0x48($sp)
/* 99F20 80099320 8FB80044 */  lw         $t8, 0x44($sp)
/* 99F24 80099324 250A0004 */  addiu      $t2, $t0, 4
/* 99F28 80099328 27090004 */  addiu      $t1, $t8, 4
/* 99F2C 8009932C AFA90044 */  sw         $t1, 0x44($sp)
/* 99F30 80099330 AFAA0048 */  sw         $t2, 0x48($sp)
/* 99F34 80099334 8FAB0048 */  lw         $t3, 0x48($sp)
/* 99F38 80099338 8FAE0044 */  lw         $t6, 0x44($sp)
/* 99F3C 8009933C 8D6C0000 */  lw         $t4, ($t3)
/* 99F40 80099340 ADCC0000 */  sw         $t4, ($t6)
/* 99F44 80099344 8FB90048 */  lw         $t9, 0x48($sp)
/* 99F48 80099348 8FAD0044 */  lw         $t5, 0x44($sp)
/* 99F4C 8009934C 27380004 */  addiu      $t8, $t9, 4
/* 99F50 80099350 25AF0004 */  addiu      $t7, $t5, 4
/* 99F54 80099354 AFAF0044 */  sw         $t7, 0x44($sp)
/* 99F58 80099358 AFB80048 */  sw         $t8, 0x48($sp)
/* 99F5C 8009935C 3C048000 */  lui        $a0, 0x8000
/* 99F60 80099360 34840180 */  ori        $a0, $a0, 0x180
/* 99F64 80099364 0C029BC4 */  jal        osWritebackDCache
/* 99F68 80099368 24050024 */   addiu     $a1, $zero, 0x24
/* 99F6C 8009936C 3C048000 */  lui        $a0, 0x8000
/* 99F70 80099370 34840180 */  ori        $a0, $a0, 0x180
/* 99F74 80099374 0C029BE4 */  jal        osInvalICache
/* 99F78 80099378 24050024 */   addiu     $a1, $zero, 0x24
/* 99F7C 8009937C 24090001 */  addiu      $t1, $zero, 1
/* 99F80 80099380 3C018018 */  lui        $at, %hi(__kmc_pt_mode)
/* 99F84 80099384 AC2926C0 */  sw         $t1, %lo(__kmc_pt_mode)($at)
/* 99F88 80099388 8FA80038 */  lw         $t0, 0x38($sp)
/* 99F8C 8009938C 8D0A0000 */  lw         $t2, ($t0)
/* 99F90 80099390 314B0010 */  andi       $t3, $t2, 0x10
/* 99F94 80099394 1560002B */  bnez       $t3, .L80099444
/* 99F98 80099398 00000000 */   nop
/* 99F9C 8009939C 8FAC003C */  lw         $t4, 0x3c($sp)
/* 99FA0 800993A0 8D8E0004 */  lw         $t6, 4($t4)
/* 99FA4 800993A4 AFAE0040 */  sw         $t6, 0x40($sp)
/* 99FA8 800993A8 8FAD0040 */  lw         $t5, 0x40($sp)
/* 99FAC 800993AC 3C01BFF0 */  lui        $at, 0xbff0
/* 99FB0 800993B0 11A1001C */  beq        $t5, $at, .L80099424
/* 99FB4 800993B4 00000000 */   nop
/* 99FB8 800993B8 8FAF0040 */  lw         $t7, 0x40($sp)
/* 99FBC 800993BC 3C012000 */  lui        $at, 0x2000
/* 99FC0 800993C0 01E1C825 */  or         $t9, $t7, $at
/* 99FC4 800993C4 AFB90030 */  sw         $t9, 0x30($sp)
/* 99FC8 800993C8 24180800 */  addiu      $t8, $zero, 0x800
/* 99FCC 800993CC AFB8002C */  sw         $t8, 0x2c($sp)
/* 99FD0 800993D0 3C09BFF0 */  lui        $t1, 0xbff0
/* 99FD4 800993D4 AFA90034 */  sw         $t1, 0x34($sp)
/* 99FD8 800993D8 8FA8002C */  lw         $t0, 0x2c($sp)
/* 99FDC 800993DC 11000011 */  beqz       $t0, .L80099424
/* 99FE0 800993E0 00000000 */   nop
.L800993E4:
/* 99FE4 800993E4 8FAA0034 */  lw         $t2, 0x34($sp)
/* 99FE8 800993E8 8FAC0030 */  lw         $t4, 0x30($sp)
/* 99FEC 800993EC 8D4B0000 */  lw         $t3, ($t2)
/* 99FF0 800993F0 AD8B0000 */  sw         $t3, ($t4)
/* 99FF4 800993F4 8FAF0034 */  lw         $t7, 0x34($sp)
/* 99FF8 800993F8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 99FFC 800993FC 25F90004 */  addiu      $t9, $t7, 4
/* 9A000 80099400 25CD0004 */  addiu      $t5, $t6, 4
/* 9A004 80099404 AFAD0030 */  sw         $t5, 0x30($sp)
/* 9A008 80099408 AFB90034 */  sw         $t9, 0x34($sp)
/* 9A00C 8009940C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9A010 80099410 2709FFFF */  addiu      $t1, $t8, -1
/* 9A014 80099414 AFA9002C */  sw         $t1, 0x2c($sp)
/* 9A018 80099418 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9A01C 8009941C 1500FFF1 */  bnez       $t0, .L800993E4
/* 9A020 80099420 00000000 */   nop
.L80099424:
/* 9A024 80099424 8FAA0040 */  lw         $t2, 0x40($sp)
/* 9A028 80099428 254B0008 */  addiu      $t3, $t2, 8
/* 9A02C 8009942C AFAB0054 */  sw         $t3, 0x54($sp)
/* 9A030 80099430 8FB90054 */  lw         $t9, 0x54($sp)
/* 9A034 80099434 3C044B4D */  lui        $a0, 0x4b4d
/* 9A038 80099438 34844300 */  ori        $a0, $a0, 0x4300
/* 9A03C 8009943C 0320F809 */  jalr       $t9
/* 9A040 80099440 00002825 */   or        $a1, $zero, $zero
.L80099444:
/* 9A044 80099444 10000001 */  b          .L8009944C
/* 9A048 80099448 00000000 */   nop
.L8009944C:
/* 9A04C 8009944C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9A050 80099450 8FB00018 */  lw         $s0, 0x18($sp)
/* 9A054 80099454 27BD0060 */  addiu      $sp, $sp, 0x60
/* 9A058 80099458 03E00008 */  jr         $ra
/* 9A05C 8009945C 00000000 */   nop

glabel func_80099460
/* 9A060 80099460 03E00008 */  jr         $ra
/* 9A064 80099464 00000000 */   nop

glabel func_80099468
/* 9A068 80099468 03E00008 */  jr         $ra
/* 9A06C 8009946C 00000000 */   nop

glabel osCreateThread
/* 9A070 80099470 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9A074 80099474 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9A078 80099478 AFA40028 */  sw         $a0, 0x28($sp)
/* 9A07C 8009947C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9A080 80099480 AFA60030 */  sw         $a2, 0x30($sp)
/* 9A084 80099484 AFA70034 */  sw         $a3, 0x34($sp)
/* 9A088 80099488 AFB00018 */  sw         $s0, 0x18($sp)
/* 9A08C 8009948C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9A090 80099490 31CF0007 */  andi       $t7, $t6, 7
/* 9A094 80099494 11E00007 */  beqz       $t7, .L800994B4
/* 9A098 80099498 00000000 */   nop
/* 9A09C 8009949C 24040001 */  addiu      $a0, $zero, 1
/* 9A0A0 800994A0 24050001 */  addiu      $a1, $zero, 1
/* 9A0A4 800994A4 0C0297B4 */  jal        __osError
/* 9A0A8 800994A8 8FA60038 */   lw        $a2, 0x38($sp)
/* 9A0AC 800994AC 10000057 */  b          .L8009960C
/* 9A0B0 800994B0 00000000 */   nop
.L800994B4:
/* 9A0B4 800994B4 8FB8003C */  lw         $t8, 0x3c($sp)
/* 9A0B8 800994B8 07000004 */  bltz       $t8, .L800994CC
/* 9A0BC 800994BC 00000000 */   nop
/* 9A0C0 800994C0 2B010100 */  slti       $at, $t8, 0x100
/* 9A0C4 800994C4 14200007 */  bnez       $at, .L800994E4
/* 9A0C8 800994C8 00000000 */   nop
.L800994CC:
/* 9A0CC 800994CC 24040002 */  addiu      $a0, $zero, 2
/* 9A0D0 800994D0 24050001 */  addiu      $a1, $zero, 1
/* 9A0D4 800994D4 0C0297B4 */  jal        __osError
/* 9A0D8 800994D8 8FA6003C */   lw        $a2, 0x3c($sp)
/* 9A0DC 800994DC 1000004B */  b          .L8009960C
/* 9A0E0 800994E0 00000000 */   nop
.L800994E4:
/* 9A0E4 800994E4 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9A0E8 800994E8 8FA80028 */  lw         $t0, 0x28($sp)
/* 9A0EC 800994EC AD190014 */  sw         $t9, 0x14($t0)
/* 9A0F0 800994F0 8FA9003C */  lw         $t1, 0x3c($sp)
/* 9A0F4 800994F4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9A0F8 800994F8 AD490004 */  sw         $t1, 4($t2)
/* 9A0FC 800994FC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9A100 80099500 AD600000 */  sw         $zero, ($t3)
/* 9A104 80099504 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9A108 80099508 AD800008 */  sw         $zero, 8($t4)
/* 9A10C 8009950C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9A110 80099510 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9A114 80099514 ADCD011C */  sw         $t5, 0x11c($t6)
/* 9A118 80099518 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9A11C 8009951C 8FA80028 */  lw         $t0, 0x28($sp)
/* 9A120 80099520 01E0C825 */  or         $t9, $t7, $zero
/* 9A124 80099524 000FC7C3 */  sra        $t8, $t7, 0x1f
/* 9A128 80099528 AD180038 */  sw         $t8, 0x38($t0)
/* 9A12C 8009952C AD19003C */  sw         $t9, 0x3c($t0)
/* 9A130 80099530 8FA90038 */  lw         $t1, 0x38($sp)
/* 9A134 80099534 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9A138 80099538 01205825 */  or         $t3, $t1, $zero
/* 9A13C 8009953C 2D610010 */  sltiu      $at, $t3, 0x10
/* 9A140 80099540 000957C3 */  sra        $t2, $t1, 0x1f
/* 9A144 80099544 01416023 */  subu       $t4, $t2, $at
/* 9A148 80099548 256DFFF0 */  addiu      $t5, $t3, -0x10
/* 9A14C 8009954C ADCD00F4 */  sw         $t5, 0xf4($t6)
/* 9A150 80099550 ADCC00F0 */  sw         $t4, 0xf0($t6)
/* 9A154 80099554 8FA80028 */  lw         $t0, 0x28($sp)
/* 9A158 80099558 3C0F800A */  lui        $t7, %hi(__osCleanupThread)
/* 9A15C 8009955C 25EF6D80 */  addiu      $t7, $t7, %lo(__osCleanupThread)
/* 9A160 80099560 01E0C825 */  or         $t9, $t7, $zero
/* 9A164 80099564 000FC7C3 */  sra        $t8, $t7, 0x1f
/* 9A168 80099568 AD180100 */  sw         $t8, 0x100($t0)
/* 9A16C 8009956C AD190104 */  sw         $t9, 0x104($t0)
/* 9A170 80099570 3C09003F */  lui        $t1, 0x3f
/* 9A174 80099574 3529FF01 */  ori        $t1, $t1, 0xff01
/* 9A178 80099578 AFA90020 */  sw         $t1, 0x20($sp)
/* 9A17C 8009957C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9A180 80099580 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9A184 80099584 314BFF01 */  andi       $t3, $t2, 0xff01
/* 9A188 80099588 356C0002 */  ori        $t4, $t3, 2
/* 9A18C 8009958C ADAC0118 */  sw         $t4, 0x118($t5)
/* 9A190 80099590 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9A194 80099594 8FB90028 */  lw         $t9, 0x28($sp)
/* 9A198 80099598 3C01003F */  lui        $at, 0x3f
/* 9A19C 8009959C 01C17824 */  and        $t7, $t6, $at
/* 9A1A0 800995A0 000FC402 */  srl        $t8, $t7, 0x10
/* 9A1A4 800995A4 AF380128 */  sw         $t8, 0x128($t9)
/* 9A1A8 800995A8 8FA90028 */  lw         $t1, 0x28($sp)
/* 9A1AC 800995AC 3C080100 */  lui        $t0, 0x100
/* 9A1B0 800995B0 35080800 */  ori        $t0, $t0, 0x800
/* 9A1B4 800995B4 AD28012C */  sw         $t0, 0x12c($t1)
/* 9A1B8 800995B8 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9A1BC 800995BC AD400018 */  sw         $zero, 0x18($t2)
/* 9A1C0 800995C0 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9A1C4 800995C4 240B0001 */  addiu      $t3, $zero, 1
/* 9A1C8 800995C8 A58B0010 */  sh         $t3, 0x10($t4)
/* 9A1CC 800995CC 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9A1D0 800995D0 A5A00012 */  sh         $zero, 0x12($t5)
/* 9A1D4 800995D4 0C0297A4 */  jal        __osDisableInt
/* 9A1D8 800995D8 00000000 */   nop
/* 9A1DC 800995DC 00408025 */  or         $s0, $v0, $zero
/* 9A1E0 800995E0 3C0E800F */  lui        $t6, %hi(__osActiveQueue)
/* 9A1E4 800995E4 8DCEA60C */  lw         $t6, %lo(__osActiveQueue)($t6)
/* 9A1E8 800995E8 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9A1EC 800995EC ADEE000C */  sw         $t6, 0xc($t7)
/* 9A1F0 800995F0 8FB80028 */  lw         $t8, 0x28($sp)
/* 9A1F4 800995F4 3C01800F */  lui        $at, %hi(__osActiveQueue)
/* 9A1F8 800995F8 AC38A60C */  sw         $t8, %lo(__osActiveQueue)($at)
/* 9A1FC 800995FC 0C0297AC */  jal        __osRestoreInt
/* 9A200 80099600 02002025 */   or        $a0, $s0, $zero
/* 9A204 80099604 10000001 */  b          .L8009960C
/* 9A208 80099608 00000000 */   nop
.L8009960C:
/* 9A20C 8009960C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9A210 80099610 8FB00018 */  lw         $s0, 0x18($sp)
/* 9A214 80099614 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9A218 80099618 03E00008 */  jr         $ra
/* 9A21C 8009961C 00000000 */   nop

glabel osStartThread
/* 9A220 80099620 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9A224 80099624 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9A228 80099628 AFA40028 */  sw         $a0, 0x28($sp)
/* 9A22C 8009962C AFB10018 */  sw         $s1, 0x18($sp)
/* 9A230 80099630 AFB00014 */  sw         $s0, 0x14($sp)
/* 9A234 80099634 0C0297A4 */  jal        __osDisableInt
/* 9A238 80099638 00000000 */   nop
/* 9A23C 8009963C 00408025 */  or         $s0, $v0, $zero
/* 9A240 80099640 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9A244 80099644 24010001 */  addiu      $at, $zero, 1
/* 9A248 80099648 95D10010 */  lhu        $s1, 0x10($t6)
/* 9A24C 8009964C 1221000F */  beq        $s1, $at, .L8009968C
/* 9A250 80099650 00000000 */   nop
/* 9A254 80099654 24010008 */  addiu      $at, $zero, 8
/* 9A258 80099658 12210003 */  beq        $s1, $at, .L80099668
/* 9A25C 8009965C 00000000 */   nop
/* 9A260 80099660 1000002C */  b          .L80099714
/* 9A264 80099664 00000000 */   nop
.L80099668:
/* 9A268 80099668 8FB80028 */  lw         $t8, 0x28($sp)
/* 9A26C 8009966C 240F0002 */  addiu      $t7, $zero, 2
/* 9A270 80099670 A70F0010 */  sh         $t7, 0x10($t8)
/* 9A274 80099674 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 9A278 80099678 2484A608 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* 9A27C 8009967C 0C029AE7 */  jal        __osEnqueueThread
/* 9A280 80099680 8FA50028 */   lw        $a1, 0x28($sp)
/* 9A284 80099684 1000002A */  b          .L80099730
/* 9A288 80099688 00000000 */   nop
.L8009968C:
/* 9A28C 8009968C 8FB90028 */  lw         $t9, 0x28($sp)
/* 9A290 80099690 8F280008 */  lw         $t0, 8($t9)
/* 9A294 80099694 11000005 */  beqz       $t0, .L800996AC
/* 9A298 80099698 00000000 */   nop
/* 9A29C 8009969C 3C09800F */  lui        $t1, %hi(__osRunQueue)
/* 9A2A0 800996A0 2529A608 */  addiu      $t1, $t1, %lo(__osRunQueue)
/* 9A2A4 800996A4 1509000A */  bne        $t0, $t1, .L800996D0
/* 9A2A8 800996A8 00000000 */   nop
.L800996AC:
/* 9A2AC 800996AC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9A2B0 800996B0 240A0002 */  addiu      $t2, $zero, 2
/* 9A2B4 800996B4 A56A0010 */  sh         $t2, 0x10($t3)
/* 9A2B8 800996B8 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 9A2BC 800996BC 2484A608 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* 9A2C0 800996C0 0C029AE7 */  jal        __osEnqueueThread
/* 9A2C4 800996C4 8FA50028 */   lw        $a1, 0x28($sp)
/* 9A2C8 800996C8 10000010 */  b          .L8009970C
/* 9A2CC 800996CC 00000000 */   nop
.L800996D0:
/* 9A2D0 800996D0 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9A2D4 800996D4 240C0008 */  addiu      $t4, $zero, 8
/* 9A2D8 800996D8 A5AC0010 */  sh         $t4, 0x10($t5)
/* 9A2DC 800996DC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9A2E0 800996E0 8DC40008 */  lw         $a0, 8($t6)
/* 9A2E4 800996E4 0C029AE7 */  jal        __osEnqueueThread
/* 9A2E8 800996E8 01C02825 */   or        $a1, $t6, $zero
/* 9A2EC 800996EC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9A2F0 800996F0 0C029AFA */  jal        __osPopThread
/* 9A2F4 800996F4 8DE40008 */   lw        $a0, 8($t7)
/* 9A2F8 800996F8 00408825 */  or         $s1, $v0, $zero
/* 9A2FC 800996FC 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 9A300 80099700 2484A608 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* 9A304 80099704 0C029AE7 */  jal        __osEnqueueThread
/* 9A308 80099708 02202825 */   or        $a1, $s1, $zero
.L8009970C:
/* 9A30C 8009970C 10000008 */  b          .L80099730
/* 9A310 80099710 00000000 */   nop
.L80099714:
/* 9A314 80099714 24040003 */  addiu      $a0, $zero, 3
/* 9A318 80099718 0C0297B4 */  jal        __osError
/* 9A31C 8009971C 00002825 */   or        $a1, $zero, $zero
/* 9A320 80099720 0C0297AC */  jal        __osRestoreInt
/* 9A324 80099724 02002025 */   or        $a0, $s0, $zero
/* 9A328 80099728 1000001D */  b          .L800997A0
/* 9A32C 8009972C 00000000 */   nop
.L80099730:
/* 9A330 80099730 3C18800F */  lui        $t8, %hi(__osRunningThread)
/* 9A334 80099734 8F18A610 */  lw         $t8, %lo(__osRunningThread)($t8)
/* 9A338 80099738 17000005 */  bnez       $t8, .L80099750
/* 9A33C 8009973C 00000000 */   nop
/* 9A340 80099740 0C029B00 */  jal        __osDispatchThread
/* 9A344 80099744 00000000 */   nop
/* 9A348 80099748 10000011 */  b          .L80099790
/* 9A34C 8009974C 00000000 */   nop
.L80099750:
/* 9A350 80099750 3C19800F */  lui        $t9, %hi(__osRunningThread)
/* 9A354 80099754 3C09800F */  lui        $t1, %hi(__osRunQueue)
/* 9A358 80099758 8D29A608 */  lw         $t1, %lo(__osRunQueue)($t1)
/* 9A35C 8009975C 8F39A610 */  lw         $t9, %lo(__osRunningThread)($t9)
/* 9A360 80099760 8D2A0004 */  lw         $t2, 4($t1)
/* 9A364 80099764 8F280004 */  lw         $t0, 4($t9)
/* 9A368 80099768 010A082A */  slt        $at, $t0, $t2
/* 9A36C 8009976C 10200008 */  beqz       $at, .L80099790
/* 9A370 80099770 00000000 */   nop
/* 9A374 80099774 3C0C800F */  lui        $t4, %hi(__osRunningThread)
/* 9A378 80099778 8D8CA610 */  lw         $t4, %lo(__osRunningThread)($t4)
/* 9A37C 8009977C 240B0002 */  addiu      $t3, $zero, 2
/* 9A380 80099780 A58B0010 */  sh         $t3, 0x10($t4)
/* 9A384 80099784 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 9A388 80099788 0C029AA4 */  jal        __osEnqueueAndYield
/* 9A38C 8009978C 2484A608 */   addiu     $a0, $a0, %lo(__osRunQueue)
.L80099790:
/* 9A390 80099790 0C0297AC */  jal        __osRestoreInt
/* 9A394 80099794 02002025 */   or        $a0, $s0, $zero
/* 9A398 80099798 10000001 */  b          .L800997A0
/* 9A39C 8009979C 00000000 */   nop
.L800997A0:
/* 9A3A0 800997A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9A3A4 800997A4 8FB00014 */  lw         $s0, 0x14($sp)
/* 9A3A8 800997A8 8FB10018 */  lw         $s1, 0x18($sp)
/* 9A3AC 800997AC 03E00008 */  jr         $ra
/* 9A3B0 800997B0 27BD0028 */   addiu     $sp, $sp, 0x28
/* 9A3B4 800997B4 00000000 */  nop
/* 9A3B8 800997B8 00000000 */  nop
/* 9A3BC 800997BC 00000000 */  nop
