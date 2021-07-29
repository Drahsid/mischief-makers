glabel func_8001C8B0
/* 1D4B0 8001C8B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1D4B4 8001C8B4 AFA40030 */  sw         $a0, 0x30($sp)
/* 1D4B8 8001C8B8 AFA50034 */  sw         $a1, 0x34($sp)
/* 1D4BC 8001C8BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 1D4C0 8001C8C0 97A40036 */  lhu        $a0, 0x36($sp)
/* 1D4C4 8001C8C4 27A5002E */  addiu      $a1, $sp, 0x2e
/* 1D4C8 8001C8C8 27A6002C */  addiu      $a2, $sp, 0x2c
/* 1D4CC 8001C8CC 0C006C1E */  jal        func_8001B078
/* 1D4D0 8001C8D0 27A7002A */   addiu     $a3, $sp, 0x2a
/* 1D4D4 8001C8D4 97AE002E */  lhu        $t6, 0x2e($sp)
/* 1D4D8 8001C8D8 3C06800D */  lui        $a2, %hi(D_800C96DA)
/* 1D4DC 8001C8DC 000E7840 */  sll        $t7, $t6, 1
/* 1D4E0 8001C8E0 87A50032 */  lh         $a1, 0x32($sp)
/* 1D4E4 8001C8E4 00CF3021 */  addu       $a2, $a2, $t7
/* 1D4E8 8001C8E8 84C696DA */  lh         $a2, %lo(D_800C96DA)($a2)
/* 1D4EC 8001C8EC 24040001 */  addiu      $a0, $zero, 1
/* 1D4F0 8001C8F0 24070002 */  addiu      $a3, $zero, 2
/* 1D4F4 8001C8F4 0C020DE7 */  jal        func_8008379C
/* 1D4F8 8001C8F8 AFA50024 */   sw        $a1, 0x24($sp)
/* 1D4FC 8001C8FC 87A50026 */  lh         $a1, 0x26($sp)
/* 1D500 8001C900 24040002 */  addiu      $a0, $zero, 2
/* 1D504 8001C904 24060070 */  addiu      $a2, $zero, 0x70
/* 1D508 8001C908 0C020DE7 */  jal        func_8008379C
/* 1D50C 8001C90C 24070002 */   addiu     $a3, $zero, 2
/* 1D510 8001C910 97B8002C */  lhu        $t8, 0x2c($sp)
/* 1D514 8001C914 3C06800D */  lui        $a2, %hi(D_800C96DA)
/* 1D518 8001C918 0018C840 */  sll        $t9, $t8, 1
/* 1D51C 8001C91C 00D93021 */  addu       $a2, $a2, $t9
/* 1D520 8001C920 84C696DA */  lh         $a2, %lo(D_800C96DA)($a2)
/* 1D524 8001C924 87A50026 */  lh         $a1, 0x26($sp)
/* 1D528 8001C928 24040003 */  addiu      $a0, $zero, 3
/* 1D52C 8001C92C 0C020DE7 */  jal        func_8008379C
/* 1D530 8001C930 24070002 */   addiu     $a3, $zero, 2
/* 1D534 8001C934 97A50032 */  lhu        $a1, 0x32($sp)
/* 1D538 8001C938 97A60036 */  lhu        $a2, 0x36($sp)
/* 1D53C 8001C93C 0C006B2A */  jal        func_8001ACA8
/* 1D540 8001C940 24040005 */   addiu     $a0, $zero, 5
/* 1D544 8001C944 97A70036 */  lhu        $a3, 0x36($sp)
/* 1D548 8001C948 3C06800C */  lui        $a2, %hi(gTimeRecords)
/* 1D54C 8001C94C 00074840 */  sll        $t1, $a3, 1
/* 1D550 8001C950 00C93021 */  addu       $a2, $a2, $t1
/* 1D554 8001C954 94C64F28 */  lhu        $a2, %lo(gTimeRecords)($a2)
/* 1D558 8001C958 97A50032 */  lhu        $a1, 0x32($sp)
/* 1D55C 8001C95C 240A0001 */  addiu      $t2, $zero, 1
/* 1D560 8001C960 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1D564 8001C964 0C0069F8 */  jal        func_8001A7E0
/* 1D568 8001C968 2404000D */   addiu     $a0, $zero, 0xd
/* 1D56C 8001C96C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1D570 8001C970 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1D574 8001C974 03E00008 */  jr         $ra
/* 1D578 8001C978 00000000 */   nop
