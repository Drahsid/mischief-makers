glabel func_80004648
/* 5248 80004648 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 524C 8000464C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5250 80004650 AFA40020 */  sw         $a0, 0x20($sp)
/* 5254 80004654 8C8F0000 */  lw         $t7, ($a0)
/* 5258 80004658 27A4001C */  addiu      $a0, $sp, 0x1c
/* 525C 8000465C 0C028A57 */  jal        func_800A295C
/* 5260 80004660 AFAF001C */   sw        $t7, 0x1c($sp)
/* 5264 80004664 3C03800C */  lui        $v1, %hi(D_800C4E5C)
/* 5268 80004668 24634E5C */  addiu      $v1, $v1, %lo(D_800C4E5C)
/* 526C 8000466C 8C780038 */  lw         $t8, 0x38($v1)
/* 5270 80004670 8FB9001C */  lw         $t9, 0x1c($sp)
/* 5274 80004674 8FA80020 */  lw         $t0, 0x20($sp)
/* 5278 80004678 3C013FF0 */  lui        $at, 0x3ff0
/* 527C 8000467C 44810800 */  mtc1       $at, $f1
/* 5280 80004680 AC78003C */  sw         $t8, 0x3c($v1)
/* 5284 80004684 240200FF */  addiu      $v0, $zero, 0xff
/* 5288 80004688 3C01800C */  lui        $at, %hi(D_800C4EAC)
/* 528C 8000468C AD190000 */  sw         $t9, ($t0)
/* 5290 80004690 A0224EAC */  sb         $v0, %lo(D_800C4EAC)($at)
/* 5294 80004694 3C01800C */  lui        $at, %hi(D_800C4EB0)
/* 5298 80004698 A0224EB0 */  sb         $v0, %lo(D_800C4EB0)($at)
/* 529C 8000469C 3C01800C */  lui        $at, %hi(D_800C4EB4)
/* 52A0 800046A0 A0224EB4 */  sb         $v0, %lo(D_800C4EB4)($at)
/* 52A4 800046A4 3C01800C */  lui        $at, %hi(D_800C4EB8)
/* 52A8 800046A8 A0224EB8 */  sb         $v0, %lo(D_800C4EB8)($at)
/* 52AC 800046AC 3C01800C */  lui        $at, %hi(D_800C4EBC)
/* 52B0 800046B0 AC204EBC */  sw         $zero, %lo(D_800C4EBC)($at)
/* 52B4 800046B4 3C01800C */  lui        $at, %hi(D_800C4EC0)
/* 52B8 800046B8 AC204EC0 */  sw         $zero, %lo(D_800C4EC0)($at)
/* 52BC 800046BC 3C01800C */  lui        $at, %hi(D_800C4EC4)
/* 52C0 800046C0 24090028 */  addiu      $t1, $zero, 0x28
/* 52C4 800046C4 AC294EC4 */  sw         $t1, %lo(D_800C4EC4)($at)
/* 52C8 800046C8 3C01800C */  lui        $at, %hi(D_800C4EC8)
/* 52CC 800046CC 240A0001 */  addiu      $t2, $zero, 1
/* 52D0 800046D0 AC2A4EC8 */  sw         $t2, %lo(D_800C4EC8)($at)
/* 52D4 800046D4 44800000 */  mtc1       $zero, $f0
/* 52D8 800046D8 3C01800C */  lui        $at, %hi(D_800C4ED0)
/* 52DC 800046DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 52E0 800046E0 E4214ED0 */  swc1       $f1, %lo(D_800C4ED0)($at)
/* 52E4 800046E4 E4204ED4 */  swc1       $f0, 0x4ed4($at)
/* 52E8 800046E8 3C01800C */  lui        $at, %hi(D_800C4ED8)
/* 52EC 800046EC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 52F0 800046F0 E4214ED8 */  swc1       $f1, %lo(D_800C4ED8)($at)
/* 52F4 800046F4 03E00008 */  jr         $ra
/* 52F8 800046F8 E4204EDC */   swc1      $f0, 0x4edc($at)
