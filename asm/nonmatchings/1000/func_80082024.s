glabel func_80082024
/* 82C24 80082024 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 82C28 80082028 AFA40018 */  sw         $a0, 0x18($sp)
/* 82C2C 8008202C AFBF0014 */  sw         $ra, 0x14($sp)
/* 82C30 80082030 97A4001A */  lhu        $a0, 0x1a($sp)
/* 82C34 80082034 0C02078E */  jal        func_80081E38
/* 82C38 80082038 00000000 */   nop
/* 82C3C 8008203C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 82C40 80082040 3C18800F */  lui        $t8, 0x800f
/* 82C44 80082044 000E7880 */  sll        $t7, $t6, 2
/* 82C48 80082048 01EE7823 */  subu       $t7, $t7, $t6
/* 82C4C 8008204C 000F7880 */  sll        $t7, $t7, 2
/* 82C50 80082050 01EE7821 */  addu       $t7, $t7, $t6
/* 82C54 80082054 000F7880 */  sll        $t7, $t7, 2
/* 82C58 80082058 01EE7823 */  subu       $t7, $t7, $t6
/* 82C5C 8008205C 000F78C0 */  sll        $t7, $t7, 3
/* 82C60 80082060 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 82C64 80082064 01F81021 */  addu       $v0, $t7, $t8
/* 82C68 80082068 8C590098 */  lw         $t9, 0x98($v0)
/* 82C6C 8008206C 3C01FFDF */  lui        $at, 0xffdf
/* 82C70 80082070 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82C74 80082074 3421F9FF */  ori        $at, $at, 0xf9ff
/* 82C78 80082078 03214024 */  and        $t0, $t9, $at
/* 82C7C 8008207C AC480098 */  sw         $t0, 0x98($v0)
/* 82C80 80082080 03E00008 */  jr         $ra
/* 82C84 80082084 27BD0018 */   addiu     $sp, $sp, 0x18
