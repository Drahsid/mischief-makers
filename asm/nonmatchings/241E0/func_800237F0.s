glabel func_800237F0
/* 243F0 800237F0 3C02800C */  lui        $v0, %hi(D_800BE55C)
/* 243F4 800237F4 3C03800C */  lui        $v1, %hi(D_800BE4E0)
/* 243F8 800237F8 8442E55C */  lh         $v0, %lo(D_800BE55C)($v0)
/* 243FC 800237FC 9463E4E0 */  lhu        $v1, %lo(D_800BE4E0)($v1)
/* 24400 80023800 240E0140 */  addiu      $t6, $zero, 0x140
/* 24404 80023804 3C01800F */  lui        $at, %hi(D_800F43B4)
/* 24408 80023808 01C27823 */  subu       $t7, $t6, $v0
/* 2440C 8002380C 30780020 */  andi       $t8, $v1, 0x20
/* 24410 80023810 13000008 */  beqz       $t8, .L80023834
/* 24414 80023814 A42F43B4 */   sh        $t7, %lo(D_800F43B4)($at)
/* 24418 80023818 3079001F */  andi       $t9, $v1, 0x1f
/* 2441C 8002381C 001940C0 */  sll        $t0, $t9, 3
/* 24420 80023820 240900F8 */  addiu      $t1, $zero, 0xf8
/* 24424 80023824 01282023 */  subu       $a0, $t1, $t0
/* 24428 80023828 308AFFFF */  andi       $t2, $a0, 0xffff
/* 2442C 8002382C 10000004 */  b          .L80023840
/* 24430 80023830 01402025 */   or        $a0, $t2, $zero
.L80023834:
/* 24434 80023834 3064001F */  andi       $a0, $v1, 0x1f
/* 24438 80023838 000458C0 */  sll        $t3, $a0, 3
/* 2443C 8002383C 3164FFFF */  andi       $a0, $t3, 0xffff
.L80023840:
/* 24440 80023840 3C03800E */  lui        $v1, %hi(D_800E3BC8)
/* 24444 80023844 24633BC8 */  addiu      $v1, $v1, %lo(D_800E3BC8)
/* 24448 80023848 A064001C */  sb         $a0, 0x1c($v1)
/* 2444C 8002384C A0640018 */  sb         $a0, 0x18($v1)
/* 24450 80023850 3C0D800C */  lui        $t5, %hi(D_800BE558)
/* 24454 80023854 85ADE558 */  lh         $t5, %lo(D_800BE558)($t5)
/* 24458 80023858 00000000 */  nop
/* 2445C 8002385C 05A10003 */  bgez       $t5, .L8002386C
/* 24460 80023860 000D7043 */   sra       $t6, $t5, 1
/* 24464 80023864 25A10001 */  addiu      $at, $t5, 1
/* 24468 80023868 00017043 */  sra        $t6, $at, 1
.L8002386C:
/* 2446C 8002386C 3C01800C */  lui        $at, %hi(D_800BE578)
/* 24470 80023870 A42EE578 */  sh         $t6, %lo(D_800BE578)($at)
/* 24474 80023874 04410003 */  bgez       $v0, .L80023884
/* 24478 80023878 00027843 */   sra       $t7, $v0, 1
/* 2447C 8002387C 24410001 */  addiu      $at, $v0, 1
/* 24480 80023880 00017843 */  sra        $t7, $at, 1
.L80023884:
/* 24484 80023884 3C01800C */  lui        $at, %hi(D_800BE580)
/* 24488 80023888 25F8FF2C */  addiu      $t8, $t7, -0xd4
/* 2448C 8002388C 03E00008 */  jr         $ra
/* 24490 80023890 A438E580 */   sh        $t8, %lo(D_800BE580)($at)