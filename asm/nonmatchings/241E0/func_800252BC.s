glabel func_800252BC
/* 25EBC 800252BC 24020001 */  addiu      $v0, $zero, 1
/* 25EC0 800252C0 3C01800C */  lui        $at, %hi(D_800BE704)
/* 25EC4 800252C4 A422E704 */  sh         $v0, %lo(D_800BE704)($at)
/* 25EC8 800252C8 3C01800C */  lui        $at, %hi(D_800BE708)
/* 25ECC 800252CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25ED0 800252D0 A422E708 */  sh         $v0, %lo(D_800BE708)($at)
/* 25ED4 800252D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25ED8 800252D8 3C01800D */  lui        $at, %hi(D_800CBF58)
/* 25EDC 800252DC 240E0002 */  addiu      $t6, $zero, 2
/* 25EE0 800252E0 0C008D78 */  jal        func_800235E0
/* 25EE4 800252E4 A42EBF58 */   sh        $t6, %lo(D_800CBF58)($at)
/* 25EE8 800252E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 25EEC 800252EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 25EF0 800252F0 03E00008 */  jr         $ra
/* 25EF4 800252F4 00000000 */   nop
