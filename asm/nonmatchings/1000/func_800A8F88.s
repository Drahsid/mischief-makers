glabel func_800A8F88
/* A9B88 800A8F88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9B8C 800A8F8C AFBF001C */  sw         $ra, 0x1c($sp)
/* A9B90 800A8F90 AFB00018 */  sw         $s0, 0x18($sp)
/* A9B94 800A8F94 3C048019 */  lui        $a0, %hi(D_80189A70)
/* A9B98 800A8F98 3C058019 */  lui        $a1, %hi(D_80189A88)
/* A9B9C 800A8F9C 24A59A88 */  addiu      $a1, $a1, %lo(D_80189A88)
/* A9BA0 800A8FA0 24849A70 */  addiu      $a0, $a0, %lo(D_80189A70)
/* A9BA4 800A8FA4 0C026994 */  jal        func_8009A650
/* A9BA8 800A8FA8 24060001 */   addiu     $a2, $zero, 1
/* A9BAC 800A8FAC 3C058019 */  lui        $a1, %hi(D_80189A70)
/* A9BB0 800A8FB0 24A59A70 */  addiu      $a1, $a1, %lo(D_80189A70)
/* A9BB4 800A8FB4 24040014 */  addiu      $a0, $zero, 0x14
/* A9BB8 800A8FB8 0C0269BC */  jal        func_8009A6F0
/* A9BBC 800A8FBC 00003025 */   or        $a2, $zero, $zero
/* A9BC0 800A8FC0 3C0E8019 */  lui        $t6, %hi(D_80189A90)
/* A9BC4 800A8FC4 25CE9A90 */  addiu      $t6, $t6, %lo(D_80189A90)
/* A9BC8 800A8FC8 3C018019 */  lui        $at, %hi(D_80189A8C)
/* A9BCC 800A8FCC AC2E9A8C */  sw         $t6, %lo(D_80189A8C)($at)
.L800A8FD0:
/* A9BD0 800A8FD0 3C048019 */  lui        $a0, %hi(D_80189A70)
/* A9BD4 800A8FD4 24849A70 */  addiu      $a0, $a0, %lo(D_80189A70)
/* A9BD8 800A8FD8 00002825 */  or         $a1, $zero, $zero
/* A9BDC 800A8FDC 0C026B44 */  jal        func_8009AD10
/* A9BE0 800A8FE0 24060001 */   addiu     $a2, $zero, 1
/* A9BE4 800A8FE4 3C048019 */  lui        $a0, %hi(D_80189A90)
/* A9BE8 800A8FE8 0C02D617 */  jal        func_800B585C
/* A9BEC 800A8FEC 24849A90 */   addiu     $a0, $a0, %lo(D_80189A90)
/* A9BF0 800A8FF0 3C0F8019 */  lui        $t7, %hi(D_80189A90)
/* A9BF4 800A8FF4 25EF9A90 */  addiu      $t7, $t7, %lo(D_80189A90)
/* A9BF8 800A8FF8 3C018019 */  lui        $at, %hi(D_80189A8C)
/* A9BFC 800A8FFC AC2F9A8C */  sw         $t7, %lo(D_80189A8C)($at)
/* A9C00 800A9000 AFA0002C */  sw         $zero, 0x2c($sp)
/* A9C04 800A9004 8FB8002C */  lw         $t8, 0x2c($sp)
/* A9C08 800A9008 1F00000C */  bgtz       $t8, .L800A903C
/* A9C0C 800A900C 00000000 */   nop
.L800A9010:
/* A9C10 800A9010 27A40028 */  addiu      $a0, $sp, 0x28
/* A9C14 800A9014 24050001 */  addiu      $a1, $zero, 1
/* A9C18 800A9018 0C02A254 */  jal        func_800A8950
/* A9C1C 800A901C 2406000B */   addiu     $a2, $zero, 0xb
/* A9C20 800A9020 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9C24 800A9024 00408025 */  or         $s0, $v0, $zero
/* A9C28 800A9028 03304021 */  addu       $t0, $t9, $s0
/* A9C2C 800A902C AFA8002C */  sw         $t0, 0x2c($sp)
/* A9C30 800A9030 8FA9002C */  lw         $t1, 0x2c($sp)
/* A9C34 800A9034 1920FFF6 */  blez       $t1, .L800A9010
/* A9C38 800A9038 00000000 */   nop
.L800A903C:
/* A9C3C 800A903C 1000FFE4 */  b          .L800A8FD0
/* A9C40 800A9040 00000000 */   nop
/* A9C44 800A9044 10000001 */  b          .L800A904C
/* A9C48 800A9048 00000000 */   nop
.L800A904C:
/* A9C4C 800A904C 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9C50 800A9050 8FB00018 */  lw         $s0, 0x18($sp)
/* A9C54 800A9054 27BD0030 */  addiu      $sp, $sp, 0x30
/* A9C58 800A9058 03E00008 */  jr         $ra
/* A9C5C 800A905C 00000000 */   nop
