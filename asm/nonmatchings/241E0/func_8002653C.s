glabel func_8002653C
/* 2713C 8002653C 3C0E040F */  lui        $t6, 0x40f
/* 27140 80026540 3C0F000F */  lui        $t7, 0xf
/* 27144 80026544 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 27148 80026548 25EF0100 */  addiu      $t7, $t7, 0x100
/* 2714C 8002654C 25CE52F8 */  addiu      $t6, $t6, 0x52f8
/* 27150 80026550 3C190400 */  lui        $t9, 0x400
/* 27154 80026554 AFBF0014 */  sw         $ra, 0x14($sp)
/* 27158 80026558 27390000 */  addiu      $t9, $t9, 0
/* 2715C 8002655C 01CFC021 */  addu       $t8, $t6, $t7
/* 27160 80026560 3C05800E */  lui        $a1, %hi(D_800DE348)
/* 27164 80026564 24A5E348 */  addiu      $a1, $a1, %lo(D_800DE348)
/* 27168 80026568 03192023 */  subu       $a0, $t8, $t9
/* 2716C 8002656C 0C00047C */  jal        func_800011F0
/* 27170 80026570 24061500 */   addiu     $a2, $zero, 0x1500
/* 27174 80026574 8FBF0014 */  lw         $ra, 0x14($sp)
/* 27178 80026578 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2717C 8002657C 03E00008 */  jr         $ra
/* 27180 80026580 00000000 */   nop