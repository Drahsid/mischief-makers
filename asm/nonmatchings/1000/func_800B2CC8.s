glabel func_800B2CC8
/* B38C8 800B2CC8 27BDFFF8 */  addiu      $sp, $sp, -8
/* B38CC 800B2CCC AFA00004 */  sw         $zero, 4($sp)
.L800B2CD0:
/* B38D0 800B2CD0 AFA00000 */  sw         $zero, ($sp)
.L800B2CD4:
/* B38D4 800B2CD4 8FAE0004 */  lw         $t6, 4($sp)
/* B38D8 800B2CD8 8FAF0000 */  lw         $t7, ($sp)
/* B38DC 800B2CDC 15CF000B */  bne        $t6, $t7, .L800B2D0C
/* B38E0 800B2CE0 00000000 */   nop
/* B38E4 800B2CE4 8FB80004 */  lw         $t8, 4($sp)
/* B38E8 800B2CE8 8FA90000 */  lw         $t1, ($sp)
/* B38EC 800B2CEC 3C013F80 */  lui        $at, 0x3f80
/* B38F0 800B2CF0 0018C900 */  sll        $t9, $t8, 4
/* B38F4 800B2CF4 44812000 */  mtc1       $at, $f4
/* B38F8 800B2CF8 00994021 */  addu       $t0, $a0, $t9
/* B38FC 800B2CFC 00095080 */  sll        $t2, $t1, 2
/* B3900 800B2D00 010A5821 */  addu       $t3, $t0, $t2
/* B3904 800B2D04 10000009 */  b          .L800B2D2C
/* B3908 800B2D08 E5640000 */   swc1      $f4, ($t3)
.L800B2D0C:
/* B390C 800B2D0C 8FAC0004 */  lw         $t4, 4($sp)
/* B3910 800B2D10 8FAF0000 */  lw         $t7, ($sp)
/* B3914 800B2D14 44803000 */  mtc1       $zero, $f6
/* B3918 800B2D18 000C6900 */  sll        $t5, $t4, 4
/* B391C 800B2D1C 008D7021 */  addu       $t6, $a0, $t5
/* B3920 800B2D20 000FC080 */  sll        $t8, $t7, 2
/* B3924 800B2D24 01D8C821 */  addu       $t9, $t6, $t8
/* B3928 800B2D28 E7260000 */  swc1       $f6, ($t9)
.L800B2D2C:
/* B392C 800B2D2C 8FA90000 */  lw         $t1, ($sp)
/* B3930 800B2D30 25280001 */  addiu      $t0, $t1, 1
/* B3934 800B2D34 29010004 */  slti       $at, $t0, 4
/* B3938 800B2D38 1420FFE6 */  bnez       $at, .L800B2CD4
/* B393C 800B2D3C AFA80000 */   sw        $t0, ($sp)
/* B3940 800B2D40 8FAA0004 */  lw         $t2, 4($sp)
/* B3944 800B2D44 254B0001 */  addiu      $t3, $t2, 1
/* B3948 800B2D48 29610004 */  slti       $at, $t3, 4
/* B394C 800B2D4C 1420FFE0 */  bnez       $at, .L800B2CD0
/* B3950 800B2D50 AFAB0004 */   sw        $t3, 4($sp)
/* B3954 800B2D54 10000001 */  b          .L800B2D5C
/* B3958 800B2D58 00000000 */   nop
.L800B2D5C:
/* B395C 800B2D5C 03E00008 */  jr         $ra
/* B3960 800B2D60 27BD0008 */   addiu     $sp, $sp, 8
