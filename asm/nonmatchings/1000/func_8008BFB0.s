glabel func_8008BFB0
/* 8CBB0 8008BFB0 3C038018 */  lui        $v1, %hi(D_801826A0)
/* 8CBB4 8008BFB4 246326A0 */  addiu      $v1, $v1, %lo(D_801826A0)
/* 8CBB8 8008BFB8 00001025 */  or         $v0, $zero, $zero
.L8008BFBC:
/* 8CBBC 8008BFBC 00027080 */  sll        $t6, $v0, 2
/* 8CBC0 8008BFC0 24420001 */  addiu      $v0, $v0, 1
/* 8CBC4 8008BFC4 3058FFFF */  andi       $t8, $v0, 0xffff
/* 8CBC8 8008BFC8 2B010004 */  slti       $at, $t8, 4
/* 8CBCC 8008BFCC 006E7821 */  addu       $t7, $v1, $t6
/* 8CBD0 8008BFD0 03001025 */  or         $v0, $t8, $zero
/* 8CBD4 8008BFD4 1420FFF9 */  bnez       $at, .L8008BFBC
/* 8CBD8 8008BFD8 ADE00000 */   sw        $zero, ($t7)
/* 8CBDC 8008BFDC 03E00008 */  jr         $ra
/* 8CBE0 8008BFE0 00000000 */   nop
