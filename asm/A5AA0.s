.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A4EA0
/* A5AA0 800A4EA0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A5AA4 800A4EA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5AA8 800A4EA8 AFA40030 */  sw         $a0, 0x30($sp)
/* A5AAC 800A4EAC AFA50034 */  sw         $a1, 0x34($sp)
/* A5AB0 800A4EB0 AFA60038 */  sw         $a2, 0x38($sp)
/* A5AB4 800A4EB4 AFA7003C */  sw         $a3, 0x3c($sp)
/* A5AB8 800A4EB8 27A40038 */  addiu      $a0, $sp, 0x38
/* A5ABC 800A4EBC 27A5003C */  addiu      $a1, $sp, 0x3c
/* A5AC0 800A4EC0 0C02CC98 */  jal        func_800B3260
/* A5AC4 800A4EC4 27A60040 */   addiu     $a2, $sp, 0x40
/* A5AC8 800A4EC8 3C01800F */  lui        $at, %hi(D_800EA550)
/* A5ACC 800A4ECC C426A550 */  lwc1       $f6, %lo(D_800EA550)($at)
/* A5AD0 800A4ED0 C7A40034 */  lwc1       $f4, 0x34($sp)
/* A5AD4 800A4ED4 46062202 */  mul.s      $f8, $f4, $f6
/* A5AD8 800A4ED8 E7A80034 */  swc1       $f8, 0x34($sp)
/* A5ADC 800A4EDC 0C02CBF8 */  jal        func_800B2FE0
/* A5AE0 800A4EE0 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* A5AE4 800A4EE4 E7A0002C */  swc1       $f0, 0x2c($sp)
/* A5AE8 800A4EE8 0C02CB68 */  jal        func_800B2DA0
/* A5AEC 800A4EEC C7AC0034 */   lwc1      $f12, 0x34($sp)
/* A5AF0 800A4EF0 E7A00028 */  swc1       $f0, 0x28($sp)
/* A5AF4 800A4EF4 3C013F80 */  lui        $at, 0x3f80
/* A5AF8 800A4EF8 44815000 */  mtc1       $at, $f10
/* A5AFC 800A4EFC C7B00028 */  lwc1       $f16, 0x28($sp)
/* A5B00 800A4F00 46105481 */  sub.s      $f18, $f10, $f16
/* A5B04 800A4F04 E7B20018 */  swc1       $f18, 0x18($sp)
/* A5B08 800A4F08 C7A40038 */  lwc1       $f4, 0x38($sp)
/* A5B0C 800A4F0C C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A5B10 800A4F10 C7AA0018 */  lwc1       $f10, 0x18($sp)
/* A5B14 800A4F14 46062202 */  mul.s      $f8, $f4, $f6
/* A5B18 800A4F18 00000000 */  nop
/* A5B1C 800A4F1C 460A4402 */  mul.s      $f16, $f8, $f10
/* A5B20 800A4F20 E7B00024 */  swc1       $f16, 0x24($sp)
/* A5B24 800A4F24 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* A5B28 800A4F28 C7A40040 */  lwc1       $f4, 0x40($sp)
/* A5B2C 800A4F2C C7A80018 */  lwc1       $f8, 0x18($sp)
/* A5B30 800A4F30 46049182 */  mul.s      $f6, $f18, $f4
/* A5B34 800A4F34 00000000 */  nop
/* A5B38 800A4F38 46083282 */  mul.s      $f10, $f6, $f8
/* A5B3C 800A4F3C E7AA0020 */  swc1       $f10, 0x20($sp)
/* A5B40 800A4F40 C7B00040 */  lwc1       $f16, 0x40($sp)
/* A5B44 800A4F44 C7B20038 */  lwc1       $f18, 0x38($sp)
/* A5B48 800A4F48 C7A60018 */  lwc1       $f6, 0x18($sp)
/* A5B4C 800A4F4C 46128102 */  mul.s      $f4, $f16, $f18
/* A5B50 800A4F50 00000000 */  nop
/* A5B54 800A4F54 46062202 */  mul.s      $f8, $f4, $f6
/* A5B58 800A4F58 E7A8001C */  swc1       $f8, 0x1c($sp)
/* A5B5C 800A4F5C 0C02CB32 */  jal        func_800B2CC8
/* A5B60 800A4F60 8FA40030 */   lw        $a0, 0x30($sp)
/* A5B64 800A4F64 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* A5B68 800A4F68 460A5402 */  mul.s      $f16, $f10, $f10
/* A5B6C 800A4F6C E7B00018 */  swc1       $f16, 0x18($sp)
/* A5B70 800A4F70 3C013F80 */  lui        $at, 0x3f80
/* A5B74 800A4F74 44819000 */  mtc1       $at, $f18
/* A5B78 800A4F78 C7A40018 */  lwc1       $f4, 0x18($sp)
/* A5B7C 800A4F7C C7A80028 */  lwc1       $f8, 0x28($sp)
/* A5B80 800A4F80 8FAE0030 */  lw         $t6, 0x30($sp)
/* A5B84 800A4F84 46049181 */  sub.s      $f6, $f18, $f4
/* A5B88 800A4F88 46083282 */  mul.s      $f10, $f6, $f8
/* A5B8C 800A4F8C 46045400 */  add.s      $f16, $f10, $f4
/* A5B90 800A4F90 E5D00000 */  swc1       $f16, ($t6)
/* A5B94 800A4F94 C7B20038 */  lwc1       $f18, 0x38($sp)
/* A5B98 800A4F98 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* A5B9C 800A4F9C C7AA0020 */  lwc1       $f10, 0x20($sp)
/* A5BA0 800A4FA0 8FAF0030 */  lw         $t7, 0x30($sp)
/* A5BA4 800A4FA4 46069202 */  mul.s      $f8, $f18, $f6
/* A5BA8 800A4FA8 46085101 */  sub.s      $f4, $f10, $f8
/* A5BAC 800A4FAC E5E40024 */  swc1       $f4, 0x24($t7)
/* A5BB0 800A4FB0 C7B00038 */  lwc1       $f16, 0x38($sp)
/* A5BB4 800A4FB4 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* A5BB8 800A4FB8 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* A5BBC 800A4FBC 8FB80030 */  lw         $t8, 0x30($sp)
/* A5BC0 800A4FC0 46128182 */  mul.s      $f6, $f16, $f18
/* A5BC4 800A4FC4 460A3200 */  add.s      $f8, $f6, $f10
/* A5BC8 800A4FC8 E7080018 */  swc1       $f8, 0x18($t8)
/* A5BCC 800A4FCC C7A4003C */  lwc1       $f4, 0x3c($sp)
/* A5BD0 800A4FD0 46042402 */  mul.s      $f16, $f4, $f4
/* A5BD4 800A4FD4 E7B00018 */  swc1       $f16, 0x18($sp)
/* A5BD8 800A4FD8 3C013F80 */  lui        $at, 0x3f80
/* A5BDC 800A4FDC 44819000 */  mtc1       $at, $f18
/* A5BE0 800A4FE0 C7A60018 */  lwc1       $f6, 0x18($sp)
/* A5BE4 800A4FE4 C7A80028 */  lwc1       $f8, 0x28($sp)
/* A5BE8 800A4FE8 8FB90030 */  lw         $t9, 0x30($sp)
/* A5BEC 800A4FEC 46069281 */  sub.s      $f10, $f18, $f6
/* A5BF0 800A4FF0 46085102 */  mul.s      $f4, $f10, $f8
/* A5BF4 800A4FF4 46062400 */  add.s      $f16, $f4, $f6
/* A5BF8 800A4FF8 E7300014 */  swc1       $f16, 0x14($t9)
/* A5BFC 800A4FFC C7B2003C */  lwc1       $f18, 0x3c($sp)
/* A5C00 800A5000 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A5C04 800A5004 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A5C08 800A5008 8FA80030 */  lw         $t0, 0x30($sp)
/* A5C0C 800A500C 460A9202 */  mul.s      $f8, $f18, $f10
/* A5C10 800A5010 46044180 */  add.s      $f6, $f8, $f4
/* A5C14 800A5014 E5060020 */  swc1       $f6, 0x20($t0)
/* A5C18 800A5018 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* A5C1C 800A501C C7B2002C */  lwc1       $f18, 0x2c($sp)
/* A5C20 800A5020 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* A5C24 800A5024 8FA90030 */  lw         $t1, 0x30($sp)
/* A5C28 800A5028 46128282 */  mul.s      $f10, $f16, $f18
/* A5C2C 800A502C 460A4101 */  sub.s      $f4, $f8, $f10
/* A5C30 800A5030 E5240008 */  swc1       $f4, 8($t1)
/* A5C34 800A5034 C7A60040 */  lwc1       $f6, 0x40($sp)
/* A5C38 800A5038 46063402 */  mul.s      $f16, $f6, $f6
/* A5C3C 800A503C E7B00018 */  swc1       $f16, 0x18($sp)
/* A5C40 800A5040 3C013F80 */  lui        $at, 0x3f80
/* A5C44 800A5044 44819000 */  mtc1       $at, $f18
/* A5C48 800A5048 C7A80018 */  lwc1       $f8, 0x18($sp)
/* A5C4C 800A504C C7A40028 */  lwc1       $f4, 0x28($sp)
/* A5C50 800A5050 8FAA0030 */  lw         $t2, 0x30($sp)
/* A5C54 800A5054 46089281 */  sub.s      $f10, $f18, $f8
/* A5C58 800A5058 46045182 */  mul.s      $f6, $f10, $f4
/* A5C5C 800A505C 46083400 */  add.s      $f16, $f6, $f8
/* A5C60 800A5060 E5500028 */  swc1       $f16, 0x28($t2)
/* A5C64 800A5064 C7B20040 */  lwc1       $f18, 0x40($sp)
/* A5C68 800A5068 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A5C6C 800A506C C7A60024 */  lwc1       $f6, 0x24($sp)
/* A5C70 800A5070 8FAB0030 */  lw         $t3, 0x30($sp)
/* A5C74 800A5074 460A9102 */  mul.s      $f4, $f18, $f10
/* A5C78 800A5078 46043201 */  sub.s      $f8, $f6, $f4
/* A5C7C 800A507C E5680010 */  swc1       $f8, 0x10($t3)
/* A5C80 800A5080 C7B00040 */  lwc1       $f16, 0x40($sp)
/* A5C84 800A5084 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* A5C88 800A5088 C7A60024 */  lwc1       $f6, 0x24($sp)
/* A5C8C 800A508C 8FAC0030 */  lw         $t4, 0x30($sp)
/* A5C90 800A5090 46128282 */  mul.s      $f10, $f16, $f18
/* A5C94 800A5094 46065100 */  add.s      $f4, $f10, $f6
/* A5C98 800A5098 E5840004 */  swc1       $f4, 4($t4)
/* A5C9C 800A509C 10000001 */  b          .L800A50A4
/* A5CA0 800A50A0 00000000 */   nop
.L800A50A4:
/* A5CA4 800A50A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5CA8 800A50A8 27BD0030 */  addiu      $sp, $sp, 0x30
/* A5CAC 800A50AC 03E00008 */  jr         $ra
/* A5CB0 800A50B0 00000000 */   nop

