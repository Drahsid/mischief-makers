glabel func_80048F70
/* 49B70 80048F70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 49B74 80048F74 AFA40018 */  sw         $a0, 0x18($sp)
/* 49B78 80048F78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 49B7C 80048F7C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 49B80 80048F80 0C0123B7 */  jal        func_80048EDC
/* 49B84 80048F84 00000000 */   nop
/* 49B88 80048F88 10400028 */  beqz       $v0, .L8004902C
/* 49B8C 80048F8C 3C18800F */   lui       $t8, %hi(D_800EF510)
/* 49B90 80048F90 97AE001A */  lhu        $t6, 0x1a($sp)
/* 49B94 80048F94 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 49B98 80048F98 000E7880 */  sll        $t7, $t6, 2
/* 49B9C 80048F9C 01EE7823 */  subu       $t7, $t7, $t6
/* 49BA0 80048FA0 000F7880 */  sll        $t7, $t7, 2
/* 49BA4 80048FA4 01EE7821 */  addu       $t7, $t7, $t6
/* 49BA8 80048FA8 000F7880 */  sll        $t7, $t7, 2
/* 49BAC 80048FAC 01EE7823 */  subu       $t7, $t7, $t6
/* 49BB0 80048FB0 000F78C0 */  sll        $t7, $t7, 3
/* 49BB4 80048FB4 01F81021 */  addu       $v0, $t7, $t8
/* 49BB8 80048FB8 90430140 */  lbu        $v1, 0x140($v0)
/* 49BBC 80048FBC 24010008 */  addiu      $at, $zero, 8
/* 49BC0 80048FC0 10600002 */  beqz       $v1, .L80048FCC
/* 49BC4 80048FC4 00000000 */   nop
/* 49BC8 80048FC8 14610012 */  bne        $v1, $at, .L80049014
.L80048FCC:
/* 49BCC 80048FCC 3C038013 */   lui       $v1, %hi(D_801373D8)
/* 49BD0 80048FD0 946373D8 */  lhu        $v1, %lo(D_801373D8)($v1)
/* 49BD4 80048FD4 00000000 */  nop
/* 49BD8 80048FD8 30790001 */  andi       $t9, $v1, 1
/* 49BDC 80048FDC 13200005 */  beqz       $t9, .L80048FF4
/* 49BE0 80048FE0 306A0002 */   andi      $t2, $v1, 2
/* 49BE4 80048FE4 8C480080 */  lw         $t0, 0x80($v0)
/* 49BE8 80048FE8 00000000 */  nop
/* 49BEC 80048FEC 35090020 */  ori        $t1, $t0, 0x20
/* 49BF0 80048FF0 AC490080 */  sw         $t1, 0x80($v0)
.L80048FF4:
/* 49BF4 80048FF4 1140000B */  beqz       $t2, .L80049024
/* 49BF8 80048FF8 00000000 */   nop
/* 49BFC 80048FFC 8C4B0080 */  lw         $t3, 0x80($v0)
/* 49C00 80049000 2401FFDF */  addiu      $at, $zero, -0x21
/* 49C04 80049004 01616024 */  and        $t4, $t3, $at
/* 49C08 80049008 AC4C0080 */  sw         $t4, 0x80($v0)
/* 49C0C 8004900C 10000008 */  b          .L80049030
/* 49C10 80049010 24020001 */   addiu     $v0, $zero, 1
.L80049014:
/* 49C14 80049014 8C4D0080 */  lw         $t5, 0x80($v0)
/* 49C18 80049018 00000000 */  nop
/* 49C1C 8004901C 39AE0020 */  xori       $t6, $t5, 0x20
/* 49C20 80049020 AC4E0080 */  sw         $t6, 0x80($v0)
.L80049024:
/* 49C24 80049024 10000002 */  b          .L80049030
/* 49C28 80049028 24020001 */   addiu     $v0, $zero, 1
.L8004902C:
/* 49C2C 8004902C 00001025 */  or         $v0, $zero, $zero
.L80049030:
/* 49C30 80049030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 49C34 80049034 27BD0018 */  addiu      $sp, $sp, 0x18
/* 49C38 80049038 03E00008 */  jr         $ra
/* 49C3C 8004903C 00000000 */   nop
