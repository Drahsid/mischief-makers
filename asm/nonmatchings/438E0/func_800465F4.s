glabel func_800465F4
/* 471F4 800465F4 3C0E800D */  lui        $t6, %hi(D_800D28FC)
/* 471F8 800465F8 8DCE28FC */  lw         $t6, %lo(D_800D28FC)($t6)
/* 471FC 800465FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 47200 80046600 31CF2000 */  andi       $t7, $t6, 0x2000
/* 47204 80046604 15E0000A */  bnez       $t7, .L80046630
/* 47208 80046608 AFBF0014 */   sw        $ra, 0x14($sp)
/* 4720C 8004660C 3C18800F */  lui        $t8, %hi(gActors+0xD1)
/* 47210 80046610 9318F5E1 */  lbu        $t8, %lo(gActors+0xD1)($t8)
/* 47214 80046614 24010028 */  addiu      $at, $zero, 0x28
/* 47218 80046618 13010005 */  beq        $t8, $at, .L80046630
/* 4721C 8004661C 00000000 */   nop
/* 47220 80046620 0C0177BF */  jal        func_8005DEFC
/* 47224 80046624 00000000 */   nop
/* 47228 80046628 10400004 */  beqz       $v0, .L8004663C
/* 4722C 8004662C 00001025 */   or        $v0, $zero, $zero
.L80046630:
/* 47230 80046630 10000002 */  b          .L8004663C
/* 47234 80046634 24020001 */   addiu     $v0, $zero, 1
/* 47238 80046638 00001025 */  or         $v0, $zero, $zero
.L8004663C:
/* 4723C 8004663C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 47240 80046640 27BD0018 */  addiu      $sp, $sp, 0x18
/* 47244 80046644 03E00008 */  jr         $ra
/* 47248 80046648 00000000 */   nop
