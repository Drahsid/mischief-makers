glabel func_8007A090
/* 7AC90 8007A090 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7AC94 8007A094 000E7880 */  sll        $t7, $t6, 2
/* 7AC98 8007A098 01EE7823 */  subu       $t7, $t7, $t6
/* 7AC9C 8007A09C 000F7880 */  sll        $t7, $t7, 2
/* 7ACA0 8007A0A0 01EE7821 */  addu       $t7, $t7, $t6
/* 7ACA4 8007A0A4 000F7880 */  sll        $t7, $t7, 2
/* 7ACA8 8007A0A8 01EE7823 */  subu       $t7, $t7, $t6
/* 7ACAC 8007A0AC 3C18800F */  lui        $t8, %hi(gActors)
/* 7ACB0 8007A0B0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7ACB4 8007A0B4 000F78C0 */  sll        $t7, $t7, 3
/* 7ACB8 8007A0B8 01F81021 */  addu       $v0, $t7, $t8
/* 7ACBC 8007A0BC 8C590080 */  lw         $t9, 0x80($v0)
/* 7ACC0 8007A0C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7ACC4 8007A0C4 33280020 */  andi       $t0, $t9, 0x20
/* 7ACC8 8007A0C8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7ACCC 8007A0CC AFA40020 */  sw         $a0, 0x20($sp)
/* 7ACD0 8007A0D0 11000004 */  beqz       $t0, .L8007A0E4
/* 7ACD4 8007A0D4 AFA50024 */   sw        $a1, 0x24($sp)
/* 7ACD8 8007A0D8 3C07FFFE */  lui        $a3, 0xfffe
/* 7ACDC 8007A0DC 10000003 */  b          .L8007A0EC
/* 7ACE0 8007A0E0 34E74000 */   ori       $a3, $a3, 0x4000
.L8007A0E4:
/* 7ACE4 8007A0E4 3C070001 */  lui        $a3, 1
/* 7ACE8 8007A0E8 34E7C000 */  ori        $a3, $a3, 0xc000
.L8007A0EC:
/* 7ACEC 8007A0EC 3C09FFFD */  lui        $t1, 0xfffd
/* 7ACF0 8007A0F0 35298000 */  ori        $t1, $t1, 0x8000
/* 7ACF4 8007A0F4 97A40026 */  lhu        $a0, 0x26($sp)
/* 7ACF8 8007A0F8 84450088 */  lh         $a1, 0x88($v0)
/* 7ACFC 8007A0FC 8446008C */  lh         $a2, 0x8c($v0)
/* 7AD00 8007A100 0C00BB2B */  jal        func_8002ECAC
/* 7AD04 8007A104 AFA90010 */   sw        $t1, 0x10($sp)
/* 7AD08 8007A108 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7AD0C 8007A10C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7AD10 8007A110 03E00008 */  jr         $ra
/* 7AD14 8007A114 00000000 */   nop
