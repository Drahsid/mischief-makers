glabel func_80017680
/* 18280 80017680 3C0F800C */  lui        $t7, %hi(D_800BE4F8)
/* 18284 80017684 95EFE4F8 */  lhu        $t7, %lo(D_800BE4F8)($t7)
/* 18288 80017688 3082FFFF */  andi       $v0, $a0, 0xffff
/* 1828C 8001768C 01E2C024 */  and        $t8, $t7, $v0
/* 18290 80017690 17000003 */  bnez       $t8, .L800176A0
/* 18294 80017694 AFA40000 */   sw        $a0, ($sp)
/* 18298 80017698 10000009 */  b          .L800176C0
/* 1829C 8001769C A0A00000 */   sb        $zero, ($a1)
.L800176A0:
/* 182A0 800176A0 90A30000 */  lbu        $v1, ($a1)
/* 182A4 800176A4 24010021 */  addiu      $at, $zero, 0x21
/* 182A8 800176A8 14610004 */  bne        $v1, $at, .L800176BC
/* 182AC 800176AC 24680001 */   addiu     $t0, $v1, 1
/* 182B0 800176B0 24190020 */  addiu      $t9, $zero, 0x20
/* 182B4 800176B4 10000002 */  b          .L800176C0
/* 182B8 800176B8 A0B90000 */   sb        $t9, ($a1)
.L800176BC:
/* 182BC 800176BC A0A80000 */  sb         $t0, ($a1)
.L800176C0:
/* 182C0 800176C0 3C09800C */  lui        $t1, %hi(D_800BE4FC)
/* 182C4 800176C4 9529E4FC */  lhu        $t1, %lo(D_800BE4FC)($t1)
/* 182C8 800176C8 00000000 */  nop
/* 182CC 800176CC 01225024 */  and        $t2, $t1, $v0
/* 182D0 800176D0 15400005 */  bnez       $t2, .L800176E8
/* 182D4 800176D4 00000000 */   nop
/* 182D8 800176D8 90AB0000 */  lbu        $t3, ($a1)
/* 182DC 800176DC 24010021 */  addiu      $at, $zero, 0x21
/* 182E0 800176E0 15610003 */  bne        $t3, $at, .L800176F0
/* 182E4 800176E4 00001025 */   or        $v0, $zero, $zero
.L800176E8:
/* 182E8 800176E8 03E00008 */  jr         $ra
/* 182EC 800176EC 24020001 */   addiu     $v0, $zero, 1
.L800176F0:
/* 182F0 800176F0 03E00008 */  jr         $ra
/* 182F4 800176F4 00000000 */   nop