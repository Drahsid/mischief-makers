glabel func_8004168C
/* 4228C 8004168C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 42290 80041690 000E7880 */  sll        $t7, $t6, 2
/* 42294 80041694 01EE7823 */  subu       $t7, $t7, $t6
/* 42298 80041698 000F7880 */  sll        $t7, $t7, 2
/* 4229C 8004169C 01EE7821 */  addu       $t7, $t7, $t6
/* 422A0 800416A0 000F7880 */  sll        $t7, $t7, 2
/* 422A4 800416A4 01EE7823 */  subu       $t7, $t7, $t6
/* 422A8 800416A8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 422AC 800416AC 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 422B0 800416B0 000F78C0 */  sll        $t7, $t7, 3
/* 422B4 800416B4 01F81821 */  addu       $v1, $t7, $t8
/* 422B8 800416B8 8C620178 */  lw         $v0, 0x178($v1)
/* 422BC 800416BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 422C0 800416C0 AFA40020 */  sw         $a0, 0x20($sp)
/* 422C4 800416C4 01C02025 */  or         $a0, $t6, $zero
/* 422C8 800416C8 1040000B */  beqz       $v0, .L800416F8
/* 422CC 800416CC AFBF0014 */   sw        $ra, 0x14($sp)
/* 422D0 800416D0 3045FFFF */  andi       $a1, $v0, 0xffff
/* 422D4 800416D4 AFA3001C */  sw         $v1, 0x1c($sp)
/* 422D8 800416D8 0C010547 */  jal        func_8004151C
/* 422DC 800416DC A7AE0022 */   sh        $t6, 0x22($sp)
/* 422E0 800416E0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 422E4 800416E4 97A40022 */  lhu        $a0, 0x22($sp)
/* 422E8 800416E8 10400003 */  beqz       $v0, .L800416F8
/* 422EC 800416EC 00000000 */   nop
/* 422F0 800416F0 1000000A */  b          .L8004171C
/* 422F4 800416F4 24020001 */   addiu     $v0, $zero, 1
.L800416F8:
/* 422F8 800416F8 8C62017C */  lw         $v0, 0x17c($v1)
/* 422FC 800416FC 00000000 */  nop
/* 42300 80041700 10400007 */  beqz       $v0, .L80041720
/* 42304 80041704 8FBF0014 */   lw        $ra, 0x14($sp)
/* 42308 80041708 0C010547 */  jal        func_8004151C
/* 4230C 8004170C 3045FFFF */   andi      $a1, $v0, 0xffff
/* 42310 80041710 10400003 */  beqz       $v0, .L80041720
/* 42314 80041714 8FBF0014 */   lw        $ra, 0x14($sp)
/* 42318 80041718 24020001 */  addiu      $v0, $zero, 1
.L8004171C:
/* 4231C 8004171C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80041720:
/* 42320 80041720 27BD0020 */  addiu      $sp, $sp, 0x20
/* 42324 80041724 03E00008 */  jr         $ra
/* 42328 80041728 00000000 */   nop
