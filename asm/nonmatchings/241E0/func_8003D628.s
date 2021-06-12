glabel func_8003D628
/* 3E228 8003D628 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E22C 8003D62C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E230 8003D630 AFA40018 */  sw         $a0, 0x18($sp)
/* 3E234 8003D634 240E006B */  addiu      $t6, $zero, 0x6b
/* 3E238 8003D638 3C018010 */  lui        $at, %hi(D_801027E2)
/* 3E23C 8003D63C A42E27E2 */  sh         $t6, %lo(D_801027E2)($at)
/* 3E240 8003D640 0C0078B4 */  jal        func_8001E2D0
/* 3E244 8003D644 240400C0 */   addiu     $a0, $zero, 0xc0
/* 3E248 8003D648 240F0002 */  addiu      $t7, $zero, 2
/* 3E24C 8003D64C 3C018010 */  lui        $at, %hi(D_80102790)
/* 3E250 8003D650 AC2F2790 */  sw         $t7, %lo(D_80102790)($at)
/* 3E254 8003D654 3C014334 */  lui        $at, 0x4334
/* 3E258 8003D658 44812000 */  mtc1       $at, $f4
/* 3E25C 8003D65C 3C018010 */  lui        $at, %hi(D_80102820)
/* 3E260 8003D660 97B8001A */  lhu        $t8, 0x1a($sp)
/* 3E264 8003D664 E4242820 */  swc1       $f4, %lo(D_80102820)($at)
/* 3E268 8003D668 3C018010 */  lui        $at, %hi(D_80102898)
/* 3E26C 8003D66C 24040008 */  addiu      $a0, $zero, 8
/* 3E270 8003D670 2405003C */  addiu      $a1, $zero, 0x3c
/* 3E274 8003D674 0C01728D */  jal        func_8005CA34
/* 3E278 8003D678 AC382898 */   sw        $t8, %lo(D_80102898)($at)
/* 3E27C 8003D67C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E280 8003D680 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E284 8003D684 03E00008 */  jr         $ra
/* 3E288 8003D688 240200C0 */   addiu     $v0, $zero, 0xc0
