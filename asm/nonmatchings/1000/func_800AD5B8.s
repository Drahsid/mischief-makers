glabel func_800AD5B8
/* AE1B8 800AD5B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE1BC 800AD5BC AFBF0014 */  sw         $ra, 0x14($sp)
/* AE1C0 800AD5C0 AFA40028 */  sw         $a0, 0x28($sp)
/* AE1C4 800AD5C4 AFA5002C */  sw         $a1, 0x2c($sp)
/* AE1C8 800AD5C8 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE1CC 800AD5CC 8DCF0050 */  lw         $t7, 0x50($t6)
/* AE1D0 800AD5D0 AFAF0024 */  sw         $t7, 0x24($sp)
/* AE1D4 800AD5D4 8FB80024 */  lw         $t8, 0x24($sp)
/* AE1D8 800AD5D8 13000040 */  beqz       $t8, .L800AD6DC
/* AE1DC 800AD5DC 00000000 */   nop
.L800AD5E0:
/* AE1E0 800AD5E0 8FB90024 */  lw         $t9, 0x24($sp)
/* AE1E4 800AD5E4 8F280000 */  lw         $t0, ($t9)
/* AE1E8 800AD5E8 AFA80020 */  sw         $t0, 0x20($sp)
/* AE1EC 800AD5EC 8FA90024 */  lw         $t1, 0x24($sp)
/* AE1F0 800AD5F0 852A000C */  lh         $t2, 0xc($t1)
/* AE1F4 800AD5F4 A7AA001E */  sh         $t2, 0x1e($sp)
/* AE1F8 800AD5F8 87AB001E */  lh         $t3, 0x1e($sp)
/* AE1FC 800AD5FC 24010016 */  addiu      $at, $zero, 0x16
/* AE200 800AD600 11610004 */  beq        $t3, $at, .L800AD614
/* AE204 800AD604 00000000 */   nop
/* AE208 800AD608 24010017 */  addiu      $at, $zero, 0x17
/* AE20C 800AD60C 1561002E */  bne        $t3, $at, .L800AD6C8
/* AE210 800AD610 00000000 */   nop
.L800AD614:
/* AE214 800AD614 8FAC0024 */  lw         $t4, 0x24($sp)
/* AE218 800AD618 8FAE002C */  lw         $t6, 0x2c($sp)
/* AE21C 800AD61C 8D8D0010 */  lw         $t5, 0x10($t4)
/* AE220 800AD620 15AE0029 */  bne        $t5, $t6, .L800AD6C8
/* AE224 800AD624 00000000 */   nop
/* AE228 800AD628 8FB80028 */  lw         $t8, 0x28($sp)
/* AE22C 800AD62C 8FAF0024 */  lw         $t7, 0x24($sp)
/* AE230 800AD630 8F190078 */  lw         $t9, 0x78($t8)
/* AE234 800AD634 8DE40014 */  lw         $a0, 0x14($t7)
/* AE238 800AD638 0320F809 */  jalr       $t9
/* AE23C 800AD63C 00000000 */   nop
/* AE240 800AD640 0C026EBB */  jal        func_8009BAEC
/* AE244 800AD644 8FA40024 */   lw        $a0, 0x24($sp)
/* AE248 800AD648 8FA80020 */  lw         $t0, 0x20($sp)
/* AE24C 800AD64C 11000007 */  beqz       $t0, .L800AD66C
/* AE250 800AD650 00000000 */   nop
/* AE254 800AD654 8FA90020 */  lw         $t1, 0x20($sp)
/* AE258 800AD658 8FAB0024 */  lw         $t3, 0x24($sp)
/* AE25C 800AD65C 8D2A0008 */  lw         $t2, 8($t1)
/* AE260 800AD660 8D6C0008 */  lw         $t4, 8($t3)
/* AE264 800AD664 014C6821 */  addu       $t5, $t2, $t4
/* AE268 800AD668 AD2D0008 */  sw         $t5, 8($t1)
.L800AD66C:
/* AE26C 800AD66C 8FA50028 */  lw         $a1, 0x28($sp)
/* AE270 800AD670 8FA40024 */  lw         $a0, 0x24($sp)
/* AE274 800AD674 0C026EAE */  jal        func_8009BAB8
/* AE278 800AD678 24A50048 */   addiu     $a1, $a1, 0x48
/* AE27C 800AD67C 87AE001E */  lh         $t6, 0x1e($sp)
/* AE280 800AD680 24010016 */  addiu      $at, $zero, 0x16
/* AE284 800AD684 15C10006 */  bne        $t6, $at, .L800AD6A0
/* AE288 800AD688 00000000 */   nop
/* AE28C 800AD68C 8FAF002C */  lw         $t7, 0x2c($sp)
/* AE290 800AD690 91F80037 */  lbu        $t8, 0x37($t7)
/* AE294 800AD694 331900FE */  andi       $t9, $t8, 0xfe
/* AE298 800AD698 10000005 */  b          .L800AD6B0
/* AE29C 800AD69C A1F90037 */   sb        $t9, 0x37($t7)
.L800AD6A0:
/* AE2A0 800AD6A0 8FA8002C */  lw         $t0, 0x2c($sp)
/* AE2A4 800AD6A4 910B0037 */  lbu        $t3, 0x37($t0)
/* AE2A8 800AD6A8 316A00FD */  andi       $t2, $t3, 0xfd
/* AE2AC 800AD6AC A10A0037 */  sb         $t2, 0x37($t0)
.L800AD6B0:
/* AE2B0 800AD6B0 8FAC002C */  lw         $t4, 0x2c($sp)
/* AE2B4 800AD6B4 918D0037 */  lbu        $t5, 0x37($t4)
/* AE2B8 800AD6B8 15A00003 */  bnez       $t5, .L800AD6C8
/* AE2BC 800AD6BC 00000000 */   nop
/* AE2C0 800AD6C0 10000008 */  b          .L800AD6E4
/* AE2C4 800AD6C4 00000000 */   nop
.L800AD6C8:
/* AE2C8 800AD6C8 8FA90020 */  lw         $t1, 0x20($sp)
/* AE2CC 800AD6CC AFA90024 */  sw         $t1, 0x24($sp)
/* AE2D0 800AD6D0 8FAE0024 */  lw         $t6, 0x24($sp)
/* AE2D4 800AD6D4 15C0FFC2 */  bnez       $t6, .L800AD5E0
/* AE2D8 800AD6D8 00000000 */   nop
.L800AD6DC:
/* AE2DC 800AD6DC 10000001 */  b          .L800AD6E4
/* AE2E0 800AD6E0 00000000 */   nop
.L800AD6E4:
/* AE2E4 800AD6E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE2E8 800AD6E8 27BD0028 */  addiu      $sp, $sp, 0x28
/* AE2EC 800AD6EC 03E00008 */  jr         $ra
/* AE2F0 800AD6F0 00000000 */   nop