glabel func_800A50B4
/* A5CB4 800A50B4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A5CB8 800A50B8 AFBF001C */  sw         $ra, 0x1c($sp)
/* A5CBC 800A50BC AFA40060 */  sw         $a0, 0x60($sp)
/* A5CC0 800A50C0 AFA50064 */  sw         $a1, 0x64($sp)
/* A5CC4 800A50C4 AFA60068 */  sw         $a2, 0x68($sp)
/* A5CC8 800A50C8 AFA7006C */  sw         $a3, 0x6c($sp)
/* A5CCC 800A50CC C7A40070 */  lwc1       $f4, 0x70($sp)
/* A5CD0 800A50D0 27A40020 */  addiu      $a0, $sp, 0x20
/* A5CD4 800A50D4 8FA50064 */  lw         $a1, 0x64($sp)
/* A5CD8 800A50D8 8FA60068 */  lw         $a2, 0x68($sp)
/* A5CDC 800A50DC 8FA7006C */  lw         $a3, 0x6c($sp)
/* A5CE0 800A50E0 0C0293A8 */  jal        func_800A4EA0
/* A5CE4 800A50E4 E7A40010 */   swc1      $f4, 0x10($sp)
/* A5CE8 800A50E8 27A40020 */  addiu      $a0, $sp, 0x20
/* A5CEC 800A50EC 0C02CA98 */  jal        func_800B2A60
/* A5CF0 800A50F0 8FA50060 */   lw        $a1, 0x60($sp)
/* A5CF4 800A50F4 10000001 */  b          .L800A50FC
/* A5CF8 800A50F8 00000000 */   nop
.L800A50FC:
/* A5CFC 800A50FC 8FBF001C */  lw         $ra, 0x1c($sp)
/* A5D00 800A5100 27BD0060 */  addiu      $sp, $sp, 0x60
/* A5D04 800A5104 03E00008 */  jr         $ra
/* A5D08 800A5108 00000000 */   nop
/* A5D0C 800A510C 00000000 */  nop
