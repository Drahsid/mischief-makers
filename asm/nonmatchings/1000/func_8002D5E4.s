glabel func_8002D5E4
/* 2E1E4 8002D5E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E1E8 8002D5E8 AFA40020 */  sw         $a0, 0x20($sp)
/* 2E1EC 8002D5EC AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E1F0 8002D5F0 97A50022 */  lhu        $a1, 0x22($sp)
/* 2E1F4 8002D5F4 0C000DB2 */  jal        func_800036C8
/* 2E1F8 8002D5F8 24040064 */   addiu     $a0, $zero, 0x64
/* 2E1FC 8002D5FC 97A40022 */  lhu        $a0, 0x22($sp)
/* 2E200 8002D600 3C0F800F */  lui        $t7, 0x800f
/* 2E204 8002D604 00047080 */  sll        $t6, $a0, 2
/* 2E208 8002D608 01C47023 */  subu       $t6, $t6, $a0
/* 2E20C 8002D60C 000E7080 */  sll        $t6, $t6, 2
/* 2E210 8002D610 01C47021 */  addu       $t6, $t6, $a0
/* 2E214 8002D614 000E7080 */  sll        $t6, $t6, 2
/* 2E218 8002D618 01C47023 */  subu       $t6, $t6, $a0
/* 2E21C 8002D61C 000E70C0 */  sll        $t6, $t6, 3
/* 2E220 8002D620 25EFF510 */  addiu      $t7, $t7, -0xaf0
/* 2E224 8002D624 01CF1021 */  addu       $v0, $t6, $t7
/* 2E228 8002D628 24180001 */  addiu      $t8, $zero, 1
/* 2E22C 8002D62C 84480090 */  lh         $t0, 0x90($v0)
/* 2E230 8002D630 AC580188 */  sw         $t8, 0x188($v0)
/* 2E234 8002D634 3C01800F */  lui        $at, %hi(D_800EB860)
/* 2E238 8002D638 C424B860 */  lwc1       $f4, %lo(D_800EB860)($at)
/* 2E23C 8002D63C 8459008C */  lh         $t9, 0x8c($v0)
/* 2E240 8002D640 84470088 */  lh         $a3, 0x88($v0)
/* 2E244 8002D644 25090001 */  addiu      $t1, $t0, 1
/* 2E248 8002D648 AFA90014 */  sw         $t1, 0x14($sp)
/* 2E24C 8002D64C 00002825 */  or         $a1, $zero, $zero
/* 2E250 8002D650 3C063F00 */  lui        $a2, 0x3f00
/* 2E254 8002D654 E44400B8 */  swc1       $f4, 0xb8($v0)
/* 2E258 8002D658 0C00FEC8 */  jal        func_8003FB20
/* 2E25C 8002D65C AFB90010 */   sw        $t9, 0x10($sp)
/* 2E260 8002D660 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2E264 8002D664 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2E268 8002D668 03E00008 */  jr         $ra
/* 2E26C 8002D66C 00000000 */   nop
