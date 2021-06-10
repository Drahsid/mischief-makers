glabel func_800A2B7C
/* A377C 800A2B7C 27BDFEB8 */  addiu      $sp, $sp, -0x148
/* A3780 800A2B80 AFBF0034 */  sw         $ra, 0x34($sp)
/* A3784 800A2B84 AFA40148 */  sw         $a0, 0x148($sp)
/* A3788 800A2B88 8FAE0148 */  lw         $t6, 0x148($sp)
/* A378C 800A2B8C 95CF0014 */  lhu        $t7, 0x14($t6)
/* A3790 800A2B90 31F80004 */  andi       $t8, $t7, 4
/* A3794 800A2B94 13000003 */  beqz       $t8, .L800A2BA4
/* A3798 800A2B98 00000000 */   nop
/* A379C 800A2B9C 10000524 */  b          .L800A4030
/* A37A0 800A2BA0 00001025 */   or        $v0, $zero, $zero
.L800A2BA4:
/* A37A4 800A2BA4 3C01800F */  lui        $at, %hi(D_800EA540)
/* A37A8 800A2BA8 AC20A540 */  sw         $zero, %lo(D_800EA540)($at)
/* A37AC 800A2BAC 8FB90148 */  lw         $t9, 0x148($sp)
/* A37B0 800A2BB0 8F28003C */  lw         $t0, 0x3c($t9)
/* A37B4 800A2BB4 AFA8012C */  sw         $t0, 0x12c($sp)
/* A37B8 800A2BB8 8FA9012C */  lw         $t1, 0x12c($sp)
/* A37BC 800A2BBC 15200004 */  bnez       $t1, .L800A2BD0
/* A37C0 800A2BC0 00000000 */   nop
/* A37C4 800A2BC4 8FAA0148 */  lw         $t2, 0x148($sp)
/* A37C8 800A2BC8 8D4B0038 */  lw         $t3, 0x38($t2)
/* A37CC 800A2BCC AFAB012C */  sw         $t3, 0x12c($sp)
.L800A2BD0:
/* A37D0 800A2BD0 8FAC012C */  lw         $t4, 0x12c($sp)
/* A37D4 800A2BD4 AFAC0124 */  sw         $t4, 0x124($sp)
/* A37D8 800A2BD8 8FAD012C */  lw         $t5, 0x12c($sp)
/* A37DC 800A2BDC AFAD0128 */  sw         $t5, 0x128($sp)
/* A37E0 800A2BE0 8FAE0148 */  lw         $t6, 0x148($sp)
/* A37E4 800A2BE4 8DCF0034 */  lw         $t7, 0x34($t6)
/* A37E8 800A2BE8 AFAF0130 */  sw         $t7, 0x130($sp)
/* A37EC 800A2BEC AFA000F0 */  sw         $zero, 0xf0($sp)
/* A37F0 800A2BF0 AFA000EC */  sw         $zero, 0xec($sp)
/* A37F4 800A2BF4 3C18800F */  lui        $t8, %hi(D_800EA544)
/* A37F8 800A2BF8 9718A544 */  lhu        $t8, %lo(D_800EA544)($t8)
/* A37FC 800A2BFC 33190400 */  andi       $t9, $t8, 0x400
/* A3800 800A2C00 13200006 */  beqz       $t9, .L800A2C1C
/* A3804 800A2C04 00000000 */   nop
/* A3808 800A2C08 8FA80148 */  lw         $t0, 0x148($sp)
/* A380C 800A2C0C 3C01800F */  lui        $at, %hi(D_800EA544)
/* A3810 800A2C10 95090014 */  lhu        $t1, 0x14($t0)
/* A3814 800A2C14 01205027 */  not        $t2, $t1
/* A3818 800A2C18 A42AA544 */  sh         $t2, %lo(D_800EA544)($at)
.L800A2C1C:
/* A381C 800A2C1C 8FAB0148 */  lw         $t3, 0x148($sp)
/* A3820 800A2C20 956C0014 */  lhu        $t4, 0x14($t3)
/* A3824 800A2C24 318D0400 */  andi       $t5, $t4, 0x400
/* A3828 800A2C28 11A00005 */  beqz       $t5, .L800A2C40
/* A382C 800A2C2C 00000000 */   nop
/* A3830 800A2C30 8FAE0148 */  lw         $t6, 0x148($sp)
/* A3834 800A2C34 3C01800F */  lui        $at, %hi(D_800EA544)
/* A3838 800A2C38 95CF0014 */  lhu        $t7, 0x14($t6)
/* A383C 800A2C3C A42FA544 */  sh         $t7, %lo(D_800EA544)($at)
.L800A2C40:
/* A3840 800A2C40 8FB80148 */  lw         $t8, 0x148($sp)
/* A3844 800A2C44 3C08800F */  lui        $t0, %hi(D_800EA544)
/* A3848 800A2C48 9508A544 */  lhu        $t0, %lo(D_800EA544)($t0)
/* A384C 800A2C4C 97190014 */  lhu        $t9, 0x14($t8)
/* A3850 800A2C50 13280090 */  beq        $t9, $t0, .L800A2E94
/* A3854 800A2C54 00000000 */   nop
/* A3858 800A2C58 8FA90148 */  lw         $t1, 0x148($sp)
/* A385C 800A2C5C 952A0014 */  lhu        $t2, 0x14($t1)
/* A3860 800A2C60 314B0001 */  andi       $t3, $t2, 1
/* A3864 800A2C64 11600014 */  beqz       $t3, .L800A2CB8
/* A3868 800A2C68 00000000 */   nop
/* A386C 800A2C6C 3C0C800F */  lui        $t4, %hi(D_800EA544)
/* A3870 800A2C70 958CA544 */  lhu        $t4, %lo(D_800EA544)($t4)
/* A3874 800A2C74 318D0001 */  andi       $t5, $t4, 1
/* A3878 800A2C78 15A0000F */  bnez       $t5, .L800A2CB8
/* A387C 800A2C7C 00000000 */   nop
/* A3880 800A2C80 8FAE012C */  lw         $t6, 0x12c($sp)
/* A3884 800A2C84 25CF0008 */  addiu      $t7, $t6, 8
/* A3888 800A2C88 AFAF012C */  sw         $t7, 0x12c($sp)
/* A388C 800A2C8C AFAE00E8 */  sw         $t6, 0xe8($sp)
/* A3890 800A2C90 8FB900E8 */  lw         $t9, 0xe8($sp)
/* A3894 800A2C94 3C18B900 */  lui        $t8, 0xb900
/* A3898 800A2C98 3718031D */  ori        $t8, $t8, 0x31d
/* A389C 800A2C9C AF380000 */  sw         $t8, ($t9)
/* A38A0 800A2CA0 8FA900E8 */  lw         $t1, 0xe8($sp)
/* A38A4 800A2CA4 3C080050 */  lui        $t0, 0x50
/* A38A8 800A2CA8 35084240 */  ori        $t0, $t0, 0x4240
/* A38AC 800A2CAC AD280004 */  sw         $t0, 4($t1)
/* A38B0 800A2CB0 10000017 */  b          .L800A2D10
/* A38B4 800A2CB4 00000000 */   nop
.L800A2CB8:
/* A38B8 800A2CB8 8FAA0148 */  lw         $t2, 0x148($sp)
/* A38BC 800A2CBC 954B0014 */  lhu        $t3, 0x14($t2)
/* A38C0 800A2CC0 316C0001 */  andi       $t4, $t3, 1
/* A38C4 800A2CC4 15800012 */  bnez       $t4, .L800A2D10
/* A38C8 800A2CC8 00000000 */   nop
/* A38CC 800A2CCC 3C0D800F */  lui        $t5, %hi(D_800EA544)
/* A38D0 800A2CD0 95ADA544 */  lhu        $t5, %lo(D_800EA544)($t5)
/* A38D4 800A2CD4 31AE0001 */  andi       $t6, $t5, 1
/* A38D8 800A2CD8 11C0000D */  beqz       $t6, .L800A2D10
/* A38DC 800A2CDC 00000000 */   nop
/* A38E0 800A2CE0 8FAF012C */  lw         $t7, 0x12c($sp)
/* A38E4 800A2CE4 25F80008 */  addiu      $t8, $t7, 8
/* A38E8 800A2CE8 AFB8012C */  sw         $t8, 0x12c($sp)
/* A38EC 800A2CEC AFAF00E4 */  sw         $t7, 0xe4($sp)
/* A38F0 800A2CF0 8FA800E4 */  lw         $t0, 0xe4($sp)
/* A38F4 800A2CF4 3C19B900 */  lui        $t9, 0xb900
/* A38F8 800A2CF8 3739031D */  ori        $t9, $t9, 0x31d
/* A38FC 800A2CFC AD190000 */  sw         $t9, ($t0)
/* A3900 800A2D00 8FAA00E4 */  lw         $t2, 0xe4($sp)
/* A3904 800A2D04 3C090F0A */  lui        $t1, 0xf0a
/* A3908 800A2D08 35297008 */  ori        $t1, $t1, 0x7008
/* A390C 800A2D0C AD490004 */  sw         $t1, 4($t2)
.L800A2D10:
/* A3910 800A2D10 8FAB0148 */  lw         $t3, 0x148($sp)
/* A3914 800A2D14 956C0014 */  lhu        $t4, 0x14($t3)
/* A3918 800A2D18 318D0002 */  andi       $t5, $t4, 2
/* A391C 800A2D1C 11A0001D */  beqz       $t5, .L800A2D94
/* A3920 800A2D20 00000000 */   nop
/* A3924 800A2D24 3C0E800F */  lui        $t6, %hi(D_800EA544)
/* A3928 800A2D28 95CEA544 */  lhu        $t6, %lo(D_800EA544)($t6)
/* A392C 800A2D2C 31CF0002 */  andi       $t7, $t6, 2
/* A3930 800A2D30 15E00018 */  bnez       $t7, .L800A2D94
/* A3934 800A2D34 00000000 */   nop
/* A3938 800A2D38 8FB8012C */  lw         $t8, 0x12c($sp)
/* A393C 800A2D3C 27190008 */  addiu      $t9, $t8, 8
/* A3940 800A2D40 AFB9012C */  sw         $t9, 0x12c($sp)
/* A3944 800A2D44 AFB800E0 */  sw         $t8, 0xe0($sp)
/* A3948 800A2D48 8FA900E0 */  lw         $t1, 0xe0($sp)
/* A394C 800A2D4C 3C08F900 */  lui        $t0, 0xf900
/* A3950 800A2D50 AD280000 */  sw         $t0, ($t1)
/* A3954 800A2D54 8FAB00E0 */  lw         $t3, 0xe0($sp)
/* A3958 800A2D58 240AFF01 */  addiu      $t2, $zero, -0xff
/* A395C 800A2D5C AD6A0004 */  sw         $t2, 4($t3)
/* A3960 800A2D60 8FAC012C */  lw         $t4, 0x12c($sp)
/* A3964 800A2D64 258D0008 */  addiu      $t5, $t4, 8
/* A3968 800A2D68 AFAD012C */  sw         $t5, 0x12c($sp)
/* A396C 800A2D6C AFAC00DC */  sw         $t4, 0xdc($sp)
/* A3970 800A2D70 8FAF00DC */  lw         $t7, 0xdc($sp)
/* A3974 800A2D74 3C0EB900 */  lui        $t6, 0xb900
/* A3978 800A2D78 35CE0002 */  ori        $t6, $t6, 2
/* A397C 800A2D7C ADEE0000 */  sw         $t6, ($t7)
/* A3980 800A2D80 8FB900DC */  lw         $t9, 0xdc($sp)
/* A3984 800A2D84 24180001 */  addiu      $t8, $zero, 1
/* A3988 800A2D88 AF380004 */  sw         $t8, 4($t9)
/* A398C 800A2D8C 10000015 */  b          .L800A2DE4
/* A3990 800A2D90 00000000 */   nop
.L800A2D94:
/* A3994 800A2D94 8FA80148 */  lw         $t0, 0x148($sp)
/* A3998 800A2D98 95090014 */  lhu        $t1, 0x14($t0)
/* A399C 800A2D9C 312A0002 */  andi       $t2, $t1, 2
/* A39A0 800A2DA0 15400010 */  bnez       $t2, .L800A2DE4
/* A39A4 800A2DA4 00000000 */   nop
/* A39A8 800A2DA8 3C0B800F */  lui        $t3, %hi(D_800EA544)
/* A39AC 800A2DAC 956BA544 */  lhu        $t3, %lo(D_800EA544)($t3)
/* A39B0 800A2DB0 316C0002 */  andi       $t4, $t3, 2
/* A39B4 800A2DB4 1180000B */  beqz       $t4, .L800A2DE4
/* A39B8 800A2DB8 00000000 */   nop
/* A39BC 800A2DBC 8FAD012C */  lw         $t5, 0x12c($sp)
/* A39C0 800A2DC0 25AE0008 */  addiu      $t6, $t5, 8
/* A39C4 800A2DC4 AFAE012C */  sw         $t6, 0x12c($sp)
/* A39C8 800A2DC8 AFAD00D8 */  sw         $t5, 0xd8($sp)
/* A39CC 800A2DCC 8FB800D8 */  lw         $t8, 0xd8($sp)
/* A39D0 800A2DD0 3C0FB900 */  lui        $t7, 0xb900
/* A39D4 800A2DD4 35EF0002 */  ori        $t7, $t7, 2
/* A39D8 800A2DD8 AF0F0000 */  sw         $t7, ($t8)
/* A39DC 800A2DDC 8FB900D8 */  lw         $t9, 0xd8($sp)
/* A39E0 800A2DE0 AF200004 */  sw         $zero, 4($t9)
.L800A2DE4:
/* A39E4 800A2DE4 8FA80148 */  lw         $t0, 0x148($sp)
/* A39E8 800A2DE8 95090014 */  lhu        $t1, 0x14($t0)
/* A39EC 800A2DEC 312A0080 */  andi       $t2, $t1, 0x80
/* A39F0 800A2DF0 11400013 */  beqz       $t2, .L800A2E40
/* A39F4 800A2DF4 00000000 */   nop
/* A39F8 800A2DF8 3C0B800F */  lui        $t3, %hi(D_800EA544)
/* A39FC 800A2DFC 956BA544 */  lhu        $t3, %lo(D_800EA544)($t3)
/* A3A00 800A2E00 316C0080 */  andi       $t4, $t3, 0x80
/* A3A04 800A2E04 1580000E */  bnez       $t4, .L800A2E40
/* A3A08 800A2E08 00000000 */   nop
/* A3A0C 800A2E0C 8FAD012C */  lw         $t5, 0x12c($sp)
/* A3A10 800A2E10 25AE0008 */  addiu      $t6, $t5, 8
/* A3A14 800A2E14 AFAE012C */  sw         $t6, 0x12c($sp)
/* A3A18 800A2E18 AFAD00D4 */  sw         $t5, 0xd4($sp)
/* A3A1C 800A2E1C 8FB800D4 */  lw         $t8, 0xd4($sp)
/* A3A20 800A2E20 3C0FBA00 */  lui        $t7, 0xba00
/* A3A24 800A2E24 35EF0C02 */  ori        $t7, $t7, 0xc02
/* A3A28 800A2E28 AF0F0000 */  sw         $t7, ($t8)
/* A3A2C 800A2E2C 8FA800D4 */  lw         $t0, 0xd4($sp)
/* A3A30 800A2E30 24193000 */  addiu      $t9, $zero, 0x3000
/* A3A34 800A2E34 AD190004 */  sw         $t9, 4($t0)
/* A3A38 800A2E38 10000016 */  b          .L800A2E94
/* A3A3C 800A2E3C 00000000 */   nop
.L800A2E40:
/* A3A40 800A2E40 8FA90148 */  lw         $t1, 0x148($sp)
/* A3A44 800A2E44 952A0014 */  lhu        $t2, 0x14($t1)
/* A3A48 800A2E48 314B0080 */  andi       $t3, $t2, 0x80
/* A3A4C 800A2E4C 15600011 */  bnez       $t3, .L800A2E94
/* A3A50 800A2E50 00000000 */   nop
/* A3A54 800A2E54 3C0C800F */  lui        $t4, %hi(D_800EA544)
/* A3A58 800A2E58 958CA544 */  lhu        $t4, %lo(D_800EA544)($t4)
/* A3A5C 800A2E5C 318D0080 */  andi       $t5, $t4, 0x80
/* A3A60 800A2E60 11A0000C */  beqz       $t5, .L800A2E94
/* A3A64 800A2E64 00000000 */   nop
/* A3A68 800A2E68 8FAE012C */  lw         $t6, 0x12c($sp)
/* A3A6C 800A2E6C 25CF0008 */  addiu      $t7, $t6, 8
/* A3A70 800A2E70 AFAF012C */  sw         $t7, 0x12c($sp)
/* A3A74 800A2E74 AFAE00D0 */  sw         $t6, 0xd0($sp)
/* A3A78 800A2E78 8FB900D0 */  lw         $t9, 0xd0($sp)
/* A3A7C 800A2E7C 3C18BA00 */  lui        $t8, 0xba00
/* A3A80 800A2E80 37180C02 */  ori        $t8, $t8, 0xc02
/* A3A84 800A2E84 AF380000 */  sw         $t8, ($t9)
/* A3A88 800A2E88 8FA900D0 */  lw         $t1, 0xd0($sp)
/* A3A8C 800A2E8C 24082000 */  addiu      $t0, $zero, 0x2000
/* A3A90 800A2E90 AD280004 */  sw         $t0, 4($t1)
.L800A2E94:
/* A3A94 800A2E94 8FAA0148 */  lw         $t2, 0x148($sp)
/* A3A98 800A2E98 3C01800F */  lui        $at, %hi(D_800EA544)
/* A3A9C 800A2E9C 954B0014 */  lhu        $t3, 0x14($t2)
/* A3AA0 800A2EA0 A42BA544 */  sh         $t3, %lo(D_800EA544)($at)
/* A3AA4 800A2EA4 3C0C800F */  lui        $t4, %hi(D_800EA544)
/* A3AA8 800A2EA8 958CA544 */  lhu        $t4, %lo(D_800EA544)($t4)
/* A3AAC 800A2EAC 318D0008 */  andi       $t5, $t4, 8
/* A3AB0 800A2EB0 11A0000E */  beqz       $t5, .L800A2EEC
/* A3AB4 800A2EB4 00000000 */   nop
/* A3AB8 800A2EB8 8FAE012C */  lw         $t6, 0x12c($sp)
/* A3ABC 800A2EBC 25CF0008 */  addiu      $t7, $t6, 8
/* A3AC0 800A2EC0 AFAF012C */  sw         $t7, 0x12c($sp)
/* A3AC4 800A2EC4 AFAE00CC */  sw         $t6, 0xcc($sp)
/* A3AC8 800A2EC8 8FB900CC */  lw         $t9, 0xcc($sp)
/* A3ACC 800A2ECC 3C18EE00 */  lui        $t8, 0xee00
/* A3AD0 800A2ED0 AF380000 */  sw         $t8, ($t9)
/* A3AD4 800A2ED4 8FA80148 */  lw         $t0, 0x148($sp)
/* A3AD8 800A2ED8 8FAC00CC */  lw         $t4, 0xcc($sp)
/* A3ADC 800A2EDC 85090016 */  lh         $t1, 0x16($t0)
/* A3AE0 800A2EE0 312AFFFF */  andi       $t2, $t1, 0xffff
/* A3AE4 800A2EE4 000A5C00 */  sll        $t3, $t2, 0x10
/* A3AE8 800A2EE8 AD8B0004 */  sw         $t3, 4($t4)
.L800A2EEC:
/* A3AEC 800A2EEC 8FAD012C */  lw         $t5, 0x12c($sp)
/* A3AF0 800A2EF0 25AE0008 */  addiu      $t6, $t5, 8
/* A3AF4 800A2EF4 AFAE012C */  sw         $t6, 0x12c($sp)
/* A3AF8 800A2EF8 AFAD00C8 */  sw         $t5, 0xc8($sp)
/* A3AFC 800A2EFC 8FB800C8 */  lw         $t8, 0xc8($sp)
/* A3B00 800A2F00 3C0FFA00 */  lui        $t7, 0xfa00
/* A3B04 800A2F04 AF0F0000 */  sw         $t7, ($t8)
/* A3B08 800A2F08 8FB90148 */  lw         $t9, 0x148($sp)
/* A3B0C 800A2F0C 932B0019 */  lbu        $t3, 0x19($t9)
/* A3B10 800A2F10 93280018 */  lbu        $t0, 0x18($t9)
/* A3B14 800A2F14 932F001A */  lbu        $t7, 0x1a($t9)
/* A3B18 800A2F18 316C00FF */  andi       $t4, $t3, 0xff
/* A3B1C 800A2F1C 310900FF */  andi       $t1, $t0, 0xff
/* A3B20 800A2F20 932B001B */  lbu        $t3, 0x1b($t9)
/* A3B24 800A2F24 00095600 */  sll        $t2, $t1, 0x18
/* A3B28 800A2F28 000C6C00 */  sll        $t5, $t4, 0x10
/* A3B2C 800A2F2C 014D7025 */  or         $t6, $t2, $t5
/* A3B30 800A2F30 31F800FF */  andi       $t8, $t7, 0xff
/* A3B34 800A2F34 8FAD00C8 */  lw         $t5, 0xc8($sp)
/* A3B38 800A2F38 00184200 */  sll        $t0, $t8, 8
/* A3B3C 800A2F3C 01C84825 */  or         $t1, $t6, $t0
/* A3B40 800A2F40 316C00FF */  andi       $t4, $t3, 0xff
/* A3B44 800A2F44 012C5025 */  or         $t2, $t1, $t4
/* A3B48 800A2F48 ADAA0004 */  sw         $t2, 4($t5)
/* A3B4C 800A2F4C 8FAF0148 */  lw         $t7, 0x148($sp)
/* A3B50 800A2F50 24010003 */  addiu      $at, $zero, 3
/* A3B54 800A2F54 91F80030 */  lbu        $t8, 0x30($t7)
/* A3B58 800A2F58 13010004 */  beq        $t8, $at, .L800A2F6C
/* A3B5C 800A2F5C 00000000 */   nop
/* A3B60 800A2F60 24010004 */  addiu      $at, $zero, 4
/* A3B64 800A2F64 17010021 */  bne        $t8, $at, .L800A2FEC
/* A3B68 800A2F68 00000000 */   nop
.L800A2F6C:
/* A3B6C 800A2F6C 8FAE0148 */  lw         $t6, 0x148($sp)
/* A3B70 800A2F70 240100FF */  addiu      $at, $zero, 0xff
/* A3B74 800A2F74 91C8001B */  lbu        $t0, 0x1b($t6)
/* A3B78 800A2F78 1501000E */  bne        $t0, $at, .L800A2FB4
/* A3B7C 800A2F7C 00000000 */   nop
/* A3B80 800A2F80 8FB9012C */  lw         $t9, 0x12c($sp)
/* A3B84 800A2F84 272B0008 */  addiu      $t3, $t9, 8
/* A3B88 800A2F88 AFAB012C */  sw         $t3, 0x12c($sp)
/* A3B8C 800A2F8C AFB900C4 */  sw         $t9, 0xc4($sp)
/* A3B90 800A2F90 8FAC00C4 */  lw         $t4, 0xc4($sp)
/* A3B94 800A2F94 3C09FC11 */  lui        $t1, 0xfc11
/* A3B98 800A2F98 3529FE23 */  ori        $t1, $t1, 0xfe23
/* A3B9C 800A2F9C AD890000 */  sw         $t1, ($t4)
/* A3BA0 800A2FA0 8FAD00C4 */  lw         $t5, 0xc4($sp)
/* A3BA4 800A2FA4 240AF3F9 */  addiu      $t2, $zero, -0xc07
/* A3BA8 800A2FA8 ADAA0004 */  sw         $t2, 4($t5)
/* A3BAC 800A2FAC 1000000D */  b          .L800A2FE4
/* A3BB0 800A2FB0 00000000 */   nop
.L800A2FB4:
/* A3BB4 800A2FB4 8FAF012C */  lw         $t7, 0x12c($sp)
/* A3BB8 800A2FB8 25F80008 */  addiu      $t8, $t7, 8
/* A3BBC 800A2FBC AFB8012C */  sw         $t8, 0x12c($sp)
/* A3BC0 800A2FC0 AFAF00C0 */  sw         $t7, 0xc0($sp)
/* A3BC4 800A2FC4 8FA800C0 */  lw         $t0, 0xc0($sp)
/* A3BC8 800A2FC8 3C0EFC11 */  lui        $t6, 0xfc11
/* A3BCC 800A2FCC 35CE9623 */  ori        $t6, $t6, 0x9623
/* A3BD0 800A2FD0 AD0E0000 */  sw         $t6, ($t0)
/* A3BD4 800A2FD4 8FAB00C0 */  lw         $t3, 0xc0($sp)
/* A3BD8 800A2FD8 3C19FF2F */  lui        $t9, 0xff2f
/* A3BDC 800A2FDC 3739FFFF */  ori        $t9, $t9, 0xffff
/* A3BE0 800A2FE0 AD790004 */  sw         $t9, 4($t3)
.L800A2FE4:
/* A3BE4 800A2FE4 1000001F */  b          .L800A3064
/* A3BE8 800A2FE8 00000000 */   nop
.L800A2FEC:
/* A3BEC 800A2FEC 8FA90148 */  lw         $t1, 0x148($sp)
/* A3BF0 800A2FF0 240100FF */  addiu      $at, $zero, 0xff
/* A3BF4 800A2FF4 912C001B */  lbu        $t4, 0x1b($t1)
/* A3BF8 800A2FF8 1581000E */  bne        $t4, $at, .L800A3034
/* A3BFC 800A2FFC 00000000 */   nop
/* A3C00 800A3000 8FAA012C */  lw         $t2, 0x12c($sp)
/* A3C04 800A3004 254D0008 */  addiu      $t5, $t2, 8
/* A3C08 800A3008 AFAD012C */  sw         $t5, 0x12c($sp)
/* A3C0C 800A300C AFAA00BC */  sw         $t2, 0xbc($sp)
/* A3C10 800A3010 8FB800BC */  lw         $t8, 0xbc($sp)
/* A3C14 800A3014 3C0FFC11 */  lui        $t7, 0xfc11
/* A3C18 800A3018 35EFFE23 */  ori        $t7, $t7, 0xfe23
/* A3C1C 800A301C AF0F0000 */  sw         $t7, ($t8)
/* A3C20 800A3020 8FA800BC */  lw         $t0, 0xbc($sp)
/* A3C24 800A3024 240EF3F9 */  addiu      $t6, $zero, -0xc07
/* A3C28 800A3028 AD0E0004 */  sw         $t6, 4($t0)
/* A3C2C 800A302C 1000000D */  b          .L800A3064
/* A3C30 800A3030 00000000 */   nop
.L800A3034:
/* A3C34 800A3034 8FB9012C */  lw         $t9, 0x12c($sp)
/* A3C38 800A3038 272B0008 */  addiu      $t3, $t9, 8
/* A3C3C 800A303C AFAB012C */  sw         $t3, 0x12c($sp)
/* A3C40 800A3040 AFB900B8 */  sw         $t9, 0xb8($sp)
/* A3C44 800A3044 8FAC00B8 */  lw         $t4, 0xb8($sp)
/* A3C48 800A3048 3C09FC11 */  lui        $t1, 0xfc11
/* A3C4C 800A304C 35299623 */  ori        $t1, $t1, 0x9623
/* A3C50 800A3050 AD890000 */  sw         $t1, ($t4)
/* A3C54 800A3054 8FAD00B8 */  lw         $t5, 0xb8($sp)
/* A3C58 800A3058 3C0AFF2F */  lui        $t2, 0xff2f
/* A3C5C 800A305C 354AFFFF */  ori        $t2, $t2, 0xffff
/* A3C60 800A3060 ADAA0004 */  sw         $t2, 4($t5)
.L800A3064:
/* A3C64 800A3064 8FAF0148 */  lw         $t7, 0x148($sp)
/* A3C68 800A3068 24010002 */  addiu      $at, $zero, 2
/* A3C6C 800A306C 91F80030 */  lbu        $t8, 0x30($t7)
/* A3C70 800A3070 1701005A */  bne        $t8, $at, .L800A31DC
/* A3C74 800A3074 00000000 */   nop
/* A3C78 800A3078 8FAE012C */  lw         $t6, 0x12c($sp)
/* A3C7C 800A307C 25C80008 */  addiu      $t0, $t6, 8
/* A3C80 800A3080 AFA8012C */  sw         $t0, 0x12c($sp)
/* A3C84 800A3084 AFAE00B4 */  sw         $t6, 0xb4($sp)
/* A3C88 800A3088 8FAB00B4 */  lw         $t3, 0xb4($sp)
/* A3C8C 800A308C 3C19BA00 */  lui        $t9, 0xba00
/* A3C90 800A3090 37390E02 */  ori        $t9, $t9, 0xe02
/* A3C94 800A3094 AD790000 */  sw         $t9, ($t3)
/* A3C98 800A3098 8FAC00B4 */  lw         $t4, 0xb4($sp)
/* A3C9C 800A309C 34098000 */  ori        $t1, $zero, 0x8000
/* A3CA0 800A30A0 AD890004 */  sw         $t1, 4($t4)
/* A3CA4 800A30A4 8FAA012C */  lw         $t2, 0x12c($sp)
/* A3CA8 800A30A8 254D0008 */  addiu      $t5, $t2, 8
/* A3CAC 800A30AC AFAD012C */  sw         $t5, 0x12c($sp)
/* A3CB0 800A30B0 AFAA00B0 */  sw         $t2, 0xb0($sp)
/* A3CB4 800A30B4 8FB800B0 */  lw         $t8, 0xb0($sp)
/* A3CB8 800A30B8 3C0FFD10 */  lui        $t7, 0xfd10
/* A3CBC 800A30BC AF0F0000 */  sw         $t7, ($t8)
/* A3CC0 800A30C0 8FAE0148 */  lw         $t6, 0x148($sp)
/* A3CC4 800A30C4 8FB900B0 */  lw         $t9, 0xb0($sp)
/* A3CC8 800A30C8 8DC80020 */  lw         $t0, 0x20($t6)
/* A3CCC 800A30CC AF280004 */  sw         $t0, 4($t9)
/* A3CD0 800A30D0 8FAB012C */  lw         $t3, 0x12c($sp)
/* A3CD4 800A30D4 25690008 */  addiu      $t1, $t3, 8
/* A3CD8 800A30D8 AFA9012C */  sw         $t1, 0x12c($sp)
/* A3CDC 800A30DC AFAB00AC */  sw         $t3, 0xac($sp)
/* A3CE0 800A30E0 8FAA00AC */  lw         $t2, 0xac($sp)
/* A3CE4 800A30E4 3C0CE800 */  lui        $t4, 0xe800
/* A3CE8 800A30E8 AD4C0000 */  sw         $t4, ($t2)
/* A3CEC 800A30EC 8FAD00AC */  lw         $t5, 0xac($sp)
/* A3CF0 800A30F0 ADA00004 */  sw         $zero, 4($t5)
/* A3CF4 800A30F4 8FAF012C */  lw         $t7, 0x12c($sp)
/* A3CF8 800A30F8 25F80008 */  addiu      $t8, $t7, 8
/* A3CFC 800A30FC AFB8012C */  sw         $t8, 0x12c($sp)
/* A3D00 800A3100 AFAF00A8 */  sw         $t7, 0xa8($sp)
/* A3D04 800A3104 8FAE0148 */  lw         $t6, 0x148($sp)
/* A3D08 800A3108 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* A3D0C 800A310C 3C01F500 */  lui        $at, 0xf500
/* A3D10 800A3110 85C8001C */  lh         $t0, 0x1c($t6)
/* A3D14 800A3114 25190100 */  addiu      $t9, $t0, 0x100
/* A3D18 800A3118 332B01FF */  andi       $t3, $t9, 0x1ff
/* A3D1C 800A311C 01614825 */  or         $t1, $t3, $at
/* A3D20 800A3120 AD890000 */  sw         $t1, ($t4)
/* A3D24 800A3124 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* A3D28 800A3128 3C0A0700 */  lui        $t2, 0x700
/* A3D2C 800A312C ADAA0004 */  sw         $t2, 4($t5)
/* A3D30 800A3130 8FAF012C */  lw         $t7, 0x12c($sp)
/* A3D34 800A3134 25F80008 */  addiu      $t8, $t7, 8
/* A3D38 800A3138 AFB8012C */  sw         $t8, 0x12c($sp)
/* A3D3C 800A313C AFAF00A4 */  sw         $t7, 0xa4($sp)
/* A3D40 800A3140 8FA800A4 */  lw         $t0, 0xa4($sp)
/* A3D44 800A3144 3C0EE600 */  lui        $t6, 0xe600
/* A3D48 800A3148 AD0E0000 */  sw         $t6, ($t0)
/* A3D4C 800A314C 8FB900A4 */  lw         $t9, 0xa4($sp)
/* A3D50 800A3150 AF200004 */  sw         $zero, 4($t9)
/* A3D54 800A3154 8FAB012C */  lw         $t3, 0x12c($sp)
/* A3D58 800A3158 25690008 */  addiu      $t1, $t3, 8
/* A3D5C 800A315C AFA9012C */  sw         $t1, 0x12c($sp)
/* A3D60 800A3160 AFAB00A0 */  sw         $t3, 0xa0($sp)
/* A3D64 800A3164 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* A3D68 800A3168 3C0CF000 */  lui        $t4, 0xf000
/* A3D6C 800A316C AD4C0000 */  sw         $t4, ($t2)
/* A3D70 800A3170 8FAD0148 */  lw         $t5, 0x148($sp)
/* A3D74 800A3174 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* A3D78 800A3178 3C010700 */  lui        $at, 0x700
/* A3D7C 800A317C 85AF001E */  lh         $t7, 0x1e($t5)
/* A3D80 800A3180 25F8FFFF */  addiu      $t8, $t7, -1
/* A3D84 800A3184 330E03FF */  andi       $t6, $t8, 0x3ff
/* A3D88 800A3188 000E4380 */  sll        $t0, $t6, 0xe
/* A3D8C 800A318C 0101C825 */  or         $t9, $t0, $at
/* A3D90 800A3190 AD790004 */  sw         $t9, 4($t3)
/* A3D94 800A3194 8FA9012C */  lw         $t1, 0x12c($sp)
/* A3D98 800A3198 252C0008 */  addiu      $t4, $t1, 8
/* A3D9C 800A319C AFAC012C */  sw         $t4, 0x12c($sp)
/* A3DA0 800A31A0 AFA9009C */  sw         $t1, 0x9c($sp)
/* A3DA4 800A31A4 8FAD009C */  lw         $t5, 0x9c($sp)
/* A3DA8 800A31A8 3C0AE700 */  lui        $t2, 0xe700
/* A3DAC 800A31AC ADAA0000 */  sw         $t2, ($t5)
/* A3DB0 800A31B0 8FAF009C */  lw         $t7, 0x9c($sp)
/* A3DB4 800A31B4 ADE00004 */  sw         $zero, 4($t7)
/* A3DB8 800A31B8 8FB8012C */  lw         $t8, 0x12c($sp)
/* A3DBC 800A31BC 270E0008 */  addiu      $t6, $t8, 8
/* A3DC0 800A31C0 AFAE012C */  sw         $t6, 0x12c($sp)
/* A3DC4 800A31C4 AFB80098 */  sw         $t8, 0x98($sp)
/* A3DC8 800A31C8 8FB90098 */  lw         $t9, 0x98($sp)
/* A3DCC 800A31CC 3C08E600 */  lui        $t0, 0xe600
/* A3DD0 800A31D0 AF280000 */  sw         $t0, ($t9)
/* A3DD4 800A31D4 8FAB0098 */  lw         $t3, 0x98($sp)
/* A3DD8 800A31D8 AD600004 */  sw         $zero, 4($t3)
.L800A31DC:
/* A3DDC 800A31DC 8FA90148 */  lw         $t1, 0x148($sp)
/* A3DE0 800A31E0 24010001 */  addiu      $at, $zero, 1
/* A3DE4 800A31E4 912C0030 */  lbu        $t4, 0x30($t1)
/* A3DE8 800A31E8 15810033 */  bne        $t4, $at, .L800A32B8
/* A3DEC 800A31EC 00000000 */   nop
/* A3DF0 800A31F0 952A0014 */  lhu        $t2, 0x14($t1)
/* A3DF4 800A31F4 314D0020 */  andi       $t5, $t2, 0x20
/* A3DF8 800A31F8 11A0002F */  beqz       $t5, .L800A32B8
/* A3DFC 800A31FC 00000000 */   nop
/* A3E00 800A3200 8FAF012C */  lw         $t7, 0x12c($sp)
/* A3E04 800A3204 25F80008 */  addiu      $t8, $t7, 8
/* A3E08 800A3208 AFB8012C */  sw         $t8, 0x12c($sp)
/* A3E0C 800A320C AFAF0094 */  sw         $t7, 0x94($sp)
/* A3E10 800A3210 8FA80094 */  lw         $t0, 0x94($sp)
/* A3E14 800A3214 3C0EBA00 */  lui        $t6, 0xba00
/* A3E18 800A3218 35CE0903 */  ori        $t6, $t6, 0x903
/* A3E1C 800A321C AD0E0000 */  sw         $t6, ($t0)
/* A3E20 800A3220 8FB90094 */  lw         $t9, 0x94($sp)
/* A3E24 800A3224 AF200004 */  sw         $zero, 4($t9)
/* A3E28 800A3228 8FAB012C */  lw         $t3, 0x12c($sp)
/* A3E2C 800A322C 256C0008 */  addiu      $t4, $t3, 8
/* A3E30 800A3230 AFAC012C */  sw         $t4, 0x12c($sp)
/* A3E34 800A3234 AFAB0090 */  sw         $t3, 0x90($sp)
/* A3E38 800A3238 8FAA0090 */  lw         $t2, 0x90($sp)
/* A3E3C 800A323C 3C09BA00 */  lui        $t1, 0xba00
/* A3E40 800A3240 35290C02 */  ori        $t1, $t1, 0xc02
/* A3E44 800A3244 AD490000 */  sw         $t1, ($t2)
/* A3E48 800A3248 8FAD0090 */  lw         $t5, 0x90($sp)
/* A3E4C 800A324C ADA00004 */  sw         $zero, 4($t5)
/* A3E50 800A3250 8FAF012C */  lw         $t7, 0x12c($sp)
/* A3E54 800A3254 25F80008 */  addiu      $t8, $t7, 8
/* A3E58 800A3258 AFB8012C */  sw         $t8, 0x12c($sp)
/* A3E5C 800A325C AFAF008C */  sw         $t7, 0x8c($sp)
/* A3E60 800A3260 8FA8008C */  lw         $t0, 0x8c($sp)
/* A3E64 800A3264 3C0EFC17 */  lui        $t6, 0xfc17
/* A3E68 800A3268 35CEFE2F */  ori        $t6, $t6, 0xfe2f
/* A3E6C 800A326C AD0E0000 */  sw         $t6, ($t0)
/* A3E70 800A3270 8FAB008C */  lw         $t3, 0x8c($sp)
/* A3E74 800A3274 3C1977FC */  lui        $t9, 0x77fc
/* A3E78 800A3278 3739F87C */  ori        $t9, $t9, 0xf87c
/* A3E7C 800A327C AD790004 */  sw         $t9, 4($t3)
/* A3E80 800A3280 8FAC012C */  lw         $t4, 0x12c($sp)
/* A3E84 800A3284 25890008 */  addiu      $t1, $t4, 8
/* A3E88 800A3288 AFA9012C */  sw         $t1, 0x12c($sp)
/* A3E8C 800A328C AFAC0088 */  sw         $t4, 0x88($sp)
/* A3E90 800A3290 8FAD0088 */  lw         $t5, 0x88($sp)
/* A3E94 800A3294 3C0AEC15 */  lui        $t2, 0xec15
/* A3E98 800A3298 354AFD5D */  ori        $t2, $t2, 0xfd5d
/* A3E9C 800A329C ADAA0000 */  sw         $t2, ($t5)
/* A3EA0 800A32A0 8FB80088 */  lw         $t8, 0x88($sp)
/* A3EA4 800A32A4 3C0F3B78 */  lui        $t7, 0x3b78
/* A3EA8 800A32A8 35EFE42A */  ori        $t7, $t7, 0xe42a
/* A3EAC 800A32AC AF0F0004 */  sw         $t7, 4($t8)
/* A3EB0 800A32B0 1000003F */  b          .L800A33B0
/* A3EB4 800A32B4 00000000 */   nop
.L800A32B8:
/* A3EB8 800A32B8 8FAE0148 */  lw         $t6, 0x148($sp)
/* A3EBC 800A32BC 24010001 */  addiu      $at, $zero, 1
/* A3EC0 800A32C0 91C80030 */  lbu        $t0, 0x30($t6)
/* A3EC4 800A32C4 1501003A */  bne        $t0, $at, .L800A33B0
/* A3EC8 800A32C8 00000000 */   nop
/* A3ECC 800A32CC 8FB9012C */  lw         $t9, 0x12c($sp)
/* A3ED0 800A32D0 272B0008 */  addiu      $t3, $t9, 8
/* A3ED4 800A32D4 AFAB012C */  sw         $t3, 0x12c($sp)
/* A3ED8 800A32D8 AFB90084 */  sw         $t9, 0x84($sp)
/* A3EDC 800A32DC 8FA90084 */  lw         $t1, 0x84($sp)
/* A3EE0 800A32E0 3C0CBA00 */  lui        $t4, 0xba00
/* A3EE4 800A32E4 358C1402 */  ori        $t4, $t4, 0x1402
/* A3EE8 800A32E8 AD2C0000 */  sw         $t4, ($t1)
/* A3EEC 800A32EC 8FAD0084 */  lw         $t5, 0x84($sp)
/* A3EF0 800A32F0 3C0A0010 */  lui        $t2, 0x10
/* A3EF4 800A32F4 ADAA0004 */  sw         $t2, 4($t5)
/* A3EF8 800A32F8 8FAF012C */  lw         $t7, 0x12c($sp)
/* A3EFC 800A32FC 25F80008 */  addiu      $t8, $t7, 8
/* A3F00 800A3300 AFB8012C */  sw         $t8, 0x12c($sp)
/* A3F04 800A3304 AFAF0080 */  sw         $t7, 0x80($sp)
/* A3F08 800A3308 8FA80080 */  lw         $t0, 0x80($sp)
/* A3F0C 800A330C 3C0EBA00 */  lui        $t6, 0xba00
/* A3F10 800A3310 35CE0C02 */  ori        $t6, $t6, 0xc02
/* A3F14 800A3314 AD0E0000 */  sw         $t6, ($t0)
/* A3F18 800A3318 8FAB0080 */  lw         $t3, 0x80($sp)
/* A3F1C 800A331C 24192000 */  addiu      $t9, $zero, 0x2000
/* A3F20 800A3320 AD790004 */  sw         $t9, 4($t3)
/* A3F24 800A3324 8FAC012C */  lw         $t4, 0x12c($sp)
/* A3F28 800A3328 25890008 */  addiu      $t1, $t4, 8
/* A3F2C 800A332C AFA9012C */  sw         $t1, 0x12c($sp)
/* A3F30 800A3330 AFAC007C */  sw         $t4, 0x7c($sp)
/* A3F34 800A3334 8FAD007C */  lw         $t5, 0x7c($sp)
/* A3F38 800A3338 3C0ABA00 */  lui        $t2, 0xba00
/* A3F3C 800A333C 354A0903 */  ori        $t2, $t2, 0x903
/* A3F40 800A3340 ADAA0000 */  sw         $t2, ($t5)
/* A3F44 800A3344 8FB8007C */  lw         $t8, 0x7c($sp)
/* A3F48 800A3348 240F0A00 */  addiu      $t7, $zero, 0xa00
/* A3F4C 800A334C AF0F0004 */  sw         $t7, 4($t8)
/* A3F50 800A3350 8FAE012C */  lw         $t6, 0x12c($sp)
/* A3F54 800A3354 25C80008 */  addiu      $t0, $t6, 8
/* A3F58 800A3358 AFA8012C */  sw         $t0, 0x12c($sp)
/* A3F5C 800A335C AFAE0078 */  sw         $t6, 0x78($sp)
/* A3F60 800A3360 8FAB0078 */  lw         $t3, 0x78($sp)
/* A3F64 800A3364 3C19EC15 */  lui        $t9, 0xec15
/* A3F68 800A3368 3739FD5D */  ori        $t9, $t9, 0xfd5d
/* A3F6C 800A336C AD790000 */  sw         $t9, ($t3)
/* A3F70 800A3370 8FA90078 */  lw         $t1, 0x78($sp)
/* A3F74 800A3374 3C0C3B78 */  lui        $t4, 0x3b78
/* A3F78 800A3378 358CE42A */  ori        $t4, $t4, 0xe42a
/* A3F7C 800A337C AD2C0004 */  sw         $t4, 4($t1)
/* A3F80 800A3380 8FAA012C */  lw         $t2, 0x12c($sp)
/* A3F84 800A3384 254D0008 */  addiu      $t5, $t2, 8
/* A3F88 800A3388 AFAD012C */  sw         $t5, 0x12c($sp)
/* A3F8C 800A338C AFAA0074 */  sw         $t2, 0x74($sp)
/* A3F90 800A3390 8FB80074 */  lw         $t8, 0x74($sp)
/* A3F94 800A3394 3C0FFC27 */  lui        $t7, 0xfc27
/* A3F98 800A3398 35EFFFFF */  ori        $t7, $t7, 0xffff
/* A3F9C 800A339C AF0F0000 */  sw         $t7, ($t8)
/* A3FA0 800A33A0 8FA80074 */  lw         $t0, 0x74($sp)
/* A3FA4 800A33A4 3C0E7FFD */  lui        $t6, 0x7ffd
/* A3FA8 800A33A8 35CE7E38 */  ori        $t6, $t6, 0x7e38
/* A3FAC 800A33AC AD0E0004 */  sw         $t6, 4($t0)
.L800A33B0:
/* A3FB0 800A33B0 8FB90148 */  lw         $t9, 0x148($sp)
/* A3FB4 800A33B4 972B0014 */  lhu        $t3, 0x14($t9)
/* A3FB8 800A33B8 316C0010 */  andi       $t4, $t3, 0x10
/* A3FBC 800A33BC 11800008 */  beqz       $t4, .L800A33E0
/* A3FC0 800A33C0 00000000 */   nop
/* A3FC4 800A33C4 8FA90148 */  lw         $t1, 0x148($sp)
/* A3FC8 800A33C8 C5240008 */  lwc1       $f4, 8($t1)
/* A3FCC 800A33CC E7A40138 */  swc1       $f4, 0x138($sp)
/* A3FD0 800A33D0 8FAA0148 */  lw         $t2, 0x148($sp)
/* A3FD4 800A33D4 C546000C */  lwc1       $f6, 0xc($t2)
/* A3FD8 800A33D8 10000009 */  b          .L800A3400
/* A3FDC 800A33DC E7A60134 */   swc1      $f6, 0x134($sp)
.L800A33E0:
/* A3FE0 800A33E0 3C013F80 */  lui        $at, 0x3f80
/* A3FE4 800A33E4 44814000 */  mtc1       $at, $f8
/* A3FE8 800A33E8 00000000 */  nop
/* A3FEC 800A33EC E7A80138 */  swc1       $f8, 0x138($sp)
/* A3FF0 800A33F0 3C013F80 */  lui        $at, 0x3f80
/* A3FF4 800A33F4 44815000 */  mtc1       $at, $f10
/* A3FF8 800A33F8 00000000 */  nop
/* A3FFC 800A33FC E7AA0134 */  swc1       $f10, 0x134($sp)
.L800A3400:
/* A4000 800A3400 3C014480 */  lui        $at, 0x4480
/* A4004 800A3404 44818000 */  mtc1       $at, $f16
/* A4008 800A3408 C7B20138 */  lwc1       $f18, 0x138($sp)
/* A400C 800A340C 3C013F00 */  lui        $at, 0x3f00
/* A4010 800A3410 44813000 */  mtc1       $at, $f6
/* A4014 800A3414 46128103 */  div.s      $f4, $f16, $f18
/* A4018 800A3418 46062200 */  add.s      $f8, $f4, $f6
/* A401C 800A341C 4600428D */  trunc.w.s  $f10, $f8
/* A4020 800A3420 440F5000 */  mfc1       $t7, $f10
/* A4024 800A3424 00000000 */  nop
/* A4028 800A3428 AFAF0120 */  sw         $t7, 0x120($sp)
/* A402C 800A342C 3C014480 */  lui        $at, 0x4480
/* A4030 800A3430 44818000 */  mtc1       $at, $f16
/* A4034 800A3434 C7B20134 */  lwc1       $f18, 0x134($sp)
/* A4038 800A3438 3C013F00 */  lui        $at, 0x3f00
/* A403C 800A343C 44813000 */  mtc1       $at, $f6
/* A4040 800A3440 46128103 */  div.s      $f4, $f16, $f18
/* A4044 800A3444 46062200 */  add.s      $f8, $f4, $f6
/* A4048 800A3448 4600428D */  trunc.w.s  $f10, $f8
/* A404C 800A344C 440E5000 */  mfc1       $t6, $f10
/* A4050 800A3450 00000000 */  nop
/* A4054 800A3454 AFAE011C */  sw         $t6, 0x11c($sp)
/* A4058 800A3458 8FA80130 */  lw         $t0, 0x130($sp)
/* A405C 800A345C 110001F9 */  beqz       $t0, .L800A3C44
/* A4060 800A3460 00000000 */   nop
/* A4064 800A3464 8FB90148 */  lw         $t9, 0x148($sp)
/* A4068 800A3468 972B0014 */  lhu        $t3, 0x14($t9)
/* A406C 800A346C 316C0020 */  andi       $t4, $t3, 0x20
/* A4070 800A3470 11800010 */  beqz       $t4, .L800A34B4
/* A4074 800A3474 00000000 */   nop
/* A4078 800A3478 93290030 */  lbu        $t1, 0x30($t9)
/* A407C 800A347C 24010001 */  addiu      $at, $zero, 1
/* A4080 800A3480 1121000C */  beq        $t1, $at, .L800A34B4
/* A4084 800A3484 00000000 */   nop
/* A4088 800A3488 8FAA012C */  lw         $t2, 0x12c($sp)
/* A408C 800A348C 254D0008 */  addiu      $t5, $t2, 8
/* A4090 800A3490 AFAD012C */  sw         $t5, 0x12c($sp)
/* A4094 800A3494 AFAA0070 */  sw         $t2, 0x70($sp)
/* A4098 800A3498 8FB80070 */  lw         $t8, 0x70($sp)
/* A409C 800A349C 3C0FBA00 */  lui        $t7, 0xba00
/* A40A0 800A34A0 35EF1402 */  ori        $t7, $t7, 0x1402
/* A40A4 800A34A4 AF0F0000 */  sw         $t7, ($t8)
/* A40A8 800A34A8 8FA80070 */  lw         $t0, 0x70($sp)
/* A40AC 800A34AC 3C0E0020 */  lui        $t6, 0x20
/* A40B0 800A34B0 AD0E0004 */  sw         $t6, 4($t0)
.L800A34B4:
/* A40B4 800A34B4 AFA00140 */  sw         $zero, 0x140($sp)
/* A40B8 800A34B8 AFA0013C */  sw         $zero, 0x13c($sp)
/* A40BC 800A34BC 8FAB013C */  lw         $t3, 0x13c($sp)
/* A40C0 800A34C0 8FAC0148 */  lw         $t4, 0x148($sp)
/* A40C4 800A34C4 C7A40134 */  lwc1       $f4, 0x134($sp)
/* A40C8 800A34C8 448B8000 */  mtc1       $t3, $f16
/* A40CC 800A34CC 85990002 */  lh         $t9, 2($t4)
/* A40D0 800A34D0 468084A0 */  cvt.s.w    $f18, $f16
/* A40D4 800A34D4 44994000 */  mtc1       $t9, $f8
/* A40D8 800A34D8 00000000 */  nop
/* A40DC 800A34DC 468042A0 */  cvt.s.w    $f10, $f8
/* A40E0 800A34E0 46049182 */  mul.s      $f6, $f18, $f4
/* A40E4 800A34E4 46065400 */  add.s      $f16, $f10, $f6
/* A40E8 800A34E8 E7B000FC */  swc1       $f16, 0xfc($sp)
/* A40EC 800A34EC 3C01800F */  lui        $at, %hi(D_800EDA4C)
/* A40F0 800A34F0 C424DA4C */  lwc1       $f4, %lo(D_800EDA4C)($at)
/* A40F4 800A34F4 C7B200FC */  lwc1       $f18, 0xfc($sp)
/* A40F8 800A34F8 46049200 */  add.s      $f8, $f18, $f4
/* A40FC 800A34FC 4600428D */  trunc.w.s  $f10, $f8
/* A4100 800A3500 440A5000 */  mfc1       $t2, $f10
/* A4104 800A3504 00000000 */  nop
/* A4108 800A3508 AFAA0114 */  sw         $t2, 0x114($sp)
/* A410C 800A350C 8FAD0114 */  lw         $t5, 0x114($sp)
/* A4110 800A3510 8FAF011C */  lw         $t7, 0x11c($sp)
/* A4114 800A3514 C7B200FC */  lwc1       $f18, 0xfc($sp)
/* A4118 800A3518 448D3000 */  mtc1       $t5, $f6
/* A411C 800A351C 448F4000 */  mtc1       $t7, $f8
/* A4120 800A3520 46803420 */  cvt.s.w    $f16, $f6
/* A4124 800A3524 468042A0 */  cvt.s.w    $f10, $f8
/* A4128 800A3528 46128101 */  sub.s      $f4, $f16, $f18
/* A412C 800A352C 46045182 */  mul.s      $f6, $f10, $f4
/* A4130 800A3530 4600340D */  trunc.w.s  $f16, $f6
/* A4134 800A3534 440E8000 */  mfc1       $t6, $f16
/* A4138 800A3538 00000000 */  nop
/* A413C 800A353C AFAE00F4 */  sw         $t6, 0xf4($sp)
/* A4140 800A3540 8FA800F4 */  lw         $t0, 0xf4($sp)
/* A4144 800A3544 250B0010 */  addiu      $t3, $t0, 0x10
/* A4148 800A3548 000B6143 */  sra        $t4, $t3, 5
/* A414C 800A354C AFAC00F4 */  sw         $t4, 0xf4($sp)
/* A4150 800A3550 8FB90148 */  lw         $t9, 0x148($sp)
/* A4154 800A3554 97290014 */  lhu        $t1, 0x14($t9)
/* A4158 800A3558 312A0080 */  andi       $t2, $t1, 0x80
/* A415C 800A355C 11400004 */  beqz       $t2, .L800A3570
/* A4160 800A3560 00000000 */   nop
/* A4164 800A3564 8FAD00F4 */  lw         $t5, 0xf4($sp)
/* A4168 800A3568 25AF0010 */  addiu      $t7, $t5, 0x10
/* A416C 800A356C AFAF00F4 */  sw         $t7, 0xf4($sp)
.L800A3570:
/* A4170 800A3570 8FB80148 */  lw         $t8, 0x148($sp)
/* A4174 800A3574 970E0014 */  lhu        $t6, 0x14($t8)
/* A4178 800A3578 31C80100 */  andi       $t0, $t6, 0x100
/* A417C 800A357C 11000006 */  beqz       $t0, .L800A3598
/* A4180 800A3580 00000000 */   nop
/* A4184 800A3584 8FAC0148 */  lw         $t4, 0x148($sp)
/* A4188 800A3588 8FAB00F4 */  lw         $t3, 0xf4($sp)
/* A418C 800A358C 85990042 */  lh         $t9, 0x42($t4)
/* A4190 800A3590 01794821 */  addu       $t1, $t3, $t9
/* A4194 800A3594 AFA900F4 */  sw         $t1, 0xf4($sp)
.L800A3598:
/* A4198 800A3598 8FAA0148 */  lw         $t2, 0x148($sp)
/* A419C 800A359C 8FAF013C */  lw         $t7, 0x13c($sp)
/* A41A0 800A35A0 854D002C */  lh         $t5, 0x2c($t2)
/* A41A4 800A35A4 01AFC021 */  addu       $t8, $t5, $t7
/* A41A8 800A35A8 AFB80104 */  sw         $t8, 0x104($sp)
/* A41AC 800A35AC 8FAE0104 */  lw         $t6, 0x104($sp)
/* A41B0 800A35B0 8FA80148 */  lw         $t0, 0x148($sp)
/* A41B4 800A35B4 C7AA0134 */  lwc1       $f10, 0x134($sp)
/* A41B8 800A35B8 448E9000 */  mtc1       $t6, $f18
/* A41BC 800A35BC 850C0002 */  lh         $t4, 2($t0)
/* A41C0 800A35C0 3C01800F */  lui        $at, 0x800f
/* A41C4 800A35C4 46809220 */  cvt.s.w    $f8, $f18
/* A41C8 800A35C8 448C3000 */  mtc1       $t4, $f6
/* A41CC 800A35CC 00000000 */  nop
/* A41D0 800A35D0 46803420 */  cvt.s.w    $f16, $f6
/* A41D4 800A35D4 460A4102 */  mul.s      $f4, $f8, $f10
/* A41D8 800A35D8 C428DA50 */  lwc1       $f8, -0x25b0($at)
/* A41DC 800A35DC 46048480 */  add.s      $f18, $f16, $f4
/* A41E0 800A35E0 46089280 */  add.s      $f10, $f18, $f8
/* A41E4 800A35E4 4600518D */  trunc.w.s  $f6, $f10
/* A41E8 800A35E8 44193000 */  mfc1       $t9, $f6
/* A41EC 800A35EC 00000000 */  nop
/* A41F0 800A35F0 AFB9010C */  sw         $t9, 0x10c($sp)
/* A41F4 800A35F4 8FA90148 */  lw         $t1, 0x148($sp)
/* A41F8 800A35F8 952A0014 */  lhu        $t2, 0x14($t1)
/* A41FC 800A35FC 314D0020 */  andi       $t5, $t2, 0x20
/* A4200 800A3600 11A00008 */  beqz       $t5, .L800A3624
/* A4204 800A3604 00000000 */   nop
/* A4208 800A3608 912F0030 */  lbu        $t7, 0x30($t1)
/* A420C 800A360C 24010001 */  addiu      $at, $zero, 1
/* A4210 800A3610 11E10004 */  beq        $t7, $at, .L800A3624
/* A4214 800A3614 00000000 */   nop
/* A4218 800A3618 8FB8010C */  lw         $t8, 0x10c($sp)
/* A421C 800A361C 270EFFFF */  addiu      $t6, $t8, -1
/* A4220 800A3620 AFAE010C */  sw         $t6, 0x10c($sp)
.L800A3624:
/* A4224 800A3624 8FA80148 */  lw         $t0, 0x148($sp)
/* A4228 800A3628 AFA00144 */  sw         $zero, 0x144($sp)
/* A422C 800A362C 850C0028 */  lh         $t4, 0x28($t0)
/* A4230 800A3630 1980014E */  blez       $t4, .L800A3B6C
/* A4234 800A3634 00000000 */   nop
/* A4238 800A3638 8FAB0130 */  lw         $t3, 0x130($sp)
/* A423C 800A363C 85790000 */  lh         $t9, ($t3)
/* A4240 800A3640 1B20014A */  blez       $t9, .L800A3B6C
/* A4244 800A3644 00000000 */   nop
.L800A3648:
/* A4248 800A3648 8FAA0130 */  lw         $t2, 0x130($sp)
/* A424C 800A364C 8FB80148 */  lw         $t8, 0x148($sp)
/* A4250 800A3650 8FA90140 */  lw         $t1, 0x140($sp)
/* A4254 800A3654 854D0000 */  lh         $t5, ($t2)
/* A4258 800A3658 870E0004 */  lh         $t6, 4($t8)
/* A425C 800A365C 01A97821 */  addu       $t7, $t5, $t1
/* A4260 800A3660 01CF082A */  slt        $at, $t6, $t7
/* A4264 800A3664 10200085 */  beqz       $at, .L800A387C
/* A4268 800A3668 00000000 */   nop
/* A426C 800A366C AFA00140 */  sw         $zero, 0x140($sp)
/* A4270 800A3670 AFA000F8 */  sw         $zero, 0xf8($sp)
/* A4274 800A3674 AFA000F0 */  sw         $zero, 0xf0($sp)
/* A4278 800A3678 8FAC0148 */  lw         $t4, 0x148($sp)
/* A427C 800A367C 8FA800EC */  lw         $t0, 0xec($sp)
/* A4280 800A3680 858B0012 */  lh         $t3, 0x12($t4)
/* A4284 800A3684 010BC821 */  addu       $t9, $t0, $t3
/* A4288 800A3688 AFB900EC */  sw         $t9, 0xec($sp)
/* A428C 800A368C 8FAD0148 */  lw         $t5, 0x148($sp)
/* A4290 800A3690 8FAA013C */  lw         $t2, 0x13c($sp)
/* A4294 800A3694 85A9002C */  lh         $t1, 0x2c($t5)
/* A4298 800A3698 0149C021 */  addu       $t8, $t2, $t1
/* A429C 800A369C AFB8013C */  sw         $t8, 0x13c($sp)
/* A42A0 800A36A0 8FAF0148 */  lw         $t7, 0x148($sp)
/* A42A4 800A36A4 8FAC013C */  lw         $t4, 0x13c($sp)
/* A42A8 800A36A8 85EE002C */  lh         $t6, 0x2c($t7)
/* A42AC 800A36AC 01CC4021 */  addu       $t0, $t6, $t4
/* A42B0 800A36B0 AFA80104 */  sw         $t0, 0x104($sp)
/* A42B4 800A36B4 8FAB013C */  lw         $t3, 0x13c($sp)
/* A42B8 800A36B8 8FB90148 */  lw         $t9, 0x148($sp)
/* A42BC 800A36BC C7B20134 */  lwc1       $f18, 0x134($sp)
/* A42C0 800A36C0 448B8000 */  mtc1       $t3, $f16
/* A42C4 800A36C4 872D0002 */  lh         $t5, 2($t9)
/* A42C8 800A36C8 46808120 */  cvt.s.w    $f4, $f16
/* A42CC 800A36CC 448D5000 */  mtc1       $t5, $f10
/* A42D0 800A36D0 00000000 */  nop
/* A42D4 800A36D4 468051A0 */  cvt.s.w    $f6, $f10
/* A42D8 800A36D8 46122202 */  mul.s      $f8, $f4, $f18
/* A42DC 800A36DC 46083400 */  add.s      $f16, $f6, $f8
/* A42E0 800A36E0 E7B000FC */  swc1       $f16, 0xfc($sp)
/* A42E4 800A36E4 3C01800F */  lui        $at, %hi(D_800EDA54)
/* A42E8 800A36E8 C432DA54 */  lwc1       $f18, %lo(D_800EDA54)($at)
/* A42EC 800A36EC C7A400FC */  lwc1       $f4, 0xfc($sp)
/* A42F0 800A36F0 46122280 */  add.s      $f10, $f4, $f18
/* A42F4 800A36F4 4600518D */  trunc.w.s  $f6, $f10
/* A42F8 800A36F8 44093000 */  mfc1       $t1, $f6
/* A42FC 800A36FC 00000000 */  nop
/* A4300 800A3700 AFA90114 */  sw         $t1, 0x114($sp)
/* A4304 800A3704 8FB80114 */  lw         $t8, 0x114($sp)
/* A4308 800A3708 8FAF011C */  lw         $t7, 0x11c($sp)
/* A430C 800A370C C7A400FC */  lwc1       $f4, 0xfc($sp)
/* A4310 800A3710 44984000 */  mtc1       $t8, $f8
/* A4314 800A3714 448F5000 */  mtc1       $t7, $f10
/* A4318 800A3718 46804420 */  cvt.s.w    $f16, $f8
/* A431C 800A371C 468051A0 */  cvt.s.w    $f6, $f10
/* A4320 800A3720 46048481 */  sub.s      $f18, $f16, $f4
/* A4324 800A3724 46123202 */  mul.s      $f8, $f6, $f18
/* A4328 800A3728 4600440D */  trunc.w.s  $f16, $f8
/* A432C 800A372C 440C8000 */  mfc1       $t4, $f16
/* A4330 800A3730 00000000 */  nop
/* A4334 800A3734 AFAC00F4 */  sw         $t4, 0xf4($sp)
/* A4338 800A3738 8FA800F4 */  lw         $t0, 0xf4($sp)
/* A433C 800A373C 250B0010 */  addiu      $t3, $t0, 0x10
/* A4340 800A3740 000BC943 */  sra        $t9, $t3, 5
/* A4344 800A3744 AFB900F4 */  sw         $t9, 0xf4($sp)
/* A4348 800A3748 8FAD0148 */  lw         $t5, 0x148($sp)
/* A434C 800A374C 95AA0014 */  lhu        $t2, 0x14($t5)
/* A4350 800A3750 31490080 */  andi       $t1, $t2, 0x80
/* A4354 800A3754 11200004 */  beqz       $t1, .L800A3768
/* A4358 800A3758 00000000 */   nop
/* A435C 800A375C 8FB800F4 */  lw         $t8, 0xf4($sp)
/* A4360 800A3760 270F0010 */  addiu      $t7, $t8, 0x10
/* A4364 800A3764 AFAF00F4 */  sw         $t7, 0xf4($sp)
.L800A3768:
/* A4368 800A3768 8FAE0148 */  lw         $t6, 0x148($sp)
/* A436C 800A376C 95CC0014 */  lhu        $t4, 0x14($t6)
/* A4370 800A3770 31880100 */  andi       $t0, $t4, 0x100
/* A4374 800A3774 11000006 */  beqz       $t0, .L800A3790
/* A4378 800A3778 00000000 */   nop
/* A437C 800A377C 8FB90148 */  lw         $t9, 0x148($sp)
/* A4380 800A3780 8FAB00F4 */  lw         $t3, 0xf4($sp)
/* A4384 800A3784 872D0042 */  lh         $t5, 0x42($t9)
/* A4388 800A3788 016D5021 */  addu       $t2, $t3, $t5
/* A438C 800A378C AFAA00F4 */  sw         $t2, 0xf4($sp)
.L800A3790:
/* A4390 800A3790 8FA90104 */  lw         $t1, 0x104($sp)
/* A4394 800A3794 8FB80148 */  lw         $t8, 0x148($sp)
/* A4398 800A3798 C7A60134 */  lwc1       $f6, 0x134($sp)
/* A439C 800A379C 44892000 */  mtc1       $t1, $f4
/* A43A0 800A37A0 870F0002 */  lh         $t7, 2($t8)
/* A43A4 800A37A4 3C01800F */  lui        $at, 0x800f
/* A43A8 800A37A8 468022A0 */  cvt.s.w    $f10, $f4
/* A43AC 800A37AC 448F4000 */  mtc1       $t7, $f8
/* A43B0 800A37B0 00000000 */  nop
/* A43B4 800A37B4 46804420 */  cvt.s.w    $f16, $f8
/* A43B8 800A37B8 46065482 */  mul.s      $f18, $f10, $f6
/* A43BC 800A37BC C42ADA58 */  lwc1       $f10, -0x25a8($at)
/* A43C0 800A37C0 46128100 */  add.s      $f4, $f16, $f18
/* A43C4 800A37C4 460A2180 */  add.s      $f6, $f4, $f10
/* A43C8 800A37C8 4600320D */  trunc.w.s  $f8, $f6
/* A43CC 800A37CC 440C4000 */  mfc1       $t4, $f8
/* A43D0 800A37D0 00000000 */  nop
/* A43D4 800A37D4 AFAC010C */  sw         $t4, 0x10c($sp)
/* A43D8 800A37D8 8FA80114 */  lw         $t0, 0x114($sp)
/* A43DC 800A37DC 8FB900EC */  lw         $t9, 0xec($sp)
/* A43E0 800A37E0 01195821 */  addu       $t3, $t0, $t9
/* A43E4 800A37E4 AFAB0114 */  sw         $t3, 0x114($sp)
/* A43E8 800A37E8 8FAD010C */  lw         $t5, 0x10c($sp)
/* A43EC 800A37EC 8FAA00EC */  lw         $t2, 0xec($sp)
/* A43F0 800A37F0 01AA4821 */  addu       $t1, $t5, $t2
/* A43F4 800A37F4 AFA9010C */  sw         $t1, 0x10c($sp)
/* A43F8 800A37F8 8FB80148 */  lw         $t8, 0x148($sp)
/* A43FC 800A37FC 970F0014 */  lhu        $t7, 0x14($t8)
/* A4400 800A3800 31EE0020 */  andi       $t6, $t7, 0x20
/* A4404 800A3804 11C00008 */  beqz       $t6, .L800A3828
/* A4408 800A3808 00000000 */   nop
/* A440C 800A380C 930C0030 */  lbu        $t4, 0x30($t8)
/* A4410 800A3810 24010001 */  addiu      $at, $zero, 1
/* A4414 800A3814 11810004 */  beq        $t4, $at, .L800A3828
/* A4418 800A3818 00000000 */   nop
/* A441C 800A381C 8FA8010C */  lw         $t0, 0x10c($sp)
/* A4420 800A3820 2519FFFF */  addiu      $t9, $t0, -1
/* A4424 800A3824 AFB9010C */  sw         $t9, 0x10c($sp)
.L800A3828:
/* A4428 800A3828 8FAB0130 */  lw         $t3, 0x130($sp)
/* A442C 800A382C 856D000C */  lh         $t5, 0xc($t3)
/* A4430 800A3830 11A00005 */  beqz       $t5, .L800A3848
/* A4434 800A3834 00000000 */   nop
/* A4438 800A3838 8FAA0130 */  lw         $t2, 0x130($sp)
/* A443C 800A383C 8549000C */  lh         $t1, 0xc($t2)
/* A4440 800A3840 10000004 */  b          .L800A3854
/* A4444 800A3844 AFA9006C */   sw        $t1, 0x6c($sp)
.L800A3848:
/* A4448 800A3848 8FAF0148 */  lw         $t7, 0x148($sp)
/* A444C 800A384C 85EE002C */  lh         $t6, 0x2c($t7)
/* A4450 800A3850 AFAE006C */  sw         $t6, 0x6c($sp)
.L800A3854:
/* A4454 800A3854 8FB90148 */  lw         $t9, 0x148($sp)
/* A4458 800A3858 8FB8006C */  lw         $t8, 0x6c($sp)
/* A445C 800A385C 8FAC013C */  lw         $t4, 0x13c($sp)
/* A4460 800A3860 872B0006 */  lh         $t3, 6($t9)
/* A4464 800A3864 030C4021 */  addu       $t0, $t8, $t4
/* A4468 800A3868 0168082A */  slt        $at, $t3, $t0
/* A446C 800A386C 10200003 */  beqz       $at, .L800A387C
/* A4470 800A3870 00000000 */   nop
/* A4474 800A3874 100000BD */  b          .L800A3B6C
/* A4478 800A3878 00000000 */   nop
.L800A387C:
/* A447C 800A387C 8FAD0140 */  lw         $t5, 0x140($sp)
/* A4480 800A3880 8FAA0148 */  lw         $t2, 0x148($sp)
/* A4484 800A3884 C7A40138 */  lwc1       $f4, 0x138($sp)
/* A4488 800A3888 448D8000 */  mtc1       $t5, $f16
/* A448C 800A388C 85490000 */  lh         $t1, ($t2)
/* A4490 800A3890 468084A0 */  cvt.s.w    $f18, $f16
/* A4494 800A3894 44893000 */  mtc1       $t1, $f6
/* A4498 800A3898 00000000 */  nop
/* A449C 800A389C 46803220 */  cvt.s.w    $f8, $f6
/* A44A0 800A38A0 46049282 */  mul.s      $f10, $f18, $f4
/* A44A4 800A38A4 460A4400 */  add.s      $f16, $f8, $f10
/* A44A8 800A38A8 E7B00100 */  swc1       $f16, 0x100($sp)
/* A44AC 800A38AC 3C01800F */  lui        $at, %hi(D_800EDA5C)
/* A44B0 800A38B0 C424DA5C */  lwc1       $f4, %lo(D_800EDA5C)($at)
/* A44B4 800A38B4 C7B20100 */  lwc1       $f18, 0x100($sp)
/* A44B8 800A38B8 46049180 */  add.s      $f6, $f18, $f4
/* A44BC 800A38BC 4600320D */  trunc.w.s  $f8, $f6
/* A44C0 800A38C0 440E4000 */  mfc1       $t6, $f8
/* A44C4 800A38C4 00000000 */  nop
/* A44C8 800A38C8 AFAE0118 */  sw         $t6, 0x118($sp)
/* A44CC 800A38CC 8FB80118 */  lw         $t8, 0x118($sp)
/* A44D0 800A38D0 8FAC0120 */  lw         $t4, 0x120($sp)
/* A44D4 800A38D4 C7B20100 */  lwc1       $f18, 0x100($sp)
/* A44D8 800A38D8 44985000 */  mtc1       $t8, $f10
/* A44DC 800A38DC 448C3000 */  mtc1       $t4, $f6
/* A44E0 800A38E0 46805420 */  cvt.s.w    $f16, $f10
/* A44E4 800A38E4 46803220 */  cvt.s.w    $f8, $f6
/* A44E8 800A38E8 46128101 */  sub.s      $f4, $f16, $f18
/* A44EC 800A38EC 46044282 */  mul.s      $f10, $f8, $f4
/* A44F0 800A38F0 4600540D */  trunc.w.s  $f16, $f10
/* A44F4 800A38F4 44088000 */  mfc1       $t0, $f16
/* A44F8 800A38F8 00000000 */  nop
/* A44FC 800A38FC AFA800F8 */  sw         $t0, 0xf8($sp)
/* A4500 800A3900 8FAB00F8 */  lw         $t3, 0xf8($sp)
/* A4504 800A3904 256D0010 */  addiu      $t5, $t3, 0x10
/* A4508 800A3908 000D5143 */  sra        $t2, $t5, 5
/* A450C 800A390C AFAA00F8 */  sw         $t2, 0xf8($sp)
/* A4510 800A3910 8FA90148 */  lw         $t1, 0x148($sp)
/* A4514 800A3914 952F0014 */  lhu        $t7, 0x14($t1)
/* A4518 800A3918 31EE0080 */  andi       $t6, $t7, 0x80
/* A451C 800A391C 11C00004 */  beqz       $t6, .L800A3930
/* A4520 800A3920 00000000 */   nop
/* A4524 800A3924 8FB800F8 */  lw         $t8, 0xf8($sp)
/* A4528 800A3928 270C0010 */  addiu      $t4, $t8, 0x10
/* A452C 800A392C AFAC00F8 */  sw         $t4, 0xf8($sp)
.L800A3930:
/* A4530 800A3930 8FB90148 */  lw         $t9, 0x148($sp)
/* A4534 800A3934 97280014 */  lhu        $t0, 0x14($t9)
/* A4538 800A3938 310B0100 */  andi       $t3, $t0, 0x100
/* A453C 800A393C 11600006 */  beqz       $t3, .L800A3958
/* A4540 800A3940 00000000 */   nop
/* A4544 800A3944 8FAA0148 */  lw         $t2, 0x148($sp)
/* A4548 800A3948 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* A454C 800A394C 85490040 */  lh         $t1, 0x40($t2)
/* A4550 800A3950 01A97821 */  addu       $t7, $t5, $t1
/* A4554 800A3954 AFAF00F8 */  sw         $t7, 0xf8($sp)
.L800A3958:
/* A4558 800A3958 8FAE0130 */  lw         $t6, 0x130($sp)
/* A455C 800A395C 8FAC0140 */  lw         $t4, 0x140($sp)
/* A4560 800A3960 85D80000 */  lh         $t8, ($t6)
/* A4564 800A3964 030CC821 */  addu       $t9, $t8, $t4
/* A4568 800A3968 AFB90108 */  sw         $t9, 0x108($sp)
/* A456C 800A396C 8FA80108 */  lw         $t0, 0x108($sp)
/* A4570 800A3970 8FAB0148 */  lw         $t3, 0x148($sp)
/* A4574 800A3974 C7A80138 */  lwc1       $f8, 0x138($sp)
/* A4578 800A3978 44889000 */  mtc1       $t0, $f18
/* A457C 800A397C 856A0000 */  lh         $t2, ($t3)
/* A4580 800A3980 3C01800F */  lui        $at, 0x800f
/* A4584 800A3984 468091A0 */  cvt.s.w    $f6, $f18
/* A4588 800A3988 448A5000 */  mtc1       $t2, $f10
/* A458C 800A398C 00000000 */  nop
/* A4590 800A3990 46805420 */  cvt.s.w    $f16, $f10
/* A4594 800A3994 46083102 */  mul.s      $f4, $f6, $f8
/* A4598 800A3998 C426DA60 */  lwc1       $f6, -0x25a0($at)
/* A459C 800A399C 46048480 */  add.s      $f18, $f16, $f4
/* A45A0 800A39A0 46069200 */  add.s      $f8, $f18, $f6
/* A45A4 800A39A4 4600428D */  trunc.w.s  $f10, $f8
/* A45A8 800A39A8 44095000 */  mfc1       $t1, $f10
/* A45AC 800A39AC 00000000 */  nop
/* A45B0 800A39B0 AFA90110 */  sw         $t1, 0x110($sp)
/* A45B4 800A39B4 8FAF0130 */  lw         $t7, 0x130($sp)
/* A45B8 800A39B8 85EE000C */  lh         $t6, 0xc($t7)
/* A45BC 800A39BC 11C00028 */  beqz       $t6, .L800A3A60
/* A45C0 800A39C0 00000000 */   nop
/* A45C4 800A39C4 8FB80130 */  lw         $t8, 0x130($sp)
/* A45C8 800A39C8 8FB9013C */  lw         $t9, 0x13c($sp)
/* A45CC 800A39CC 870C000C */  lh         $t4, 0xc($t8)
/* A45D0 800A39D0 01994021 */  addu       $t0, $t4, $t9
/* A45D4 800A39D4 AFA80104 */  sw         $t0, 0x104($sp)
/* A45D8 800A39D8 8FAB0104 */  lw         $t3, 0x104($sp)
/* A45DC 800A39DC 8FAA0148 */  lw         $t2, 0x148($sp)
/* A45E0 800A39E0 C7B20134 */  lwc1       $f18, 0x134($sp)
/* A45E4 800A39E4 448B8000 */  mtc1       $t3, $f16
/* A45E8 800A39E8 854D0002 */  lh         $t5, 2($t2)
/* A45EC 800A39EC 3C01800F */  lui        $at, 0x800f
/* A45F0 800A39F0 46808120 */  cvt.s.w    $f4, $f16
/* A45F4 800A39F4 448D4000 */  mtc1       $t5, $f8
/* A45F8 800A39F8 00000000 */  nop
/* A45FC 800A39FC 468042A0 */  cvt.s.w    $f10, $f8
/* A4600 800A3A00 46122182 */  mul.s      $f6, $f4, $f18
/* A4604 800A3A04 C424DA64 */  lwc1       $f4, -0x259c($at)
/* A4608 800A3A08 46065400 */  add.s      $f16, $f10, $f6
/* A460C 800A3A0C 46048480 */  add.s      $f18, $f16, $f4
/* A4610 800A3A10 4600920D */  trunc.w.s  $f8, $f18
/* A4614 800A3A14 440F4000 */  mfc1       $t7, $f8
/* A4618 800A3A18 00000000 */  nop
/* A461C 800A3A1C AFAF010C */  sw         $t7, 0x10c($sp)
/* A4620 800A3A20 8FAE010C */  lw         $t6, 0x10c($sp)
/* A4624 800A3A24 8FB800EC */  lw         $t8, 0xec($sp)
/* A4628 800A3A28 01D86021 */  addu       $t4, $t6, $t8
/* A462C 800A3A2C AFAC010C */  sw         $t4, 0x10c($sp)
/* A4630 800A3A30 8FB90148 */  lw         $t9, 0x148($sp)
/* A4634 800A3A34 97280014 */  lhu        $t0, 0x14($t9)
/* A4638 800A3A38 310B0020 */  andi       $t3, $t0, 0x20
/* A463C 800A3A3C 11600008 */  beqz       $t3, .L800A3A60
/* A4640 800A3A40 00000000 */   nop
/* A4644 800A3A44 932A0030 */  lbu        $t2, 0x30($t9)
/* A4648 800A3A48 24010001 */  addiu      $at, $zero, 1
/* A464C 800A3A4C 11410004 */  beq        $t2, $at, .L800A3A60
/* A4650 800A3A50 00000000 */   nop
/* A4654 800A3A54 8FAD010C */  lw         $t5, 0x10c($sp)
/* A4658 800A3A58 25A9FFFF */  addiu      $t1, $t5, -1
/* A465C 800A3A5C AFA9010C */  sw         $t1, 0x10c($sp)
.L800A3A60:
/* A4660 800A3A60 8FAF0118 */  lw         $t7, 0x118($sp)
/* A4664 800A3A64 8FAE00F0 */  lw         $t6, 0xf0($sp)
/* A4668 800A3A68 01EEC021 */  addu       $t8, $t7, $t6
/* A466C 800A3A6C AFB80118 */  sw         $t8, 0x118($sp)
/* A4670 800A3A70 8FAC0110 */  lw         $t4, 0x110($sp)
/* A4674 800A3A74 8FA800F0 */  lw         $t0, 0xf0($sp)
/* A4678 800A3A78 01885821 */  addu       $t3, $t4, $t0
/* A467C 800A3A7C AFAB0110 */  sw         $t3, 0x110($sp)
/* A4680 800A3A80 8FB90148 */  lw         $t9, 0x148($sp)
/* A4684 800A3A84 972A0014 */  lhu        $t2, 0x14($t9)
/* A4688 800A3A88 314D0020 */  andi       $t5, $t2, 0x20
/* A468C 800A3A8C 11A00008 */  beqz       $t5, .L800A3AB0
/* A4690 800A3A90 00000000 */   nop
/* A4694 800A3A94 93290030 */  lbu        $t1, 0x30($t9)
/* A4698 800A3A98 24010001 */  addiu      $at, $zero, 1
/* A469C 800A3A9C 11210004 */  beq        $t1, $at, .L800A3AB0
/* A46A0 800A3AA0 00000000 */   nop
/* A46A4 800A3AA4 8FAF0110 */  lw         $t7, 0x110($sp)
/* A46A8 800A3AA8 25EEFFFF */  addiu      $t6, $t7, -1
/* A46AC 800A3AAC AFAE0110 */  sw         $t6, 0x110($sp)
.L800A3AB0:
/* A46B0 800A3AB0 8FB80130 */  lw         $t8, 0x130($sp)
/* A46B4 800A3AB4 8F0C0008 */  lw         $t4, 8($t8)
/* A46B8 800A3AB8 11800014 */  beqz       $t4, .L800A3B0C
/* A46BC 800A3ABC 00000000 */   nop
/* A46C0 800A3AC0 8FA80114 */  lw         $t0, 0x114($sp)
/* A46C4 800A3AC4 8FAB0110 */  lw         $t3, 0x110($sp)
/* A46C8 800A3AC8 8FAA010C */  lw         $t2, 0x10c($sp)
/* A46CC 800A3ACC 8FAD00F8 */  lw         $t5, 0xf8($sp)
/* A46D0 800A3AD0 8FB900F4 */  lw         $t9, 0xf4($sp)
/* A46D4 800A3AD4 8FA90120 */  lw         $t1, 0x120($sp)
/* A46D8 800A3AD8 8FAF011C */  lw         $t7, 0x11c($sp)
/* A46DC 800A3ADC 27A4012C */  addiu      $a0, $sp, 0x12c
/* A46E0 800A3AE0 8FA50148 */  lw         $a1, 0x148($sp)
/* A46E4 800A3AE4 8FA60130 */  lw         $a2, 0x130($sp)
/* A46E8 800A3AE8 8FA70118 */  lw         $a3, 0x118($sp)
/* A46EC 800A3AEC AFA80010 */  sw         $t0, 0x10($sp)
/* A46F0 800A3AF0 AFAB0014 */  sw         $t3, 0x14($sp)
/* A46F4 800A3AF4 AFAA0018 */  sw         $t2, 0x18($sp)
/* A46F8 800A3AF8 AFAD001C */  sw         $t5, 0x1c($sp)
/* A46FC 800A3AFC AFB90020 */  sw         $t9, 0x20($sp)
/* A4700 800A3B00 AFA90024 */  sw         $t1, 0x24($sp)
/* A4704 800A3B04 0C02802F */  jal        func_800A00BC
/* A4708 800A3B08 AFAF0028 */   sw        $t7, 0x28($sp)
.L800A3B0C:
/* A470C 800A3B0C 8FB80130 */  lw         $t8, 0x130($sp)
/* A4710 800A3B10 8FAE0140 */  lw         $t6, 0x140($sp)
/* A4714 800A3B14 870C0000 */  lh         $t4, ($t8)
/* A4718 800A3B18 01CC4021 */  addu       $t0, $t6, $t4
/* A471C 800A3B1C AFA80140 */  sw         $t0, 0x140($sp)
/* A4720 800A3B20 8FAA0148 */  lw         $t2, 0x148($sp)
/* A4724 800A3B24 8FAB00F0 */  lw         $t3, 0xf0($sp)
/* A4728 800A3B28 854D0010 */  lh         $t5, 0x10($t2)
/* A472C 800A3B2C 016DC821 */  addu       $t9, $t3, $t5
/* A4730 800A3B30 AFB900F0 */  sw         $t9, 0xf0($sp)
/* A4734 800A3B34 8FA90144 */  lw         $t1, 0x144($sp)
/* A4738 800A3B38 8FB80130 */  lw         $t8, 0x130($sp)
/* A473C 800A3B3C 8FAC0148 */  lw         $t4, 0x148($sp)
/* A4740 800A3B40 252F0001 */  addiu      $t7, $t1, 1
/* A4744 800A3B44 270E0010 */  addiu      $t6, $t8, 0x10
/* A4748 800A3B48 AFAE0130 */  sw         $t6, 0x130($sp)
/* A474C 800A3B4C AFAF0144 */  sw         $t7, 0x144($sp)
/* A4750 800A3B50 85880028 */  lh         $t0, 0x28($t4)
/* A4754 800A3B54 01E8082A */  slt        $at, $t7, $t0
/* A4758 800A3B58 10200004 */  beqz       $at, .L800A3B6C
/* A475C 800A3B5C 00000000 */   nop
/* A4760 800A3B60 85CA0000 */  lh         $t2, ($t6)
/* A4764 800A3B64 1D40FEB8 */  bgtz       $t2, .L800A3648
/* A4768 800A3B68 00000000 */   nop
.L800A3B6C:
/* A476C 800A3B6C 8FAB0148 */  lw         $t3, 0x148($sp)
/* A4770 800A3B70 956D0014 */  lhu        $t5, 0x14($t3)
/* A4774 800A3B74 31B90020 */  andi       $t9, $t5, 0x20
/* A4778 800A3B78 1320000B */  beqz       $t9, .L800A3BA8
/* A477C 800A3B7C 00000000 */   nop
/* A4780 800A3B80 8FA9012C */  lw         $t1, 0x12c($sp)
/* A4784 800A3B84 25380008 */  addiu      $t8, $t1, 8
/* A4788 800A3B88 AFB8012C */  sw         $t8, 0x12c($sp)
/* A478C 800A3B8C AFA90068 */  sw         $t1, 0x68($sp)
/* A4790 800A3B90 8FAF0068 */  lw         $t7, 0x68($sp)
/* A4794 800A3B94 3C0CBA00 */  lui        $t4, 0xba00
/* A4798 800A3B98 358C1402 */  ori        $t4, $t4, 0x1402
/* A479C 800A3B9C ADEC0000 */  sw         $t4, ($t7)
/* A47A0 800A3BA0 8FA80068 */  lw         $t0, 0x68($sp)
/* A47A4 800A3BA4 AD000004 */  sw         $zero, 4($t0)
.L800A3BA8:
/* A47A8 800A3BA8 8FAE0148 */  lw         $t6, 0x148($sp)
/* A47AC 800A3BAC 24010001 */  addiu      $at, $zero, 1
/* A47B0 800A3BB0 91CA0030 */  lbu        $t2, 0x30($t6)
/* A47B4 800A3BB4 15410021 */  bne        $t2, $at, .L800A3C3C
/* A47B8 800A3BB8 00000000 */   nop
/* A47BC 800A3BBC 8FAB012C */  lw         $t3, 0x12c($sp)
/* A47C0 800A3BC0 256D0008 */  addiu      $t5, $t3, 8
/* A47C4 800A3BC4 AFAD012C */  sw         $t5, 0x12c($sp)
/* A47C8 800A3BC8 AFAB0064 */  sw         $t3, 0x64($sp)
/* A47CC 800A3BCC 8FA90064 */  lw         $t1, 0x64($sp)
/* A47D0 800A3BD0 3C19BA00 */  lui        $t9, 0xba00
/* A47D4 800A3BD4 37391402 */  ori        $t9, $t9, 0x1402
/* A47D8 800A3BD8 AD390000 */  sw         $t9, ($t1)
/* A47DC 800A3BDC 8FB80064 */  lw         $t8, 0x64($sp)
/* A47E0 800A3BE0 AF000004 */  sw         $zero, 4($t8)
/* A47E4 800A3BE4 8FAC012C */  lw         $t4, 0x12c($sp)
/* A47E8 800A3BE8 258F0008 */  addiu      $t7, $t4, 8
/* A47EC 800A3BEC AFAF012C */  sw         $t7, 0x12c($sp)
/* A47F0 800A3BF0 AFAC0060 */  sw         $t4, 0x60($sp)
/* A47F4 800A3BF4 8FAE0060 */  lw         $t6, 0x60($sp)
/* A47F8 800A3BF8 3C08BA00 */  lui        $t0, 0xba00
/* A47FC 800A3BFC 35080C02 */  ori        $t0, $t0, 0xc02
/* A4800 800A3C00 ADC80000 */  sw         $t0, ($t6)
/* A4804 800A3C04 8FAB0060 */  lw         $t3, 0x60($sp)
/* A4808 800A3C08 240A2000 */  addiu      $t2, $zero, 0x2000
/* A480C 800A3C0C AD6A0004 */  sw         $t2, 4($t3)
/* A4810 800A3C10 8FAD012C */  lw         $t5, 0x12c($sp)
/* A4814 800A3C14 25B90008 */  addiu      $t9, $t5, 8
/* A4818 800A3C18 AFB9012C */  sw         $t9, 0x12c($sp)
/* A481C 800A3C1C AFAD005C */  sw         $t5, 0x5c($sp)
/* A4820 800A3C20 8FB8005C */  lw         $t8, 0x5c($sp)
/* A4824 800A3C24 3C09BA00 */  lui        $t1, 0xba00
/* A4828 800A3C28 35290903 */  ori        $t1, $t1, 0x903
/* A482C 800A3C2C AF090000 */  sw         $t1, ($t8)
/* A4830 800A3C30 8FAF005C */  lw         $t7, 0x5c($sp)
/* A4834 800A3C34 240C0C00 */  addiu      $t4, $zero, 0xc00
/* A4838 800A3C38 ADEC0004 */  sw         $t4, 4($t7)
.L800A3C3C:
/* A483C 800A3C3C 100000CC */  b          .L800A3F70
/* A4840 800A3C40 00000000 */   nop
.L800A3C44:
/* A4844 800A3C44 8FA80148 */  lw         $t0, 0x148($sp)
/* A4848 800A3C48 850E0000 */  lh         $t6, ($t0)
/* A484C 800A3C4C AFAE0140 */  sw         $t6, 0x140($sp)
/* A4850 800A3C50 8FAA0148 */  lw         $t2, 0x148($sp)
/* A4854 800A3C54 854B0002 */  lh         $t3, 2($t2)
/* A4858 800A3C58 AFAB013C */  sw         $t3, 0x13c($sp)
/* A485C 800A3C5C 8FAD0148 */  lw         $t5, 0x148($sp)
/* A4860 800A3C60 C7B00138 */  lwc1       $f16, 0x138($sp)
/* A4864 800A3C64 3C013F80 */  lui        $at, 0x3f80
/* A4868 800A3C68 85B90004 */  lh         $t9, 4($t5)
/* A486C 800A3C6C 85A90000 */  lh         $t1, ($t5)
/* A4870 800A3C70 44995000 */  mtc1       $t9, $f10
/* A4874 800A3C74 44899000 */  mtc1       $t1, $f18
/* A4878 800A3C78 468051A0 */  cvt.s.w    $f6, $f10
/* A487C 800A3C7C 46809220 */  cvt.s.w    $f8, $f18
/* A4880 800A3C80 46103102 */  mul.s      $f4, $f6, $f16
/* A4884 800A3C84 44813000 */  mtc1       $at, $f6
/* A4888 800A3C88 46044280 */  add.s      $f10, $f8, $f4
/* A488C 800A3C8C 46065401 */  sub.s      $f16, $f10, $f6
/* A4890 800A3C90 4600848D */  trunc.w.s  $f18, $f16
/* A4894 800A3C94 440C9000 */  mfc1       $t4, $f18
/* A4898 800A3C98 00000000 */  nop
/* A489C 800A3C9C AFAC0108 */  sw         $t4, 0x108($sp)
/* A48A0 800A3CA0 8FAF0148 */  lw         $t7, 0x148($sp)
/* A48A4 800A3CA4 C7AA0134 */  lwc1       $f10, 0x134($sp)
/* A48A8 800A3CA8 3C013F80 */  lui        $at, 0x3f80
/* A48AC 800A3CAC 85E80006 */  lh         $t0, 6($t7)
/* A48B0 800A3CB0 85EE0002 */  lh         $t6, 2($t7)
/* A48B4 800A3CB4 44884000 */  mtc1       $t0, $f8
/* A48B8 800A3CB8 448E8000 */  mtc1       $t6, $f16
/* A48BC 800A3CBC 46804120 */  cvt.s.w    $f4, $f8
/* A48C0 800A3CC0 468084A0 */  cvt.s.w    $f18, $f16
/* A48C4 800A3CC4 460A2182 */  mul.s      $f6, $f4, $f10
/* A48C8 800A3CC8 44812000 */  mtc1       $at, $f4
/* A48CC 800A3CCC 46069200 */  add.s      $f8, $f18, $f6
/* A48D0 800A3CD0 46044281 */  sub.s      $f10, $f8, $f4
/* A48D4 800A3CD4 4600540D */  trunc.w.s  $f16, $f10
/* A48D8 800A3CD8 440B8000 */  mfc1       $t3, $f16
/* A48DC 800A3CDC 00000000 */  nop
/* A48E0 800A3CE0 AFAB0104 */  sw         $t3, 0x104($sp)
/* A48E4 800A3CE4 3C0D8018 */  lui        $t5, %hi(D_801856C0)
/* A48E8 800A3CE8 8DAD56C0 */  lw         $t5, %lo(D_801856C0)($t5)
/* A48EC 800A3CEC 8FB90140 */  lw         $t9, 0x140($sp)
/* A48F0 800A3CF0 032D082A */  slt        $at, $t9, $t5
/* A48F4 800A3CF4 10200007 */  beqz       $at, .L800A3D14
/* A48F8 800A3CF8 00000000 */   nop
/* A48FC 800A3CFC 3C188018 */  lui        $t8, %hi(D_801856C4)
/* A4900 800A3D00 8F1856C4 */  lw         $t8, %lo(D_801856C4)($t8)
/* A4904 800A3D04 8FA9013C */  lw         $t1, 0x13c($sp)
/* A4908 800A3D08 0138082A */  slt        $at, $t1, $t8
/* A490C 800A3D0C 14200003 */  bnez       $at, .L800A3D1C
/* A4910 800A3D10 00000000 */   nop
.L800A3D14:
/* A4914 800A3D14 10000096 */  b          .L800A3F70
/* A4918 800A3D18 00000000 */   nop
.L800A3D1C:
/* A491C 800A3D1C 3C088018 */  lui        $t0, %hi(D_801856C8)
/* A4920 800A3D20 8D0856C8 */  lw         $t0, %lo(D_801856C8)($t0)
/* A4924 800A3D24 8FAC0108 */  lw         $t4, 0x108($sp)
/* A4928 800A3D28 0188082A */  slt        $at, $t4, $t0
/* A492C 800A3D2C 14200007 */  bnez       $at, .L800A3D4C
/* A4930 800A3D30 00000000 */   nop
/* A4934 800A3D34 3C0E8018 */  lui        $t6, %hi(D_801856CC)
/* A4938 800A3D38 8DCE56CC */  lw         $t6, %lo(D_801856CC)($t6)
/* A493C 800A3D3C 8FAF0104 */  lw         $t7, 0x104($sp)
/* A4940 800A3D40 01EE082A */  slt        $at, $t7, $t6
/* A4944 800A3D44 10200003 */  beqz       $at, .L800A3D54
/* A4948 800A3D48 00000000 */   nop
.L800A3D4C:
/* A494C 800A3D4C 10000088 */  b          .L800A3F70
/* A4950 800A3D50 00000000 */   nop
.L800A3D54:
/* A4954 800A3D54 3C0B8018 */  lui        $t3, %hi(D_801856C8)
/* A4958 800A3D58 8D6B56C8 */  lw         $t3, %lo(D_801856C8)($t3)
/* A495C 800A3D5C 8FAA0140 */  lw         $t2, 0x140($sp)
/* A4960 800A3D60 014B082A */  slt        $at, $t2, $t3
/* A4964 800A3D64 10200004 */  beqz       $at, .L800A3D78
/* A4968 800A3D68 00000000 */   nop
/* A496C 800A3D6C 3C198018 */  lui        $t9, %hi(D_801856C8)
/* A4970 800A3D70 8F3956C8 */  lw         $t9, %lo(D_801856C8)($t9)
/* A4974 800A3D74 AFB90140 */  sw         $t9, 0x140($sp)
.L800A3D78:
/* A4978 800A3D78 3C098018 */  lui        $t1, %hi(D_801856C0)
/* A497C 800A3D7C 8D2956C0 */  lw         $t1, %lo(D_801856C0)($t1)
/* A4980 800A3D80 8FAD0108 */  lw         $t5, 0x108($sp)
/* A4984 800A3D84 01A9082A */  slt        $at, $t5, $t1
/* A4988 800A3D88 14200005 */  bnez       $at, .L800A3DA0
/* A498C 800A3D8C 00000000 */   nop
/* A4990 800A3D90 3C188018 */  lui        $t8, %hi(D_801856C0)
/* A4994 800A3D94 8F1856C0 */  lw         $t8, %lo(D_801856C0)($t8)
/* A4998 800A3D98 270CFFFF */  addiu      $t4, $t8, -1
/* A499C 800A3D9C AFAC0108 */  sw         $t4, 0x108($sp)
.L800A3DA0:
/* A49A0 800A3DA0 3C0F8018 */  lui        $t7, %hi(D_801856CC)
/* A49A4 800A3DA4 8DEF56CC */  lw         $t7, %lo(D_801856CC)($t7)
/* A49A8 800A3DA8 8FA8013C */  lw         $t0, 0x13c($sp)
/* A49AC 800A3DAC 010F082A */  slt        $at, $t0, $t7
/* A49B0 800A3DB0 10200004 */  beqz       $at, .L800A3DC4
/* A49B4 800A3DB4 00000000 */   nop
/* A49B8 800A3DB8 3C0E8018 */  lui        $t6, %hi(D_801856CC)
/* A49BC 800A3DBC 8DCE56CC */  lw         $t6, %lo(D_801856CC)($t6)
/* A49C0 800A3DC0 AFAE013C */  sw         $t6, 0x13c($sp)
.L800A3DC4:
/* A49C4 800A3DC4 3C0B8018 */  lui        $t3, %hi(D_801856C4)
/* A49C8 800A3DC8 8D6B56C4 */  lw         $t3, %lo(D_801856C4)($t3)
/* A49CC 800A3DCC 8FAA0104 */  lw         $t2, 0x104($sp)
/* A49D0 800A3DD0 014B082A */  slt        $at, $t2, $t3
/* A49D4 800A3DD4 14200005 */  bnez       $at, .L800A3DEC
/* A49D8 800A3DD8 00000000 */   nop
/* A49DC 800A3DDC 3C198018 */  lui        $t9, %hi(D_801856C4)
/* A49E0 800A3DE0 8F3956C4 */  lw         $t9, %lo(D_801856C4)($t9)
/* A49E4 800A3DE4 272DFFFF */  addiu      $t5, $t9, -1
/* A49E8 800A3DE8 AFAD0104 */  sw         $t5, 0x104($sp)
.L800A3DEC:
/* A49EC 800A3DEC 8FA90148 */  lw         $t1, 0x148($sp)
/* A49F0 800A3DF0 912F0019 */  lbu        $t7, 0x19($t1)
/* A49F4 800A3DF4 91380018 */  lbu        $t8, 0x18($t1)
/* A49F8 800A3DF8 9139001A */  lbu        $t9, 0x1a($t1)
/* A49FC 800A3DFC 000F70C0 */  sll        $t6, $t7, 3
/* A4A00 800A3E00 912F001B */  lbu        $t7, 0x1b($t1)
/* A4A04 800A3E04 00186200 */  sll        $t4, $t8, 8
/* A4A08 800A3E08 3188F800 */  andi       $t0, $t4, 0xf800
/* A4A0C 800A3E0C 31CA07C0 */  andi       $t2, $t6, 0x7c0
/* A4A10 800A3E10 010A5825 */  or         $t3, $t0, $t2
/* A4A14 800A3E14 00196883 */  sra        $t5, $t9, 2
/* A4A18 800A3E18 31B8003E */  andi       $t8, $t5, 0x3e
/* A4A1C 800A3E1C 000F71C3 */  sra        $t6, $t7, 7
/* A4A20 800A3E20 31C80001 */  andi       $t0, $t6, 1
/* A4A24 800A3E24 01786025 */  or         $t4, $t3, $t8
/* A4A28 800A3E28 01885025 */  or         $t2, $t4, $t0
/* A4A2C 800A3E2C AFAA0058 */  sw         $t2, 0x58($sp)
/* A4A30 800A3E30 8FB9012C */  lw         $t9, 0x12c($sp)
/* A4A34 800A3E34 272D0008 */  addiu      $t5, $t9, 8
/* A4A38 800A3E38 AFAD012C */  sw         $t5, 0x12c($sp)
/* A4A3C 800A3E3C AFB90054 */  sw         $t9, 0x54($sp)
/* A4A40 800A3E40 8FB80054 */  lw         $t8, 0x54($sp)
/* A4A44 800A3E44 3C0BBB00 */  lui        $t3, 0xbb00
/* A4A48 800A3E48 AF0B0000 */  sw         $t3, ($t8)
/* A4A4C 800A3E4C 8FAF0054 */  lw         $t7, 0x54($sp)
/* A4A50 800A3E50 3C098000 */  lui        $t1, 0x8000
/* A4A54 800A3E54 35298000 */  ori        $t1, $t1, 0x8000
/* A4A58 800A3E58 ADE90004 */  sw         $t1, 4($t7)
/* A4A5C 800A3E5C 8FAE012C */  lw         $t6, 0x12c($sp)
/* A4A60 800A3E60 25CC0008 */  addiu      $t4, $t6, 8
/* A4A64 800A3E64 AFAC012C */  sw         $t4, 0x12c($sp)
/* A4A68 800A3E68 AFAE0050 */  sw         $t6, 0x50($sp)
/* A4A6C 800A3E6C 8FAA0050 */  lw         $t2, 0x50($sp)
/* A4A70 800A3E70 3C08BA00 */  lui        $t0, 0xba00
/* A4A74 800A3E74 35081402 */  ori        $t0, $t0, 0x1402
/* A4A78 800A3E78 AD480000 */  sw         $t0, ($t2)
/* A4A7C 800A3E7C 8FAD0050 */  lw         $t5, 0x50($sp)
/* A4A80 800A3E80 3C190030 */  lui        $t9, 0x30
/* A4A84 800A3E84 ADB90004 */  sw         $t9, 4($t5)
/* A4A88 800A3E88 8FAB012C */  lw         $t3, 0x12c($sp)
/* A4A8C 800A3E8C 25780008 */  addiu      $t8, $t3, 8
/* A4A90 800A3E90 AFB8012C */  sw         $t8, 0x12c($sp)
/* A4A94 800A3E94 AFAB004C */  sw         $t3, 0x4c($sp)
/* A4A98 800A3E98 8FAF004C */  lw         $t7, 0x4c($sp)
/* A4A9C 800A3E9C 3C09F700 */  lui        $t1, 0xf700
/* A4AA0 800A3EA0 ADE90000 */  sw         $t1, ($t7)
/* A4AA4 800A3EA4 8FAE0058 */  lw         $t6, 0x58($sp)
/* A4AA8 800A3EA8 8FAA004C */  lw         $t2, 0x4c($sp)
/* A4AAC 800A3EAC 000E6400 */  sll        $t4, $t6, 0x10
/* A4AB0 800A3EB0 018E4025 */  or         $t0, $t4, $t6
/* A4AB4 800A3EB4 AD480004 */  sw         $t0, 4($t2)
/* A4AB8 800A3EB8 8FB9012C */  lw         $t9, 0x12c($sp)
/* A4ABC 800A3EBC 272D0008 */  addiu      $t5, $t9, 8
/* A4AC0 800A3EC0 AFAD012C */  sw         $t5, 0x12c($sp)
/* A4AC4 800A3EC4 AFB90048 */  sw         $t9, 0x48($sp)
/* A4AC8 800A3EC8 8FAB0108 */  lw         $t3, 0x108($sp)
/* A4ACC 800A3ECC 8FAC0104 */  lw         $t4, 0x104($sp)
/* A4AD0 800A3ED0 8FB90048 */  lw         $t9, 0x48($sp)
/* A4AD4 800A3ED4 317803FF */  andi       $t8, $t3, 0x3ff
/* A4AD8 800A3ED8 00184B80 */  sll        $t1, $t8, 0xe
/* A4ADC 800A3EDC 3C01F600 */  lui        $at, 0xf600
/* A4AE0 800A3EE0 318E03FF */  andi       $t6, $t4, 0x3ff
/* A4AE4 800A3EE4 000E4080 */  sll        $t0, $t6, 2
/* A4AE8 800A3EE8 01217825 */  or         $t7, $t1, $at
/* A4AEC 800A3EEC 01E85025 */  or         $t2, $t7, $t0
/* A4AF0 800A3EF0 AF2A0000 */  sw         $t2, ($t9)
/* A4AF4 800A3EF4 8FAD0140 */  lw         $t5, 0x140($sp)
/* A4AF8 800A3EF8 8FA9013C */  lw         $t1, 0x13c($sp)
/* A4AFC 800A3EFC 8FA80048 */  lw         $t0, 0x48($sp)
/* A4B00 800A3F00 31AB03FF */  andi       $t3, $t5, 0x3ff
/* A4B04 800A3F04 312C03FF */  andi       $t4, $t1, 0x3ff
/* A4B08 800A3F08 000C7080 */  sll        $t6, $t4, 2
/* A4B0C 800A3F0C 000BC380 */  sll        $t8, $t3, 0xe
/* A4B10 800A3F10 030E7825 */  or         $t7, $t8, $t6
/* A4B14 800A3F14 AD0F0004 */  sw         $t7, 4($t0)
/* A4B18 800A3F18 8FAA012C */  lw         $t2, 0x12c($sp)
/* A4B1C 800A3F1C 25590008 */  addiu      $t9, $t2, 8
/* A4B20 800A3F20 AFB9012C */  sw         $t9, 0x12c($sp)
/* A4B24 800A3F24 AFAA0044 */  sw         $t2, 0x44($sp)
/* A4B28 800A3F28 8FAB0044 */  lw         $t3, 0x44($sp)
/* A4B2C 800A3F2C 3C0DBA00 */  lui        $t5, 0xba00
/* A4B30 800A3F30 35AD1402 */  ori        $t5, $t5, 0x1402
/* A4B34 800A3F34 AD6D0000 */  sw         $t5, ($t3)
/* A4B38 800A3F38 8FA90044 */  lw         $t1, 0x44($sp)
/* A4B3C 800A3F3C AD200004 */  sw         $zero, 4($t1)
/* A4B40 800A3F40 8FAC012C */  lw         $t4, 0x12c($sp)
/* A4B44 800A3F44 25980008 */  addiu      $t8, $t4, 8
/* A4B48 800A3F48 AFB8012C */  sw         $t8, 0x12c($sp)
/* A4B4C 800A3F4C AFAC0040 */  sw         $t4, 0x40($sp)
/* A4B50 800A3F50 8FAF0040 */  lw         $t7, 0x40($sp)
/* A4B54 800A3F54 3C0EBB00 */  lui        $t6, 0xbb00
/* A4B58 800A3F58 35CE0001 */  ori        $t6, $t6, 1
/* A4B5C 800A3F5C ADEE0000 */  sw         $t6, ($t7)
/* A4B60 800A3F60 8FAA0040 */  lw         $t2, 0x40($sp)
/* A4B64 800A3F64 3C088000 */  lui        $t0, 0x8000
/* A4B68 800A3F68 35088000 */  ori        $t0, $t0, 0x8000
/* A4B6C 800A3F6C AD480004 */  sw         $t0, 4($t2)
.L800A3F70:
/* A4B70 800A3F70 8FB90148 */  lw         $t9, 0x148($sp)
/* A4B74 800A3F74 24010002 */  addiu      $at, $zero, 2
/* A4B78 800A3F78 932D0030 */  lbu        $t5, 0x30($t9)
/* A4B7C 800A3F7C 15A1000B */  bne        $t5, $at, .L800A3FAC
/* A4B80 800A3F80 00000000 */   nop
/* A4B84 800A3F84 8FAB012C */  lw         $t3, 0x12c($sp)
/* A4B88 800A3F88 25690008 */  addiu      $t1, $t3, 8
/* A4B8C 800A3F8C AFA9012C */  sw         $t1, 0x12c($sp)
/* A4B90 800A3F90 AFAB003C */  sw         $t3, 0x3c($sp)
/* A4B94 800A3F94 8FB8003C */  lw         $t8, 0x3c($sp)
/* A4B98 800A3F98 3C0CBA00 */  lui        $t4, 0xba00
/* A4B9C 800A3F9C 358C0E02 */  ori        $t4, $t4, 0xe02
/* A4BA0 800A3FA0 AF0C0000 */  sw         $t4, ($t8)
/* A4BA4 800A3FA4 8FAE003C */  lw         $t6, 0x3c($sp)
/* A4BA8 800A3FA8 ADC00004 */  sw         $zero, 4($t6)
.L800A3FAC:
/* A4BAC 800A3FAC 8FAF012C */  lw         $t7, 0x12c($sp)
/* A4BB0 800A3FB0 25E80008 */  addiu      $t0, $t7, 8
/* A4BB4 800A3FB4 AFA8012C */  sw         $t0, 0x12c($sp)
/* A4BB8 800A3FB8 AFAF0038 */  sw         $t7, 0x38($sp)
/* A4BBC 800A3FBC 8FB90038 */  lw         $t9, 0x38($sp)
/* A4BC0 800A3FC0 3C0AB800 */  lui        $t2, 0xb800
/* A4BC4 800A3FC4 AF2A0000 */  sw         $t2, ($t9)
/* A4BC8 800A3FC8 8FAD0038 */  lw         $t5, 0x38($sp)
/* A4BCC 800A3FCC ADA00004 */  sw         $zero, 4($t5)
/* A4BD0 800A3FD0 8FAE0148 */  lw         $t6, 0x148($sp)
/* A4BD4 800A3FD4 8FAB012C */  lw         $t3, 0x12c($sp)
/* A4BD8 800A3FD8 8FA90128 */  lw         $t1, 0x128($sp)
/* A4BDC 800A3FDC 85CF002A */  lh         $t7, 0x2a($t6)
/* A4BE0 800A3FE0 01696023 */  subu       $t4, $t3, $t1
/* A4BE4 800A3FE4 000CC0C3 */  sra        $t8, $t4, 3
/* A4BE8 800A3FE8 030F082A */  slt        $at, $t8, $t7
/* A4BEC 800A3FEC 10200003 */  beqz       $at, .L800A3FFC
/* A4BF0 800A3FF0 00000000 */   nop
/* A4BF4 800A3FF4 10000007 */  b          .L800A4014
/* A4BF8 800A3FF8 00000000 */   nop
.L800A3FFC:
/* A4BFC 800A3FFC 3C04800F */  lui        $a0, %hi(D_800EDA20)
/* A4C00 800A4000 3C05800F */  lui        $a1, %hi(D_800EDA3C)
/* A4C04 800A4004 24A5DA3C */  addiu      $a1, $a1, %lo(D_800EDA3C)
/* A4C08 800A4008 2484DA20 */  addiu      $a0, $a0, %lo(D_800EDA20)
/* A4C0C 800A400C 0C026E74 */  jal        func_8009B9D0
/* A4C10 800A4010 240602CB */   addiu     $a2, $zero, 0x2cb
.L800A4014:
/* A4C14 800A4014 8FA8012C */  lw         $t0, 0x12c($sp)
/* A4C18 800A4018 8FAA0148 */  lw         $t2, 0x148($sp)
/* A4C1C 800A401C AD48003C */  sw         $t0, 0x3c($t2)
/* A4C20 800A4020 10000003 */  b          .L800A4030
/* A4C24 800A4024 8FA20124 */   lw        $v0, 0x124($sp)
/* A4C28 800A4028 10000001 */  b          .L800A4030
/* A4C2C 800A402C 00000000 */   nop
.L800A4030:
/* A4C30 800A4030 8FBF0034 */  lw         $ra, 0x34($sp)
/* A4C34 800A4034 27BD0148 */  addiu      $sp, $sp, 0x148
/* A4C38 800A4038 03E00008 */  jr         $ra
/* A4C3C 800A403C 00000000 */   nop
