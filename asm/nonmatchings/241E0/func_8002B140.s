glabel func_8002B140
/* 2BD40 8002B140 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2BD44 8002B144 000E7880 */  sll        $t7, $t6, 2
/* 2BD48 8002B148 01EE7823 */  subu       $t7, $t7, $t6
/* 2BD4C 8002B14C 000F7880 */  sll        $t7, $t7, 2
/* 2BD50 8002B150 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2BD54 8002B154 01EE7821 */  addu       $t7, $t7, $t6
/* 2BD58 8002B158 000F7880 */  sll        $t7, $t7, 2
/* 2BD5C 8002B15C 01EE7823 */  subu       $t7, $t7, $t6
/* 2BD60 8002B160 3C18800F */  lui        $t8, %hi(gActors)
/* 2BD64 8002B164 AFB00018 */  sw         $s0, 0x18($sp)
/* 2BD68 8002B168 AFA50024 */  sw         $a1, 0x24($sp)
/* 2BD6C 8002B16C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2BD70 8002B170 000F78C0 */  sll        $t7, $t7, 3
/* 2BD74 8002B174 01F88021 */  addu       $s0, $t7, $t8
/* 2BD78 8002B178 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2BD7C 8002B17C AFA40020 */  sw         $a0, 0x20($sp)
/* 2BD80 8002B180 9205009C */  lbu        $a1, 0x9c($s0)
/* 2BD84 8002B184 87A60026 */  lh         $a2, 0x26($sp)
/* 2BD88 8002B188 01C02025 */  or         $a0, $t6, $zero
/* 2BD8C 8002B18C 0C00AC04 */  jal        func_8002B010
/* 2BD90 8002B190 A7AE0022 */   sh        $t6, 0x22($sp)
/* 2BD94 8002B194 97A40022 */  lhu        $a0, 0x22($sp)
/* 2BD98 8002B198 9205009D */  lbu        $a1, 0x9d($s0)
/* 2BD9C 8002B19C 87A60026 */  lh         $a2, 0x26($sp)
/* 2BDA0 8002B1A0 0C00AC04 */  jal        func_8002B010
/* 2BDA4 8002B1A4 A202009C */   sb        $v0, 0x9c($s0)
/* 2BDA8 8002B1A8 97A40022 */  lhu        $a0, 0x22($sp)
/* 2BDAC 8002B1AC 9205009E */  lbu        $a1, 0x9e($s0)
/* 2BDB0 8002B1B0 87A60026 */  lh         $a2, 0x26($sp)
/* 2BDB4 8002B1B4 0C00AC04 */  jal        func_8002B010
/* 2BDB8 8002B1B8 A202009D */   sb        $v0, 0x9d($s0)
/* 2BDBC 8002B1BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2BDC0 8002B1C0 A202009E */  sb         $v0, 0x9e($s0)
/* 2BDC4 8002B1C4 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BDC8 8002B1C8 03E00008 */  jr         $ra
/* 2BDCC 8002B1CC 27BD0020 */   addiu     $sp, $sp, 0x20
