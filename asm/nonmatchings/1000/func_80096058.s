glabel func_80096058
/* 96C58 80096058 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 96C5C 8009605C AFB00018 */  sw         $s0, 0x18($sp)
/* 96C60 80096060 3090FFFF */  andi       $s0, $a0, 0xffff
/* 96C64 80096064 AFBF001C */  sw         $ra, 0x1c($sp)
/* 96C68 80096068 AFA40020 */  sw         $a0, 0x20($sp)
/* 96C6C 8009606C 3C05800F */  lui        $a1, %hi(D_800E9414)
/* 96C70 80096070 24A59414 */  addiu      $a1, $a1, %lo(D_800E9414)
/* 96C74 80096074 0C02066A */  jal        func_800819A8
/* 96C78 80096078 3204FFFF */   andi      $a0, $s0, 0xffff
/* 96C7C 8009607C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 96C80 80096080 24050003 */  addiu      $a1, $zero, 3
/* 96C84 80096084 0C0205F6 */  jal        func_800817D8
/* 96C88 80096088 24060004 */   addiu     $a2, $zero, 4
/* 96C8C 8009608C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 96C90 80096090 24050005 */  addiu      $a1, $zero, 5
/* 96C94 80096094 0C0205F6 */  jal        func_800817D8
/* 96C98 80096098 24060004 */   addiu     $a2, $zero, 4
/* 96C9C 8009609C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 96CA0 800960A0 24050009 */  addiu      $a1, $zero, 9
/* 96CA4 800960A4 0C0205F6 */  jal        func_800817D8
/* 96CA8 800960A8 24060004 */   addiu     $a2, $zero, 4
/* 96CAC 800960AC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 96CB0 800960B0 2405000B */  addiu      $a1, $zero, 0xb
/* 96CB4 800960B4 0C0205F6 */  jal        func_800817D8
/* 96CB8 800960B8 24060004 */   addiu     $a2, $zero, 4
/* 96CBC 800960BC 00107080 */  sll        $t6, $s0, 2
/* 96CC0 800960C0 01D07023 */  subu       $t6, $t6, $s0
/* 96CC4 800960C4 000E7080 */  sll        $t6, $t6, 2
/* 96CC8 800960C8 01D07021 */  addu       $t6, $t6, $s0
/* 96CCC 800960CC 3C013F00 */  lui        $at, 0x3f00
/* 96CD0 800960D0 000E7080 */  sll        $t6, $t6, 2
/* 96CD4 800960D4 44810000 */  mtc1       $at, $f0
/* 96CD8 800960D8 01D07023 */  subu       $t6, $t6, $s0
/* 96CDC 800960DC 3C0F800F */  lui        $t7, %hi(gActors)
/* 96CE0 800960E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 96CE4 800960E4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 96CE8 800960E8 000E70C0 */  sll        $t6, $t6, 3
/* 96CEC 800960EC 01CF1021 */  addu       $v0, $t6, $t7
/* 96CF0 800960F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 96CF4 800960F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 96CF8 800960F8 E4400BE0 */  swc1       $f0, 0xbe0($v0)
/* 96CFC 800960FC 03E00008 */  jr         $ra
/* 96D00 80096100 E4401570 */   swc1      $f0, 0x1570($v0)
