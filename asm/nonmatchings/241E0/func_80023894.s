glabel func_80023894
/* 24494 80023894 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24498 80023898 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2449C 8002389C 0C008DFC */  jal        func_800237F0
/* 244A0 800238A0 00000000 */   nop
/* 244A4 800238A4 340E8000 */  ori        $t6, $zero, 0x8000
/* 244A8 800238A8 3C01800C */  lui        $at, %hi(D_800BE544)
/* 244AC 800238AC A42EE544 */  sh         $t6, %lo(D_800BE544)($at)
/* 244B0 800238B0 3C02800C */  lui        $v0, %hi(D_800BE634)
/* 244B4 800238B4 3C01800C */  lui        $at, %hi(D_800BE548)
/* 244B8 800238B8 3C0F0008 */  lui        $t7, 8
/* 244BC 800238BC 2442E634 */  addiu      $v0, $v0, %lo(D_800BE634)
/* 244C0 800238C0 AC2FE548 */  sw         $t7, %lo(D_800BE548)($at)
/* 244C4 800238C4 94580000 */  lhu        $t8, ($v0)
/* 244C8 800238C8 3C03800C */  lui        $v1, %hi(D_800BE5D8)
/* 244CC 800238CC 1300000F */  beqz       $t8, .L8002390C
/* 244D0 800238D0 2463E5D8 */   addiu     $v1, $v1, %lo(D_800BE5D8)
/* 244D4 800238D4 3C03800C */  lui        $v1, %hi(D_800BE5D8)
/* 244D8 800238D8 2463E5D8 */  addiu      $v1, $v1, %lo(D_800BE5D8)
/* 244DC 800238DC 8C790000 */  lw         $t9, ($v1)
/* 244E0 800238E0 3C01FFA0 */  lui        $at, 0xffa0
/* 244E4 800238E4 03214021 */  addu       $t0, $t9, $at
/* 244E8 800238E8 3C01800C */  lui        $at, %hi(D_800BE550)
/* 244EC 800238EC AC28E550 */  sw         $t0, %lo(D_800BE550)($at)
/* 244F0 800238F0 84690000 */  lh         $t1, ($v1)
/* 244F4 800238F4 00000000 */  nop
/* 244F8 800238F8 29210B98 */  slti       $at, $t1, 0xb98
/* 244FC 800238FC 1020000F */  beqz       $at, .L8002393C
/* 24500 80023900 8FBF0014 */   lw        $ra, 0x14($sp)
/* 24504 80023904 1000000C */  b          .L80023938
/* 24508 80023908 A4400000 */   sh        $zero, ($v0)
.L8002390C:
/* 2450C 8002390C 8C6A0000 */  lw         $t2, ($v1)
/* 24510 80023910 3C010060 */  lui        $at, 0x60
/* 24514 80023914 01415821 */  addu       $t3, $t2, $at
/* 24518 80023918 3C01800C */  lui        $at, %hi(D_800BE550)
/* 2451C 8002391C AC2BE550 */  sw         $t3, %lo(D_800BE550)($at)
/* 24520 80023920 846C0000 */  lh         $t4, ($v1)
/* 24524 80023924 240D0001 */  addiu      $t5, $zero, 1
/* 24528 80023928 29810F89 */  slti       $at, $t4, 0xf89
/* 2452C 8002392C 14200003 */  bnez       $at, .L8002393C
/* 24530 80023930 8FBF0014 */   lw        $ra, 0x14($sp)
/* 24534 80023934 A44D0000 */  sh         $t5, ($v0)
.L80023938:
/* 24538 80023938 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002393C:
/* 2453C 8002393C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 24540 80023940 03E00008 */  jr         $ra
/* 24544 80023944 00000000 */   nop
