glabel func_80005860
/* 6460 80005860 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6464 80005864 AFA50024 */  sw         $a1, 0x24($sp)
/* 6468 80005868 AFA60028 */  sw         $a2, 0x28($sp)
/* 646C 8000586C AFA40020 */  sw         $a0, 0x20($sp)
/* 6470 80005870 AFA7002C */  sw         $a3, 0x2c($sp)
/* 6474 80005874 97A7002A */  lhu        $a3, 0x2a($sp)
/* 6478 80005878 97A60026 */  lhu        $a2, 0x26($sp)
/* 647C 8000587C AFBF001C */  sw         $ra, 0x1c($sp)
/* 6480 80005880 97A40022 */  lhu        $a0, 0x22($sp)
/* 6484 80005884 3C05800E */  lui        $a1, %hi(D_800E13DC)
/* 6488 80005888 24A513DC */  addiu      $a1, $a1, %lo(D_800E13DC)
/* 648C 8000588C 0C009D44 */  jal        func_80027510
/* 6490 80005890 AFA00010 */   sw        $zero, 0x10($sp)
/* 6494 80005894 97AE0022 */  lhu        $t6, 0x22($sp)
/* 6498 80005898 3C18800F */  lui        $t8, 0x800f
/* 649C 8000589C 000E7880 */  sll        $t7, $t6, 2
/* 64A0 800058A0 01EE7823 */  subu       $t7, $t7, $t6
/* 64A4 800058A4 000F7880 */  sll        $t7, $t7, 2
/* 64A8 800058A8 01EE7821 */  addu       $t7, $t7, $t6
/* 64AC 800058AC 000F7880 */  sll        $t7, $t7, 2
/* 64B0 800058B0 01EE7823 */  subu       $t7, $t7, $t6
/* 64B4 800058B4 000F78C0 */  sll        $t7, $t7, 3
/* 64B8 800058B8 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 64BC 800058BC 01F81021 */  addu       $v0, $t7, $t8
/* 64C0 800058C0 94590094 */  lhu        $t9, 0x94($v0)
/* 64C4 800058C4 8FA9002C */  lw         $t1, 0x2c($sp)
/* 64C8 800058C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 64CC 800058CC 37280200 */  ori        $t0, $t9, 0x200
/* 64D0 800058D0 A4480094 */  sh         $t0, 0x94($v0)
/* 64D4 800058D4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 64D8 800058D8 03E00008 */  jr         $ra
/* 64DC 800058DC AC49018C */   sw        $t1, 0x18c($v0)
