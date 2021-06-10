glabel func_80087EAC
/* 88AAC 80087EAC 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 88AB0 80087EB0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 88AB4 80087EB4 000E7880 */  sll        $t7, $t6, 2
/* 88AB8 80087EB8 E7B8002C */  swc1       $f24, 0x2c($sp)
/* 88ABC 80087EBC 01EE7823 */  subu       $t7, $t7, $t6
/* 88AC0 80087EC0 3C01800F */  lui        $at, %hi(D_800ED1E8)
/* 88AC4 80087EC4 C438D1E8 */  lwc1       $f24, %lo(D_800ED1E8)($at)
/* 88AC8 80087EC8 000F7880 */  sll        $t7, $t7, 2
/* 88ACC 80087ECC E7B60024 */  swc1       $f22, 0x24($sp)
/* 88AD0 80087ED0 01EE7821 */  addu       $t7, $t7, $t6
/* 88AD4 80087ED4 3C014000 */  lui        $at, 0x4000
/* 88AD8 80087ED8 4481B000 */  mtc1       $at, $f22
/* 88ADC 80087EDC 000F7880 */  sll        $t7, $t7, 2
/* 88AE0 80087EE0 AFB20038 */  sw         $s2, 0x38($sp)
/* 88AE4 80087EE4 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 88AE8 80087EE8 01EE7823 */  subu       $t7, $t7, $t6
/* 88AEC 80087EEC 3C013E80 */  lui        $at, 0x3e80
/* 88AF0 80087EF0 3C18800F */  lui        $t8, 0x800f
/* 88AF4 80087EF4 AFBE0050 */  sw         $fp, 0x50($sp)
/* 88AF8 80087EF8 AFB7004C */  sw         $s7, 0x4c($sp)
/* 88AFC 80087EFC AFB60048 */  sw         $s6, 0x48($sp)
/* 88B00 80087F00 AFB50044 */  sw         $s5, 0x44($sp)
/* 88B04 80087F04 AFB40040 */  sw         $s4, 0x40($sp)
/* 88B08 80087F08 AFB3003C */  sw         $s3, 0x3c($sp)
/* 88B0C 80087F0C AFB10034 */  sw         $s1, 0x34($sp)
/* 88B10 80087F10 AFB00030 */  sw         $s0, 0x30($sp)
/* 88B14 80087F14 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 88B18 80087F18 000F78C0 */  sll        $t7, $t7, 3
/* 88B1C 80087F1C 3C12800F */  lui        $s2, 0x800f
/* 88B20 80087F20 4481A000 */  mtc1       $at, $f20
/* 88B24 80087F24 AFBF0054 */  sw         $ra, 0x54($sp)
/* 88B28 80087F28 E7B90028 */  swc1       $f25, 0x28($sp)
/* 88B2C 80087F2C E7B70020 */  swc1       $f23, 0x20($sp)
/* 88B30 80087F30 E7B50018 */  swc1       $f21, 0x18($sp)
/* 88B34 80087F34 AFA40058 */  sw         $a0, 0x58($sp)
/* 88B38 80087F38 2652F510 */  addiu      $s2, $s2, -0xaf0
/* 88B3C 80087F3C 01F88821 */  addu       $s1, $t7, $t8
/* 88B40 80087F40 00008025 */  or         $s0, $zero, $zero
/* 88B44 80087F44 24130198 */  addiu      $s3, $zero, 0x198
/* 88B48 80087F48 24140009 */  addiu      $s4, $zero, 9
/* 88B4C 80087F4C 2415FFF0 */  addiu      $s5, $zero, -0x10
/* 88B50 80087F50 3C160100 */  lui        $s6, 0x100
/* 88B54 80087F54 3C170040 */  lui        $s7, 0x40
/* 88B58 80087F58 241E0002 */  addiu      $fp, $zero, 2
.L80087F5C:
/* 88B5C 80087F5C 86250088 */  lh         $a1, 0x88($s1)
/* 88B60 80087F60 8626008C */  lh         $a2, 0x8c($s1)
/* 88B64 80087F64 240401D6 */  addiu      $a0, $zero, 0x1d6
/* 88B68 80087F68 0C00C4A1 */  jal        func_80031284
/* 88B6C 80087F6C 24070004 */   addiu     $a3, $zero, 4
/* 88B70 80087F70 10400011 */  beqz       $v0, .L80087FB8
/* 88B74 80087F74 3044FFFF */   andi      $a0, $v0, 0xffff
/* 88B78 80087F78 00530019 */  multu      $v0, $s3
/* 88B7C 80087F7C 0000C812 */  mflo       $t9
/* 88B80 80087F80 02591821 */  addu       $v1, $s2, $t9
/* 88B84 80087F84 A4740094 */  sh         $s4, 0x94($v1)
/* 88B88 80087F88 AC750154 */  sw         $s5, 0x154($v1)
/* 88B8C 80087F8C E47400B4 */  swc1       $f20, 0xb4($v1)
/* 88B90 80087F90 12000002 */  beqz       $s0, .L80087F9C
/* 88B94 80087F94 E47600B8 */   swc1      $f22, 0xb8($v1)
/* 88B98 80087F98 AC760160 */  sw         $s6, 0x160($v1)
.L80087F9C:
/* 88B9C 80087F9C 00930019 */  multu      $a0, $s3
/* 88BA0 80087FA0 2405007F */  addiu      $a1, $zero, 0x7f
/* 88BA4 80087FA4 00004012 */  mflo       $t0
/* 88BA8 80087FA8 02481021 */  addu       $v0, $s2, $t0
/* 88BAC 80087FAC E4580114 */  swc1       $f24, 0x114($v0)
/* 88BB0 80087FB0 0C00ABAD */  jal        func_8002AEB4
/* 88BB4 80087FB4 AC570150 */   sw        $s7, 0x150($v0)
.L80087FB8:
/* 88BB8 80087FB8 26100001 */  addiu      $s0, $s0, 1
/* 88BBC 80087FBC 3209FFFF */  andi       $t1, $s0, 0xffff
/* 88BC0 80087FC0 17C9FFE6 */  bne        $fp, $t1, .L80087F5C
/* 88BC4 80087FC4 01208025 */   or        $s0, $t1, $zero
/* 88BC8 80087FC8 8FBF0054 */  lw         $ra, 0x54($sp)
/* 88BCC 80087FCC C7B50018 */  lwc1       $f21, 0x18($sp)
/* 88BD0 80087FD0 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 88BD4 80087FD4 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 88BD8 80087FD8 C7B60024 */  lwc1       $f22, 0x24($sp)
/* 88BDC 80087FDC C7B90028 */  lwc1       $f25, 0x28($sp)
/* 88BE0 80087FE0 C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 88BE4 80087FE4 8FB00030 */  lw         $s0, 0x30($sp)
/* 88BE8 80087FE8 8FB10034 */  lw         $s1, 0x34($sp)
/* 88BEC 80087FEC 8FB20038 */  lw         $s2, 0x38($sp)
/* 88BF0 80087FF0 8FB3003C */  lw         $s3, 0x3c($sp)
/* 88BF4 80087FF4 8FB40040 */  lw         $s4, 0x40($sp)
/* 88BF8 80087FF8 8FB50044 */  lw         $s5, 0x44($sp)
/* 88BFC 80087FFC 8FB60048 */  lw         $s6, 0x48($sp)
/* 88C00 80088000 8FB7004C */  lw         $s7, 0x4c($sp)
/* 88C04 80088004 8FBE0050 */  lw         $fp, 0x50($sp)
/* 88C08 80088008 03E00008 */  jr         $ra
/* 88C0C 8008800C 27BD0058 */   addiu     $sp, $sp, 0x58
