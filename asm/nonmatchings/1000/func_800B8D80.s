glabel func_800B8D80
/* B9980 800B8D80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B9984 800B8D84 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9988 800B8D88 AFA40028 */  sw         $a0, 0x28($sp)
/* B998C 800B8D8C AFA5002C */  sw         $a1, 0x2c($sp)
/* B9990 800B8D90 AFA60030 */  sw         $a2, 0x30($sp)
/* B9994 800B8D94 AFA70034 */  sw         $a3, 0x34($sp)
/* B9998 800B8D98 8FAE0034 */  lw         $t6, 0x34($sp)
/* B999C 800B8D9C AFAE0024 */  sw         $t6, 0x24($sp)
/* B99A0 800B8DA0 8FAF0024 */  lw         $t7, 0x24($sp)
/* B99A4 800B8DA4 25F80008 */  addiu      $t8, $t7, 8
/* B99A8 800B8DA8 AFB80024 */  sw         $t8, 0x24($sp)
/* B99AC 800B8DAC AFAF0020 */  sw         $t7, 0x20($sp)
/* B99B0 800B8DB0 8FB9002C */  lw         $t9, 0x2c($sp)
/* B99B4 800B8DB4 8FAA0020 */  lw         $t2, 0x20($sp)
/* B99B8 800B8DB8 3C010800 */  lui        $at, 0x800
/* B99BC 800B8DBC 3328FFFF */  andi       $t0, $t9, 0xffff
/* B99C0 800B8DC0 01014825 */  or         $t1, $t0, $at
/* B99C4 800B8DC4 AD490000 */  sw         $t1, ($t2)
/* B99C8 800B8DC8 8FAB002C */  lw         $t3, 0x2c($sp)
/* B99CC 800B8DCC 8FAE0030 */  lw         $t6, 0x30($sp)
/* B99D0 800B8DD0 8FA80020 */  lw         $t0, 0x20($sp)
/* B99D4 800B8DD4 316CFFFF */  andi       $t4, $t3, 0xffff
/* B99D8 800B8DD8 000E7840 */  sll        $t7, $t6, 1
/* B99DC 800B8DDC 31F8FFFF */  andi       $t8, $t7, 0xffff
/* B99E0 800B8DE0 000C6C00 */  sll        $t5, $t4, 0x10
/* B99E4 800B8DE4 01B8C825 */  or         $t9, $t5, $t8
/* B99E8 800B8DE8 AD190004 */  sw         $t9, 4($t0)
/* B99EC 800B8DEC 8FA90024 */  lw         $t1, 0x24($sp)
/* B99F0 800B8DF0 252A0008 */  addiu      $t2, $t1, 8
/* B99F4 800B8DF4 AFAA0024 */  sw         $t2, 0x24($sp)
/* B99F8 800B8DF8 AFA9001C */  sw         $t1, 0x1c($sp)
/* B99FC 800B8DFC 8FAC001C */  lw         $t4, 0x1c($sp)
/* B9A00 800B8E00 3C0B0B00 */  lui        $t3, 0xb00
/* B9A04 800B8E04 356B0020 */  ori        $t3, $t3, 0x20
/* B9A08 800B8E08 AD8B0000 */  sw         $t3, ($t4)
/* B9A0C 800B8E0C 8FA40028 */  lw         $a0, 0x28($sp)
/* B9A10 800B8E10 0C026964 */  jal        func_8009A590
/* B9A14 800B8E14 24840008 */   addiu     $a0, $a0, 8
/* B9A18 800B8E18 8FAE001C */  lw         $t6, 0x1c($sp)
/* B9A1C 800B8E1C ADC20004 */  sw         $v0, 4($t6)
/* B9A20 800B8E20 8FAF0024 */  lw         $t7, 0x24($sp)
/* B9A24 800B8E24 25ED0008 */  addiu      $t5, $t7, 8
/* B9A28 800B8E28 AFAD0024 */  sw         $t5, 0x24($sp)
/* B9A2C 800B8E2C AFAF0018 */  sw         $t7, 0x18($sp)
/* B9A30 800B8E30 8FB80028 */  lw         $t8, 0x28($sp)
/* B9A34 800B8E34 8FAF0018 */  lw         $t7, 0x18($sp)
/* B9A38 800B8E38 3C010E00 */  lui        $at, 0xe00
/* B9A3C 800B8E3C 8F19002C */  lw         $t9, 0x2c($t8)
/* B9A40 800B8E40 870B0002 */  lh         $t3, 2($t8)
/* B9A44 800B8E44 332800FF */  andi       $t0, $t9, 0xff
/* B9A48 800B8E48 00084C00 */  sll        $t1, $t0, 0x10
/* B9A4C 800B8E4C 01215025 */  or         $t2, $t1, $at
/* B9A50 800B8E50 316CFFFF */  andi       $t4, $t3, 0xffff
/* B9A54 800B8E54 014C7025 */  or         $t6, $t2, $t4
/* B9A58 800B8E58 ADEE0000 */  sw         $t6, ($t7)
/* B9A5C 800B8E5C 8FAD0028 */  lw         $t5, 0x28($sp)
/* B9A60 800B8E60 0C026964 */  jal        func_8009A590
/* B9A64 800B8E64 8DA40028 */   lw        $a0, 0x28($t5)
/* B9A68 800B8E68 8FB90018 */  lw         $t9, 0x18($sp)
/* B9A6C 800B8E6C AF220004 */  sw         $v0, 4($t9)
/* B9A70 800B8E70 8FA80028 */  lw         $t0, 0x28($sp)
/* B9A74 800B8E74 AD00002C */  sw         $zero, 0x2c($t0)
/* B9A78 800B8E78 10000003 */  b          .L800B8E88
/* B9A7C 800B8E7C 8FA20024 */   lw        $v0, 0x24($sp)
/* B9A80 800B8E80 10000001 */  b          .L800B8E88
/* B9A84 800B8E84 00000000 */   nop
.L800B8E88:
/* B9A88 800B8E88 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9A8C 800B8E8C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B9A90 800B8E90 03E00008 */  jr         $ra
/* B9A94 800B8E94 00000000 */   nop
