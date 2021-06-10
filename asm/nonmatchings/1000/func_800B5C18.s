glabel func_800B5C18
/* B6818 800B5C18 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* B681C 800B5C1C AFBF001C */  sw         $ra, 0x1c($sp)
/* B6820 800B5C20 AFA400D8 */  sw         $a0, 0xd8($sp)
/* B6824 800B5C24 AFB10018 */  sw         $s1, 0x18($sp)
/* B6828 800B5C28 AFB00014 */  sw         $s0, 0x14($sp)
/* B682C 800B5C2C 8FB000D8 */  lw         $s0, 0xd8($sp)
/* B6830 800B5C30 8E0E000C */  lw         $t6, 0xc($s0)
/* B6834 800B5C34 AFAE003C */  sw         $t6, 0x3c($sp)
/* B6838 800B5C38 920F0004 */  lbu        $t7, 4($s0)
/* B683C 800B5C3C A3AF0034 */  sb         $t7, 0x34($sp)
/* B6840 800B5C40 A7A00036 */  sh         $zero, 0x36($sp)
/* B6844 800B5C44 92180009 */  lbu        $t8, 9($s0)
/* B6848 800B5C48 1700003F */  bnez       $t8, .L800B5D48
/* B684C 800B5C4C 00000000 */   nop
/* B6850 800B5C50 0C02D9C3 */  jal        func_800B670C
/* B6854 800B5C54 8E04000C */   lw        $a0, 0xc($s0)
/* B6858 800B5C58 AFA2002C */  sw         $v0, 0x2c($sp)
/* B685C 800B5C5C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B6860 800B5C60 17200003 */  bnez       $t9, .L800B5C70
/* B6864 800B5C64 00000000 */   nop
/* B6868 800B5C68 10000041 */  b          .L800B5D70
/* B686C 800B5C6C 2402FFFE */   addiu     $v0, $zero, -2
.L800B5C70:
/* B6870 800B5C70 8FA8002C */  lw         $t0, 0x2c($sp)
/* B6874 800B5C74 24110001 */  addiu      $s1, $zero, 1
/* B6878 800B5C78 2A21001A */  slti       $at, $s1, 0x1a
/* B687C 800B5C7C 25090020 */  addiu      $t1, $t0, 0x20
/* B6880 800B5C80 1020000E */  beqz       $at, .L800B5CBC
/* B6884 800B5C84 AFA90028 */   sw        $t1, 0x28($sp)
.L800B5C88:
/* B6888 800B5C88 8FAA0028 */  lw         $t2, 0x28($sp)
/* B688C 800B5C8C 00117080 */  sll        $t6, $s1, 2
/* B6890 800B5C90 03AE7821 */  addu       $t7, $sp, $t6
/* B6894 800B5C94 8D4D0004 */  lw         $t5, 4($t2)
/* B6898 800B5C98 8D4C0000 */  lw         $t4, ($t2)
/* B689C 800B5C9C 01A05825 */  or         $t3, $t5, $zero
/* B68A0 800B5CA0 ADEB0040 */  sw         $t3, 0x40($t7)
/* B68A4 800B5CA4 8FB80028 */  lw         $t8, 0x28($sp)
/* B68A8 800B5CA8 26310001 */  addiu      $s1, $s1, 1
/* B68AC 800B5CAC 2A21001A */  slti       $at, $s1, 0x1a
/* B68B0 800B5CB0 27190008 */  addiu      $t9, $t8, 8
/* B68B4 800B5CB4 1420FFF4 */  bnez       $at, .L800B5C88
/* B68B8 800B5CB8 AFB90028 */   sw        $t9, 0x28($sp)
.L800B5CBC:
/* B68BC 800B5CBC 8FA8002C */  lw         $t0, 0x2c($sp)
/* B68C0 800B5CC0 2411001C */  addiu      $s1, $zero, 0x1c
/* B68C4 800B5CC4 2A210022 */  slti       $at, $s1, 0x22
/* B68C8 800B5CC8 250900E8 */  addiu      $t1, $t0, 0xe8
/* B68CC 800B5CCC 1020000E */  beqz       $at, .L800B5D08
/* B68D0 800B5CD0 AFA90028 */   sw        $t1, 0x28($sp)
.L800B5CD4:
/* B68D4 800B5CD4 8FAA0028 */  lw         $t2, 0x28($sp)
/* B68D8 800B5CD8 00117080 */  sll        $t6, $s1, 2
/* B68DC 800B5CDC 03AE7821 */  addu       $t7, $sp, $t6
/* B68E0 800B5CE0 8D4D0004 */  lw         $t5, 4($t2)
/* B68E4 800B5CE4 8D4C0000 */  lw         $t4, ($t2)
/* B68E8 800B5CE8 01A05825 */  or         $t3, $t5, $zero
/* B68EC 800B5CEC ADEB0040 */  sw         $t3, 0x40($t7)
/* B68F0 800B5CF0 8FB80028 */  lw         $t8, 0x28($sp)
/* B68F4 800B5CF4 26310001 */  addiu      $s1, $s1, 1
/* B68F8 800B5CF8 2A210022 */  slti       $at, $s1, 0x22
/* B68FC 800B5CFC 27190008 */  addiu      $t9, $t8, 8
/* B6900 800B5D00 1420FFF4 */  bnez       $at, .L800B5CD4
/* B6904 800B5D04 AFB90028 */   sw        $t9, 0x28($sp)
.L800B5D08:
/* B6908 800B5D08 8FA8002C */  lw         $t0, 0x2c($sp)
/* B690C 800B5D0C 27AA0030 */  addiu      $t2, $sp, 0x30
/* B6910 800B5D10 8D090120 */  lw         $t1, 0x120($t0)
/* B6914 800B5D14 AD490098 */  sw         $t1, 0x98($t2)
/* B6918 800B5D18 8FAC002C */  lw         $t4, 0x2c($sp)
/* B691C 800B5D1C 27AB0030 */  addiu      $t3, $sp, 0x30
/* B6920 800B5D20 8D8D011C */  lw         $t5, 0x11c($t4)
/* B6924 800B5D24 AD6D009C */  sw         $t5, 0x9c($t3)
/* B6928 800B5D28 8FAE002C */  lw         $t6, 0x2c($sp)
/* B692C 800B5D2C 27B80030 */  addiu      $t8, $sp, 0x30
/* B6930 800B5D30 8DCF0118 */  lw         $t7, 0x118($t6)
/* B6934 800B5D34 AF0F00A0 */  sw         $t7, 0xa0($t8)
/* B6938 800B5D38 27B90030 */  addiu      $t9, $sp, 0x30
/* B693C 800B5D3C AF200010 */  sw         $zero, 0x10($t9)
/* B6940 800B5D40 10000003 */  b          .L800B5D50
/* B6944 800B5D44 00000000 */   nop
.L800B5D48:
/* B6948 800B5D48 10000009 */  b          .L800B5D70
/* B694C 800B5D4C 2402FFFE */   addiu     $v0, $zero, -2
.L800B5D50:
/* B6950 800B5D50 27A40030 */  addiu      $a0, $sp, 0x30
/* B6954 800B5D54 240500A4 */  addiu      $a1, $zero, 0xa4
/* B6958 800B5D58 0C026833 */  jal        func_8009A0CC
/* B695C 800B5D5C 24060001 */   addiu     $a2, $zero, 1
/* B6960 800B5D60 10000003 */  b          .L800B5D70
/* B6964 800B5D64 00001025 */   or        $v0, $zero, $zero
/* B6968 800B5D68 10000001 */  b          .L800B5D70
/* B696C 800B5D6C 00000000 */   nop
.L800B5D70:
/* B6970 800B5D70 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6974 800B5D74 8FB00014 */  lw         $s0, 0x14($sp)
/* B6978 800B5D78 8FB10018 */  lw         $s1, 0x18($sp)
/* B697C 800B5D7C 03E00008 */  jr         $ra
/* B6980 800B5D80 27BD00D8 */   addiu     $sp, $sp, 0xd8
