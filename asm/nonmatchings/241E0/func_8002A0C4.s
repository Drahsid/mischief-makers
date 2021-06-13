glabel func_8002A0C4
/* 2ACC4 8002A0C4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2ACC8 8002A0C8 000E7880 */  sll        $t7, $t6, 2
/* 2ACCC 8002A0CC 01EE7823 */  subu       $t7, $t7, $t6
/* 2ACD0 8002A0D0 000F7880 */  sll        $t7, $t7, 2
/* 2ACD4 8002A0D4 01EE7821 */  addu       $t7, $t7, $t6
/* 2ACD8 8002A0D8 000F7880 */  sll        $t7, $t7, 2
/* 2ACDC 8002A0DC 01EE7823 */  subu       $t7, $t7, $t6
/* 2ACE0 8002A0E0 3C18800F */  lui        $t8, %hi(gActors)
/* 2ACE4 8002A0E4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2ACE8 8002A0E8 000F78C0 */  sll        $t7, $t7, 3
/* 2ACEC 8002A0EC 01F81021 */  addu       $v0, $t7, $t8
/* 2ACF0 8002A0F0 8C590080 */  lw         $t9, 0x80($v0)
/* 2ACF4 8002A0F4 AFA40000 */  sw         $a0, ($sp)
/* 2ACF8 8002A0F8 33280020 */  andi       $t0, $t9, 0x20
/* 2ACFC 8002A0FC 11000003 */  beqz       $t0, .L8002A10C
/* 2AD00 8002A100 00054823 */   negu      $t1, $a1
/* 2AD04 8002A104 03E00008 */  jr         $ra
/* 2AD08 8002A108 AC4900EC */   sw        $t1, 0xec($v0)
.L8002A10C:
/* 2AD0C 8002A10C AC4500EC */  sw         $a1, 0xec($v0)
/* 2AD10 8002A110 03E00008 */  jr         $ra
/* 2AD14 8002A114 00000000 */   nop
