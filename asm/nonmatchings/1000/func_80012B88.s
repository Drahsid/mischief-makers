glabel func_80012B88
/* 13788 80012B88 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1378C 80012B8C 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 13790 80012B90 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 13794 80012B94 AFA40020 */  sw         $a0, 0x20($sp)
/* 13798 80012B98 93A30023 */  lbu        $v1, 0x23($sp)
/* 1379C 80012B9C 00A07025 */  or         $t6, $a1, $zero
/* 137A0 80012BA0 032E2021 */  addu       $a0, $t9, $t6
/* 137A4 80012BA4 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 137A8 80012BA8 306D000F */  andi       $t5, $v1, 0xf
/* 137AC 80012BAC 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 137B0 80012BB0 000D7080 */  sll        $t6, $t5, 2
/* 137B4 80012BB4 3C19800C */  lui        $t9, %hi(D_800C7CD0)
/* 137B8 80012BB8 AFA50024 */  sw         $a1, 0x24($sp)
/* 137BC 80012BBC 032EC821 */  addu       $t9, $t9, $t6
/* 137C0 80012BC0 8F397CD0 */  lw         $t9, %lo(D_800C7CD0)($t9)
/* 137C4 80012BC4 01462821 */  addu       $a1, $t2, $a2
/* 137C8 80012BC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 137CC 80012BCC 00055C00 */  sll        $t3, $a1, 0x10
/* 137D0 80012BD0 00044400 */  sll        $t0, $a0, 0x10
/* 137D4 80012BD4 AFA60028 */  sw         $a2, 0x28($sp)
/* 137D8 80012BD8 00082403 */  sra        $a0, $t0, 0x10
/* 137DC 80012BDC 000B2C03 */  sra        $a1, $t3, 0x10
/* 137E0 80012BE0 0320F809 */  jalr       $t9
/* 137E4 80012BE4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 137E8 80012BE8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 137EC 80012BEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 137F0 80012BF0 00431024 */  and        $v0, $v0, $v1
/* 137F4 80012BF4 304F00FF */  andi       $t7, $v0, 0xff
/* 137F8 80012BF8 01E01025 */  or         $v0, $t7, $zero
/* 137FC 80012BFC 03E00008 */  jr         $ra
/* 13800 80012C00 27BD0020 */   addiu     $sp, $sp, 0x20
