glabel func_80023798
/* 24398 80023798 3C0E800C */  lui        $t6, %hi(D_800BE558)
/* 2439C 8002379C 85CEE558 */  lh         $t6, %lo(D_800BE558)($t6)
/* 243A0 800237A0 2418FFF4 */  addiu      $t8, $zero, -0xc
/* 243A4 800237A4 05C10003 */  bgez       $t6, .L800237B4
/* 243A8 800237A8 000E7843 */   sra       $t7, $t6, 1
/* 243AC 800237AC 25C10001 */  addiu      $at, $t6, 1
/* 243B0 800237B0 00017843 */  sra        $t7, $at, 1
.L800237B4:
/* 243B4 800237B4 3C01800C */  lui        $at, %hi(D_800BE578)
/* 243B8 800237B8 A42FE578 */  sh         $t7, %lo(D_800BE578)($at)
/* 243BC 800237BC 3C01800C */  lui        $at, %hi(D_800BE580)
/* 243C0 800237C0 A438E580 */  sh         $t8, %lo(D_800BE580)($at)
/* 243C4 800237C4 3C014200 */  lui        $at, 0x4200
/* 243C8 800237C8 44812000 */  mtc1       $at, $f4
/* 243CC 800237CC 3C01800C */  lui        $at, %hi(D_800BE5AC)
/* 243D0 800237D0 E424E5AC */  swc1       $f4, %lo(D_800BE5AC)($at)
/* 243D4 800237D4 3C01800C */  lui        $at, %hi(D_800BE6A8)
/* 243D8 800237D8 24190001 */  addiu      $t9, $zero, 1
/* 243DC 800237DC A439E6A8 */  sh         $t9, %lo(D_800BE6A8)($at)
/* 243E0 800237E0 3C01800C */  lui        $at, %hi(D_800BE70C)
/* 243E4 800237E4 24080002 */  addiu      $t0, $zero, 2
/* 243E8 800237E8 03E00008 */  jr         $ra
/* 243EC 800237EC A028E70C */   sb        $t0, %lo(D_800BE70C)($at)
