glabel func_8007406C
/* 74C6C 8007406C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74C70 80074070 AFA40018 */  sw         $a0, 0x18($sp)
/* 74C74 80074074 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74C78 80074078 97A4001A */  lhu        $a0, 0x1a($sp)
/* 74C7C 8007407C AFA5001C */  sw         $a1, 0x1c($sp)
/* 74C80 80074080 0C01CFBD */  jal        func_80073EF4
/* 74C84 80074084 AFA60020 */   sw        $a2, 0x20($sp)
/* 74C88 80074088 97B8001A */  lhu        $t8, 0x1a($sp)
/* 74C8C 8007408C 97AE001E */  lhu        $t6, 0x1e($sp)
/* 74C90 80074090 0018C880 */  sll        $t9, $t8, 2
/* 74C94 80074094 0338C823 */  subu       $t9, $t9, $t8
/* 74C98 80074098 0019C880 */  sll        $t9, $t9, 2
/* 74C9C 8007409C 0338C821 */  addu       $t9, $t9, $t8
/* 74CA0 800740A0 0019C880 */  sll        $t9, $t9, 2
/* 74CA4 800740A4 0338C823 */  subu       $t9, $t9, $t8
/* 74CA8 800740A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74CAC 800740AC 0019C8C0 */  sll        $t9, $t9, 3
/* 74CB0 800740B0 3C01800F */  lui        $at, %hi(D_800EF5E8)
/* 74CB4 800740B4 00390821 */  addu       $at, $at, $t9
/* 74CB8 800740B8 31CF7000 */  andi       $t7, $t6, 0x7000
/* 74CBC 800740BC A42FF5E8 */  sh         $t7, %lo(D_800EF5E8)($at)
/* 74CC0 800740C0 03E00008 */  jr         $ra
/* 74CC4 800740C4 27BD0018 */   addiu     $sp, $sp, 0x18
