glabel func_800A5640
/* A6240 800A5640 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6244 800A5644 AFBF0014 */  sw         $ra, 0x14($sp)
/* A6248 800A5648 AFA40020 */  sw         $a0, 0x20($sp)
/* A624C 800A564C AFA50024 */  sw         $a1, 0x24($sp)
/* A6250 800A5650 AFA60028 */  sw         $a2, 0x28($sp)
/* A6254 800A5654 AFA7002C */  sw         $a3, 0x2c($sp)
/* A6258 800A5658 27AE0024 */  addiu      $t6, $sp, 0x24
/* A625C 800A565C 25CF0004 */  addiu      $t7, $t6, 4
/* A6260 800A5660 AFAF0018 */  sw         $t7, 0x18($sp)
/* A6264 800A5664 3C04800A */  lui        $a0, %hi(func_800A56BC)
/* A6268 800A5668 248456BC */  addiu      $a0, $a0, %lo(func_800A56BC)
/* A626C 800A566C 8FA50020 */  lw         $a1, 0x20($sp)
/* A6270 800A5670 8FA60024 */  lw         $a2, 0x24($sp)
/* A6274 800A5674 0C02CCC4 */  jal        func_800B3310
/* A6278 800A5678 8FA70018 */   lw        $a3, 0x18($sp)
/* A627C 800A567C AFA2001C */  sw         $v0, 0x1c($sp)
/* A6280 800A5680 8FB8001C */  lw         $t8, 0x1c($sp)
/* A6284 800A5684 07000005 */  bltz       $t8, .L800A569C
/* A6288 800A5688 00000000 */   nop
/* A628C 800A568C 8FB90020 */  lw         $t9, 0x20($sp)
/* A6290 800A5690 8FA8001C */  lw         $t0, 0x1c($sp)
/* A6294 800A5694 03284821 */  addu       $t1, $t9, $t0
/* A6298 800A5698 A1200000 */  sb         $zero, ($t1)
.L800A569C:
/* A629C 800A569C 10000003 */  b          .L800A56AC
/* A62A0 800A56A0 8FA2001C */   lw        $v0, 0x1c($sp)
/* A62A4 800A56A4 10000001 */  b          .L800A56AC
/* A62A8 800A56A8 00000000 */   nop
.L800A56AC:
/* A62AC 800A56AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A62B0 800A56B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* A62B4 800A56B4 03E00008 */  jr         $ra
/* A62B8 800A56B8 00000000 */   nop
