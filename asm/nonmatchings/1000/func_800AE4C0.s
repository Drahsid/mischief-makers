glabel func_800AE4C0
/* AF0C0 800AE4C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AF0C4 800AE4C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AF0C8 800AE4C8 AFA40020 */  sw         $a0, 0x20($sp)
/* AF0CC 800AE4CC AFA50024 */  sw         $a1, 0x24($sp)
/* AF0D0 800AE4D0 AFA60028 */  sw         $a2, 0x28($sp)
/* AF0D4 800AE4D4 8FAE0024 */  lw         $t6, 0x24($sp)
/* AF0D8 800AE4D8 8DCF0008 */  lw         $t7, 8($t6)
/* AF0DC 800AE4DC 11E00027 */  beqz       $t7, .L800AE57C
/* AF0E0 800AE4E0 00000000 */   nop
/* AF0E4 800AE4E4 0C027AE8 */  jal        func_8009EBA0
/* AF0E8 800AE4E8 00000000 */   nop
/* AF0EC 800AE4EC AFA2001C */  sw         $v0, 0x1c($sp)
/* AF0F0 800AE4F0 8FB8001C */  lw         $t8, 0x1c($sp)
/* AF0F4 800AE4F4 17000006 */  bnez       $t8, .L800AE510
/* AF0F8 800AE4F8 00000000 */   nop
/* AF0FC 800AE4FC 2404006A */  addiu      $a0, $zero, 0x6a
/* AF100 800AE500 0C0297B4 */  jal        func_800A5ED0
/* AF104 800AE504 00002825 */   or        $a1, $zero, $zero
/* AF108 800AE508 1000001E */  b          .L800AE584
/* AF10C 800AE50C 00000000 */   nop
.L800AE510:
/* AF110 800AE510 8FA90024 */  lw         $t1, 0x24($sp)
/* AF114 800AE514 8FB90020 */  lw         $t9, 0x20($sp)
/* AF118 800AE518 8FAD001C */  lw         $t5, 0x1c($sp)
/* AF11C 800AE51C 8D2A0008 */  lw         $t2, 8($t1)
/* AF120 800AE520 8F28001C */  lw         $t0, 0x1c($t9)
/* AF124 800AE524 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* AF128 800AE528 010B6021 */  addu       $t4, $t0, $t3
/* AF12C 800AE52C ADAC0004 */  sw         $t4, 4($t5)
/* AF130 800AE530 8FAF001C */  lw         $t7, 0x1c($sp)
/* AF134 800AE534 240E000C */  addiu      $t6, $zero, 0xc
/* AF138 800AE538 A5EE0008 */  sh         $t6, 8($t7)
/* AF13C 800AE53C 93B8002B */  lbu        $t8, 0x2b($sp)
/* AF140 800AE540 8FB9001C */  lw         $t9, 0x1c($sp)
/* AF144 800AE544 AF38000C */  sw         $t8, 0xc($t9)
/* AF148 800AE548 8FA9001C */  lw         $t1, 0x1c($sp)
/* AF14C 800AE54C AD200000 */  sw         $zero, ($t1)
/* AF150 800AE550 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF154 800AE554 8D480008 */  lw         $t0, 8($t2)
/* AF158 800AE558 8D0B000C */  lw         $t3, 0xc($t0)
/* AF15C 800AE55C AFAB0018 */  sw         $t3, 0x18($sp)
/* AF160 800AE560 8FAC0018 */  lw         $t4, 0x18($sp)
/* AF164 800AE564 24050003 */  addiu      $a1, $zero, 3
/* AF168 800AE568 8FA6001C */  lw         $a2, 0x1c($sp)
/* AF16C 800AE56C 8D990008 */  lw         $t9, 8($t4)
/* AF170 800AE570 01802025 */  or         $a0, $t4, $zero
/* AF174 800AE574 0320F809 */  jalr       $t9
/* AF178 800AE578 00000000 */   nop
.L800AE57C:
/* AF17C 800AE57C 10000001 */  b          .L800AE584
/* AF180 800AE580 00000000 */   nop
.L800AE584:
/* AF184 800AE584 8FBF0014 */  lw         $ra, 0x14($sp)
/* AF188 800AE588 27BD0020 */  addiu      $sp, $sp, 0x20
/* AF18C 800AE58C 03E00008 */  jr         $ra
/* AF190 800AE590 00000000 */   nop
/* AF194 800AE594 00000000 */  nop
/* AF198 800AE598 00000000 */  nop
/* AF19C 800AE59C 00000000 */  nop
